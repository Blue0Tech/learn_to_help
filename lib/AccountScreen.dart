import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Text('Please sign in to edit your account',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(height: 150.0),
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