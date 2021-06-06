import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/Landing.dart';
import 'package:iiit_sonepat_stable/main.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';

import 'AuthTextField.dart';
import 'FogetPasswordPage.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = new TextEditingController();

  final TextEditingController passwordController = new TextEditingController();

  final TextEditingController phoneController = new TextEditingController();

  final TextEditingController nameController = new TextEditingController();

  final TextEditingController rollController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFB900),
      body: Container(
        child: Stack(
          children: <Widget>[
            // Flexible(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  foregroundColor: MaterialStateProperty.all(Colors.black12),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Landing(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 110.0, bottom: 50.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87),
              ),
            ),
            //     ],
            //   ),
            // ),
            ListView(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.36,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4.7),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(


                          children: <Widget>[
                            Container(
                              // margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                // border: Border.all(
                                //   // color: Colors.blueGrey.shade100,
                                //   style: BorderStyle.solid,
                                // ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  TextMain(
                                    controller: emailController,
                                    obscure: false,
                                    color: Colors.black,
                                    fw: FontWeight.normal,
                                    fontsize: 15.0,
                                    prefix: Icons.mail_outline,
                                    suffix: null,
                                    hint: "name.rollno@iiitsonepat.ac.in",
                                    input: TextInputType.emailAddress,
                                    label: "Email Address",
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  TextMain(
                                    controller: passwordController,
                                    obscure: true,
                                    color: Colors.black,
                                    fw: FontWeight.normal,
                                    fontsize: 15.0,
                                    prefix: Icons.lock_outline_rounded,
                                    suffix: Icons.visibility,
                                    hint: "Enter your password",
                                    input: null,
                                    label: "Password",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 220.0, top: 5.0),
                                    child: InkWell(
                                        child: Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgetPassword(
                                                rollController,
                                                phoneController,
                                                nameController,
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 45.0),
                                    child: ButtonTheme(
                                      minWidth: 250,
                                      height: 60,
                                      child: RaisedButton(
                                          color: Colors.black87,
                                          child: Text(
                                            "Sign In",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(30.0),
                                          ),
                                          onPressed: () {
                                            if (emailController.text.isEmpty ||
                                                passwordController
                                                    .text.isEmpty) {
                                              showDialog(
                                                // barrierColor: Colors.white,
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0)),
                                                    // Retrieve the text the that user has entered by using the
                                                    // TextEditingController.
                                                    content: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 45.0),
                                                      child: Text(
                                                        "Fill the Required Fields",
                                                        style: TextStyle(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                "Ubuntu"),
                                                      ),
                                                    ),

                                                    actions: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 100.0),
                                                        child: FlatButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context,
                                                                  'Ok'),
                                                          child: Text(
                                                            "Ok",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          color: Colors
                                                              .orangeAccent,

                                                          // style: ButtonStyle(
                                                          //     elevation:
                                                          //     MaterialStateProperty.all(
                                                          //         0.0),
                                                          //     textStyle:
                                                          //     MaterialStateProperty.all(
                                                          //         TextStyle(
                                                          //           letterSpacing: 1.0,
                                                          //           fontFamily: "MonoLisa",
                                                          //         ))),
                                                        ),
                                                      )
                                                    ],
                                                    backgroundColor:
                                                        Colors.white,
                                                  );
                                                },
                                              );
                                            } else
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage()),
                                              );
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: <Widget>[
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       right: 150.0, top: 40.0),
                            //   child: Text(
                            //     "Welcome",
                            //     style: TextStyle(
                            //         fontSize: 30.0,
                            //         fontWeight: FontWeight.w800,
                            //         color: Colors.black87),
                            //   ),
                            // ),

                            //   ],
                            // )
                            // const ListTile(
                            //   leading: Icon(Icons.album, size: 70),
                            //   title: Text('Heart Shaker',
                            //       style: TextStyle(color: Colors.white)),
                            //   subtitle: Text('TWICE',
                            //       style: TextStyle(color: Colors.white)),
                            // ),
                            // ButtonTheme.bar(
                            //   child: ButtonBar(
                            //     children: <Widget>[
                            //       FlatButton(
                            //         child: const Text('Edit', style: TextStyle(color: Colors.white)),
                            //         onPressed: () {},
                            //       ),
                            //       FlatButton(
                            //         child: const Text('Delete', style: TextStyle(color: Colors.white)),
                            //         onPressed: () {},
                            //       ),
                            //     ],
                            //   ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
