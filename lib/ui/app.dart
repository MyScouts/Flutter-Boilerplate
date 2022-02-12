import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/configs/app_themes.dart';
import 'package:flutter_demo/controllers/auth_controller.dart';
import 'package:flutter_demo/routes/route_name.dart';
import 'package:flutter_demo/routes/routes.dart';
import 'package:flutter_demo/translations/localization.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    Get.put<AuthController>(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.home,
      getPages: Routes.listPages,
      translations: Localization(),
      locale: Localization.defaultLocale,
      fallbackLocale: Localization.defaultLocale,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      navigatorKey: navigatorKey,
    );
  }
}
