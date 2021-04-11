import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'FadeAnimation.dart';
import 'LandingPage.dart';
import 'LoginError.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';

class HomePageContentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FadeAnimation(1.5,MaterialButton(
          minWidth: double.infinity,
          height: 60.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
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
        )),
        SizedBox(height: 20.0),
        FadeAnimation(1.6,MaterialButton(
          minWidth: double.infinity,
          height: 60.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
          },
          color: Colors.yellow,
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
        )),
        SizedBox(height: 20.0),
        FadeAnimation(1.65,MaterialButton(
          minWidth: double.infinity,
          height: 60.0,
          onPressed: () async {
            var auth = FirebaseAuth.instance;
            var signIn = GoogleSignIn();
            var signInAccount = await signIn.signIn();
            if(signInAccount!=null) {
              var signInAuth = await signInAccount.authentication;
              var authCred = GoogleAuthProvider.credential(
                accessToken: signInAuth.accessToken,
                idToken: signInAuth.idToken
              );
              try {
                var userCred = await auth.signInWithCredential(authCred);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
              } catch (e) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginError()));
              }
            }
          },
          color: Colors.white,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.black
              ),
              borderRadius: BorderRadius.circular(50.0)
          ),
          child: Text('Sign in with google',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0
          )),
        )),
      ],
    );
  }
}