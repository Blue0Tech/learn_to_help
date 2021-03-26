import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'SignupPage.dart';
import 'HomePage.dart';
import 'LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}