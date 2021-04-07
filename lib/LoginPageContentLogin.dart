import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'LandingPage.dart';
import 'global.dart' as global;
import 'LoginError.dart';

class LoginPageContentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1.4,Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
          child : MaterialButton(
            minWidth: double.infinity,
            height: 60.0,
            onPressed: () async {
              bool success = true;
              try {
                global.userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: global.email, password: global.pass);
              } on Exception catch (e) {
                success = false;
                print(e);
              }
              if(success==true) {
                global.pass = '';
                global.confirmPass = '';
                global.email = '';
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()));
              } else {
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginError()));
              }
            },
            color: Colors.greenAccent,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.black
                ),
                borderRadius: BorderRadius.circular(50.0)
            ),
            child: Text('Login',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0
            )),
          )
      ),
    ));
  }

}