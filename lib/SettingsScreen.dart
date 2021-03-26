import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Text('Feedback',style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20.0,
                  color: Colors.blue
                )),
                SizedBox(height: 100.0),
                Image(
                  image: AssetImage('assets/Learn2Help_logo.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}