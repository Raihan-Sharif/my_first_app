import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback eventHandler;
<<<<<<< HEAD

  Answer(this.eventHandler);
=======
  final String answer;
  Answer(this.eventHandler, this.answer);
>>>>>>> b6d8819b4b7a2b365cb89bdaf41fa7ec8e13fc21

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
<<<<<<< HEAD
        child: Text('Answer 1'),
=======
        child: Text(answer),
>>>>>>> b6d8819b4b7a2b365cb89bdaf41fa7ec8e13fc21
        onPressed: eventHandler,
      ),
    );
  }
}
