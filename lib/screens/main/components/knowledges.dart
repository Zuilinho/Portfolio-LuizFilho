import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:unicons/unicons.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "KNOWLEDGES",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgesSubtitle(text: "Frameworks"),
        const KnowledgeText(text: "Android SDK, Flutter"),
        const KnowledgesSubtitle(text: "Architectures"),
        const KnowledgeText(text: "MVVM, MVC"),
        const KnowledgesSubtitle(text: "Unit tests"),
        const KnowledgeText(text: "JUnit, Espresso, Mockito"),
        const KnowledgesSubtitle(text: "Good practices"),
        const KnowledgeText(text: "Clean Architecture, Clean Code"),
        const KnowledgesSubtitle(text: "Data managing"),
        const KnowledgeText(text: "SQL/NoSQL Databases, Data Structures"),
        const KnowledgesSubtitle(text: "Others"),
        const KnowledgeText(text: "Git, XML, UI/UX"),
        const KnowledgeText(text: "Material Design 3, Firebase"),
        const KnowledgeText(text: "Coroutines, Retrofit, Dagger"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
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
          Icon(UniconsLine.arrow_right),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}

class KnowledgesSubtitle extends StatelessWidget {
  const KnowledgesSubtitle({
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
