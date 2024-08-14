import 'package:get/get.dart';
import 'package:talep_dummydata/modules/menu/bindings.dart';
import '../modules/modules.dart';

class AppRoutes {
  static const login = '/login';
  static const menu = '/menu';
  static const profile = '/profile';
  static const addRequest = '/addRequest';
  static const pendingRequest = '/pendingRequest';

  static final routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: menu,
      page: () => MenuScreen(),
      binding: RequestBindings(),
      transition: Transition.cupertino,
    ),
    GetPage(
        name: profile,
        page: () => ProfileScreen(),
        transition: Transition.cupertino),
    GetPage(
      name: addRequest,
      page: () => AddRequestScreen(),
      binding: RequestBindings(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: pendingRequest,
      page: () => PendingRequestsScreen(),
      binding: RequestBindings(),
      transition: Transition.cupertino,
    )
  ];
}
