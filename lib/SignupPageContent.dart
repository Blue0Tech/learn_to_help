import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        SizedBox(height: 35.0)
      ],
    );
  }
}