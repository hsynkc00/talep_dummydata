import 'package:get/get.dart';

class NavbarController extends GetxController {
  void navigate(int index) {
    switch (index) {
      case 0:
        
        Get.offAllNamed('/menu',);
        // Get.toNamed('/menu');

        break;
      case 1:
        Get.offAllNamed('/addRequest');
        // Get.toNamed('/addRequest');

        break;
      case 2:
        Get.offAllNamed('/profile');
        // Get.toNamed('/profile');

        break;
      default:
        break;
    }
  }
}
