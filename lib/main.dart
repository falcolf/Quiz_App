import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState() ;
  }
}

class MyAppState extends State<MyApp> {
  var questionIdx = 0;

  var questions = [
                'Who introduced World to Iphone?',
                'Where did Steve Jobs visit before building an empire \'Apple\'?',
                'Who was the one do discover Gravity?'
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
              Text(this.questions[this.questionIdx]),
              RaisedButton(
                child: Text('Option 1'),
                onPressed: () {print('option 1'); setState((){this.questionIdx+=1;}); },
              ),
              RaisedButton(
                  child: Text('Option 2'),
                  onPressed: () {print('option 2');setState((){this.questionIdx+=1;});},
              ),
              RaisedButton(
                  child: Text('Option 3'),
                  onPressed: () {print('option 3'); setState((){this.questionIdx+=1;});},
              ),
            ]
          ),
        )
    );
  }
}
