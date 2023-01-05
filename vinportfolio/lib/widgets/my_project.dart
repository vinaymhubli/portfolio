import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/models/project_model.dart';
import 'package:vinportfolio/utilities/responsive.dart';
import 'package:vinportfolio/widgets/project_card.dart';

class MyProjects extends StatelessWidget {
  MyProjects({
    Key? key,
  }) : super(key: key);
  final List<String> imgList = [
    'assets/sliders/1.jpg',
    'assets/sliders/2.jpg',
    'assets/sliders/3.jpg',
    'assets/sliders/4.jpg',
    'assets/sliders/5.jpg',
    'assets/sliders/6.jpg',
    'assets/sliders/7.jpg',
    'assets/sliders/8.jpg',
    'assets/sliders/9.jpg',
    'assets/sliders/10.jpg',
    'assets/sliders/12.jpg',
    'assets/sliders/13.jpg',
    'assets/sliders/14.jpg',
    'assets/sliders/15.jpg',
    'assets/sliders/16.jpg',
    'assets/sliders/17.jpg',
    'assets/sliders/18.jpg',
    'assets/sliders/19.jpg',
    'assets/sliders/20.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text(
            "My Projects",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: buttonColor),
          ),
        ),
        SizedBox(height: 20),
        CarouselSlider(
          items: imgList
              .map((item) => AspectRatio(

                aspectRatio: Responsive.isMobile(context) ? 1.3 : 3,
                child: Container(
                      height: 400,
                      width: 240,
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                        
                      ),
                    ),
              ))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.5,
            enlargeCenterPage: true,
          ),
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
