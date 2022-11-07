import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/responsive.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/space_background.gif",
              fit: BoxFit.cover,
            ),
            Container(color: colorOxfordBlue.withOpacity(0.66)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi! I'm a man with big dreams \nand who loves technology",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorWhite,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorWhite,
                            ),
                  ),
                  if (Responsive.isMobileLarge(context))
                    const SizedBox(height: defaultPadding),
                  const MyBuildAnimatedText(),
                  const SizedBox(height: defaultPadding),
                  if (!Responsive.isMobileLarge(context))
                    ElevatedButton(
                      onPressed: () => {
                        openContact(),
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: colorBlueCrayola),
                      child: const Text(
                        "CHAT ME",
                        style: TextStyle(color: colorWhite),
                      ),
                    )
                ],
              ),
            ),
          ],
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "build things for mobile and web",
          speed: const Duration(milliseconds: 150),
        ),
        TyperAnimatedText(
          "love learning new things and use them in my projects",
          speed: const Duration(milliseconds: 150),
        ),
      ],
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text("I "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      text: "<",
      style: TextStyle(color: colorWhite),
      children: [
        TextSpan(
          text: "?",
          style: TextStyle(color: colorWhite),
        ),
        TextSpan(text: ">", style: TextStyle(color: colorWhite)),
      ],
    ));
  }
}

openContact() async {
  const contactUrl = "https://contate.me/luizhbfdev";

  if (await canLaunch(contactUrl)) {
    await launch(contactUrl);
  } else {
    throw "Could not launch $contactUrl";
  }
}
