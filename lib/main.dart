import 'package:flutter/material.dart';

import './question.dart';

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
                'Who introduced World to Iphone?',
                'Where did Steve Jobs visit before building an empire \'Apple\'?',
                'Who was the one to discover Gravity?'
              ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children:[
              Question(this._questions[this._questionIdx]),
              RaisedButton(
                child: Text('Option 1'),
                onPressed: () {print('option 1'); setState((){this._questionIdx+=1;}); },
              ),
              RaisedButton(
                  child: Text('Option 2'),
                  onPressed: () {print('option 2');setState((){this._questionIdx+=1;});},
              ),
              RaisedButton(
                  child: Text('Option 3'),
                  onPressed: () {print('option 3'); setState((){this._questionIdx+=1;});},
              ),
            ]
          ),
        )
    );
  }
}
