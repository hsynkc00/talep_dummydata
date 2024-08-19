import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talep_dummydata/modules/menu/controller.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final MenuItemController controller = Get.find<MenuItemController>();
    final MenuItemController controller = Get.find<MenuItemController>();

    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return controller.menuItems[index];
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
                height: 16,
              ),
          itemCount: controller.menuItems.length),
    );
  }
}
