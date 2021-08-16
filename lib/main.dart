import 'package:flutter/material.dart';

import './question.dart';

import 'answer.dart';

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
  static const questions = const [
    {
      "quesionsText": 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'yellow', 'Green'],
    },
    {
      "quesionsText": 'What\'s your favorite animal?',
      'answer': ['Monkey', 'Cat', 'Bird', 'Fish'],
    },
    {
      "quesionsText": 'What\'s your favorite flower?',
      'answer': ['golap', 'bali', 'rose', 'lily'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex > questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
 
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['quesionsText']?.toString() ?? ''
            ),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion,answer);
            }).toList()
    
          
          ],
        ),
      ),
    );
  }
}
