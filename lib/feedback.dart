// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui/thankyou.dart';

class Feed_back extends StatefulWidget {
  const Feed_back({Key? key}) : super(key: key);

  @override
  State<Feed_back> createState() => _Feed_backState();
}

class _Feed_backState extends State<Feed_back> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 0.5 * w,
              height: 0.25 * h,
            ),
            Text(
              'Feedback for the Driver',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.indigo,
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Feedback for the app',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.indigo,
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(
              height: 170,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.indigo,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thank_you()))
              },
              child: Text('S U B M I T'),
            )
          ],
        ),
      ),
    );
  }
}
