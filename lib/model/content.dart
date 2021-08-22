import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'content.g.dart';

@JsonSerializable()
class Content extends ChangeNotifier{
  int id;
  String title;
  String description;

  Content( this.id,  this.title, this.description);

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

}
