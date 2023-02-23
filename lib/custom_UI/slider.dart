import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';

class Slidebar extends StatefulWidget {
  Slidebar({Key? key}) : super(key: key);

  @override
  State<Slidebar> createState() => _SlidebarState();
}

class _SlidebarState extends State<Slidebar> {
  final List<String> imageList = [
    "https://www.borgenmagazine.com/wp-content/uploads/2020/08/Poor-People-Are-Happier-1-702x336.jpg",
    "https://cdn.downtoearth.org.in/library/large/2022-10-17/0.26907100_1666012003_poor-123.jpg",
    "https://thelogicalindian.com/h-upload/2021/10/13/1600x960_204683-untitled-design-47.jpg",
    "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/2/18/w900X450/poverty_in_india_-_AP_0.jpg?w=400&dpr=2.6",
  ];

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GFCarousel(
          items: imageList.map(
            (url) {
              return Container(
                margin: EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 700,
                  ),
                ),
              );
            },
          ).toList(),
          onPageChanged: (index) {
            setState(() {
              index;
            });
          },
        ),
      ],
    );
  }
}
