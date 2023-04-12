import 'dart:ffi';

import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/gallery_model.dart';

class ProductModel {
  late int id;
  late String name;
  late double price;
  late String description;
  late String tags;
  late CategoryModel category;
  late DateTime createdAt;
  late DateTime updatedAt;
  late List<GalleryModel> galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.galleries,
  });

  ProductModel.empty();

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: double.parse(json['price'].toString()),
      description: json['description'],
      tags: json['tags'] ?? '',
      category: CategoryModel.fromJson(json['category']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      galleries: json['galleries'].map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
    };
  }
}

class UninitializedProductModel extends ProductModel{
  UninitializedProductModel() : super.empty();
}