import 'package:flutter/material.dart';
import 'package:vinportfolio/views/main_view.dart';
import 'package:vinportfolio/widgets/about_me.dart';
import 'package:vinportfolio/widgets/aboutme_page.dart';
import 'package:vinportfolio/widgets/home_banner.dart';
import 'package:vinportfolio/widgets/my_project.dart';
import 'package:vinportfolio/widgets/recommendation_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AboutMe(),
        HomeBanner(),
        AboutmePage(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
