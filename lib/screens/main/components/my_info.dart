import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: colorMidnightBlue,
          child: Column(
            children: [
              const Spacer(flex: 2),
              const CircleAvatar(
                radius: 85,
                backgroundImage: AssetImage("assets/images/my_photo.png"),
              ),
              const Spacer(flex: 2),
              Text(
                "Luiz Filho",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2,
              ),
              const Text(
                "Mobile Developer | Android | Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        )
    );
  }
}