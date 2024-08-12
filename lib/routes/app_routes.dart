import 'package:get/get.dart';
import '../modules/modules.dart';

class AppRoutes {
  static const login = '/login';
  static const menu = '/menu';

  static final routes = [
    GetPage(name: login, page: () => LoginScreen(), binding: LoginBindings()),
    GetPage(
      name: menu,
      page: () => MenuScreen(),
    )
  ];
}
