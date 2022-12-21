import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:unicons/unicons.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "EDUCATION",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const EducationText(text: "Bachelor in Computer Science - Present"),
        const EducationText(text: "Pontifícia Universidade Católica do Paraná"),
      ],
    );
  }
}

class EducationText extends StatelessWidget {
  const EducationText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(UniconsLine.angle_double_right),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
