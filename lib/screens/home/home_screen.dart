import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/screens/home/components/keywords.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/experiences.dart';
import 'package:portfolio_luizhbfilho/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
//        Keywords(),
        MyProjects(),
        Experiences(),
      ],
    );
  }
}
