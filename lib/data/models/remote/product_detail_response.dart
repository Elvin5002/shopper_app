class ProductDetailResponse {
  final int? id;
  final String? slug;
  final String? name;
  final List<Size>? size;
  final List<Color>? color;
  final double? price;
  final List<Image>? images;
  final double? rating;
  final Category? category;
  final String? description;
  final double? totalPrice;
  final int? discountInterest;
  final int? reviewsCount;

  ProductDetailResponse({
    this.id,
    this.slug,
    this.name,
    this.size,
    this.color,
    this.price,
    this.images,
    this.rating,
    this.category,
    this.description,
    this.totalPrice,
    this.discountInterest,
    this.reviewsCount,
  });

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      ProductDetailResponse(
        id: json["id"],
        slug: json["slug"],
        name: json["name"],
        size: json["size"] == null
            ? []
            : List<Size>.from(json["size"]!.map((x) => Size.fromJson(x))),
        color: json["color"] == null
            ? []
            : List<Color>.from(json["color"]!.map((x) => Color.fromJson(x))),
        price: json["price"].toDouble(),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        rating: json["rating"].toDouble(),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        description: json["description"],
        totalPrice: json["total_price"].toDouble(),
        discountInterest: json["discount_interest"],
        reviewsCount: json["reviews count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "name": name,
        "size": size == null
            ? []
            : List<dynamic>.from(size!.map((x) => x.toJson())),
        "color": color == null
            ? []
            : List<dynamic>.from(color!.map((x) => x.toJson())),
        "price": price,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "rating": rating,
        "category": category?.toJson(),
        "description": description,
        "total_price": totalPrice,
        "discount_interest": discountInterest,
        "reviews count": reviewsCount,
      };
}

class Category {
  final int? id;
  final String? name;
  final String? logo;

  Category({
    this.id,
    this.name,
    this.logo,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
      };
}

class Color {
  final int? id;
  final String? color;

  Color({
    this.id,
    this.color,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json["id"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "color": color,
      };
}

class Image {
  final String? image;

  Image({
    this.image,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
      };
}

class Size {
  final int? id;
  final String? size;

  Size({
    this.id,
    this.size,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "size": size,
      };
}
