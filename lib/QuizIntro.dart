import 'package:flutter/material.dart';

class QuizIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: MaterialButton(
        onPressed: () => print('Pressed'),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Press anywhere to start the quiz', style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
    );
  }
}