import 'dart:html';
import 'dart:io';

import 'my_info.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:portfolio_luizhbfilho/screens/main/components/coding.dart';
import 'package:portfolio_luizhbfilho/screens/main/components/skills.dart';
import 'package:portfolio_luizhbfilho/screens/main/components/knowledges.dart';
import 'package:portfolio_luizhbfilho/screens/main/components/area_info_text.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Age",
                      text: "23",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Curitiba",
                    ),
                    const AreaInfoText(
                      title: "Country",
                      text: "Brazil",
                    ),
                    const AreaInfoText(
                      title: "University",
                      text: "PUCPR",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () => {downloadFile()},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            const Icon(UniconsLine.download_alt)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: colorMidnightBlue,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () => {openSite("linkedin")},
                            icon: const Icon(UniconsLine.linkedin),
                          ),
                          IconButton(
                            onPressed: () => {openSite("github")},
                            icon: const Icon(UniconsLine.github),
                          ),
                          IconButton(
                            onPressed: () => {openSite("instagram")},
                            icon: const Icon(UniconsLine.instagram),
                          ),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  downloadFile() async {
    const path = "assets/curriculo_luizhbfilho.pdf";
    AnchorElement anchorElement = AnchorElement(href: path);
    anchorElement.download = "CV";
    anchorElement.click();
  }
  openSite(String site) async {
    const linkedinUrl = "https://www.linkedin.com/in/luizhbfilho/";
    const gitHubUrl = "https://github.com/Zuilinho";
    const instagramUrl = "https://www.instagram.com/luizbaldao/?hl=pt-br";

    if (site == "linkedin"){
      if (await canLaunch(linkedinUrl)){
        await launch(linkedinUrl);
      } else {
        throw "Could not launch $linkedinUrl";
      }
    }
    if (site == "github"){
      if (await canLaunch(gitHubUrl)){
        await launch(gitHubUrl);
      } else {
        throw "Could not launch $gitHubUrl";
      }
    }
    if (site == "instagram"){
      if (await canLaunch(instagramUrl)){
        await launch(instagramUrl);
      } else {
        throw "Could not launch $instagramUrl";
      }
    }
  }
}


