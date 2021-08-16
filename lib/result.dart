import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
  final int resultScore;
  final VoidCallback resetHandaler;

  Result(this.resultScore, this.resetHandaler);

  String? get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awosome and innocent";
    } else if (resultScore <= 12) {
      resultText = "You are Pritty good";
    } else if (resultScore <= 16) {
      resultText = "You are Likeable";
    } else {
      resultText = "You are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase as String,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetHandaler, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}
