// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthor/component/already_have_an_account_acheck.dart';
import 'package:flutterauthor/component/rounded_button.dart';
import 'package:flutterauthor/component/rounded_input_field.dart';
import 'package:flutterauthor/component/rounded_password_field.dart';
import 'package:flutterauthor/screens/login/component/background.dart';
import 'package:flutterauthor/screens/singup/sigup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){},
            ),
            
            AlreadyHaveAnAcountCheck(
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
            ),
          ],
        ),
      ),
    );
  }
}
