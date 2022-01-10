// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutterauthor/constant.dart';
class AlreadyHaveAnAcountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAcountCheck({
    this.login = true,
    required this.press,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Text(
          login ? "Don't have an account?": "Already have account ?",
          style: TextStyle(color: TPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up": "Sign In",
            style: TextStyle(
              color: TPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
