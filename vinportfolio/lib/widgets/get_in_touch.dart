import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';


class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Text(
            " GET IN TOUCH",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  launch("tel:+918317408836");
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/whatsapp-121.svg",
                          color: primaryColor, height: 22),
                    ),
                    Text(":-"),
                    SizedBox(width: 4.0),
                    Text(
                      "8317408836",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  launch(
                      "https://www.google.com/maps/d/u/0/viewer?mid=1g_BuYLMlJBKgAHr-xBop7Oxv5RU&hl=en_US&ll=15.35405199999999%2C75.13172100000001&z=17");
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/location.svg",
                        color: primaryColor,
                        width: 25,
                      ),
                    ),
                    Text(":-"),
                    SizedBox(width: 4.0),
                    Text(
                      "Hubli, Karnataka",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  launch(
                      "mailto:vinayhubli.m@gmail.com?subject=Confirmation for interview Title&body= Hi Vinay\n I came across your profile on your portfolio.I’m a recruiter and we’re looking for a mobile application developer role that I think you would be a good fit for.");
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/mail-2564.svg",
                        color: primaryColor,
                        width: 25,
                      ),
                    ),
                    Text(":-"),
                    SizedBox(width: 4.0),
                    Text(
                      "vinayhubli.m@gmail.com",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
