import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/controllers/login_controller.dart';
import 'package:flutter_demo/validator/auth_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Form(
            key: controller.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        "login".tr,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(height: 30.0),
                      TextFormField(
                        controller: controller.emailController,
                        decoration: InputDecoration(hintText: "email".tr),
                        validator: AuthValidator.email,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(hintText: "password".tr),
                        validator: AuthValidator.password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green)),
                          child: Text("login".tr),
                          onPressed: controller.onPressLogin,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "or".tr,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.redAccent)),
                          onPressed: controller.onPressRegister,
                          child: Text(
                            'register'.tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
