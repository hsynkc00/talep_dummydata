import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../modules/modules.dart';

class NavBarController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    MenuScreen(),
    AddRequestScreen(),
    ProfileScreen()
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
