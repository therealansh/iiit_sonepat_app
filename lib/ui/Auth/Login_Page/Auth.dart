import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/screenSize.dart';
import 'package:iiit_sonepat_stable/constants/theme.dart';
import 'package:iiit_sonepat_stable/ui/Auth/Login_Page/Landing.dart';
import 'package:iiit_sonepat_stable/main.dart';
import 'package:iiit_sonepat_stable/ui/Home/homepage.dart';
import 'FogetPasswordPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = new TextEditingController();

  final TextEditingController passwordController = new TextEditingController();

  final GlobalKey<FormState> formAuthKey = GlobalKey<FormState>();

  bool isObscure = true;


  InputDecoration inputDecor(String hint, IconData prefix, bool obscure, IconData suffix){
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
            ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: BorderSide(color: Colors.grey[100]),
        ),
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: Icon(
          prefix,
          size: 25.0,
          color: Colors.black,
        ),

        suffixIcon:IconButton(
          onPressed: (){
            setState(() {
              isObscure = !isObscure;
            });
          },

          icon: Icon(isObscure&&obscure?
           Icons.visibility_off:suffix,
            size: 25.0,
            color: Colors.black,
          ),
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.normal,
        ),
      );
  }

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

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: InkWell(
                          child: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                      size: 35,
                    ),
                    onTap: ()=>Navigator.pop(context),
                        ),
              ),
            ),

            Expanded(
              flex:3,
              child: Container(
                // color: Colors.red,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                    Text(
              "Lorem Ipsum to check two lines of code to fit in the frame.",
              style: TextStyle(
                          fontSize: 16.0,
                          // fontWeight: FontWeight.w900,
                          color: Colors.black87),
            ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16,),

            Expanded(
              flex:6,
              child: Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40)),

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
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  controller: emailController,
                                  decoration: inputDecor("name.rollno@iiitsonepat.ac.in", Icons.mail_outline, false,null),
                                ),

                                SizedBox(
                                  height: 12.0,
                                ),
                                
                                TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  obscureText: isObscure,
                                  controller: passwordController,
                                  decoration: inputDecor("Password", Icons.lock_outline_rounded, true,Icons.visibility),
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
                                  //[TODO] ADD VALIDATOR HERE
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreen()),
                                    );
                                }),
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
