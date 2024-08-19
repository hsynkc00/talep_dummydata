import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talep_dummydata/core/core.dart';

import '../../data/controllers/controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarController navBarController = Get.find();
    return Scaffold(
      appBar: CustomAppBar(title: Text("Menu")),
      body: Obx(() => IndexedStack(
            index: navBarController.currentIndex.value,
            children: navBarController.pages,
          )),
      bottomNavigationBar: NavBar(),
    );
  }
}
