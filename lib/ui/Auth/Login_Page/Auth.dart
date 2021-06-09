import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/decorations.dart';
import 'package:iiit_sonepat_stable/constants/screenSize.dart';
import 'package:iiit_sonepat_stable/constants/theme.dart';
import 'package:iiit_sonepat_stable/constants/validators.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  final TextEditingController emailController = new TextEditingController();

  final TextEditingController passwordController = new TextEditingController();

  final GlobalKey<FormState> formAuthKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFB900),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                  size: 35,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                    Text(
                      "Lorem Ipsum to check two lines of code to fit in the frame",
                      style: TextStyle(fontSize: 16.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(40), right: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Form(
                          key: formAuthKey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  autovalidateMode: AutovalidateMode.always,
                                  validator: emailValidator,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  controller: emailController,
                                  decoration: inputDecor(
                                    hint: "name.rollno@iiitsonepat.ac.in",
                                    prefix: Icons.mail_outline,
                                    obscure: false,
                                    suffix: null,
                                    toogle: null,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                TextFormField(
                                  autovalidateMode: AutovalidateMode.always,
                                  validator: pwdValidator,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  obscureText: isObscure,
                                  controller: passwordController,
                                  decoration: inputDecor(
                                      hint: "Password",
                                      prefix: Icons.lock_outline_rounded,
                                      obscure: isObscure,
                                      suffix: Icons.visibility,
                                      toogle: () {
                                        setState(() {
                                          isObscure = !isObscure;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                                child: Text(
                                  "Forgot Password?",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12.0,
                                  ),
                                ),
                                onTap: () {
                                  //[TODO] add direct mail facilty to contact admin
                                  Fluttertoast.showToast(msg: "Contact Admin");
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         ForgetPassword(
                                  //       rollController,
                                  //       phoneController,
                                  //       nameController,
                                  //     ),
                                  //   ),
                                  // );
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45.0),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 60,
                            // ignore: deprecated_member_use
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
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                if (!formAuthKey.currentState.validate()) {
                                  Fluttertoast.showToast(
                                      msg: 'Oops something went wrong');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
