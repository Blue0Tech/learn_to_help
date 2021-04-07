import 'package:flutter/material.dart';

import 'QuizIntro.dart';

class TutorialScreenQuizStart extends StatelessWidget {
  final List quiz;
  String id;
  TutorialScreenQuizStart(this.quiz,this.id);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 50.0,
      child: RawMaterialButton(
        fillColor: Colors.red[300],
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>QuizIntro(quiz,id))),
        child: Text(
          'Start quiz',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}