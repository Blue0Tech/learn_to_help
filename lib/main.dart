import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_to_help/ThemeDecider.dart';

import 'AppContainer.dart';
import 'global.dart' as global;
// import 'ProjectOptions.dart' as options; // added to .gitignore for security reasons

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeDecider.fetchTheme();
  var _initialization = Firebase.initializeApp(
    options: FirebaseOptions()
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(_initialization),
    )
  );
}

class App extends StatelessWidget {
  var _initialization;
  App(this._initialization);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: this._initialization,
      builder: (context,snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          bool loggedIn = false;
          if(FirebaseAuth.instance.currentUser!=null) {
            loggedIn = true;
          }
          return AppContainer(loggedIn);
        }
        if(snapshot.hasError) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Connection failed.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
        return SafeArea(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Text('Loading'),
          ),
        );
      },
    );
  }
}