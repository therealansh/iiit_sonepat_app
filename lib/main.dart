import 'package:flutter/material.dart';
// import 'pages/splash.dart';
import 'pages/directormsg.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DirectorMsg(),
    );
  }
}
