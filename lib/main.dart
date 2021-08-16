import 'package:flutter/material.dart';
import 'package:flutter_udemy/result.dart';

import 'quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //  final questions = const[
  static const _questions = const [
    {
      "quesionsText": 'What\'s your favorite color?',
      'answer': [
        {"text": 'Black', 'score': 3},
        {"text": 'Red', 'score': 4},
        {"text": 'yellow', 'score': 1},
        {"text": 'Green', 'score': 5}
      ],
    },
    {
      "quesionsText": 'What\'s your favorite animal?',
      'answer': [
        {"text": 'cat', 'score': 3},
        {"text": 'Rabit', 'score': 4},
        {"text": 'Dog', 'score': 1},
        {"text": 'Bird', 'score': 5}
      ],
    },
    {
      "quesionsText": 'What\'s your favorite flower?',
      'answer': [
        {"text": 'Golap', 'score': 3},
        {"text": 'JOba', 'score': 4},
        {"text": 'Beli', 'score': 1},
        {"text": 'Black rose', 'score': 5}
      ],
    },
  ];

  var _questionIndex = 0;
  var _total_score = 0;

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _total_score = 0;
    });
  }


  void _answerQuestion(int score) {
    _total_score += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quizlist(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_total_score, _resetQuize),
      ),
    );
  }
}
