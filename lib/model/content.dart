import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:nepali_sayari/common/constants.dart';
part 'content.g.dart';

@JsonSerializable()
class Content extends ChangeNotifier{
  int? id;
  String? title;
  String? description;
  List<Content> contentList = [];

  Content(this.id, this.title, this.description);
  Content.init();

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

  void getContent() {
    http.get(Uri.parse(Constants.BASE_URL + "$EndPoint.category")).then((value)  {
      if(value.statusCode == 200) {
        contentList = json.decode(value.body)
            .map((data) => Content.fromJson(data))
            .toList();
      }
    }).catchError((err) => print("getContent :: ${err.toString()}"));
    notifyListeners();
  }

}
