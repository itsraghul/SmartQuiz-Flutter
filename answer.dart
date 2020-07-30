import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function select;
  final String ansText;

  Answer(this.select,this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.red[400],
        textColor: Colors.white,
        child: Text(ansText),
        onPressed: select,
      ),
    );
  }
}
