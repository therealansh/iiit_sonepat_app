import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/rendering.dart';

import 'package:backdrop/app_bar.dart';

import 'package:backdrop/scaffold.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/ui/About/about.dart';
import 'package:iiit_sonepat_stable/ui/Auth/SignUp.dart';
import 'package:iiit_sonepat_stable/ui/DevPage/dev.dart';
import 'package:iiit_sonepat_stable/ui/DirectorMsg/directormsg.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';
import 'package:iiit_sonepat_stable/ui/Auth/SignUp.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/ui/Meeting/meet.dart';

class BackdropHome extends StatefulWidget {
  _BackdropHome createState() => _BackdropHome();
}

class _BackdropHome extends State<BackdropHome> {
  BackdropAppBar toggleAppbar() {
    return BackdropAppBar(
      backgroundColor: Color.fromRGBO(79, 84, 89, 1),
      title: Text(_title[current]),
      elevation: 20.0,
    );
  }

  @override
  void initState() {
    super.initState();
  }


  List<Widget> _pages = [HomePage(), Meeting(),About(), DirectorMsg(), AboutDev()];

  List<String> _title = [
    "Home",
    "Class",
    "About",
    "Director's Message",
    "About Development",
  ];
  int current = 0;
  @override
  Widget build(context) {
    return BackdropScaffold(
        backLayerBackgroundColor: Theme.of(context).accentColor,
        stickyFrontLayer: true,
        appBar: toggleAppbar(),
        frontLayer: _pages[current],
        backLayer: Column(children: [
          BackdropNavigationBackLayer(
            items: [
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color),
                ),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text(
                  "Class",
                  style: TextStyle(
                    // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color),
                ),
                leading: Icon(Icons.class_),
              ),
              ListTile(
                title: Text(
                  "About",
                  style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color),
                ),
                leading: Icon(Icons.info),
              ),
              ListTile(
                title: Text(
                  "Director's Message",
                  style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color),
                ),
                leading: Icon(Icons.message),
              ),
              ListTile(
                title: Text(
                  "About Development",
                  style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color),
                ),
                leading: Icon(Icons.code),
              ),
            ],
            onTap: (value) => {setState(() => current = value)},
          ),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.body1.color,
              ),
            ),
            leading: Icon(Icons.exit_to_app),

            onTap: () => {Navigator.pop(context)},

          ),

          Padding(
            padding: EdgeInsets.only(top: 100.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 50.0,
                ),
              )
            ],
          ),
        ]));
  }
}
