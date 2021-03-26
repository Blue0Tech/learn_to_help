import 'package:flutter/material.dart';

class ScreenshotScroller extends StatelessWidget {
  final List<String> images;
  ScreenshotScroller(this.images);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            width: 280.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0,4.0),
                      blurRadius: 6.0
                  )
                ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}