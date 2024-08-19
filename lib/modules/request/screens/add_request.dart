 // lib/modules/request/screens/add_request.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import '../widgets/widgets.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RequestController requestController = Get.find<RequestController>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  RequestTextField(
                    labelText: "Talep Eden",
                    hintText: "Talep Eden",
                    controller: requestController.requesterController,
                  ),
                  RequestTextField(
                    labelText: "Departman",
                    hintText: "Departman",
                    controller: requestController.departmentController,
                  ),
                  RequestTextField(
                    labelText: "Miktar",
                    hintText: "Miktar",
                    controller: requestController.amountController,
                  ),
                  RequestTextField(
                    labelText: "Birim",
                    hintText: "Birim",
                    controller: requestController.unitController,
                  ),
                  RequestTextField(
                    labelText: "Stok Kodu",
                    hintText: "Stok Kodu",
                    controller: requestController.stockCodeController,
                  ),
                  RequestTextField(
                    labelText: "Stok Adı",
                    hintText: "Stok Adı",
                    controller: requestController.stockNameController,
                  ),
                  RequestTextField(
                    labelText: "Özellik1",
                    hintText: "Özellik1",
                    controller: requestController.feature1Controller,
                  ),
                  RequestTextField(
                    labelText: "Özellik2",
                    hintText: "Özellik2",
                    controller: requestController.feature2Controller,
                  ),
                  RequestTextField(
                    labelText: "Özellik3",
                    hintText: "Özellik3",
                    controller: requestController.feature3Controller,
                  ),
                  RequestTextField(
                    labelText: "Açıklama",
                    hintText: "Açıklama",
                    maxLines: 5,
                    controller: requestController.descriptionController,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    onTap: () {
                      requestController.addRequest();
                      Get.defaultDialog(
                          title: "Talebiniz oluşturuldu",
                          content: const Text("Talebiniz Cevap Bekliyor."),
                          cancel: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                "Confirm",
                                style: TextStyle(color: Colors.blue),
                              )));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
