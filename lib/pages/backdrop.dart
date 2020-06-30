import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/rendering.dart';
import 'package:iiit_sonepat_stable/pages/directormsg.dart';
import 'package:iiit_sonepat_stable/pages/homepage.dart';
import 'package:backdrop/app_bar.dart';
import 'dev.dart';
import 'about.dart';
import 'package:backdrop/scaffold.dart';

class BackdropHome extends StatefulWidget{
  _BackdropHome createState() => _BackdropHome();
}

class _BackdropHome extends State<BackdropHome>{
  BackdropAppBar toggleAppbar() {
    return BackdropAppBar(
      backgroundColor: Color.fromRGBO(79, 84, 89, 1),
      title: Text(_title[current]),
      elevation: 20.0,      
    );
  }

  List<Widget> _pages = [HomePage(),About(),DirectorMsg(),AboutDev()];
  List<String> _title = ["Home", "About", "Director's Message", "About Development"];
  int current = 0;
  @override
  Widget build(context){
    return BackdropScaffold(
      backLayerBackgroundColor: Color.fromRGBO(79, 84, 89, 1),
      stickyFrontLayer: true,
      appBar: toggleAppbar(),
      frontLayer: _pages[current],
      backLayer:Column(
        children:[
          BackdropNavigationBackLayer(
            items: [
              ListTile(
                title: Text("Home",style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1)),),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("About",style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1))),
                leading: Icon(Icons.info),
              ),
              ListTile(
                title: Text("Director's Message",style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1))),
                leading: Icon(Icons.message),
              ),
              ListTile(
                title: Text("About Development",style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1))),
                leading: Icon(Icons.code),
              ),
              ListTile(
                title: Text("About Development",style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1))),
                leading: Icon(Icons.people),
              ),
            ],
        onTap: (value) => {setState(() => current = value )},
      ),
          Padding(
            padding:EdgeInsets.only(top:100.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(79, 84, 89, 1),
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 50.0,
                ),
              )
            ],
          ),
      ])
    );
  }
}