import 'package:flutter/material.dart';

class QuizResults extends StatelessWidget {
  bool result;
  QuizResults(this.result);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Results'),
      content: Text(result ? 'Congrats, you have passed this course!' : 'You failed the quiz, watch the video again.'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}