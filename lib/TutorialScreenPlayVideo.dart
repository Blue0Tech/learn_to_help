import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'VideoPlayer.dart';

class TutorialScreenPlayVideo extends StatelessWidget {
  String videoUrl;
  List<String> paragraph;
  TutorialScreenPlayVideo(this.videoUrl,this.paragraph);
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 10.0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: RawMaterialButton(
          fillColor: Colors.white,
          padding: EdgeInsets.all(10.0),
          elevation: 12.0,
          onPressed: () {
            // launch(this.videoUrl);
            Navigator.push(context,MaterialPageRoute(builder: (context) => VideoPlayer(videoUrl,paragraph)));
          },
          shape: CircleBorder(),
          child: Icon(
            Icons.play_arrow,
            size: 60.0,
            color: Colors.red[300],
          ),
        ),
      ),
    );
  }
}