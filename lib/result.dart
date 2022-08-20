import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  Result(this._resultScore);

  String get getResult {
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your score is: ' + _resultScore.toString(),
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
