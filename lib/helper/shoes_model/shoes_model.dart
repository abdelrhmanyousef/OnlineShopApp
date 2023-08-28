import 'dart:convert';

class ShoesModel {
  List<ShoesModel> ShoesModelFromJson(String str) => List<ShoesModel>.from(
      json.decode(str).map((x) => ShoesModel.fromJson(x)));

  String? id;
  String? name;
  String? category;
  List<dynamic>? imageUrl;
  String? oldPrice;
  List<dynamic>? sizes;
  String? price;
  String? description;
  String? title;

  ShoesModel({
    this.id,
    this.name,
    this.category,
    this.imageUrl,
    this.oldPrice,
    this.sizes,
    this.price,
    this.description,
    this.title,
  });

  factory ShoesModel.fromJson(Map<String, dynamic> json) => ShoesModel(
        id: json['id'] as String?,
        name: json['name'] as String?,
        category: json['category'] as String?,
        imageUrl: json['imageUrl'] as List<dynamic>?,
        oldPrice: json['oldPrice'] as String?,
        sizes: (json['sizes'] as List<dynamic>?),
        price: json['price'] as String?,
        description: json['description'] as String?,
        title: json['title'] as String?,
      );
}
