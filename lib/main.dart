import 'package:flutter/material.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF13191B),
        accentColor: Color.fromRGBO(79, 84, 89, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              body1: TextStyle(
                color: Color.fromRGBO(199, 199, 199, 1),
              ),
              // ignore: deprecated_member_use
              body2: TextStyle(
                color: Color.fromRGBO(199, 199, 199, 0.66),
              ),
            ),
      ),
    );
  }
}
