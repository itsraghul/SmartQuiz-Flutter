import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function ansQues;
  final int quesIndex;

  Quiz(
      {@required this.question,
      @required this.ansQues,
      @required this.quesIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Question(
          question[quesIndex]['ques'],
        ),
        ...(question[quesIndex]['ans'] as List<Map<String,Object>>).map((ans) {
          return Answer(() => ansQues(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
