// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:ionicons/ionicons.dart';

class Noti_fication extends StatefulWidget {
  const Noti_fication({Key? key}) : super(key: key);

  @override
  State<Noti_fication> createState() => _Noti_ficationState();
}

class _Noti_ficationState extends State<Noti_fication> {
  @override
  Widget build(BuildContext context) {
    var notificationController = TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        SizedBox(
          width: 0.5 * w,
          height: 0.25 * h,
        ),
        Center(
            child: Container(
                child: Text(
          "Notified!",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ))),
        SizedBox(
          height: 0.04 * h,
        ),
        Center(
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
              child: Icon(
                Icons.check_rounded,
                size: 80,
              )),
        ),
      ],
    )));
  }
}
