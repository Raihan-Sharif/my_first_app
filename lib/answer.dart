import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback eventHandler;

  Answer(this.eventHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: eventHandler,
      ),
    );
  }
}
