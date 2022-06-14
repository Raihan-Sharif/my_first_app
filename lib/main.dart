import 'package:flutter/material.dart';

import './Question.dart';
import 'answer.dart';

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
  var _questionList = [
    {
      'QuestionText': 'What is your favourite color?',
      'answers': ['Red', 'Black', 'White', 'Green']
    },
    {
      'QuestionText': 'What is your favourite Sports?',
      'answers': ['Cricket', 'Football', 'Tennis', 'Golf']
    },
    {
      'QuestionText': 'Who is your favourite Player?',
      'answers': ['Messi', 'Ronaldo', 'Neymar', 'Ambappe']
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
            Question(_questionList[_questionIndex]),
            Answer(_answeredQuestion),
            Answer(_answeredQuestion),
            Answer(_answeredQuestion),
          ],
        ),
      ),
    );
  }
}
