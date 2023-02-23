import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:services_lagbe/custom_UI/containerButton.dart';
import 'package:services_lagbe/custom_UI/drowear.dart';
import 'package:services_lagbe/model/serviceModel.dart';
import 'package:services_lagbe/screen/detailPage.dart';
import 'package:services_lagbe/utility/colors.dart';
import 'package:services_lagbe/utility/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: buttonColor,
        title: Text(
          'Services',
          style: text20whit(),
        ),
      ),
      body: ListView.builder(
          itemCount: ser.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CachedNetworkImage(
                          imageUrl: '${ser[index].mainimg}',
                          // "https://www.pngkey.com/png/detail/771-7712282_house-cleaning-cleaning-girl-png.png",
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
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${ser[index].servicName}',
                              style: text24(),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => DetailPage(
                                              model: ser[index],
                                            ))));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'Order Now',
                                      style: text20whit(),
                                    ),
                                  ),
                                  color: buttonColor,
                                  height: 40,
                                  width: 140,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  decoration: BoxDecoration(color: bgColor),
                ),
              ),
            );
          })),
    );
  }
}
