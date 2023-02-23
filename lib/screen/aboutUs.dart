// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:services_lagbe/custom_UI/imageSlider.dart';
import 'package:services_lagbe/utility/colors.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:services_lagbe/utility/texts.dart';

class AboutUs extends StatefulWidget {
  AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String text1 =
      'This Terms of Use agreement was last updated: January 1st, 2020. This Privacy Policy agreement is effective as of: March 1st, 2016';
  String text2 =
      'Sheba Platform Limited ("SHEBA.XYZ") values your privacy. In this Privacy Policy ("Policy"), we describe the information that we collect about you when you visit our website, www.sheba.xyz (the "Website") and use the services available on the Website ("Services"), and how we use and disclose that information.';
  String text3 =
      "Sheba Platform Limited (SHEBA.XYZ) values your privacy. In this Privacy Policy (Policy), we describe the information that we collect about you when you visit our website, www.sheba.xyz (the Website) and use the services available on the Website (Services), and how we use and disclose that information.";
  String text4 =
      "If you have any questions or comments about the Privacy Policy, please contact us at info@sheba.xyz. This Policy is incorporated into and is subject to the SHEBA.XYZ Terms of Use, which can be accessed at www.sheba.xyz/terms-and-condition. Your use of the Website and/or Services and any personal information you provide on the Website remains subject to the terms of the Policy and SHEBA.XYZ's Terms of Use.";
  String text5 = "";
  String text6 = "";
  String text7 = "";
  String text8 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: buttonColor,
          title: Text('About Us'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: text20(),
                    ),
                    Text(
                      text1,
                      textAlign: TextAlign.justify,
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 0,
                    ),
                    Text(
                      text3,
                      textAlign: TextAlign.justify,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 6),
                      child: Text(
                        'Privacy Policy',
                        style: text20(),
                      ),
                    ),
                    Text(
                      text4,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      text1,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
