import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePictureLandingPage extends StatefulWidget {
  @override
  PfpState createState() => PfpState();
}

class PfpState extends State<ProfilePictureLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Image.network(FirebaseAuth.instance.currentUser.photoURL,loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
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