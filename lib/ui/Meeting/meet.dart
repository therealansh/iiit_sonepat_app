import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/StringConstt.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/constants/validators.dart';

class Meeting extends StatefulWidget {
  _Meeting createState() => _Meeting();
}

class _Meeting extends State<Meeting> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  static const platform = const MethodChannel('samples.flutter.dev/meet');

  Future<void> _getLevel(text) async {
    platform.invokeMethod('Meeting started',{"text":text});
  }


  final GlobalKey<FormState> join = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 59, 69, 1),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
                constraints: BoxConstraints.expand(
                  width: MediaQuery.of(context).size.width ,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                child: Image.asset('assets/images/class.png',)
                    ),
            Form(
              key: join,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                    EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: myController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => emailValidator(value),
                      decoration: InputDecoration(
                        //labelText: "E-Mail",
                          hintText: "Enter name to Create Room or Link to Join",
                          hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(205, 204, 202, 0.4)),
                          prefixIcon: Icon(
                            Icons.insert_link,
                            color: Color.fromRGBO(205, 204, 202, 1),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Color.fromRGBO(52, 59, 69, 1),
                          filled: true),
                      style: TextStyle(
                        backgroundColor: Color.fromRGBO(52, 59, 69, 1),
                        // ignore: deprecated_member_use
                        color: Theme.of(context).textTheme.body2.color,
                        decorationColor: Color.fromRGBO(205, 204, 202, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 20, 75, 0),
              child: ButtonTheme(
                minWidth: 20,
                height: 45,
                child: RaisedButton(
                  onPressed: () =>_getLevel(myController.text),
                  child: Text("Join",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  color: Color(0xFFf7c82a),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
