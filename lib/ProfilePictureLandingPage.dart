import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePictureLandingPage extends StatefulWidget {
  @override
  PfpState createState() => PfpState();
}

class PfpState extends State<ProfilePictureLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Image.network(FirebaseAuth.instance.currentUser.photoURL ?? 'https://github.com/Blue0Tech/learn_to_help/raw/main/assets/Learn2Help_logo.png',loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
      if(loadingProgress==null) {
        return child;
      } else {
        return Image(
          image: AssetImage('assets/Learn2Help_logo.png'),
        );
      }
    });
  }
}