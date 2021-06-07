import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/theme.dart';
import 'package:iiit_sonepat_stable/ui/Auth/Login_Page/Auth.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFB900),       //[TODO] refactor CONSTANTS
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          spreadRadius: 15.0,
                          color: Colors.grey[400],
                          blurRadius: 20.0
                        )
                      ]
                    ),
                    padding: EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.black87),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Center(
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Auth(),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),            
          ],
        ),
      ),
    );
  }
}
