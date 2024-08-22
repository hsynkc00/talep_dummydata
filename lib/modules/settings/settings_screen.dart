import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/core.dart';

import '../modules.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();

    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Ayarlar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4),
            child: GestureDetector(
              onTap: controller.logout,
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    size: 40,
                  ),
                  Text(
                    "Çıkış Yap",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
