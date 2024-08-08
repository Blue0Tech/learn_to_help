import 'package:flutter/material.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';

class ImportantCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Courses'),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  childAspectRatio: 2/3
              ),
              itemCount: popular.length,
              itemBuilder: (BuildContext context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    if(importantLabels[index]=='Bleeding') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[1])));
                    }
                    if(importantLabels[index]=='CPR') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[0])));
                    }
                    if(importantLabels[index]=='Choking') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[4])));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    width: 170,
                    height: 270,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(importantLabels[index],style: TextStyle(
                          color: Colors.green,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        )),
                        Expanded(
                          child: Image(
                            image: AssetImage(important[index]),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}