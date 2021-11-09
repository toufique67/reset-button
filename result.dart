import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'the quiz is completed!';
    if (resultScore <= 30) {
      resultText = 'You are Average';
    } else if (resultScore <= 50) {
      resultText = 'You are Good';
    } else if (resultScore <= 60) {
      resultText = 'You are Excecellent';
    } else {
      resultText = 'Thank You';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
