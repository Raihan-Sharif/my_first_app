import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final VoidCallback _eventHandler;
  Result(this._resultScore, this._eventHandler);

  String get getResult {
    String resultPhrase;
    if (_resultScore <= 8) {
      resultPhrase = 'You are good!';
    } else if (_resultScore <= 10) {
      resultPhrase = 'You are average!';
    } else if (_resultScore <= 12) {
      resultPhrase = 'You are bad!';
    } else {
      resultPhrase = 'You are unpredictable!';
    }

    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your score is: ' + _resultScore.toString() + '\n' + getResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: _eventHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
