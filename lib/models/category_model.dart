// To parse this JSON data, do
//
//     final responseCategoryModel = responseCategoryModelFromJson(jsonString);

import 'dart:convert';

List<ResponseCategoryModel> responseCategoryModelFromJson(String str) =>
    List<ResponseCategoryModel>.from(
        json.decode(str).map((x) => ResponseCategoryModel.fromJson(x)));

String responseCategoryModelToJson(List<ResponseCategoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseCategoryModel {
  ResponseCategoryModel({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;

  factory ResponseCategoryModel.fromJson(Map<String, dynamic> json) =>
      ResponseCategoryModel(
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
