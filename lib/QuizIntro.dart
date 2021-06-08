import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'QuizResults.dart';
import 'ThemeDecider.dart';
import 'global.dart' as global;

class QuizIntro extends StatefulWidget {
  List quiz;
  List answers;
  String id;
  QuizIntro(quiz,id) {
    this.quiz = quiz;
    this.answers = List(quiz.length);
    this.id = id;
  }

  @override
  _QuizIntroState createState() => _QuizIntroState();
}

class _QuizIntroState extends State<QuizIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 500.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.grey
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: widget.quiz.length,
                  itemBuilder: (context,index) {
                    return Column(
                      children: [
                        Text(widget.quiz[index][0],textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                        SizedBox(height: 12.0),
                        Container(
                          height: 280.0,
                          child: ListView.builder(
                            itemCount: widget.quiz[index][1].length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context,index2) {
                              return Column(
                                children: [
                                  RawMaterialButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(widget.quiz[index][1][index2],textAlign: TextAlign.center,style: TextStyle(
                                        color: Colors.white
                                      )),
                                    ),
                                    onPressed: () {
                                      setState((){this.widget.answers[index] = index2;});
                                    },
                                    fillColor: this.widget.answers[index]==index2 ? Colors.green[300] : Colors.red[300], // problem is this is running only on component load
                                  ),
                                  SizedBox(height: 2.0)
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15.0),
            RawMaterialButton(
              fillColor: ThemeDecider.decide()=='red' ? Colors.red[200] : Colors.green[200],
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Submit answers'),
              ),
              onPressed: () {
                print(this.widget.answers);
                bool correct = true;
                for(int i = 0; i<this.widget.quiz.length; i++) {
                  if(widget.answers[i]!=widget.quiz[i][2]) {
                    correct = false;
                  }
                }
                if(correct==true) {
                  var ref = FirebaseDatabase.instance.reference();
                  var currentNum = 0;
                  ref.child('global').child(widget.id).once().then((value) {
                    currentNum = value.value['pass_count'];
                  });
                  currentNum+=1;
                  ref.child('global').child(widget.id).push().set({
                    "pass_count" : currentNum
                  });
                }
                Navigator.push(context,MaterialPageRoute(builder: (context) => QuizResults(correct)));
              },
            ),
            Text('Scroll down for more questions')
          ],
        ),
      ),
    );
  }
}