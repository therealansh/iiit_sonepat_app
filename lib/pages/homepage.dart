import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/widgets/homescreen_buttons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String uName = "Student Test"; //User Name Goes Here
    return Scaffold(
      backgroundColor: Color(0xFF13191B),
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
              color: Color.fromRGBO(199, 199, 199, 1),
            ),
            Text(
              uName,
              style: TextStyle(
                fontSize: 36,
                color: Color.fromRGBO(199, 199, 199, 1),
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
                              text: 'Staff Details',
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
