class ReviewAllResponse {
  final int? id;
  final Userinfo? userinfo;
  final int? rating;
  final String? message;

  ReviewAllResponse({
    this.id,
    this.userinfo,
    this.rating,
    this.message,
  });

  factory ReviewAllResponse.fromJson(Map<String, dynamic> json) =>
      ReviewAllResponse(
        id: json["id"],
        userinfo: json["userinfo"] == null
            ? null
            : Userinfo.fromJson(json["userinfo"]),
        rating: json["rating"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userinfo": userinfo?.toJson(),
        "rating": rating,
        "message": message,
      };
}

class Userinfo {
  final String? logo;
  final String? username;

  Userinfo({
    this.logo,
    this.username,
  });

  factory Userinfo.fromJson(Map<String, dynamic> json) => Userinfo(
        logo: json["logo"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "logo": logo,
        "username": username,
      };
}
