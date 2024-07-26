import 'dart:convert';

class PaymentResponse {
    final int id;
    final String name;
    final String code;
    final String date;
    final String number;

    PaymentResponse({
       required this.id,
       required this.name,
       required this.code,
       required this.date,
       required this.number,
    });

    factory PaymentResponse.fromRawJson(String str) => PaymentResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PaymentResponse.fromJson(Map<String, dynamic> json) => PaymentResponse(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        date: json["date"],
        number: json["number"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "date": date,
        "number": number,
    };
}
