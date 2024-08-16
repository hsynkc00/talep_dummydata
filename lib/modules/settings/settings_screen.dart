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
      appBar: CustomAppBar(title: Text("Ayarlar"),),
      body: Center(child:IconButton(onPressed: (){
        controller.logout();
      }, icon: Icon(Icons.logout_rounded))),
    );
  }
}