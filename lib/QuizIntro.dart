import 'package:flutter/material.dart';

import 'QuizResults.dart';

class QuizIntro extends StatelessWidget {
  List quiz;
  List answers;
  QuizIntro(quiz) {
    this.quiz = quiz;
    this.answers = List(quiz.length);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 600.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: quiz.length,
                  itemBuilder: (context,index) {
                    return Column(
                      children: [
                        Text(quiz[index][0],textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                        SizedBox(height: 12.0),
                        Container(
                          height: 300.0,
                          child: ListView.builder(
                            itemCount: quiz[index][1].length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context,index2) {
                              return Column(
                                children: [
                                  RawMaterialButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(quiz[index][1][index2],textAlign: TextAlign.center,style: TextStyle(
                                        color: Colors.white
                                      )),
                                    ),
                                    onPressed: () {
                                      this.answers[index] = index2;
                                    },
                                    fillColor: Colors.red[300],
                                  ),
                                  SizedBox(height: 10.0)
                                ],
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20.0)
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30.0),
            RawMaterialButton(
              fillColor: Colors.red[200],
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Submit answers'),
              ),
              onPressed: () {
                print(this.answers);
                bool correct = true;
                for(int i = 0; i<this.quiz.length; i++) {
                  if(answers[i]!=quiz[i][2]) {
                    correct = false;
                  }
                }
                Navigator.push(context,MaterialPageRoute(builder: (context) => QuizResults(correct)));
              },
            )
          ],
        ),
      ),
    );
  }
}