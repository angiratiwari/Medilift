import 'package:flutter/material.dart';
import './openMap.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          color: Colors.white,
          height: 800,
          width: 800,
          child: IconButton(
            icon: Image.asset(
              'images/call.png',
              height: 210,
              width: 210,
            ),
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => openMap()))
            },
          )),
    ));
  }
}
