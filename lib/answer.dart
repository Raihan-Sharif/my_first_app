import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback eventHandler;
  final String answer;
  Answer(this.eventHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        onPressed: eventHandler,
        child: Text(answer),
      ),
    );
  }
}
