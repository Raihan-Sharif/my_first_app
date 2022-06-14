import 'package:flutter/material.dart';

import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final VoidCallback answeredQuestion;
  final int questionIndex;

  Quiz(@required this.questionList, @required this.questionIndex,
      @required this.answeredQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['Question'] as String),
        ...(questionList[questionIndex]['Answer'] as List<String>)
            .map((answer) {
          return Answer(answeredQuestion, answer);
        })
      ],
    );
  }
}
