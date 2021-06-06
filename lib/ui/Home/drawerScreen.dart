import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: Colors.deepPurple[900],
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/logo.png',
                          ),
                          backgroundColor: Colors.white,
                          radius: 60,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Student Panel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'About',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AboutPage(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.assignment_ind_rounded,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'Attendance',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AttendancePage(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'Faculty',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => FacultyPage(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'Meeting',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Meeting(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'News',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LatestNewsPage(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.camera,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'Socials',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => SocialsPage(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      horizontalTitleGap: 6,
                      title: Text(
                        'Rate Us',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AboutPage(),
                        //   ),
                        // );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 6, 12, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      TextButton(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            barrierColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
// Retrieve the text the that user has entered by using the
// TextEditingController.
                                content: Text(
                                  "Do you really want to log out?",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                  ),
                                ),

                                actions: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      TextButton(
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                        ).then(
                                          (value) {
                                            if (value != null) {
                                              final SnackBar snackbar =
                                                  SnackBar(
                                                content: Text(
                                                    "You have been successfully Logged Out"),
                                                backgroundColor:
                                                    Colors.lightGreenAccent,
                                              );
                                              _scaffoldKey.currentState
                                                  .showSnackBar(snackbar);
                                            }
                                          },
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Yes",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0.0),
                                          textStyle: MaterialStateProperty.all(
                                            TextStyle(
                                              letterSpacing: 1.0,
                                              fontFamily: "MonoLisa",
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'No'),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 50.0),
                                          child: Text(
                                            "No",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0.0),
                                            textStyle:
                                                MaterialStateProperty.all(
                                                    TextStyle(
                                              letterSpacing: 1.0,
                                              fontFamily: "MonoLisa",
                                            ))),
                                      ),
                                    ],
                                  )
                                ],
                                backgroundColor: Colors.white,
                              );
                            },
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
