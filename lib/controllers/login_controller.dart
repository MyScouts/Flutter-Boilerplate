import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/controllers/auth_controller.dart';
import 'package:flutter_demo/routes/route_name.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onPressLogin() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if (formKey.currentState!.validate()) {
      AuthController.to.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    }
  }

  void onPressRegister() {
    Get.toNamed(RouteName.register);
  }
}
