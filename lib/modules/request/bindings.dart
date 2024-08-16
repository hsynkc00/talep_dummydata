import 'package:get/get.dart';
import '../request/request.dart';

class RequestBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RequestController(),permanent: true);
  }
}
