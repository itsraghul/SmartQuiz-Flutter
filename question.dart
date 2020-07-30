import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: 0,),
      Card(
          color: Colors.pinkAccent,
          elevation: 12,
          child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15, 50, 15, 50),
              child: Text(
                quesText,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ))),
    ]);
  }
}
