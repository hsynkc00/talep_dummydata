import 'package:get/get.dart';

import 'widgets/x.dart';

class MenuItemController extends GetxController {
  final menuItems = [
    MenuItem.incoming(onTap: () {}, count: '3'),
    MenuItem.pending(
        onTap: () {
          Get.toNamed('/pendingRequest');
        },
        count: '1'),
    MenuItem.success(onTap: () {}, count: "3"),
    MenuItem.reject(onTap: () {}, count: '2'),
  ];
}
