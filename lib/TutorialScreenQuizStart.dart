import 'package:flutter/material.dart';

import 'QuizIntro.dart';
import 'ThemeDecider.dart';
import 'global.dart' as global;

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
        fillColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
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