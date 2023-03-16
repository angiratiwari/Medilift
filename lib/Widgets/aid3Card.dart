import 'package:flutter/material.dart';
import '../colors.dart' as color;
import './navigateToNextScreen.dart';

class aid3Card extends StatelessWidget {
  const aid3Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 90) / 2,
      height: 140,
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          // color: Colors.white,
          gradient: LinearGradient(colors: [
            color.AppColor.gradientFirst.withOpacity(0.8),
            color.AppColor.gradientSecond.withOpacity(0.9)
          ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(15),
          // image: const DecorationImage(image: AssetImage("asset/heart.png")),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                offset: const Offset(5, 5),
                color: color.AppColor.gradientSecond.withOpacity(0.1)),
            BoxShadow(
                blurRadius: 3,
                offset: const Offset(-5, -5),
                color: color.AppColor.gradientSecond.withOpacity(0.1))
          ]),
      child: InkWell(
        onTap: () {
          navigateToNextScreen(context, "aid3");
        },
        child: const Center(
          child: Align(
            alignment: Alignment.center,
            child: Text("Heat Exhaustion",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w300,
                    color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
