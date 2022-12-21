import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:portfolio_luizhbfilho/models/Experience.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experiences,
  }) : super(key: key);

  final Experience experiences;

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 25,
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
              color: colorMidnightBlue,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experiences.roleCompanyName!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(experiences.period!),
              const SizedBox(height: defaultPadding),
              Text(
                experiences.description!,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.5),
              )
            ],
          ),
        ));
  }
}
