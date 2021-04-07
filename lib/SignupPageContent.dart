import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'LoginPage.dart';
import 'SignupPageContentFields.dart';
import 'SignupPageContentLogin.dart';
import 'SignupPageContentWelcome.dart';

class SignupPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SignupPageContentWelcome(),
        SizedBox(height: 35.0),
        SignupPageContentFields(),
        SizedBox(height: 35.0),
        SignupPageContentLogin(),
        SizedBox(height: 35.0),
        FadeAnimation(1.6,Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Already have an account?'),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
              ),),
            )
          ],
        ))
      ],
    );
  }
}