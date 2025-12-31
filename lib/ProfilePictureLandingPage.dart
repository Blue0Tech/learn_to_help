import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePictureLandingPage extends StatefulWidget {
  @override
  PfpState createState() => PfpState();
}

class PfpState extends State<ProfilePictureLandingPage> {
  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: AssetImage('assets/Learn2Help_logo.png'),
      image: NetworkImage(FirebaseAuth.instance.currentUser?.photoURL??"blank"), // to prevent null error being thrown
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset('assets/Learn2Help_logo.png');
      },
    );
  }
}