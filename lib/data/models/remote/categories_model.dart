class CategoriesResponse {
  final int? id;
  final String? name;
  final String? logo;
  final List<CategoriesResponseChild>? children;

  CategoriesResponse({
    this.id,
    this.name,
    this.logo,
    this.children,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      CategoriesResponse(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        children: json["children"] == null
            ? []
            : List<CategoriesResponseChild>.from(json["children"]!
                .map((x) => CategoriesResponseChild.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
      };
}

class CategoriesResponseChild {
  final int? id;
  final String? name;
  final String? logo;
  final List<ChildChild>? children;

  CategoriesResponseChild({
    this.id,
    this.name,
    this.logo,
    this.children,
  });

  factory CategoriesResponseChild.fromJson(Map<String, dynamic> json) =>
      CategoriesResponseChild(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        children: json["children"] == null
            ? []
            : List<ChildChild>.from(
                json["children"]!.map((x) => ChildChild.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
      };
}

class ChildChild {
  final int? id;
  final String? name;
  final dynamic logo;

  ChildChild({
    this.id,
    this.name,
    this.logo,
  });

  factory ChildChild.fromJson(Map<String, dynamic> json) => ChildChild(
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
