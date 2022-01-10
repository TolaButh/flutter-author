import 'package:flutter/material.dart';

import '../constant.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = TPrimaryColor,
    this.textColor  = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
      final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      
    // ignore: prefer_const_constructors
    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
    backgroundColor: color,
  );
  Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: flatButtonStyle,
          onPressed:press,
          child: Text(text,
          style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
