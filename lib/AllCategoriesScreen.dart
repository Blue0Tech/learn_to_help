import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ThemeDecider.dart';
import 'TutorialScreen.dart';
import 'itemModel.dart';
import 'global.dart' as global;

class AllCategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Categories'),
        backgroundColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
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
                    if(allLabels[index]=='Burns') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[3])));
                    }
                    if(allLabels[index]=='Choking') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[4])));
                    }
                    if(allLabels[index]=='Sprains') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialScreen(tutorial: tutorials[5])));
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
                        Text(allLabels[index],style: TextStyle(
                            color: ThemeDecider.decide()=='red' ? Colors.red : Colors.green,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        )),
                        Expanded(
                          child: Image(
                            image: AssetImage(all[index])
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