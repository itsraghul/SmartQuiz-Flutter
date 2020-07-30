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
      'ques': 'How GaJi are you?\v Answer the questions to find out.\vPress Start to begin.',
      'ans': [
        {'text': 'Start', 'score':0}
      ],
    },
    {
      'ques': '1.If you are part of the Slytherin group,What would be the reason for it?',
      'ans': [
        {'text': 'Coz Snape rocks', 'score':1},
        {'text': 'Draco is hot af', 'score': 3},
        {'text': 'Voldemort is dope', 'score': 2},
        {'text': 'I love anacondas', 'score': 4},
      ],
    },
    {
      'ques': '2.Which song do you thing is more famous and awesome?',
      'ans': [
        {'text': 'Anaconda by Nikki Minaj', 'score':4},
        {'text': 'Swallala by Jason Derulo', 'score': 3},
        {'text': 'Bum Bum Tum Tum by Tc Fioti', 'score': 2},
        {'text': 'Wiggle Wiggle by Jason Derulo', 'score': 1},
      ],
    },
    {
      'ques': '3.What is your fav childhod cartoon show? Note:Answers are in gibberish',
      'ans': [
        {'text': 'Tom and cherry', 'score':1},
        {'text': 'Booby Doo', 'score': 3},
        {'text': 'Dickey mouse', 'score': 4},
        {'text': 'Dora kunji', 'score': 2},
      ],
    },
     {
      'ques': '4.You find Handcuffs in your house.What would you do?',
      'ans': [
        {'text': 'Play with it', 'score': 3},
        {'text': 'Call the police', 'score': 1},
        {'text': 'Divorce/break up with your partner', 'score': 4},
        {'text': 'Break them apart', 'score': 2},
      ],
    }, {
      'ques': '5.What is your fav eatable dish from the options?',
      'ans': [
        {'text': 'Nuts', 'score': 3},
        {'text': 'Cream Pie', 'score': 4},
        {'text': 'Cookies', 'score': 1},
        {'text': 'Jam Buns', 'score': 2},
      ],
    }, {
      'ques': '6.What do you like to become in the future from the options below?  ',
      'ans': [
        {'text': 'Short action film producer', 'score': 2},
        {'text': 'Ceo,Engineer,Driver etc.,', 'score': 4},
        {'text': 'Model', 'score':1},
        {'text': 'Animator in Japan', 'score': 3},
      ],
    },
    {
      'ques': '7.Why do you think Ronaldo is considered as a great footballer?  ',
      'ans': [
        {'text': 'He has great abs', 'score': 3},
        {'text': 'He is very energetic.', 'score': 2},
        {'text': 'He does good header.', 'score': 4},
        {'text': 'He is stylish.', 'score': 1},
      ],
    },
    {
      'ques': '8.If all Porn sites are banned. What would you think will be its best alternative?  ',
      'ans': [
        {'text': 'Graphic comics', 'score': 2},
        {'text': 'Tik Tok', 'score': 4},
        {'text': 'Anime', 'score': 3},
        {'text': 'Magazines.', 'score': 1},
      ],
    },
    {
      'ques': '9.What would be the reason for  wide reach poularity of Chotta Bheem Cartoon?  ',
      'ans': [
        {'text': 'He is a good guy that spreads positivity.', 'score': 1},
        {'text': 'He is half naked all the time.', 'score': 3},
        {'text': 'He is strong and cute af', 'score': 2},
        {'text': 'He loves Ladoos', 'score': 4},
      ],
    },
    {
      'ques': '10.Which of these given umber do you think is a good number ?  ',
      'ans': [
        {'text': '71', 'score':3},
        {'text': '69', 'score':2},
        {'text': '01', 'score':1},
        {'text': '99', 'score':4},
      ],
    },
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
