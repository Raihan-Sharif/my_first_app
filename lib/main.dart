import 'package:flutter/material.dart';

import './answer.dart';
import './Question.dart';

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
  var questionList = [
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
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my first app'),
        ),
        body: Column(
          children: [
            Question(questionList[_questionIndex]['Question'].toString()),
            ...(questionList[_questionIndex]['Answer'] as List<String>)
                .map((answer) {
              return Answer(_answeredQuestion, answer);
            })
          ],
        ),
      ),
    );
  }
}
