import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/Landing.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/Auth.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';

import 'AuthTextField.dart';

class ForgetPassword extends StatefulWidget {
  @override
  final TextEditingController controllerRoll;
  final TextEditingController controllerPhone;
  final TextEditingController controllerName;

  ForgetPassword(
      this.controllerRoll, this.controllerPhone, this.controllerName);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFB900),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // generateBlurredImage(),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextMain(
                        controller: widget.controllerRoll,
                        obscure: false,
                        color: Colors.black,
                        fw: FontWeight.bold,
                        fontsize: 15.0,
                        prefix: Icons.assignment_ind,
                        suffix: null,
                        hint: "Enter your Roll no",
                        input: TextInputType.number,
                        label: "Roll No",
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextMain(
                        controller: widget.controllerName,
                        obscure: false,
                        color: Colors.black,
                        fw: FontWeight.bold,
                        fontsize: 15.0,
                        prefix: Icons.account_circle,
                        suffix: null,
                        hint: "Enter your name",
                        input: TextInputType.name,
                        label: "Student's Name",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                              elevation: 7.0,
                              color: Colors.black87,
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontFamily: 'MonoLisa',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                if (widget.controllerRoll.text.isEmpty ||
                                    widget.controllerName.text.isEmpty) {
                                  showDialog(
                                    // barrierColor: Colors.white,
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        // Retrieve the text the that user has entered by using the
                                        // TextEditingController.
                                        content: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 45.0),
                                          child: Text(
                                            "Fill the Required Fields",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black,
                                                fontFamily: "Ubuntu"),
                                          ),
                                        ),

                                        actions: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 100.0),
                                            child: FlatButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'Ok'),
                                              child: Text(
                                                "Ok",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              color: Colors.orangeAccent,
                                            ),
                                          )
                                        ],
                                        backgroundColor: Colors.white,
                                      );
                                    },
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => col(context),
                                    ),
                                  );
                                }
                              }),
                          RaisedButton(
                            elevation: 7.0,
                            color: Colors.black87,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                                // fontFamily: 'MonoLisa',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              showDialog(
                                // barrierColor: Colors.white,
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    // Retrieve the text the that user has entered by using the
                                    // TextEditingController.
                                    content: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 35.0),
                                      child: Text(
                                        "Are you sure you want to Cancel?",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontFamily: "Ubuntu"),
                                      ),
                                    ),

                                    actions: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 100.0),
                                        child: FlatButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Landing(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Yes",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          color: Colors.orangeAccent,
                                        ),
                                      )
                                    ],
                                    backgroundColor: Colors.white,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold col(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFB900),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // generateBlurredImage(),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextMain(
                        controller: widget.controllerPhone,
                        obscure: false,
                        color: Colors.black,
                        fw: FontWeight.bold,
                        fontsize: 15.0,
                        prefix: Icons.phone,
                        suffix: null,
                        hint: "Enter your Registered Phone number",
                        input: TextInputType.number,
                        label: "Mobile Number",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                              elevation: 7.0,
                              color: Colors.black87,
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontFamily: 'MonoLisa',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                if (widget.controllerPhone.text.isEmpty) {
                                  showDialog(
                                    // barrierColor: Colors.white,
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        content: Text(
                                          "Fill the Required Fields",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            // fontFamily: "Ubuntu"
                                          ),
                                        ),
                                        actions: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 100.0),
                                            child: FlatButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'Ok'),
                                              child: Text(
                                                "Ok",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              color: Colors.orangeAccent,
                                            ),
                                          )
                                        ],
                                        backgroundColor: Colors.white,
                                      );
                                    },
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                }
                              }),
                          RaisedButton(
                            elevation: 7.0,
                            color: Colors.black87,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                                // fontFamily: 'MonoLisa',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    content: Text(
                                      "Are you sure you want to Cancel?",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        // fontFamily: "Ubuntu"
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right:50.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            FlatButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Landing(),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              color: Colors.orangeAccent,
                                            ),
                                            SizedBox(
                                              width: 50.0,
                                            ),
                                            FlatButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        col(context),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "No",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              color: Colors.orangeAccent,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                    backgroundColor: Colors.white,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
