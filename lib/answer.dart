import 'package:flutter/material.dart';


// ignore: camel_case_types
class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);

  final VoidCallback selectHandaler;
  final String answerText;

  Answer(this.selectHandaler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
              child: Text(answerText),
              onPressed: selectHandaler,
            ),
    );
  }
}