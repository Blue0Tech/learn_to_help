import 'package:flutter/material.dart';
import 'package:infinity_page_view/infinity_page_view.dart';

class ScreenshotScroller extends StatelessWidget {
  final List<String> images;
  ScreenshotScroller(this.images);
  final InfinityPageController _pageController = InfinityPageController(initialPage: 1, viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: InfinityPageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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