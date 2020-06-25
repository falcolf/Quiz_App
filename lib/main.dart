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
                      'options':[
                                  {'option' : 'Mark Zuckerberg', 'score' : -2},
                                  {'option' : 'Steve Jobs', 'score' : 2},
                                  {'option' : 'Elon Musk', 'score' : -2},
                        ],
                    },
                    { 'qtext':'Where did Steve Jobs visit before building an empire \'Apple\'?',
                      'options':[
                                  {'option': 'India', 'score': 3},
                                  {'option': 'Thailand', 'score': -3},
                                  {'option': 'China', 'score': -3},
                        ],
                    },
                    { 'qtext':'Who was the one to discover Gravity?',
                      'options':[
                                  {'option':'Edison', 'score':-5},
                                  {'option':'Tesla', 'score':-5},
                                  {'option':'Newton', 'score':5},
                        ],
                    },
              ];
  int _totalScore = 0;

  void _answerQuestion(int score){
    setState(() {
      this._totalScore += score;
      this._questionIdx+=1;
      print(_totalScore);
    });
  }

  void _resetQuiz(){
    setState(() {
      this._questionIdx = 0;
      this._totalScore = 0;
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
          body:Container(child:  _questionIdx < _questions.length
              ? Quiz(
            answerQuestion: this._answerQuestion,
            options: this._questions[this._questionIdx]['options'],
            question: this._questions[this._questionIdx]['qtext'],
          )
              : Result(this._totalScore, this._resetQuiz),
          ),
        )
    );
  }
}
