import 'package:flutter/material.dart';
import 'package:nepali_sayari/ui/page_home.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: _checkTimer(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Navigator.pushReplacementNamed(context, HomePage.TAG);
              }
              return Center(
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "My App",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black)),
                      TextSpan(
                          text: "Version 1.0.0",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black)),
                    ]))
                  ],
                ),
              );
            }));
  }

  _checkTimer() {
    return Future.delayed(Duration(seconds: 3), () {});
  }
}
