import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';
import 'package:talep_dummydata/modules/request/widgets/custom_button.dart';
import '../widgets/request_text_field.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text("Talep Oluştur")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RequestTextField(labelText: "Miktar", hintText: "Miktar"),
              RequestTextField(labelText: "Birim", hintText: "Birim"),
              RequestTextField(labelText: "Stok Kodu", hintText: "Stok Kodu"),
              RequestTextField(labelText: "Stok Adı", hintText: "Stok Adı"),
              RequestTextField(labelText: "Özellik1", hintText: "Özellik1"),
              RequestTextField(labelText: "Özellik2", hintText: "Özellik2"),
              RequestTextField(labelText: "Özellik3", hintText: "Özellik3"),
              RequestTextField(
                labelText: "Açıklama",
                hintText: "Açıklama",
                maxLines: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomButton(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
