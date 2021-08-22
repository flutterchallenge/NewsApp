import 'package:flutter/cupertino.dart';

class Content extends ChangeNotifier{
  String _id;
  String _quote;
  String _favourite;

  Content({String id, String quote, String favourite}) {
    this._id = id;
    this._quote = quote;
    this._favourite = favourite;
  }

  String get id => _id;

  set id(String id) => _id = id;

  String get quote => _quote;

  set quote(String quote) => _quote = quote;

  String get favourite => _favourite;

  set favourite(String favourite) => _favourite = favourite;

  Content.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _quote = json['quote'];
    _favourite = json['favourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['quote'] = this._quote;
    data['favourite'] = this._favourite;
    return data;
  }
}
