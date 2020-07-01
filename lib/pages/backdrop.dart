import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/rendering.dart';
import 'package:iiit_sonepat_stable/pages/directormsg.dart';
import 'package:iiit_sonepat_stable/pages/homepage.dart';
import 'package:backdrop/app_bar.dart';
import 'package:iiit_sonepat_stable/pages/splash.dart';
import 'dev.dart';
import 'about.dart';
import 'package:backdrop/scaffold.dart';
import 'package:iiit_sonepat_stable/models/users.dart';

class BackdropHome extends StatefulWidget {
  final User user;
  BackdropHome({this.user});
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

  List<Widget> _pages = [HomePage(), About(), DirectorMsg(), AboutDev()];
  List<String> _title = [
    "Home",
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
            onTap: () async {
              await auth.signOut();
            },
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
