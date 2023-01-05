import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            "ABOUT ME",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: buttonColor),
          ),
        ),
        SizedBox(
          height: 8.0,
        )
      ],
    );
  }
}
