// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthor/component/rounded_button.dart';
import 'package:flutterauthor/constant.dart';
import 'package:flutterauthor/screens/login/login_screen.dart';
import 'package:flutterauthor/screens/singup/sigup_screen.dart';
import 'package:flutterauthor/screens/welcome/component/Background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This size is provide us total height and weight
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to flutter Author",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            text: 'LOGIN',
          ),
          RoundedButton(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
            color: TPrimaryLightColor,
            text: 'SIGNUP',
            textColor: Colors.black,
          ),
        ],
      ),
    ));
  }
}
