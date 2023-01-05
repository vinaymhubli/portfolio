import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "LANGUAGES",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.89,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.73,
          label: "C",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Java",
        ),
      ],
    );
  }
}
