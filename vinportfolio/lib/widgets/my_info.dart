import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';


class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.30,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/v2.jpeg"),
            ),
            Spacer(),
            Text("Vinay M ",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
            Text(
              "Flutter Mobile Application Developer ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
