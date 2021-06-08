import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'ThemeDecider.dart';
import 'global.dart' as global;

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     RawMaterialButton(
                //       padding: EdgeInsets.all(5.0),
                //       child: Text('Red theme', style: TextStyle(color: Colors.white)),
                //       onPressed: () async {
                //         var prefs = await SharedPreferences.getInstance();
                //         prefs.setString('theme', 'red');
                //       },
                //       fillColor: Colors.red[300],
                //     ),
                //     RawMaterialButton(
                //       padding: EdgeInsets.all(5.0),
                //       child: Text('Green theme'),
                //       onPressed: () async {
                //         var prefs = await SharedPreferences.getInstance();
                //         prefs.setString('theme','green');
                //       },
                //       fillColor: Colors.green[300],
                //     ),
                //   ],
                // ),
                // SizedBox(height: 5.0),
                // Text('Restart app to apply changes'),
                SizedBox(height: 25.0),
                Text('Feedback',style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20.0,
                  color: Colors.blue
                )),
                SizedBox(height: 60.0),
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