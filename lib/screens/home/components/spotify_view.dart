import "package:flutter/material.dart";
import 'package:portfolio_luizhbfilho/constants.dart';

class SpotifyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LISTENING NOW",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          Material(
            elevation: 25,
            borderRadius: BorderRadius.circular(12),
            child: Container(
                width: 400,
                alignment: Alignment.center,
                child: Image.network(
                    "https://spotify-now-playing-zuilinho.vercel.app/api/spotify?background_color=0B0051&border_color=0B0051")),
          )
        ],
      ),
    );
  }
}
