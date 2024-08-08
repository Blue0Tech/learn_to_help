import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'QuizResults.dart';

class QuizIntro extends StatefulWidget {

  final List quizPara;
  final String idPara;
  QuizIntro(this.quizPara,this.idPara);

  @override
  _QuizIntroState createState() => _QuizIntroState(quizPara,idPara);
}

class _QuizIntroState extends State<QuizIntro> {
  List quiz;
  List answers;
  String id;
  _QuizIntroState(quiz,id) {
    this.quiz = quiz;
    this.answers = List.filled(quiz.length,null,growable: false);
    this.id = id;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.green[300],
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
                          height: 280.0,
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
                                      setState((){answers[index] = index2;});
                                    },
                                    fillColor: answers[index]==index2 ? Colors.green[300] : Colors.red[300],
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
              fillColor: Colors.green[200],
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Submit answers'),
              ),
              onPressed: () {
                bool correct = true;
                for(int i = 0; i<quiz.length; i++) {
                  if(answers[i]!=quiz[i][2]) {
                    correct = false;
                  }
                }
                if(correct==true) {
                  var ref = FirebaseDatabase.instance.reference();
                  var auth = FirebaseAuth.instance;
                  ref.child('users').child(auth.currentUser.uid).set({
                    id : true
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