import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';

class LoginPageContentWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/Learn2Help_logo.png'),
          height: 70.0,
          width: 90.0,
        ),
        FadeAnimation(1,Text('Login',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ))),
        SizedBox(height: 20.0),
        FadeAnimation(1.2,Text('Login to your account',style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey[700]
        )))
      ],
    );
  }
}