import 'package:flutter/material.dart';

import 'itemModel.dart';

class ItemTitle extends StatelessWidget {
  int index = 0;
  ItemTitle(int index) {
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30.0,
      bottom: 40.0,
      child: Container(
        width: 250.0,
        child: Text(
          tutorials[index].title.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}