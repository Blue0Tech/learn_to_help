import 'package:flutter/material.dart';

import 'FadeAnimation.dart';

class HomePageContentWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FadeAnimation(1,Text('Learn To Help',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0
        ))),
        SizedBox(height: 20.0),
        FadeAnimation(1.2,Text('To get started, log in or sign up',textAlign : TextAlign.center,style: TextStyle(
            color: Colors.grey[700],
            fontSize: 15.0
        ))),
      ],
    );
  }
}