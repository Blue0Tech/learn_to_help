import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'LandingPage.dart';

class AppContainer extends StatelessWidget {
  final bool loggedIn;
  AppContainer(this.loggedIn);
  @override
  Widget build(BuildContext context) {
    if(this.loggedIn==true) {
      return LandingPage();
    } else {
      return HomePage();
    }
  }
}