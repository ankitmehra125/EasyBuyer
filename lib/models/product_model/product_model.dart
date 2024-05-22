import 'dart:convert';

import 'package:easybuyer/models/product_model/product_model.dart';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.image,
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.status,
    required this.isFavourite,
  });

  String image;
  String id;
  bool isFavourite;
  String name;
  String price;
  String description;
  String status;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    status: json["status"],
    isFavourite: false,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "price": price,
    "description": description,
    "status": status,
    "isFavourite": isFavourite,
  };
}
