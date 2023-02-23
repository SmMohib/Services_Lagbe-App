// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:services_lagbe/utility/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.isicon, this.text, this.onTap})
      : super(key: key);
  Icon? isicon;
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: bgColor.withOpacity(0.7),
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                )
              ]),
          child: Center(
            child: Text(
              '${text}',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, color: bgColor),
            ),
          ),
        ),
      ),
    );
  }
}
