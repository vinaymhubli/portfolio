import 'package:flutter/material.dart';
import 'package:vinportfolio/utilities/responsive.dart';


class AboutmePage extends StatelessWidget {
  const AboutmePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          "I build things for the andriod,ios & for web. . . . . ",
          style: Responsive.isDesktop(context)
              ? Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )
              : Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),textAlign: TextAlign.center,
        ),
        AspectRatio(
          aspectRatio:Responsive.isMobileLarge(context) ? 1.4 : 3,
          child: Image.asset("assets/icons/dash.png")),
        SizedBox(height: 5.0),
        Center(
          child: Text(
            "Hi, I am Vinay",
            style: Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                : Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
          ),
        ),
        SizedBox(height: 5.0),
//         OverflowProofText(
//   text: Text("Am a certified & skilled cross platform Mobile Application Developer and experinced programmer with an extensive history of designing and coding solutions.Skilled in Google's Flutter/Dart ,Firebase App .if you are looking for a highly skilled and rich experienced mobile expert with a deep knowledge,a professional attitude,excellent communication skills and highest code quality,then I'm the person looking for .In addition promise to always deliver honest and speedy services"),
//   fallback: Text("Am a certified & skilled cross platform Mobile Application Developer and experinced programmer with an extensive history of designing and coding solutions.Skilled in Google's Flutter/Dart ,Firebase App .if you are looking for a highly skilled and rich experienced mobile expert with a deep knowledge,a professional attitude,excellent communication skills and highest code quality,then I'm the person looking for .In addition promise to always deliver honest and speedy services", overflow: TextOverflow.fade),
// ),
        Text(
          "Am a certified & skilled cross platform Mobile Application Developer and experinced programmer with an extensive history of designing and coding solutions.Skilled in Google's Flutter/Dart ,Firebase App .if you are looking for a highly skilled and rich experienced mobile expert with a deep knowledge,a professional attitude,excellent communication skills and highest code quality,then I'm the person looking for .In addition promise to always deliver honest and speedy services",
          style: Responsive.isDesktop(context)
              ? TextStyle(fontSize: 18.0, color: Colors.white60)
              : TextStyle(fontSize: 15.0, color: Colors.white60),
          textAlign: TextAlign.center,
        ),
        Divider(thickness: 7.0),
      ],
    );
  }
}

class OverflowProofText extends StatelessWidget {
  const OverflowProofText({required this.text, required this.fallback});

  final Text text;
  final Text fallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints size) {
          final TextPainter painter = TextPainter(
            maxLines: 2,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            text: TextSpan(
                style: text.style ?? DefaultTextStyle.of(context).style,
                text: text.data
            ),
          );

          painter.layout(maxWidth: size.maxWidth);

          return painter.didExceedMaxLines ? fallback : text;
        })
    );
  }
}