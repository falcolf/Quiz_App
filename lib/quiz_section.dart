import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final String question;
  final Function answerQuestion;
  final List<String> options;

  Quiz({
    @required this.question,
    @required this.answerQuestion,
    @required this.options
  });


  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
    Question(question),
    ...(options as List<String>).map((answer){
    return Answer(answer, answerQuestion);
    }).toList()
    ]);
  }
}
