import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nepali_sayari/common/constants.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';


@JsonSerializable()
class Category extends ChangeNotifier {
  int? id;
  String? title;
  String? description;
  String? thumbnail;
  List<Category>? categoryList;

  Category.init();
  Category(this.id, this.title, this.description, this.thumbnail);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  void getCategory() {
    http.get(Uri.parse(Constants.BASE_URL + "$EndPoint.category")).then((value)  {
      if(value.statusCode == 200) {
        categoryList = json.decode(value.body)
            .map((data) => Category.fromJson(data))
            .toList();
      }
    }).catchError((err) => print("getCategory :: ${err.toString()}"));
    notifyListeners();
  }
}