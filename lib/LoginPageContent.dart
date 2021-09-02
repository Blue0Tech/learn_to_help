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
    return ListView(
      children: <Widget>[
        LoginPageContentWelcome(),
        SizedBox(height: 75.0),
        LoginPageContentFields(),
        SizedBox(height: 75.0),
        LoginPageContentLogin(),
        SizedBox(height: 75.0)
      ],
    );
  }
}