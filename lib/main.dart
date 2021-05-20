import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/ui/Auth/SignUp.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/Landing.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/SplashScreen.dart';

class MyApp extends StatelessWidget {
  Map<int, Widget> op = {1: Landing(), 2: Landing()};
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomSplash(
        imagePath: 'assets/images/IIIT Sonepat Logo.png',
        backGroundColor: Colors.white,
        animationEffect: 'zoom-in',
        logoSize: 200,
        home: Landing(),
        duration: 4000,
        type: CustomSplashType.StaticDuration,
        outputAndHome: op,
      ),
    );
  }
}

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.yellow,
    buttonColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: text(base.textTheme),
  );
}

TextTheme text(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1.copyWith(
      backgroundColor: Colors.pink,
    ),
    bodyText1: base.bodyText1.copyWith(
      color: Colors.black87,
    ),
  );
}
