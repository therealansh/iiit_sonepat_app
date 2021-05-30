import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iiit_sonepat_stable/ui/Home/subjectsSlides.dart';
import 'package:iiit_sonepat_stable/ui/Home/slider.dart';
import 'package:iiit_sonepat_stable/constants/screenSize.dart';
import 'package:iiit_sonepat_stable/ui/Home/drawerScreen.dart';
import 'package:iiit_sonepat_stable/ui/AttendancePage/attendance_page.dart';
import 'package:iiit_sonepat_stable/ui/SubjectPages/subjectpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> _onBackPressed() {
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              DrawerScreen(),
              MyApp(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  String userName = "Aditya Chaudhary";
  double xOffset = 0;
  double yOffset = 0;
  double scalefactor = 1;
  bool isDrawerOpen = false;
  String yearOfStudent = "First";

  String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    String greeting = greetingMessage();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SizeConfig().init(context);
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          //BoxShadow
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(-5, -5),
            blurRadius: 50,
            spreadRadius: 0.1,
          ),
          //BoxShadow
        ],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scalefactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 200),
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 2.3,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/byAditya/homeMain.svg',
                        alignment: Alignment.topCenter,
                      ),
                      Positioned(
                        child: Container(
                          width: width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              isDrawerOpen
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 0;
                                          yOffset = 0;
                                          scalefactor = 1;
                                          isDrawerOpen = false;
                                        });
                                      })
                                  : IconButton(
                                      icon: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 180;
                                          yOffset = 70;
                                          scalefactor = 0.8;
                                          isDrawerOpen = true;
                                        });
                                        _scaffoldKey.currentState.openDrawer();
                                      }),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height / 40,
                                      ),
                                      Text(
                                        "$greeting",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontFamily: 'Questrial',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/byAditya/aditya.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width / 20,
                                ),
                                Text(
                                  "$userName",
                                  style: TextStyle(
                                    color: Colors.white,
                                    textBaseline: TextBaseline.alphabetic,
                                    fontSize: 25.0,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width / 20,
                                ),
                                Text(
                                  "$yearOfStudent year",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: 'Questrial',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: height / 4,
                        left: width / 25,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return AttendancePage();
                                },
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                AssetImage('assets/byAditya/attendance.jpg'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 20,
                    subjectName: 'Communication Skills',
                    imagePath: "images/communication_skill.webp",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Communication Skills",
                  color1: Colors.deepPurple,
                  color2: Colors.lightBlueAccent,
                  address: "assets/byAditya/cs.png",
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 19,
                    subjectName: 'Data Structures',
                    imagePath: "assets/byAditya/dsa.webp",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Data Structures",
                  color1: Colors.black,
                  color2: Colors.black12,
                  address: "assets/byAditya/ds.png",
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 21,
                    subjectName: 'Web Designing',
                    imagePath: "assets/byAditya/web_design.webp",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Web Designing",
                  color1: Colors.lightBlueAccent,
                  color2: Colors.lightGreen,
                  address: "assets/byAditya/wd.png",
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 17,
                    subjectName: 'Mathematics',
                    imagePath: "assets/byAditya/math.png",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Mathematics",
                  color1: Colors.red,
                  color2: Colors.yellow,
                  address: "assets/byAditya/mathFinal.jpg",
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 22,
                    subjectName: 'Application Programming',
                    imagePath: "images/application_dev.jpeg",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Application Programming",
                  color1: Color(0xFFFC7170),
                  color2: Color(0xFFEFB8B0),
                  address: "assets/byAditya/ad.png",
                ),
                SubjectButton(
                  navigateTo: SubjectPage(
                    initialPage: 18,
                    subjectName: 'Digital Electronics',
                    imagePath: "images/dig_elec.gif",
                    quote:
                        "Maths is the language in which god has written the universe.",
                  ),
                  height: height,
                  width: width,
                  subject: "Digital Electronics",
                  address: "assets/byAditya/de.png",
                  color1: Colors.orange,
                  color2: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
