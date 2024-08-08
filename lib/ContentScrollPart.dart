import 'package:flutter/material.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';

class ContentScrollPart extends StatelessWidget {
  final List<String> images;
  final double imageHeight;
  final double imageWidth;
  final List<String> labels;
  ContentScrollPart(this.images,this.imageHeight,this.imageWidth,this.labels);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              RawMaterialButton(
                onPressed: () {
                  if(labels[index]=='Poisoning') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[2])));
                  }
                  if(labels[index]=='Bleeding') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[1])));
                  }
                  if(labels[index]=='CPR') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[0])));
                  }
                  if(labels[index]=='Burns') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[3])));
                  }
                  if(labels[index]=='Choking') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[4])));
                  }
                  if(labels[index]=='Sprains') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[5])));
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  height: imageHeight,
                  width: imageWidth,
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
                ),
              ),
              Positioned(
                right: 10.0,
                bottom: 20.0,
                child: Text(
                    labels != null ? labels[index] : '',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green[300],
                    shadows: [
                      Shadow(
                        blurRadius: 2.0
                      )
                    ],
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}