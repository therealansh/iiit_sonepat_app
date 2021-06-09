import 'package:flutter/material.dart';

class About extends StatefulWidget {
  _About createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    String about =
        "Indian Institute of Information Technology, Sonepat (IIIT, Sonepat) is one of the Indian Institutes of Information Technology located at Sonepat, Haryana. The academic session of IIIT Sonepat started from its mentor Institute National Institute of Technology, Kurukshetra from year 2014. IIIT Sonepat is a joint venture of the Ministry of Human Resource Development, Government of India, the Govt. of Haryana, with Industries in Public-Private Partnership model and has been declared as the Institute of national importance.Currently we are operating in the temporary campus at IIT Delhi Technopark Sonepat. The permanent campus of the Institute is to come up on a 50 acre piece of land awarded by the State Government in village Kilorad of distt. Sonepat. The branches available now in college are CSE ,IT ,ECE.  ";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(79, 84, 89, 1),
      ),
      backgroundColor: Color(0xFF13191B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              'https://sonepat.iiitiansnetwork.com/img/campus.webp',
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                about,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // ignore: deprecated_member_use
                  color: Theme.of(context).textTheme.body1.color,
                  fontSize: 16,
                ),
              ),
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
