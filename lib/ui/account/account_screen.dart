import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/auth_controller.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: AuthController.to.signOut,
              child: const Text("logout"))),
    );
  }
}
