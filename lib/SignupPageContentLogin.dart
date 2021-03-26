import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'LandingPage.dart';

class SignupPageContentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1.5,Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
          child : MaterialButton(
            minWidth: double.infinity,
            height: 60.0,
            onPressed: () {
              while(Navigator.canPop(context)) {
                Navigator.removeRouteBelow(context,ModalRoute.of(context));
              }
              Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
            },
            color: Colors.greenAccent,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.black
                ),
                borderRadius: BorderRadius.circular(50.0)
            ),
            child: Text('Sign up',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0
            )),
          )
      ),
    ));
  }

}