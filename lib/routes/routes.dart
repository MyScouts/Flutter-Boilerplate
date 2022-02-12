import 'package:get/get.dart';
import 'package:flutter_demo/routes/route_name.dart';
import 'package:flutter_demo/ui/auth/login_screen.dart';
import 'package:flutter_demo/ui/auth/register_screen.dart';
import 'package:flutter_demo/ui/splash/splash_screen.dart';

class Routes {
  static var listPages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => const SplashScreen(),
    ),
  ];
}
