import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/ui/Login_Page/Auth.dart';

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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.05,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color(0xFFFFB900),
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 150.0, top: 40.0),
                              child: Text(
                                "Welcome",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
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
                            )
                          ],
                        )
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
