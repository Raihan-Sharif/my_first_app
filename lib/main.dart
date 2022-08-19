import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      'Question': 'What is your favourite Color?',
      'Answer': [
        {'text': 'Red', 'score': 4},
        {'text': 'Black', 'score': 5},
        {'text': 'White', 'score': 1},
        {'text': 'Blue', 'score': 3},
      ]
    },
    {
      'Question': 'What is your favourite Sports?',
      'Answer': [
        {'text': 'Kabadi', 'score': 4},
        {'text': 'Wrestling', 'score': 5},
        {'text': 'Footbal', 'score': 1},
        {'text': 'Cricket', 'score': 3},
      ]
    },
    {
      'Question': 'What is your favourite Flower?',
      'Answer': [
        {'text': 'Jui', 'score': 4},
        {'text': 'Gondoraj', 'score': 5},
        {'text': 'Rose', 'score': 1},
        {'text': 'Belly', 'score': 3},
      ]
    },
  ];

  var _questionIndex = 0;
  var _scoreResult = 0;

  void _answeredQuestion(int score) {
    _scoreResult += score;

    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
    if (_questionIndex < _questionList.length)
      print('You Have more question!');
    else
      print('No more question!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my first app'),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(_questionList, _questionIndex, _answeredQuestion)
            : Result(_scoreResult),
      ),
    );
  }
}
