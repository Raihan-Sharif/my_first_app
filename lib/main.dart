import 'package:flutter/material.dart';

import './answer.dart';
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
<<<<<<< HEAD
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
=======
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
>>>>>>> b6d8819b4b7a2b365cb89bdaf41fa7ec8e13fc21
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
<<<<<<< HEAD
            Question(_questionList[_questionIndex]),
            Answer(_answeredQuestion),
            Answer(_answeredQuestion),
            Answer(_answeredQuestion),
=======
            Question(questionList[_questionIndex]['Question'].toString()),
            ...(questionList[_questionIndex]['Answer'] as List<String>)
                .map((answer) {
              return Answer(_answeredQuestion, answer);
            })
>>>>>>> b6d8819b4b7a2b365cb89bdaf41fa7ec8e13fc21
          ],
        ),
      ),
    );
  }
}
