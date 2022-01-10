import 'package:flutter/material.dart';
import 'package:flutterauthor/constant.dart';
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 10),
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      width: size.width*0.8,
      decoration: BoxDecoration(
        color: TPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
