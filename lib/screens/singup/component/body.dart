// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthor/component/already_have_an_account_acheck.dart';
import 'package:flutterauthor/component/rounded_button.dart';
import 'package:flutterauthor/component/rounded_input_field.dart';
import 'package:flutterauthor/component/rounded_password_field.dart';
import 'package:flutterauthor/constant.dart';
import 'package:flutterauthor/screens/login/login_screen.dart';
import 'package:flutterauthor/screens/singup/component/background.dart';
import 'package:flutterauthor/screens/singup/component/orderDivide.dart';
import 'package:flutterauthor/screens/singup/component/socialMedia.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    // ignore: avoid_unnecessary_containers
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.34,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAcountCheck(
              login: false,
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
            ),
            OrderDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                socailMedia(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                socailMedia(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                socailMedia(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

