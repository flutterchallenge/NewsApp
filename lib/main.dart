import 'package:flutter/material.dart';
import 'package:nepali_sayari/common/theme.dart';
import 'package:nepali_sayari/model/category.dart';
import 'package:nepali_sayari/model/content.dart';
import 'package:nepali_sayari/ui/page_home.dart';
import 'package:nepali_sayari/ui/page_splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => Content.init()),
        Provider(create: (context) => Category.init()),
      ],
      child: MaterialApp(
      title: 'Sample Content',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/${HomePage.TAG}': (context) => HomePage(),
      },
    ));
  }
}