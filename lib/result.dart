import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int questions;

  final Function resetHandler;

  Result(this.score, this.questions, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your score is',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Text(
            '$score out of $questions',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'RESTART',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
