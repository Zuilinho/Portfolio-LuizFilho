import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:portfolio_luizhbfilho/models/Project.dart';
import 'package:portfolio_luizhbfilho/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 25,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
              color: colorMidnightBlue,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Spacer(),
              Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context) ? 1 : 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.5),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => {openProject(project)},
                child: const Text(
                  "VIEW >>",
                  style: TextStyle(color: colorWhite),
                ),
              )
            ],
          ),
        ));
  }

  openProject(Project project) async {
    const project1 = "https://github.com/Zuilinho/weathrapp";
    const project2 = "https://github.com/Zuilinho/Portfolio-LuizFilho";
    const project3 = "https://github.com/Zuilinho";

    if (project.title == "Weathr App") {
      if (await canLaunch(project1)) {
        await launch(project1);
      } else {
        throw "Could not launch $project1";
      }
    }
    if (project.title == "My Responsive Portfolio") {
      if (await canLaunch(project2)) {
        await launch(project2);
      } else {
        throw "Could not launch $project2";
      }
    }
    if (project.title == "Data Structures Puzzle") {
      if (await canLaunch(project3)) {
        await launch(project3);
      } else {
        throw "Could not launch $project3";
      }
    }
  }
}
