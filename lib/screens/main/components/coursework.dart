import "package:flutter/material.dart";
import 'package:unicons/unicons.dart';
import '../../../constants.dart';

class Coursework extends StatelessWidget {
  const Coursework({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text("COURSEWORK",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2)),
        CourseSubtitle(text: "Concluded"),
        CourseTextConcluded(text: "Databases"),
        CourseTextConcluded(text: "Data Structures"),
        CourseTextConcluded(text: "Software Architecture"),
        CourseTextConcluded(text: "Object-Oriented Programming"),
        CourseTextConcluded(text: "Computer logic and Algorithms"),
        CourseTextConcluded(text: "And more..."),
        CourseSubtitle(text: "Studying"),
        CourseTextStudying(text: "Big Data"),
        CourseTextStudying(text: "Systems Design"),
        CourseTextStudying(text: "Cloud Computing"),
        CourseTextStudying(text: "Artificial Intelligence"),
        CourseTextStudying(text: "Problem Resolving with Graphs")
      ],
    );
  }
}

class CourseTextConcluded extends StatelessWidget {
  const CourseTextConcluded({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(UniconsLine.check),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}

class CourseTextStudying extends StatelessWidget {
  const CourseTextStudying({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(UniconsLine.clock_nine),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}

class CourseSubtitle extends StatelessWidget {
  const CourseSubtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Text(text, style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}

