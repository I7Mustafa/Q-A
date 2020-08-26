import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 25) {
      resultText = 'Total score ($totalScore) \n You are so bad!';
    } else if (totalScore <= 30) {
      resultText = 'Total score ($totalScore) \n You are ... Strange?!';
    } else if (totalScore <= 35) {
      resultText = 'Total score ($totalScore) \n Pretty Likeable';
    } else {
      resultText = 'Total score ($totalScore) \n You are awesome and innocent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart') ,
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
