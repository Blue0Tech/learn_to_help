import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Text('App made by', style: TextStyle(
                  fontSize: 25.0
                )),
                SizedBox(height: 20.0),
                Text('Pruthvi Shrikaanth', style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(height: 50.0),
                Image(
                  image: AssetImage('assets/Learn2Help_logo.png'),
                ),
                SizedBox(height: 30.0),
                Text('Learn2Help, preview')
              ],
            ),
          ),
        ),
      ),
    );
  }
}