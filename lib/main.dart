import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'core/core.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/login',
      getPages: AppRoutes.routes,
    );
  }
}
