
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthor/constant.dart';
class socailMedia extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;
  const socailMedia({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.symmetric(horizontal: 10,),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: TPrimaryLightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
