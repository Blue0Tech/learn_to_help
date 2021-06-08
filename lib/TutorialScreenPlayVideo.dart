import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ThemeDecider.dart';
import 'VideoPlayer.dart';
import 'global.dart' as global;

class TutorialScreenPlayVideo extends StatelessWidget {
  String videoUrl;
  List<String> paragraph;
  String title;
  String id;
  TutorialScreenPlayVideo(this.videoUrl,this.paragraph,this.title,this.id);
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
            var ref = FirebaseDatabase.instance.reference();
            var currentNum = 0;
            ref.child('global').child(id).once().then((value) {
              currentNum = value.value['hits'];
            });
            currentNum+=1;
            ref.child('global').child(id).push().set({
              "hits" : currentNum
            });
            Navigator.push(context,MaterialPageRoute(builder: (context) => VideoPlayer(videoUrl,paragraph,title)));
          },
          shape: CircleBorder(),
          child: Icon(
            Icons.play_arrow,
            size: 60.0,
            color: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
          ),
        ),
      ),
    );
  }
}