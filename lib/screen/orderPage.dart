import 'dart:io';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:services_lagbe/custom_UI/banktk.dart';
import 'package:services_lagbe/custom_UI/containerButton.dart';
import 'package:services_lagbe/custom_UI/textfilled.dart';
import 'package:services_lagbe/utility/colors.dart';

class OrderPage extends StatefulWidget {
  OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController dateInput = TextEditingController();

  final _signupForm = GlobalKey<FormState>();
  final _signinForm = GlobalKey<FormState>();

  TextEditingController emaileditingController = TextEditingController();
  TextEditingController nameeditingController = TextEditingController();
  TextEditingController passwordeditingController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emaileditingController.dispose();
    nameeditingController.dispose();
    passwordeditingController.dispose();
  }

  ///image selects
  final ImagePicker imgpicker = ImagePicker();

  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  ///end
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(221, 167, 170, 5),
        child: Icon(Icons.maps_home_work),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Details',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: bgColor),
        ),
        elevation: 0,
        backgroundColor: buttonColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          imagefiles != null
              ? Wrap(
                  children: imagefiles!.map((imageone) {
                    return Container(
                        child: SizedBox(
                      height: 110,
                      width: 150,
                      child: ListView(
                        children: [
                          Card(
                            child: Container(
                              height: 100,
                              width: 150,
                              child: Image.file(
                                File(
                                  imageone.path,
                                ),
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
                  }).toList(),
                )
              : Image.network(
                  'https://www.shareicon.net/data/128x128/2016/06/15/781327_select_512x512.png',
                  height: 100,
                  width: 150,
                ),
          ElevatedButton(
              onPressed: () {
                openImages();
              },
              child: Text("Selects Your Images")),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'Whear Pickup?',
                icons: Icon(Icons.location_history),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'where to reach?',
                icons: Icon(Icons.location_city),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'How many workers?',
                icons: Icon(Icons.air),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'Your Neme.',
                icons: Icon(Icons.air),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'Start Time.',
                icons: Icon(Icons.timer),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFilledDemo(
                texts: 'End Time.',
                icons: Icon(Icons.timer),
              )),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: dateInput,

                style: new TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.w500),
                //editing controller of this TextField
                decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red),
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      size: 24,
                      color: buttonColor,
                    ),
                    //icon of text field
                    labelStyle: TextStyle(
                        fontSize: 20, color: Color.fromARGB(177, 66, 60, 60)),
                    labelText: "Enter Date"),
                readOnly: true,

                //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(
                        formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {}
                },
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              cursorColor: buttonColor,
              // ignore: unnecessary_new
              style: new TextStyle(
                  fontSize: 24, color: textColor, fontWeight: FontWeight.w500),
              //  controller: _controller,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Enter Description here',
                filled: true,
              ),
              maxLines: 5,
              maxLength: 4096,
              textInputAction: TextInputAction.done,
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter a value';
                }
                return null;
              },
            ),
          ),
          //SizedBox(height: 300, child: Bank()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              text: 'Submit',
            ),
          )
        ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(backgroundColor: ),
    );
  }
}
