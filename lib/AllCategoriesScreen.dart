import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';

class AllCategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Categories'),
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
            itemCount: all.length,
            itemBuilder: (BuildContext context, index) {
              return RawMaterialButton(
                onPressed: () {
                  if(allLabels[index]=='Poisoning') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[2])));
                  }
                  if(allLabels[index]=='Bleeding') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[1])));
                  }
                  if(allLabels[index]=='CPR') {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[0])));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(allLabels[index],style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      )),
                      Image(
                        image: AssetImage(all[index]),
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