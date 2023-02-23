// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:services_lagbe/screen/aboutUs.dart';
import 'package:services_lagbe/utility/colors.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(250),
        ),
        child: SizedBox(
          width: 250,
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  //Color(0xff4367b1)
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-6/330186439_714177010199470_435684533005643360_n.png?stp=dst-png_s960x960&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=jK-Yitr_-WUAX-QSqcO&_nc_ht=scontent.fdac24-4.fna&oh=00_AfCvEkYmixU0_SHMscBYVn8mI3mWZvLoWqHjNe8bGwa36Q&oe=63F79789',
                              scale: 1))),
                  accountName: Text(
                    '',
                    style: TextStyle(
                      fontSize: 1,
                      fontWeight: FontWeight.w800,
                      //color: Colors.grey[300],
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    'Your Services',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'News (Blog)',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => BlogListPage())));
                  },
                  leading: Icon(
                    Icons.add_to_home_screen,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Color & Design',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.notifications,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Social Media',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.browser_updated,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'About US',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  leading: Icon(
                    Icons.people,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Login Options',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: ((context) => LoginPage())));
                  },
                  leading: Icon(
                    Icons.touch_app,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black38,
                ),
                ListTile(
                  title: Text(
                    'Close Menu',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.close,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///-------------------------------



// class MyEndDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 80),
//       child: ClipRRect(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(250),
//         ),
//         child: SizedBox(
//           width: 250,
//           child: Drawer(
//             child: new ListView(
//               children: <Widget>[
//                 new UserAccountsDrawerHeader(
//                   accountName: new Text(
//                     '',
//                     style: TextStyle(
//                       fontSize: 1,
//                       fontWeight: FontWeight.w800,
//                       color: Colors.black,
//                     ),
//                   ),
//                   accountEmail: new Text(
//                     'Account Settings',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w800,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'Profile & Security',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                   leading: new Icon(
//                     Icons.person,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'Notifications',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                   leading: new Icon(
//                     Icons.notifications,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'Favorites',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                   leading: new Icon(
//                     Icons.favorite,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 new Divider(
//                   color: Colors.black38,
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'About WelakaOne',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     //Navigator.pushReplacementNamed(context, Routes.about);
//                     //Navigator.popAndPushNamed(context, Routes.app1);
//                   },
//                   leading: new Icon(
//                     Icons.info_outline,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 new Divider(
//                   color: Colors.black38,
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'Close Menu',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                   leading: new Icon(
//                     Icons.close,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 new ListTile(
//                   title: new Text(
//                     'Log Out & Exit',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   leading: new Icon(
//                     Icons.exit_to_app,
//                     size: 26.0,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }