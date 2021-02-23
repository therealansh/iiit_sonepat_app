import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/ui/About/about.dart';
import 'package:iiit_sonepat_stable/ui/Auth/SignUp.dart';
import 'package:iiit_sonepat_stable/ui/DevPage/dev.dart';
import 'package:iiit_sonepat_stable/ui/DirectorMsg/directormsg.dart';
import 'package:iiit_sonepat_stable/ui/FacultyPage/faculty_grid.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';
import 'package:iiit_sonepat_stable/ui/backdrop.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.ABOUT:
        return MaterialPageRoute(builder: (_) => About());
      case RouteConstant.DASHBOARD:
        return MaterialPageRoute(builder: (_) => BackdropHome());
      case RouteConstant.DEV:
        return MaterialPageRoute(builder: (_) => AboutDev());
      case RouteConstant.DIRECTORMSG:
        return MaterialPageRoute(builder: (_) => DirectorMsg());
      case RouteConstant.FACULTYPAGE:
        return MaterialPageRoute(builder: (_) => FacultyGrid());
      case RouteConstant.HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RouteConstant.LOGIN:
        return MaterialPageRoute(builder: (_) => SignIn());
      default:
        return MaterialPageRoute(builder: (_) => SignIn());
    }
  }
}
