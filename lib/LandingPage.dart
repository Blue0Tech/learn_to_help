import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    pageController = PageController(initialPage: 2, viewportFraction: 0.8);
  }
  Future<bool> _onWillPop() async {
    return(await showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: Text('Are you sure?'),
          content: Text('Do you want to exit Learn2Help?'),
          actions: [
            TextButton(onPressed: () => {
              Navigator.of(context).pop()
            },child: Text('No')),
            TextButton(onPressed: () => {
              SystemNavigator.pop()
            },child: Text('Yes'))
          ],
        )
    ));
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: LandingPageContent(pageController)
    );
  }
}