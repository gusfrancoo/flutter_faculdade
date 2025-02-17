import 'package:flutter_faculdade/app/controllers/login_controller.dart';
import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:flutter_faculdade/app/screens/home_screen.dart';
import 'package:flutter_faculdade/app/screens/auth/login_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LoginController());
      }),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),

    ),
  ];
}