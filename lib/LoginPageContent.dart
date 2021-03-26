import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'LoginPageContentFields.dart';
import 'LoginPageContentLogin.dart';
import 'LoginPageContentWelcome.dart';
import 'SignupPage.dart';

class LoginPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        LoginPageContentWelcome(),
        LoginPageContentFields(),
        LoginPageContentLogin(),
        FadeAnimation(1.5,Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Don\'t have an account?'),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: Text('Sign up',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0
            )))
          ],
        ))
      ],
    );
  }
}