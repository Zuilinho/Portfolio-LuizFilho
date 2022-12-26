import "package:flutter/material.dart";
import 'package:unicons/unicons.dart';
import '../../../constants.dart';

class Languages extends StatelessWidget {
  const Languages({
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
            child: Text("LANGUAGES",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2)),
        const LanguagesSubtitle(text: "More than 1 year"),
        const LanguagesText(text: "SQL"),
        const LanguagesText(text: "Dart"),
        const LanguagesText(text: "Java"),
        const LanguagesText(text: "Kotlin"),
        const LanguagesText(text: "Python"),
        const LanguagesSubtitle(text: "Less than 1 year"),
        const LanguagesText(text: "C#"),
        const LanguagesText(text: "C/C++"),
        const LanguagesText(text: "JavaScript"),
      ],
    );
  }
}

class LanguagesText extends StatelessWidget {
  const LanguagesText({
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

class LanguagesSubtitle extends StatelessWidget {
  const LanguagesSubtitle({
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