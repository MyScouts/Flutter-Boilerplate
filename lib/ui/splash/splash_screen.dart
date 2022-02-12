import 'package:flutter/material.dart';
import 'package:flutter_demo/configs/constants.dart';
import 'package:flutter_demo/helpers/storage_helper.dart';
import 'package:flutter_demo/routes/tabbar.dart';
import 'package:flutter_demo/ui/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkBootstrap();
  }

  BootstrapScreenType type = BootstrapScreenType.splash;

  _checkBootstrap() async {
    final accessToken = await StorageHelper.getAccessToken();
    if (accessToken != null) {
      setState(() {
        type = BootstrapScreenType.home;
      });
    } else {
      setState(() {
        type = BootstrapScreenType.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case BootstrapScreenType.home:
        return const Tabbar();
      case BootstrapScreenType.login:
        return const LoginScreen();
      default:
    }
    return Container();
  }
}
