import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String option;
  final Function answerQuestion;

  Answer(this.option, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.option),
        onPressed: answerQuestion,
        color: Colors.blue,
      ),
    );
  }
}
