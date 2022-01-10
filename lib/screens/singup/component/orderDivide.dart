// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterauthor/constant.dart';

class OrderDivider extends StatelessWidget {
  const OrderDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.02),
      width: size.width * 08,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          buiderDivide(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR", style: TextStyle(
              color: TPrimaryColor,
              fontWeight: FontWeight.w600,

            ),),
          ),
           buiderDivide(),
          
        ],
      ),
    );
  }

  Expanded buiderDivide() {
    return Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        );
  }
}
