import 'package:flutter/material.dart';

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
  var _questionList = [
    'What is your favourite color?',
    'What is your favourite Sports?'
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
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answeredQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer is 2.'),
            ),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer is 3.');
                }),
          ],
        ),
      ),
    );
  }
}
