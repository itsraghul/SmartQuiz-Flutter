import 'package:flutter/material.dart';
import 'package:my_project/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'ques': 'How Smart are you?\v Answer the questions to find out.\vPress Start to begin.',
      'ans': [
        {'text': 'Start', 'score':0}
      ],
    },
    {
      'ques': '1.If you are part of the Slytherin group,What would be the head for it?',
      'ans': [
        {'text': 'Snape ', 'score':5},
        {'text': 'Draco', 'score': 3},
        {'text': 'Voldemort', 'score': 2},
        {'text': 'Harry Potter', 'score': 4},
      ],
    },
    //Questions similar //
  ];
  var _quesIndex = 0;
  var _totalscore= 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalscore = 0;
    });
  }

  void _ansQues(int score) {
    _totalscore += score;
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
    if (_quesIndex < _question.length) {
      print('We have more');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GaJi',
      home: Scaffold(backgroundColor: Colors.red[100],
          appBar: AppBar(
            title: Container(
                width: double.infinity,
                child: Text(
                  'GaJi',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            backgroundColor: Colors.redAccent,
          ),
          body:SingleChildScrollView(child: _quesIndex < _question.length
              ? Quiz(
                  ansQues: _ansQues,
                  quesIndex: _quesIndex,
                  question: _question,
                )
              : Result(_totalscore, _resetQuiz))),
    );
  }
}
