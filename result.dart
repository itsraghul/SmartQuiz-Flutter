import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;
  Result(this.result, this.reset);

  String get resultPhrase {
    var resultText ='AA' ;
    if (result <= 10) 
     {
      resultText = 'Sorry Fam!\vIt is possible that you are not a Gaji at all or maybe a very serious Kanni Gaji.';
     } 
    else if (result <= 20) 
     {
      resultText = 'You are a Desi Gaji \v It\'s okay.\v You can improve.';
     } 
    else if(result <=28) 
     {
      resultText = 'You are an Amateur Gaji.\v But if you work hard you can be something phenomenal.';
     }
    else if(result <=35)
      {
        resultText = 'Some good news!\vYou are an Agmark qualified Gaji.'; 
      }
    else 
      {
       resultText = 'Congratulations.\v You are a Supreme Gaji Pro.\v You are one of a kind.';
      }
    return resultText;
    
  }

  @override
  Widget build(BuildContext context) {
    print(result);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 20,),
          Card(
              elevation: 12,
              color: Colors.pinkAccent,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(15, 50, 15, 50),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )),
          SizedBox(height: 100,),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: reset,
          ),
           Card(
              elevation: 12,
              color: Colors.red[300],
              child: Container(
                width: double.infinity,
                child: Text(
                  'From OLU Group.\v An RS Production.\v Creative development with YV.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }
}
