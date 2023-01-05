import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/responsive.dart';


class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 6.0,
          ),
          Text(
            "Certification",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: buttonColor),
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
           
            child: Row(
              children: [
                Container(
                    height: 250,
                    width: 330,
                    child: Image.asset(
                      'assets/certificates/vinay.jpg',
                    )),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                    child: Image.asset(
                  'assets/certificates/dart.jpg',
                  width: 350,
                )),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                    height: 250,
                    width: 330,
                    child: Image.asset(
                      'assets/certificates/bloc_certificate.jpg',
                    )),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                    height: 250,
                    width: 350,
                    child: Image.asset(
                      'assets/certificates/git.jpg',
                    )),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                    height: 250,
                    width: 330,
                    child: Image.asset(
                      'assets/certificates/testing_certificate.jpg',
                    )),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                    height: 250,
                    width: 350,
                    child: Image.asset(
                      'assets/certificates/Java_certificate.jpg',
                    )),
                SizedBox(
                  width: 15.0,
                ),
                
                Container(
                    height: 250,
                    width: 330,
                    child: Image.asset(
                      'assets/certificates/agile.jpg',
                    )),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            child: Center(
                child: Text(

              "Designed & Build by Vinay M 💙 Flutter",
              style:  Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    )
                : Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
