import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/content.dart';

class HomePage extends StatelessWidget {
  _contentItems(BuildContext context, List<Content> items) {
    return List<Widget>.generate(items.length, (index) {
      Content content = items[index];
      return Card(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                content.title,
                style: GoogleFonts.oswald(
                    textStyle: Theme.of(context).textTheme.headline4),
              ),
              Row(children: [

              ],)
            ],
          ),
        ),
      );
    });
  }

  _carousel(BuildContext context, List<Content> items, int orientation) {
    return CarouselSlider(
        items: _contentItems(context, items),
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: orientation == 1 ? Axis.horizontal : Axis.vertical,
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.horizontal_split), onPressed: () {}),
          IconButton(icon: Icon(Icons.vertical_split), onPressed: () {})
        ],
      ),
      body: Container()
    );
  }
}
