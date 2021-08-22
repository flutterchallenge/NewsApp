import 'package:flutter/material.dart';
import 'package:nepali_sayari/ui/page_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Content',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  final String title = "Sample App";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder(
        future: _checkTimer(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
          }
      return Center(
        child: Column(
          children: [
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: "My App",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              TextSpan(
                  text: "Version 1.0.0",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
            ]))
          ],
        ),
      );
    }));
  }

  _checkTimer() {
    return Future.delayed(Duration(seconds: 3), (){});
  }
}
