// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutterauthor/component/text_field_container.dart';
import 'package:flutterauthor/constant.dart';
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    required this.onChange,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: TPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
