import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Luiz Filho - Portfolio",
      theme: ThemeData.dark().copyWith(
        primaryColor: colorBlueCrayola,
        scaffoldBackgroundColor: colorOxfordBlue,
        canvasColor: colorMidnightBlue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: colorBlueCrayola)
            .copyWith(
              bodyText1: const TextStyle(color: colorWhite),
              bodyText2: const TextStyle(color: colorWhite),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
