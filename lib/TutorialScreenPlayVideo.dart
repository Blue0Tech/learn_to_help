import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialScreenPlayVideo extends StatelessWidget {
  String videoUrl;
  TutorialScreenPlayVideo(this.videoUrl);
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
            launch(this.videoUrl);
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