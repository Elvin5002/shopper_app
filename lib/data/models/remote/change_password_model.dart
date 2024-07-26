class ChangePasswordResponse {
  final Tokens tokens;

  ChangePasswordResponse({
    required this.tokens,
  });

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      ChangePasswordResponse(
        tokens: Tokens.fromJson(json["token"]),
      );

  Map<String, dynamic> toJson() => {
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
