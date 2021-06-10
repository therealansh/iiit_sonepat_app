import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iiit_sonepat_stable/constants/screenSize.dart';
import 'package:iiit_sonepat_stable/widgets/backPopScopeWidget.dart';
import 'package:iiit_sonepat_stable/widgets/homescreen_buttons.dart';
import 'package:iiit_sonepat_stable/constants/StringConstt.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MyWillPopScope(app: MyApp(),);
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
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  String yearOfStudent = "First";

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
        ..scale(scaleFactor)
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
                                      scaleFactor = 1;
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
                                      scaleFactor = 0.8;
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
                                      HomePageTextWidget(
                                        text: greeting,
                                        fontSize: 35.0,
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
                            HomePageTextWidget(
                              text: userName,
                              width: width / 20,
                              fontSize: 25.0,
                            ),
                            HomePageTextWidget(
                              text: "$yearOfStudent Year",
                              width: width / 20,
                              fontSize: 20.0,
                            )
                          ],
                        ),
                      ),
                      PositionedRoutingButton(height: height, width: width),
                    ],
                  ),
                ),
                subjectButtonWidgets,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
