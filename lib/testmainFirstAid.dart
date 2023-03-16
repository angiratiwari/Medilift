import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'colors.dart' as color;
import 'package:flutter/material.dart';
import './Widgets/aid1Card.dart';
import './Widgets/aid2Card.dart';
import './Widgets/aid3Card.dart';
import './Widgets/aid4Card.dart';
import './Widgets/aid5Card.dart';
import './Widgets/aid6Card.dart';

class testFirstAid extends StatefulWidget {
  const testFirstAid({Key? key}) : super(key: key);

  @override
  State<testFirstAid> createState() => _testFirstAidState();
}

class _testFirstAidState extends State<testFirstAid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding:
            const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 222,
              // height: 120,
              child: ListView(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 5, right: 5),
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        children: const [
                          aid1Card(),
                          aid2Card(),
                        ],
                      ),
                      Row(
                        children: const [
                          aid3Card(),
                          aid4Card(),
                        ],
                      ),
                      Row(
                        children: const [
                          aid5Card(),
                          aid6Card(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
