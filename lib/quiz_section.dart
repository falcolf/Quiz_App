import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final String question;
  final Function answerQuestion;
  final List<Map<String, Object>> options;

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
    ...options.map((answer){
    return Answer(answer['option'], () => answerQuestion(answer['score']));
    }).toList()
    ]);
  }
}
