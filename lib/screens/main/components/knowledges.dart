import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:unicons/unicons.dart';

class Knowledges extends StatelessWidget {
  const Knowledges ({
    Key? key,
}) : super (key: key);

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
        const KnowledgeText(text: "MVVM, MVC"),
        const KnowledgeText(text: "JUnit, Espresso"),
        const KnowledgeText(text: "Git, XML, UI/UX"),
        const KnowledgeText(text: "Android, Flutter"),
        const KnowledgeText(text: "Coroutines, Retrofit, Dagger"),
        const KnowledgeText(text: "Clean Architecture, Clean Code"),
        const KnowledgeText(text: "SQL Databases, Data Structures")
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText ({
    Key? key,
    required this.text,
}) : super (key: key);

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