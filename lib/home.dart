// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui/settings.dart';
import 'package:ui/testmainFirstAid.dart';
import 'package:ui/welocme_page.dart';
import 'package:ui/your_location.dart';
import 'about_app.dart';
import 'amb_list.dart';
import 'feedback.dart';
import 'first_aid.dart';
import 'homepage.dart';
import 'noti_sent.dart';

// ignore: unnecessary_import

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;
  final _pages = [
    homePage(),
    testFirstAid(),
    AmbList(),
    Settings(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo[300],
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: 'First-aid'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airport_shuttle), label: 'Ambulance list'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text('M E D I L I F T', style: TextStyle(fontSize: 15)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Noti_fication()));
                //do something
              },
              icon: Icon(Icons.notifications_active_rounded))
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.indigo[200],
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.account_circle_sharp,
                  size: 30,
                ),
              ),
              ListTile(
                leading: Icon(Icons.add_location),
                title: Text(
                  'Your location',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => YourLocation(
                            email: '',
                          )));
                },
              ),
              ListTile(
                leading: Icon(Icons.chat_outlined),
                title: Text(
                  'Feedback',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Feed_back()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_support_outlined),
                title: Text(
                  'About App',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutApp()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}






// Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           child: Icon(
//             Icons.android,
//             size: 80,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.indigo[300],
//               borderRadius: BorderRadius.all(Radius.circular(100)),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey,
//                     offset: Offset(4.0, 4.0),
//                     blurRadius: 15.0,
//                     spreadRadius: 1.0),
//                 BoxShadow(
//                     color: Colors.white,
//                     offset: Offset(-4.0, -4.0),
//                     blurRadius: 15.0,
//                     spreadRadius: 1.0),
//               ]),
//         ),
//       ),