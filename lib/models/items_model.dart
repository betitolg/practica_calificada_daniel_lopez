// To parse this JSON data, do
//
//     final responseProductModel = responseProductModelFromJson(jsonString);

import 'dart:convert';

List<ResponseProductModel> responseProductModelFromJson(String str) =>
    List<ResponseProductModel>.from(
        json.decode(str).map((x) => ResponseProductModel.fromJson(x)));

String responseProductModelToJson(List<ResponseProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseProductModel {
  ResponseProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
  });

  int? id;
  String? title;
  int? price;
  String? description;
  Category? category;
  List<String>? images;

  factory ResponseProductModel.fromJson(Map<String, dynamic> json) =>
      ResponseProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category?.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x)),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
