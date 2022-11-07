import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:portfolio_luizhbfilho/components/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "LANGUAGES",
            style: TextStyle(color: colorBlueCrayola),
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.6, label: "Kotlin"),
        AnimatedLinearProgressIndicator(percentage: 0.6, label: "SQL"),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: "Dart"),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: "Java"),
        AnimatedLinearProgressIndicator(percentage: 0.4, label: "Python"),
      ],
    );
  }
}
