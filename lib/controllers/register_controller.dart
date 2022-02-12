import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/controllers/auth_controller.dart';

class RegisterController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nickName = TextEditingController();
  TextEditingController emailConfirm = TextEditingController();
  TextEditingController passWordConfirm = TextEditingController();

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    emailConfirm.dispose();
    passWordConfirm.dispose();
    nickName.dispose();
    super.onClose();
  }

  registerAccount(BuildContext context) async {
    AuthController.to.registerWithEmailAndPassword(
      nickName.text,
      email.text,
    );
  }
}
