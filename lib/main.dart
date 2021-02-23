import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/router.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/ui/Auth/SignUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routers.onGenerateRoute,
      initialRoute: RouteConstant.LOGIN,
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
