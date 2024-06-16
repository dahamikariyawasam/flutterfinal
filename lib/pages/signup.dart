import 'package:flutter/material.dart';
import 'package:flutternew/pages/bottomnav.dart';
import 'package:flutternew/pages/login.dart';
import 'package:flutternew/widget/widget_support.dart';

class Sighnup extends StatefulWidget {
  const Sighnup({super.key});

  @override
  State<Sighnup> createState() => _SighnupState();
}

class _SighnupState extends State<Sighnup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFFff5c30),
              Color(0xFFe74b1a),
            ])),
      ),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Text(""),
      ),
      Container(
        margin: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(children: [
          Center(
              child: Image.asset(
            "images/logo2.png",
            width: MediaQuery.of(context).size.width / 2.3,
            fit: BoxFit.cover,
          )),
          SizedBox(
            height: 50,
          ),
          Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SignUp",
                      style: AppWidget.HeadlineTextFieldStyle(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),
                          prefixIcon: Icon(Icons.person_outline)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: AppWidget.HeadlineTextFieldStyle(),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),
                          prefixIcon: Icon(Icons.password_outlined)),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffff5722),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Already have an account? Login",
                style: AppWidget.semiBoldTextFieldStyle(),
              ))
        ]),
      ),
    ])));
  }
}
