import 'package:get/get.dart';

import 'widgets/menu_item_card.dart';

class MenuItemController extends GetxController {
  final menuItems = [
    MenuItem.incoming(onTap: () {}, count: '0'),
    MenuItem.pending(
        onTap: () {
          Get.toNamed('/pendingRequest');
        },
        count: '1'),
    MenuItem.success(onTap: () {}, count: "0"),
    MenuItem.reject(onTap: () {}, count: '0'),
  ];
}
