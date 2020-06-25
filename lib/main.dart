import 'package:flutter/material.dart';

import './quiz_section.dart';
import './result_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState() ;
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
   final _questions = const [
                    { 'qtext':'Who introduced World to Iphone?',
                      'options':['Mark Zuckerberg', 'Steve Jobs', 'Elon Musk'],
                    },
                    { 'qtext':'Where did Steve Jobs visit before building an empire \'Apple\'?',
                      'options':['India', 'Thailand', 'China'],
                    },
                    { 'qtext':'Who was the one to discover Gravity?',
                      'options':['Edison', 'Tesla', 'Newton'],
                    },
              ];
  void _answerQuestion(){
    setState(() {
      this._questionIdx+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
            centerTitle: true,
          ),
          body: _questionIdx < _questions.length
              ? Quiz(
                      answerQuestion: this._answerQuestion,
                      options: this._questions[this._questionIdx]['options'],
                      question: this._questions[this._questionIdx]['qtext'],
                )
              : Result(),
        )
    );
  }
}
