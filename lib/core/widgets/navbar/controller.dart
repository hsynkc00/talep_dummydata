import 'package:get/get.dart';

class NavbarController extends GetxController {
  void navigate(int index) {
    switch (index) {
      case 0:
        // Get.toNamed('/menu', preventDuplicates: true);
        Get.offNamed('/menu');

        break;
      case 1:
        // Get.toNamed('/addRequest', preventDuplicates: true);
        Get.offNamed('/addRequest');

        break;
      case 2:
        // Get.toNamed('/profile', preventDuplicates: true);
        Get.offNamed('/profile');

        break;
      default:
        break;
    }
  }
}
