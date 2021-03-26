import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'HomePageContentLogin.dart';
import 'HomePageContentWelcome.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        HomePageContentWelcome(),
        FadeAnimation(1.4,Container(
          // height: MediaQuery.of(context).size.height / 3,
          height: 150.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Learn2Help_logo.png')
              )
          ),
        )),
        HomePageContentLogin()
      ]
    );
  }
}