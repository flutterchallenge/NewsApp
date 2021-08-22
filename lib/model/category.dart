import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  int id;
  String title;
  String description;
  String thumbnail;


  void getCategory() {

    notifyListeners();
  }


}