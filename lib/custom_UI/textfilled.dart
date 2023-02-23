// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:services_lagbe/utility/colors.dart';

class TextFilledDemo extends StatelessWidget {
  TextFilledDemo({super.key, this.texts, this.icons});

  final String? texts;
  Icon? icons;

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: buttonColor,

        // controller: passwordController,
        style: new TextStyle(
            fontSize: 24, color: textColor, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          suffixIcon: Icon(
            icons!.icon,
            size: 25,
            color: buttonColor,
          ),
          errorStyle: TextStyle(color: Colors.red),

          labelText: texts,
          hintStyle:
              const TextStyle(color: textColor, fontWeight: FontWeight.w500),
          fillColor: Colors.white,
          //filled: true,
          isDense: true,
          labelStyle:
              TextStyle(fontSize: 20, color: Color.fromARGB(177, 66, 60, 60)),
        ));
  }
}
