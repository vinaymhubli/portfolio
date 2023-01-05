import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/my_whatsapp.dart';
import 'package:vinportfolio/widgets/fav_sub.dart';
import 'package:vinportfolio/widgets/get_in_touch.dart';
import 'package:vinportfolio/widgets/knowledge.dart';
import 'package:vinportfolio/widgets/my_info.dart';
import 'package:vinportfolio/widgets/setofskills.dart';
import 'package:vinportfolio/widgets/skills.dart';


class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);
  final Uri _url = Uri.parse('https://github.com/vinaymhubli');
  final Uri _urltwitter = Uri.parse('https://twitter.com/VinayMHubli');
  final Uri _urllinkedin =
      Uri.parse('https://www.linkedin.com/in/vinay-m-135417251/');
      final Uri _urlresume =
      Uri.parse('https://drive.google.com/file/d/1zC1X7JfyhgXHH9XaFRcG62fedgb4W8dp/view?usp=sharing');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
   Future<void> _launchUrlResume() async {
    if (!await launchUrl(_urlresume)) {
      throw 'Could not launch $_urlresume';
    }
  }

  Future<void> _launchUrlTwitter() async {
    if (!await launchUrl(_urltwitter)) {
      throw 'Could not launch $_urltwitter';
    }
  }

  Future<void> _launchUrlLinkedin() async {
    if (!await launchUrl(_urllinkedin)) {
      throw 'Could not launch $_urllinkedin';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    GetInTouch(),
                    Skills(),
                    SetofSkills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(thickness: 5.0),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {_launchUrlResume();},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.orange,
                                  color: Color.fromARGB(255, 38, 152, 214)),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset(
                              "assets/icons/download.svg",
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 5.0),
                    Column(
                      children: [
                        Text('OTHER CONTACT INFO',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(color: Colors.teal)),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _launchUrlLinkedin();
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg",
                                color: Colors.teal),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchUrl();
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg",
                                color: Colors.teal),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchUrlTwitter();
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg",
                                color: Colors.teal),
                          ),
                          IconButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MyWhatsapp())),
                            icon: SvgPicture.asset(
                                "assets/icons/whatsapp-121.svg",
                                color: Colors.teal,
                                height: 22),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
