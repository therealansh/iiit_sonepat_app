import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/models/homescreen_buttons.dart';

AppBar myAppBar() {
  return AppBar(
    elevation: 10,
    backgroundColor: Colors.black87,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: IconButton(
                onPressed: (){},
                highlightColor: Color.fromRGBO(247, 200, 42, 1),
                splashColor: Color.fromRGBO(247, 200, 42, 1),
                icon: Icon(Icons.menu, color: Color.fromRGBO(199, 199, 199, 1),)
              ),
            ),
            Text('Home',
              style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1))),
          ],
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          highlightColor: Color.fromRGBO(247, 200, 42, 1),
          splashColor: Color.fromRGBO(247, 200, 42, 1),
          onPressed: (){},
        )
      ],
    ),
  );
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String uName = "Student Test"; //User Name Goes Here
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar(),
        backgroundColor: Color.fromRGBO(34, 36, 38, 1),
        body: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 150,
                color: Color.fromRGBO(199, 199, 199, 1),
              ),
              
              Text(uName, style: TextStyle(fontSize: 36, color: Color.fromRGBO(199, 199, 199, 1),),),
              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeScreenButton(
                        icon: Icons.account_circle,
                        text: 'My Profile',
                      ),
                      HomeScreenButton(
                        icon: Icons.art_track,
                        text: 'Attendance',
                      ),
                      HomeScreenButton(
                        icon: Icons.local_library,
                        text: 'Homework',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeScreenButton(
                        icon: Icons.book,
                        text: 'Circulars',
                      ),
                      HomeScreenButton(
                        icon: Icons.insert_invitation,
                        text: 'Time Table',
                      ),
                      HomeScreenButton(
                        icon: Icons.calendar_today,
                        text: 'Calendar',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeScreenButton(
                        icon: Icons.perm_media,
                        text: 'Gallery',
                      ),
                      HomeScreenButton(
                        icon: Icons.people,
                        text: 'Staff Details',
                      ),
                      HomeScreenButton(
                        icon: Icons.view_list,
                        text: 'Results',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ),
        ),
      );
  }
}