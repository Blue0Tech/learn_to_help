import 'package:flutter/material.dart';

import 'ContentScrollPart.dart';

class ContentScroll extends StatelessWidget {
  final List<String> images;
  final String title;
  final double imageHeight;
  final double imageWidth;
  final List<String> labels;
  final newScreen;
  ContentScroll({this.images,this.title,this.imageHeight,this.imageWidth,this.labels,this.newScreen});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600
              )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => newScreen));
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30.0,
                ),
              )
            ],
          )
        ),
        ContentScrollPart(this.images,this.imageHeight,this.imageWidth,this.labels)
      ],
    );
  }
}