import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionList = [
    'What is your favourite color?',
    'What is your favourite Sports?'
  ];
  var questionIndex = 0;
  void answeredQuestion() {
    questionIndex++;
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
            Text(questionList[questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answeredQuestion,
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
