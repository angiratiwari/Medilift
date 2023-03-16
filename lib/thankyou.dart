// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Thank_you extends StatefulWidget {
  const Thank_you({Key? key}) : super(key: key);

  @override
  State<Thank_you> createState() => _Thank_youState();
}

class _Thank_youState extends State<Thank_you> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[300],
        ),
        body: Center(
            child: Text(
          '''   Thank you for your 
          Feedback!''',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.indigo),
        )));
  }
}
