import 'package:flutter/material.dart';
import 'package:my_first_app/quiz.dart';
import 'package:my_first_app/result.dart';

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
  var _questionList = const [
    {
      'Question': 'What is your favourite Color?',
      'Answer': ['Red', 'Black', 'White', 'Blue']
    },
    {
      'Question': 'What is your favourite Sports?',
      'Answer': ['Cricket', 'Football', 'Tennis', 'BusketBall']
    },
    {
      'Question': 'What is your favourite Flower?',
      'Answer': ['Rose', 'Merrygold', 'Jasmine', 'Daisy']
    },
  ];

  var _questionIndex = 0;
  void _answeredQuestion() {
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
            : Result(),
      ),
    );
  }
}
