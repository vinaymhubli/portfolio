import 'package:flutter/material.dart';
import 'package:vinportfolio/utilities/progress_indicator.dart';

import '../constants/colors.dart';

class SetofSkills extends StatelessWidget {
  const SetofSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.72,
                label: "Statemanagement",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.68,
                label: "Agile",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.50,
                label: "SQLite",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
