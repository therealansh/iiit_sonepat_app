import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/models/users.dart';
import 'package:iiit_sonepat_stable/pages/backdrop.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
final userRef = Firestore.instance.collection('users');
User currentUser;

class SplashPage extends StatefulWidget {
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    String uid = await auth.currentUser().then((value) => value.uid);
    print(uid);
    DocumentSnapshot doc = await userRef.document(uid).get();
    currentUser = User.fromDocument(doc);
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  void _showAlert(String err) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF2E313D),
            title: Text(
              "Wrong Credentials",
              style: TextStyle(
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.body2.color,
              ),
            ),
            content: Text(
              err,
              style: TextStyle(
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.body2.color,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Close",
                ),
              ),
            ],
          );
        });
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  login() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email.text, password: pass.text);
    } catch (e) {
      _showAlert(e.message);
    }
  }

  logout() async {
    await auth.signOut();
  }

  //HomePage if user is authenticated
  Widget buildAuthPage() {
    //return HomePage();
    return BackdropHome(
      user: currentUser,
    );
  }

  //Login Page if unauthenticated
  Scaffold buildUnAuthPage() {
    return Scaffold(
      backgroundColor: Color(0xFF13191b),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
                constraints: BoxConstraints.expand(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                child: Image.asset('assets/images/logo.png')
                //child: Image.network("https://upload.wikimedia.org/wikipedia/en/0/05/Indian_Institute_of_Information_Technology%2C_Sonepat_Logo.png")
                ),
            Form(
              key: _loginKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => emailValidator(value),
                      decoration: InputDecoration(
                          //labelText: "E-Mail",
                          hintText: "student@iiitsonepat.com",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Color(0xFF2E313D),
                          filled: true),
                      style: TextStyle(
                        backgroundColor: Color(0xFF2E313D),
                        // ignore: deprecated_member_use
                        color: Theme.of(context).textTheme.body2.color,
                        decorationColor: Color(0xFF2e313d),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: pass,
                      obscureText: true,
                      validator: (value) => pwdValidator(value),
                      decoration: InputDecoration(
                          //labelText: "Password",
                          hintText: "Password",
                          prefixIcon: Icon(Icons.arrow_forward_ios),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          fillColor: Color(0xFF2e313d),
                          filled: true),
                      style: TextStyle(
                        backgroundColor: Color(0xFF2E313D),
                        // ignore: deprecated_member_use
                        color: Theme.of(context).textTheme.body2.color,
                        decorationColor: Color(0xFF2e313d),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 20, 75, 0),
              child: RaisedButton(
                onPressed: () {
                  if (_loginKey.currentState.validate()) {
                    print("success");
                    login();
                  }
                },
                child: Text("Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                color: Color(0xFFf7c82a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(context) {
    return StreamBuilder(
        stream: auth.onAuthStateChanged,
        builder: (context, snap) {
          if (snap.hasData) {
            if (snap.data.providerData.length == 1) {
              return buildAuthPage();
            } else {
              return buildAuthPage();
            }
          } else {
            return buildUnAuthPage();
          }
        });
  }
}
