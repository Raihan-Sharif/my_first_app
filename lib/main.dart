import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answeredQuestion() {
    print('Answer submitted!');
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
            Text('Here is the question\'s'),
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
