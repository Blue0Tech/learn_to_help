import 'package:flutter/material.dart';

import 'itemModel.dart';

class ItemCover extends StatelessWidget {
  final int index;
  ItemCover(this.index);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0,4.0),
                  blurRadius: 10.0
              )
            ]
        ),
        child: Center(
          child: Hero(
            tag: tutorials[index].imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(tutorials[index].imageUrl),
                height: 220.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}