import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/routes.dart';
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
                  Navigator.pushNamed(context, RouteConstant.DASHBOARD);
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
          ],
        ),
      ),
    );
  }
}
