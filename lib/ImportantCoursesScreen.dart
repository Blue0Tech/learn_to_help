import 'package:flutter/material.dart';
import 'ThemeDecider.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';
import 'global.dart' as global;

class ImportantCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Courses'),
        backgroundColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                childAspectRatio: 2/3
            ),
            itemCount: popular.length,
            itemBuilder: (BuildContext context, index) {
              return RawMaterialButton(
                onPressed: () {
                  if(importantLabels[index]=='Poisoning') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[2])));
                  }
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
                  child: Column(
                    children: [
                      Text(importantLabels[index],style: TextStyle(
                        color: ThemeDecider.decide()=='red' ? Colors.red : Colors.green,
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
    );
  }
}