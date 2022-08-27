// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heal_chat/widgets/widget.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController ageEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "H",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            Text(
              "Chat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ]),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                TextField(
                  controller:userNameTextEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Name")),
                TextField(
                  controller: ageEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Age")),
                TextField(
                  controller: emailEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("e-mail")),
                TextField(
                  controller: passwordEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Password")),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("Forgot Password?", style: simpleTextStyle()),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF009688),
                          const Color(0xFF009688),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(35)),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Text("Already Have an account? then Sign In",
                      style: simpleTextStyle()),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.teal, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ]),
            ),
          ),
        ));
  }
}
