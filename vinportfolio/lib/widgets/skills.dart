import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 5.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            " TECHNICAL SKILLS",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.90,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.80,
                label: "Firebase",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.76,
                label: "Github",
              ),
            ),
            //  SizedBox(width: defaultPadding),
            // Expanded(
            //   child: AnimatedCircularProgressIndicator(
            //     percentage: 0.68,
            //     label: "Agile",
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
