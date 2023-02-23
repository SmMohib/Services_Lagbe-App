// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:services_lagbe/custom_UI/containerButton.dart';
import 'package:services_lagbe/model/serviceModel.dart';
import 'package:services_lagbe/screen/orderPage.dart';
import 'package:services_lagbe/utility/colors.dart';
import 'package:services_lagbe/utility/texts.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, this.model});
  ServiceModel? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: buttonColor,
          title: Text(
            '${model!.servicName}',
            style: text20whit(),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      //height: MediaQuery.of(context).size.height / 3,
                      height: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: "${model!.mainimg}",
                          height: MediaQuery.of(context).size.height / 2.4,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: buttonColor),
                        height: 30,
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: bgColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${model!.rating}',
                                style: text16whait(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          textAlign: TextAlign.justify,
                          '${model!.servicName}',
                          style: text24(),
                        ),
                      ],
                    ),
                    // Text(
                    //   textAlign: TextAlign.justify,
                    //   'Home Clean',
                    //   style: text16(),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.justify,
                      '${model!.description}',
                      style: text16(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: model!.image!.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 220,

                          // ignore: sort_child_properties_last
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: double.infinity,
                              //height: MediaQuery.of(context).size.height / 3,
                              height: 200,
                              child: CachedNetworkImage(
                                imageUrl: "${model!.image![index]}",
                                height:
                                    MediaQuery.of(context).size.height / 2.4,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          color: bgColor,
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
        bottomNavigationBar: //ListTile(

            // subtitle: Text(
            //   '${model!.taka} TK',
            //   style: text20(),
            // ),
            InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => OrderPage())));
          },
          child: Container(
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(11)),
            height: 50,
            width: 100,
            child: Center(
                child: Text(
              'Oder',
              style: text20whit(),
            )),
          ),
        ));
  }
}
