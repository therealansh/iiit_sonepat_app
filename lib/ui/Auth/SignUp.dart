import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
import 'package:iiit_sonepat_stable/constants/theme.dart';
import 'package:iiit_sonepat_stable/constants/validators.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 59, 69, 1),
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
                          hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(205, 204, 202, 0.4)),
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppTheme.textDecorationColor,
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
                        decorationColor: AppTheme.textDecorationColor,
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
                          hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(205, 204, 202, 0.4)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppTheme.textDecorationColor,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Color.fromRGBO(52, 59, 69, 1),
                          filled: true),
                      style: TextStyle(
                        backgroundColor: Color.fromRGBO(52, 59, 69, 1),
                        // ignore: deprecated_member_use
                        color: Theme.of(context).textTheme.body2.color,
                        decorationColor: Color(0xFF2e313d),
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
                  onPressed: () {
                    Navigator.pushNamed(context, RouteConstant.HOME);
                    if (_loginKey.currentState.validate()) {
                      print("success");
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
            ),
          ],
        ),
      ),
    );
  }
}
