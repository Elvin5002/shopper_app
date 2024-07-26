// import 'dart:convert';
//
// List<FavoriteDataResponse> favoriteDataResponseFromJson(String str) => List<FavoriteDataResponse>.from(json.decode(str).map((x) => FavoriteDataResponse.fromJson(x)));
//
// String favoriteDataResponseToJson(List<FavoriteDataResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class FavoriteDataResponse {
//   int id;
//   String slug;
//   String name;
//   Image image;
//   double? rating;
//   Category category;
//   int totalprice;
//   int discountInterest;
//
//   FavoriteDataResponse({
//     required this.id,
//     required this.slug,
//     required this.name,
//     required this.image,
//     required this.rating,
//     required this.category,
//     required this.totalprice,
//     required this.discountInterest,
//   });
//
//   factory FavoriteDataResponse.fromJson(Map<String, dynamic> json) => FavoriteDataResponse(
//     id: json["id"],
//     slug: json["slug"],
//     name: json["name"],
//     image: Image.fromJson(json["image"]),
//     rating: json["rating"],
//     category: Category.fromJson(json["category"]),
//     totalprice: json["totalprice"],
//     discountInterest: json["discount_interest"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "slug": slug,
//     "name": name,
//     "image": image.toJson(),
//     "rating": rating,
//     "category": category.toJson(),
//     "totalprice": totalprice,
//     "discount_interest": discountInterest,
//   };
// }
//
// class Category {
//   int id;
//   String name;
//   dynamic logo;
//
//   Category({
//     required this.id,
//     required this.name,
//     required this.logo,
//   });
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json["id"],
//     name: json["name"],
//     logo: json["logo"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "logo": logo,
//   };
// }
//
// class Image {
//   String image;
//
//   Image({
//     required this.image,
//   });
//
//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//     image: json["image"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "image": image,
//   };
// }
