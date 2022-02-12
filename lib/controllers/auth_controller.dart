import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter_demo/helpers/storage_helper.dart';

import 'package:flutter_demo/models/user_model.dart';
import 'package:flutter_demo/network_models/login_response.dart';
import 'package:flutter_demo/routes/route_name.dart';
import 'package:flutter_demo/services/auth_services.dart';

class AuthController extends GetxController {
  static AuthController to = Get.find();

  Rxn<UserModel> userStream = Rxn<UserModel>();

  UserModel? get currentUser => userStream.value;

  signInWithEmailAndPassword(String email, String password) async {
    try {
      LoginResponse? response =
          await AuthServices.loginService(email, password);
      if (response != null) {
        StorageHelper.saveAccessToken(response.token);
        Get.offAllNamed(RouteName.home);
      }
    } finally {}
  }

  void registerWithEmailAndPassword(String nickName, String email) async {
    try {} finally {}
  }

  Future<void> signOut() async {
    StorageHelper.removeAccessToken();
    Get.offAllNamed(RouteName.login);
  }
}
