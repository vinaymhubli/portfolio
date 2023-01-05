import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/models/project_model.dart';
import 'package:vinportfolio/utilities/responsive.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: project.onPressed,
            child: Text(
              "Click here to open >>",
              style: TextStyle(color: buttonColor),
            ),
          ),
        ],
      ),
    );
  }
}
