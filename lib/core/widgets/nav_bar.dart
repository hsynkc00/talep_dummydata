// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:talep_dummydata/core/core.dart';

import '../../data/controllers/controller.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarController = Get.put(NavBarController());

    return Obx(() => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppColors.primary),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos_rounded, color: AppColors.primary),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: AppColors.primary),
              label: '',
            ),
          ],
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          onTap: navBarController.changePage,
          currentIndex: navBarController.currentIndex.value,
          // currentIndex: navBarController.selectedIndex.value,
        ));
  }
}
