import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/AttendancePage/attendance_page.dart';
import 'package:iiit_sonepat_stable/ui/FacultyPage/faculty_grid.dart';

import 'package:iiit_sonepat_stable/widgets/homescreen_buttons.dart';

import 'package:iiit_sonepat_stable/models/users.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final String uName = "name"; //User Name Goes Here
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
              // ignore: deprecated_member_use
              color: Theme.of(context).textTheme.body1.color,
            ),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: 36,
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.body1.color,
              ),
            ),
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            HomeScreenButton(
                              icon: Icons.account_circle,
                              text: 'My Profile',
                            ),
                            HomeScreenButton(
                              pageToOpen: AttendancePage(),
                              icon: Icons.art_track,
                              text: 'Attendance',
                            ),
                            HomeScreenButton(
                              icon: Icons.local_library,
                              text: 'Homework',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
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
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            HomeScreenButton(
                              icon: Icons.perm_media,
                              text: 'Gallery',
                            ),
                            HomeScreenButton(
                              icon: Icons.people,
                              text: 'Faculty',
                              pageToOpen: FacultyGrid(),
                            ),
                            HomeScreenButton(
                              icon: Icons.view_list,
                              text: 'Results',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
