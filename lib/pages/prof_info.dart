import 'package:flutter/material.dart';

class ProfInfo extends StatelessWidget {
  ProfInfo({this.name, this.image, this.department, this.position, this.email, this.phone});
  final String name;
  final String image;
  final String department;
  final String position;
  final String email;
  final String phone;
  
  String nameShorten(String name) {
    var sep = name.split(' ');
    String short = sep[1][0] + '. ' + sep[sep.length-1];
    return short;
  }
  
  @override
  Widget build(BuildContext context) {
    String short = nameShorten(name);
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.black,
              title: Text(
                  short,
                  style: TextStyle(color: Color.fromRGBO(199, 199, 199, 1), fontSize: 20),
                  textAlign: TextAlign.left,
                ),
          ),
      body: Container(
        color: Color(0xFF13191B),
        child: Column(
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Hero(
                    tag: name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(image)
                    ),
                  ),
                ),
              ),
            Text(
              name,
              style: TextStyle(fontSize: 18, color: Color(0xFFC7C7C7)),
              textAlign: TextAlign.center,
            ),
            Text(
              position,
              style: TextStyle(fontSize: 16, color: Color(0xFFC7C7C7)),
              textAlign: TextAlign.center,
            ),
            Text(
              'Department of ' + department,
              style: TextStyle(fontSize: 16, color: Color(0xFFC7C7C7)),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
                      child: Text(
                        'Contact Info',
                        style: TextStyle(fontSize: 30, color: Color(0xFFC7C7C7)),
                        textAlign: TextAlign.left,
                      )
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Icon(Icons.email, size: 25, color: Color(0xFFC7C7C7),),
                        ),
                        Text(email, style: TextStyle(fontSize: 16, color: Color(0xFFC7C7C7)),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Icon(Icons.phone, size: 25, color: Color(0xFFC7C7C7),),
                        ),
                        Text(phone.substring(0, 5)+' '+phone.substring(5, phone.length), style: TextStyle(fontSize: 16, color: Color(0xFFC7C7C7)),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}