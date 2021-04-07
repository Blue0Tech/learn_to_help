import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'QuizResults.dart';

class QuizIntro extends StatelessWidget {
  List quiz;
  List answers;
  String id;
  QuizIntro(quiz,id) {
    this.quiz = quiz;
    this.answers = List(quiz.length);
    this.id = id;
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
                                    fillColor: this.answers[index]==index2 ? Colors.green[300] : Colors.red[300],
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
                if(correct==true) {
                  var ref = FirebaseDatabase.instance.reference();
                  var currentNum = 0;
                  ref.child('global').child(id).once().then((value) {
                    currentNum = value.value['pass_count'];
                  });
                  currentNum+=1;
                  ref.child('global').child(id).push().set({
                    "pass_count" : currentNum
                  });
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