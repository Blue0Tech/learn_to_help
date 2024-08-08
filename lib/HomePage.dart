import 'package:flutter/material.dart';

import 'HomePageContent.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
          child: HomePageContent(),
        )
      )
    );
  }
}