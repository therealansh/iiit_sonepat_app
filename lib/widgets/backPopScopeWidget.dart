import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/Home/drawerScreen.dart';

Future<bool> onBackPressed(context) {
  return showDialog(
    context: context,
    builder: (context) => new AlertDialog(
      title: new Text('Are you sure?'),
      content: new Text('Do you want to exit an App'),
      actions: <Widget>[
        new GestureDetector(
          onTap: () => Navigator.of(context).pop(false),
          child: roundedButton(
              "No", const Color(0xFF167F67), const Color(0xFFFFFFFF)),
        ),
        new GestureDetector(
          onTap: () => Navigator.of(context).pop(true),
          child: roundedButton(
              " Yes ", const Color(0xFF167F67), const Color(0xFFFFFFFF)),
        ),
      ],
    ),
  ) ??
      false;
}

Widget roundedButton(String buttonLabel, Color bgColor, Color textColor) {
  var loginBtn = new Container(
    padding: EdgeInsets.all(5.0),
    alignment: FractionalOffset.center,
    decoration: new BoxDecoration(
      color: bgColor,
      borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: const Color(0xFF696969),
          offset: Offset(1.0, 6.0),
          blurRadius: 0.001,
        ),
      ],
    ),
    child: Text(
      buttonLabel,
      style: new TextStyle(
          color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold),
    ),
  );
  return loginBtn;
}

class MyWillPopScope extends StatelessWidget {
  MyWillPopScope({this.app});
  final Widget app;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return onBackPressed(context);
      },
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              DrawerScreen(),
              app,
            ],
          ),
        ),
      ),
    );
  }
}