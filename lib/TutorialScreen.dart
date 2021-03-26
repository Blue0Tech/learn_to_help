import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TutorialScreenImagePreview.dart';
import 'ExtraInfoTutorialScreen.dart';
import 'ScreenshotScroller.dart';
import 'TutorialScreenPlayVideo.dart';
import 'TutorialScreenQuizStart.dart';
import 'itemModel.dart';

class TutorialScreen extends StatefulWidget {
  final Tutorial tutorial;
  TutorialScreen({this.tutorial});
  @override
  TutorialScreenState createState() => TutorialScreenState();
}

class TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              TutorialScreenImagePreview(widget.tutorial.imageUrl),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30.0),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: 30.0,
                    color: Colors.red[300],
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 30.0),
                    onPressed: () {
                      //
                    },
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30.0,
                    color: Colors.red[300],
                  )
                ]
              ),
              Positioned(
                bottom: 10.0,
                left: 40.0,
                child: IconButton(
                  onPressed: () => print('Add to My List'),
                  icon: Icon(Icons.add),
                  iconSize: 40.0,
                  color: Colors.red[500],
                ),
              ),
              TutorialScreenPlayVideo(widget.tutorial.youtubeVideo),
              Positioned(
                bottom: 10.0,
                right: 40.0,
                child: IconButton(
                  onPressed: () => print('Share'),
                  icon: Icon(Icons.share),
                  iconSize: 40.0,
                  color: Colors.red[500],
                )
              )
            ],
          ),
          SizedBox(height: 30.0),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0,right: 8.0),
                child: Text(widget.tutorial.title, style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )),
              ),
              SizedBox(height: 8.0),
              Text('⭐ ⭐ ⭐ ⭐ ⭐'),
              SizedBox(height: 8.0),
              ExtraInfoTutorialScreen(),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(widget.tutorial.description, style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 15.0
                )),
              ),
              SizedBox(height: 15.0),
              TutorialScreenQuizStart(),
              SizedBox(height: 15.0),
              Text('Images', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )),
              ScreenshotScroller(widget.tutorial.screenshots)
            ],
          )
        ],
      ),
    );
  }
}