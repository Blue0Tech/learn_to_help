import 'package:flutter/material.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';

class PopularCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Courses'),
        backgroundColor: Colors.red[300],
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
                  if(popularLabels[index]=='Poisoning') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[2])));
                  }
                  if(popularLabels[index]=='Bleeding') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[1])));
                  }
                  if(popularLabels[index]=='CPR') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[0])));
                  }
                  if(popularLabels[index]=='Burns') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[3])));
                  }
                  if(popularLabels[index]=='Choking') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[4])));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(popularLabels[index],style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      )),
                      Image(
                        image: AssetImage(popular[index]),
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