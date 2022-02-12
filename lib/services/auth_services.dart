import 'package:flutter_demo/network_models/login_response.dart';

class AuthServices {
  static Future<LoginResponse?> loginService(
      String email, String password) async {
    final Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };
    //TODO: handle response
    // final Map response = await RequestHelper.post(ApiUrl.login, body);
    // if (response["data"] != null) {
    // }

    return LoginResponse(token: "test token");
  }
}
