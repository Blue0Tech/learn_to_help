import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'LandingPage.dart';

class LandingPageIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Continue to first aid trainer'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeAnimation(1,Text(
              'Start your',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 35.0
              ),
            )),
            FadeAnimation(1.1,Text(
              'Training',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 50.0,
                fontWeight: FontWeight.bold
              )),
            ),
            FadeAnimation(1.2,Image(
              image: AssetImage('assets/first_aid.png'),
            )),
            FadeAnimation(1.3,Container(
              margin: EdgeInsets.all(25.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60.0,
                onPressed: () {
                  while(Navigator.canPop(context)) {
                    Navigator.removeRouteBelow(context,ModalRoute.of(context));
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                },
                color: Colors.yellow,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(50.0)
                ),
                child: Text('Continue',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
                )),
              ),
            )),
          ],
        ),
      ),
    );
  }
}