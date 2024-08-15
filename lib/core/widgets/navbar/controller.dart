import 'package:get/get.dart';

class NavbarController extends GetxController {
  void navigate(int index) {
    switch (index) {
      case 0:
        Get.toNamed('/menu', preventDuplicates: true);
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
