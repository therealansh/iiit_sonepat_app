import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/AttendancePage/attendance_page.dart';
import 'package:iiit_sonepat_stable/widgets/subjectPageWidget.dart';

class HomePageTextWidget extends StatelessWidget {
  HomePageTextWidget({this.text, this.width, this.fontSize});

  final String text;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width,
        ),
        Text(
          "$text",
          style: TextStyle(
            color: Colors.white,
            textBaseline: TextBaseline.alphabetic,
            fontSize: fontSize,
            fontFamily: 'Questrial',
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}

class SubjectButton extends StatelessWidget {
  const SubjectButton(
      {this.subject, this.color1, this.color2, this.address, this.navigateTo});

  final Widget navigateTo;
  final String subject;
  final Color color1;
  final Color color2;
  final String address;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return navigateTo;
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$subject",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                      fontFamily: 'Questrial'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("$address"),
                  radius: 27.0,
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0),
            ),
          ),
          height: height / 10,
          width: width / 1.02,
        ),
      ),
    );
  }
}

class PositionedRoutingButton extends StatelessWidget {
  const PositionedRoutingButton({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
          backgroundImage: AssetImage('assets/homepageImages/attendance.jpg'),
        ),
      ),
    );
  }
}

final subjectButtonWidgets = Column(
  children: [
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 20,
        subjectName: 'Communication Skills',
        imagePath: "assets/subjectPageImages/communication_skill.webp",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Communication Skills",
      color1: Colors.deepPurple,
      color2: Colors.lightBlueAccent,
      address: "assets/homepageImages/cs.png",
    ),
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 19,
        subjectName: 'Data Structures',
        imagePath: "assets/subjectPageImages/dsa.webp",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Data Structures",
      color1: Colors.black,
      color2: Colors.black12,
      address: "assets/homepageImages/ds.png",
    ),
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 21,
        subjectName: 'Web Designing',
        imagePath: "assets/subjectPageImages/web_design.webp",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Web Designing",
      color1: Colors.lightBlueAccent,
      color2: Colors.lightGreen,
      address: "assets/homepageImages/wd.png",
    ),
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 17,
        subjectName: 'Mathematics',
        imagePath: "assets/subjectPageImages/maths.png",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Mathematics",
      color1: Colors.red,
      color2: Colors.yellow,
      address: "assets/homepageImages/mathFinal.jpg",
    ),
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 22,
        subjectName: 'Application Programming',
        imagePath: "assets/subjectPageImages/application_dev.jpeg",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Application Programming",
      color1: Color(0xFFFC7170),
      color2: Color(0xFFEFB8B0),
      address: "assets/homepageImages/ad.png",
    ),
    SubjectButton(
      navigateTo: SubjectPage(
        initialPage: 18,
        subjectName: 'Digital Electronics',
        imagePath: "assets/subjectPageImages/dig_elec.gif",
        quote: "Maths is the language in which god has written the universe.",
      ),
      subject: "Digital Electronics",
      address: "assets/homepageImages/de.png",
      color1: Colors.orange,
      color2: Colors.yellow,
    ),
  ],
);
