import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/screens/main/main_screen.dart';
import 'components/experiences.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Padding(
          padding: const EdgeInsets.only(top:16),
          child: MyProjects(),
        ),
        Experiences(),
      ],
    );
  }
}
