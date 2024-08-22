import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    required super.title,
    super.titleTextStyle = const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
    super.centerTitle = true,
    super.toolbarHeight = 80,
  }) : super(
          actions: [
            IconButton(
              onPressed: () {
                try {
                  Get.toNamed('/settings');
                } catch (e) {
                  print("Hata: $e");
                }
              },
              padding: EdgeInsets.all(16),
              iconSize: 32,
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black38,
              ),
            ),
          ],
        );
}
