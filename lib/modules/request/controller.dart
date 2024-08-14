// lib/modules/request/controller.dart
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:talep_dummydata/data/models/request_model.dart';

class RequestController extends GetxController {
  var requests = <Request>[].obs;

  final TextEditingController requesterController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController stockCodeController = TextEditingController();
  final TextEditingController stockNameController = TextEditingController();
  final TextEditingController feature1Controller = TextEditingController();
  final TextEditingController feature2Controller = TextEditingController();
  final TextEditingController feature3Controller = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void addRequest() {
    final newRequest = Request(
      id: DateTime.now().toString(),
      requester: requesterController.text,
      department: departmentController.text,
      creationDate: DateTime.now()
          .toString()
          .substring(0, 10), // DateTime formatlanabilir
      status:
          'pending', // Sabit değer olabilir veya kullanıcı girişi yapılabilir
      amount: int.parse(amountController.text),
      unit: unitController.text,
      stockCode: stockCodeController.text,
      stockName: stockNameController.text,
      feature1: feature1Controller.text,
      feature2: feature2Controller.text,
      feature3: feature3Controller.text,
      description: descriptionController.text,
    );

    requests.add(newRequest);
  }

  @override
  void onClose() {
    // TextEditingController'ları kapatın.
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
    super.onClose();
  }
}
