import 'package:get/get.dart';
import 'package:talep_dummydata/data/controllers/controller.dart';
import 'package:talep_dummydata/modules/menu/controller.dart';
import 'package:talep_dummydata/modules/modules.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NavBarController());
    Get.lazyPut<RequestController>(() => RequestController());
    Get.lazyPut<MenuItemController>(() => MenuItemController());
  }
}
