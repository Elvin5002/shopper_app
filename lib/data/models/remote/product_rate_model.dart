class ProductRateModel {
  final int? id;
  final Userinfo? userinfo;
  final int? rating;
  final String? message;
  final dynamic image;

  ProductRateModel({
    this.id,
    this.userinfo,
    this.rating,
    this.message,
    this.image,
  });

  factory ProductRateModel.fromJson(Map<String, dynamic> json) =>
      ProductRateModel(
        id: json["id"],
        userinfo: json["userinfo"] == null
            ? null
            : Userinfo.fromJson(json["userinfo"]),
        rating: json["rating"],
        message: json["message"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userinfo": userinfo?.toJson(),
        "rating": rating,
        "message": message,
        "image": image,
      };
}

class Userinfo {
  final dynamic logo;
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
