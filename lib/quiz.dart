import 'package:flutter/material.dart';

import './Question.dart';
import './answer.dart';

typedef void MyCallback(int score);

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final MyCallback answeredQuestion;

  Quiz(@required this.questionList, @required this.questionIndex,
      @required this.answeredQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['Question'] as String),
        ...(questionList[questionIndex]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answeredQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
