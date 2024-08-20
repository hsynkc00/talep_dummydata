import 'package:get/get.dart';
import '../modules/modules.dart';

class AppRoutes {
  static const login = '/login';
  static const signup = '/signup';
  static const base = '/base';
  static const menu = '/menu';
  static const profile = '/profile';
  static const addRequest = '/addRequest';
  static const pendingRequest = '/pendingRequest';
  static const settings = '/settings';

  static final routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(name: signup, page: () => SignupScreen()),
    GetPage(
      name: base,
      page: () => MainScreen(),
      binding: BaseBindings(),
    ),
    GetPage(
      name: menu,
      page: () => MenuScreen(),
    ),
    GetPage(
      name: profile,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: addRequest,
      page: () => AddRequestScreen(),
      binding: RequestBindings(),
    ),
    GetPage(
      name: pendingRequest,
      page: () => PendingRequestsScreen(),
      binding: RequestBindings(),
    ),
    GetPage(
        name: settings,
        page: () => SettingsScreen(),
        binding: LoginBindings(),
        transition: Transition.cupertino)
  ];
}
