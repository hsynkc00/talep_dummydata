import 'package:get/get.dart';
import 'package:talep_dummydata/modules/login/controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
