// // ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:services_lagbe/custom_UI/containerButton.dart';
// import 'package:services_lagbe/utilitys.dart/colors.dart';
// import 'package:custom_radio/custom_radio.dart';

// enum Auth {
//   signin,
//   signup,
// }

// class Bank extends StatefulWidget {
//   const Bank({Key? key}) : super(key: key);

//   @override
//   State<Bank> createState() => _BankState();
// }

// class _BankState extends State<Bank> {
//   Auth _auth = Auth.signup;
//   Auth _auth2 = Auth.signin;

//   final _signupForm = GlobalKey<FormState>();
//   final _signinForm = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bgColor,
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(2.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               title: Text('Bank Pemant',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//               leading: Radio(
//                 activeColor: buttonColor,
//                 value: Auth.signup,
//                 groupValue: _auth,
//                 onChanged: (Auth? value) {
//                   setState(() {
//                     _auth = value!;
//                   });
//                 },
//               ),
//             ),
//             if (_auth == Auth.signup)
//               Container(
//                 padding: EdgeInsets.all(10),
//                 color: bgColor,
//                 child: Form(
//                   key: _signupForm,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     // ignore: prefer_const_literals_to_create_immutables
//                     children: [
//                       CustomRadio<String, dynamic>(
//                         value: 'First',
//                         // groupValue: widget.radioValue,
//                         animsBuilder: (AnimationController controller) => [
//                           CurvedAnimation(
//                               parent: controller, curve: Curves.easeInOut),
//                           ColorTween(
//                                   begin: Colors.white, end: Colors.deepPurple)
//                               .animate(controller),
//                           ColorTween(
//                                   begin: Colors.deepPurple, end: Colors.white)
//                               .animate(controller),
//                         ],
//                         builder: (BuildContext context,
//                             List<dynamic> animValues,
//                             Function updateState,
//                             String value) {
//                           return GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   // widget.radioValue!= value;
//                                 });
//                               },
//                               child: Container(
//                                   alignment: Alignment.center,
//                                   margin: EdgeInsets.all(18.0),
//                                   padding: EdgeInsets.all(
//                                       32.0 + animValues[0] * 12.0),
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: animValues[1],
//                                       border: Border.all(
//                                           color: animValues[2], width: 2.0)),
//                                   child: Text(
//                                     value,
//                                   )));
//                         },
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, bottom: 3),
//                         child: Text('Name'),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, bottom: 3),
//                         child: Text('Email'),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, bottom: 3),
//                         child: Text('Password'),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ListTile(
//               title: Text('Hand Payment',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//               leading: Radio(
//                 activeColor: buttonColor,
//                 value: Auth.signin,
//                 groupValue: _auth,
//                 onChanged: (Auth? value) {
//                   setState(() {
//                     _auth = value!;
//                   });
//                 },
//               ),
//             ),
//             if (_auth == Auth.signin)
//               Container(
//                 padding: EdgeInsets.all(10),
//                 color: bgColor,
//                 child: Form(
//                   key: _signupForm,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, bottom: 3),
//                         child: Text('Email'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       )),
//     );
//   }
// }
