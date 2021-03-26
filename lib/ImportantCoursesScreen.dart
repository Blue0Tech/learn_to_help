import 'package:flutter/material.dart';
import 'itemModel.dart';

class ImportantCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Courses'),
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
              return Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(importantLabels[index],style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    )),
                    Image(
                      image: AssetImage(important[index]),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}