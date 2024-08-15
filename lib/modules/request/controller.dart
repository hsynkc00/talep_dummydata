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
    );

    requests.add(newRequest);
    clearControllers();
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
}
