class LoginResponse {
  final String token;

  LoginResponse({
    required this.token,
  });

  factory LoginResponse.fromMap(Map data) {
    return LoginResponse(
      token: data['token'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
