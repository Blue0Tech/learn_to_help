import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
        backgroundColor: Colors.green[300],
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
                Text('Version: 1.0.12'),
                SizedBox(height: 30.0),
                InkWell(
                  child: Text('This project on github', style:TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    color: Colors.blue
                  )),
                  onTap: () {
                    launch('https://github.com/Blue0Tech/learn_to_help');
                  },
                ),
                SizedBox(height: 30.0),
                InkWell(
                  child: Text('Email me', style:TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20.0,
                      color: Colors.blue
                  )),
                  onTap: () {
                    launch('mailto:blue0techprogramming@gmail.com');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}