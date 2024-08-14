import 'package:get/get.dart';

class NavbarController extends GetxController {
  void navigate(int index) {
    switch (index) {
      case 0:
        Get.toNamed('/menu', preventDuplicates: true);
        // Get.toNamed('/menu');

        break;
      case 1:
        Get.toNamed('/addRequest', preventDuplicates: true);
        // Get.toNamed('/addRequest');

        break;
      case 2:
        Get.toNamed('/profile', preventDuplicates: true);
        // Get.toNamed('/profile');

        break;
      default:
        break;
    }
  }
}
