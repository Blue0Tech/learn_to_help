import 'package:flutter/material.dart';

import 'FadeAnimation.dart';
import 'global.dart' as global;

class LoginPageContentFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: <Widget>[
          FadeAnimation(1.2,makeInput(label: 'Email')),
          FadeAnimation(1.3,makeInput(label: 'Password',obscureText: true))
        ],
      ),
    );
  }
  Widget makeInput({label,obscureText=false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,style:TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        )),
        SizedBox(height: 5.0,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              )
          ),
          autocorrect: false,
          onChanged: (value) {
            if(label=='Email') {
              global.email = value;
            }
            if(label=='Password') {
              global.pass = value;
            }
          },
        ),
        SizedBox(height: 30.0,)
      ],
    );
  }
}