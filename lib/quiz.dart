import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quizlist extends StatelessWidget {
  // const Quizlist({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quizlist(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});
  // const Quizlist(answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // questions[_questionIndex]['quesionsText']?.toString() ??'',
          questions[questionIndex]['quesionsText'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
