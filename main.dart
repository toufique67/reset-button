import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Find the sum of 111 + 222 + 333',
      'answers': [
        {'text': '700', 'score': 0},
        {'text': '666', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '100', 'score': 0},
      ]
    },
    {
      'questionText': 'Subtract 457 from 832',
      'answers': [
        {'text': '375', 'score': 10},
        {'text': '57', 'score': 0},
        {'text': '376', 'score': 0},
        {'text': '970', 'score': 0},
      ]
    },
    {
      'questionText': '50 times 5 is equal to',
      'answers': [
        {'text': '2500', 'score': 0},
        {'text': '505', 'score': 0},
        {'text': '500', 'score': 0},
        {'text': 'none of these', 'score': 10},
      ]
    },
    {
      'questionText': '90 ÷ 10',
      'answers': [
        {'text': '9', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '900', 'score': 0},
        {'text': '1', 'score': 0},
      ]
    },
    {
      'questionText': 'Simplify: 26 + 32 - 12',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '32', 'score': 0},
        {'text': '56', 'score': 0},
        {'text': '46', 'score': 10},
      ]
    },
    {
      'questionText': 'Solve : 200 – (96 ÷ 4)',
      'answers': [
        {'text': '105', 'score': 0},
        {'text': '176', 'score': 10},
        {'text': '26', 'score': 0},
        {'text': '16', 'score': 0},
      ]
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;
  void _answerQuestions(int score) {
    setState(() {
      _totalScore = _totalScore + score;
    });

    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    if (_answerIndex < _questions.length) {
      print('you have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Math Quiz'),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                answerIndex: _answerIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
