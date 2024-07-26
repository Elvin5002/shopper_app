class UpdateResponse {
    final Tokens tokens;

    UpdateResponse({
        required this.tokens,
    });

    factory UpdateResponse.fromJson(Map<String, dynamic> json) => UpdateResponse(
        tokens: Tokens.fromJson(json["tokens"]),
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
