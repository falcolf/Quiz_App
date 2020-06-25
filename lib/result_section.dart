import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  String getComment(int score){
    if (score < 0){
      return 'Not Good! Need Practice';
    } else if (score < 5){
      return 'You can do better!';
    }
    else if(score <10){
      return 'You are good!';
    }
    else{
      return 'Awesome!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Center(child: Text(
                  'All Done!',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
              )),
              Center(child:
              Text('Score : ${this.totalScore}')),
              Center(child: Text('${getComment(this.totalScore)}')),
              FlatButton(child:Text('Restart Quiz') , onPressed: this.resetQuiz,color: Colors.blue,)
            ],
          ),
        );
  }
}


