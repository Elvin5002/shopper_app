import 'package:shopper_app/utils/controllers/user_controller.dart';

class LoginResponse {
  final String email;
  final Tokens tokens;

  LoginResponse({
    required this.email,
    required this.tokens,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        email: "huseyn@gmail.com",
        tokens: Tokens.fromJson(json["tokens"]),
      );

  factory LoginResponse.fromJsonTokens(Map<String, dynamic> json) =>
      LoginResponse(
        email: UserController.email,
        tokens: Tokens.fromJson(json),
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "tokens": tokens.toJson(),
      };
}

class Tokens {
  final String refresh;
  final String access;

  Tokens({
    required this.refresh,
    required this.access,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => Tokens(
        refresh: json["refresh"],
        access: json["access"],
      );

  Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
      };
}