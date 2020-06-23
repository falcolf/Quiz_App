import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState() ;
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _questions = [
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
          body: Column(
            children:[
              Question(this._questions[this._questionIdx]['qtext']),
              ...(this._questions[this._questionIdx]['options'] as List<String>).map((answer){
                return Answer(answer, this._answerQuestion);
              }).toList(),
            ]
          ),
        )
    );
  }
}
