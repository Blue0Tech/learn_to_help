import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LandingPageContent.dart';

class LandingPage extends StatefulWidget {
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }
  @override
  Widget build(BuildContext context) {
    return LandingPageContent(pageController);
  }
}