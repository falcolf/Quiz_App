import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qtext;
  Question(this.qtext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qtext,
        style: TextStyle(
          fontFamily: 'Comic-Sans',
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}