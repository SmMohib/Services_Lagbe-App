import 'dart:async';

import 'package:flutter/material.dart';
import 'package:services_lagbe/screen/homePage.dart';
import 'package:services_lagbe/utility/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()
                // (FirebaseAuth.instance.currentUser != null)
                //     ? HomePage()

                //   : LoginPage(),
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: Text('')),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Image.asset('assets/services_lagbe-removebg-preview.png'),
                  SizedBox(
                    height: 4,
                  ),
                  CircularProgressIndicatorApp(),
                ],
              )),
          Expanded(flex: 1, child: Text('')),
        ],
      ),
    );
  }
}

class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Color.fromARGB(255, 2, 2, 2),
      backgroundColor: Color.fromARGB(255, 194, 4, 4),
      strokeWidth: 8,
    );
  }
}
