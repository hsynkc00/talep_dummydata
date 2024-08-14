import 'package:get/get.dart';
import 'package:talep_dummydata/core/widgets/navbar/controller.dart';
import '../../../modules/request/request.dart';

class NavBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RequestController());
    Get.put(NavbarController());
  }
}
