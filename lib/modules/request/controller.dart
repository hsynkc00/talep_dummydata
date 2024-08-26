// lib/modules/request/controller.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:talep_dummydata/data/models/request_model.dart';

class RequestController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  var requests = <Request>[].obs;

  final TextEditingController requesterController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  late final TextEditingController amountController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController stockCodeController = TextEditingController();
  final TextEditingController stockNameController = TextEditingController();
  final TextEditingController feature1Controller = TextEditingController();
  final TextEditingController feature2Controller = TextEditingController();
  final TextEditingController feature3Controller = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  //Ekran açıldığında verileri çekmek için
  @override
  void onInit() {
    super.onInit();
    fetchPendingRequests();
  }

  void addRequest() async {
    final user = auth.currentUser;

    if (user == null) return;

    final newRequest = Request(
      id: DateTime.now().toString(),
      requester: requesterController.text,
      department: departmentController.text,
      creationDate: DateTime.now().toString().substring(0, 10),
      status: 'pending',
      amount: int.parse(amountController.text),
      unit: unitController.text,
      stockCode: stockCodeController.text,
      stockName: stockNameController.text,
      feature1: feature1Controller.text,
      feature2: feature2Controller.text,
      feature3: feature3Controller.text,
      description: descriptionController.text,
      userId: user.uid,
    );

    final requestDocRef = firestore.collection('requests').doc(user.uid);

    await requestDocRef.set({
      'requests': FieldValue.arrayUnion([newRequest.toJson()]),
    }, SetOptions(merge: true));

    requests.add(newRequest);
    clearControllers();
  }

  //firestoredan veri getirme
  void fetchPendingRequests() async {
    final user = auth.currentUser;

    if (user == null) return;

    final docSnapshot =
        await firestore.collection('requests').doc(user.uid).get();

    if (docSnapshot.exists) {
      final data = docSnapshot.data();
      final List<dynamic> requestList = data?['requests'] ?? [];

      requests.clear();
      for (var requestData in requestList) {
        requests.add(Request.fromJson(requestData));
      }
    }
  }

  Future<void> getAllUsernames() async {
    try {
      // 'users' koleksiyonundaki tüm belgeleri alıyoruz
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('users').get();

      // Her bir belgedeki 'username' özelliğini alıyoruz
      querySnapshot.docs.forEach((doc) {
        if (doc.exists) {
          // Belgedeki 'username' özelliğini alıyoruz
          String username = doc.get('username');
          print("Kullanıcı Adı: $username");
        }
      });
    } catch (e) {
      print("Veriler alınırken hata oluştu: $e");
    }
  }

  void clearControllers() {
    requesterController.clear();
    departmentController.clear();
    amountController.clear();
    unitController.clear();
    stockCodeController.clear();
    stockNameController.clear();
    feature1Controller.clear();
    feature2Controller.clear();
    feature3Controller.clear();
    descriptionController.clear();
  }

  @override
  void onClose() {
    requesterController.dispose();
    departmentController.dispose();
    amountController.dispose();
    unitController.dispose();
    stockCodeController.dispose();
    stockNameController.dispose();
    feature1Controller.dispose();
    feature2Controller.dispose();
    feature3Controller.dispose();
    descriptionController.dispose();
  }
}
