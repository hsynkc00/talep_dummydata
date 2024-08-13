import 'package:get/get.dart';
import 'package:talep_dummydata/modules/profile/screens/profile_screen.dart';
import 'package:talep_dummydata/modules/request/screens/add_request.dart';
// import '../core/widgets/navbar/bindings.dart';
import '../modules/modules.dart';

class AppRoutes {
  static const login = '/login';
  static const menu = '/menu';
  static const profile = '/profile';
  static const addRequest = '/addRequest';


  static final routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: menu,
      page: () => MenuScreen(),
      transition: Transition.cupertino,
    ),
    // GetPage(name: navbar, page: () => LoginScreen(), binding: NavBarBinding())
    GetPage(name: profile, page: () => ProfileScreen()),
    GetPage(name: addRequest, page: () => AddRequestScreen())
  ];
}
