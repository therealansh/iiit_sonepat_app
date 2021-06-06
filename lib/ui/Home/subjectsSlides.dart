import 'package:flutter/material.dart';

class SubjectButton extends StatelessWidget {
  const SubjectButton(
      {@required this.height,
      @required this.width,
      this.subject,
      this.color1,
      this.color2,
      this.address,
      this.navigateTo});
  final Widget navigateTo;
  final double height;
  final double width;
  final String subject;
  final Color color1;
  final Color color2;
  final String address;

  @override
  Widget build(BuildContext context) {
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
