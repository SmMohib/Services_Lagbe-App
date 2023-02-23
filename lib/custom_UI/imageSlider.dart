import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:services_lagbe/utility/colors.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(
      height: 300,
      color: Colors.amber,
    ),
    Container(height: 300, color: Colors.black),
    Container(height: 300, color: Colors.blue),
    Container(height: 300, color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: PageView(
            children: _demo,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 0,
        ),
        CarouselIndicator(
          color: buttonColor,
          count: _demo.length,
          index: pageIndex,
          activeColor: Color.fromARGB(255, 255, 0, 0),
        ),
      ],
    );
  }
}
