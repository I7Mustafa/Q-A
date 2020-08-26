import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answer': [
          {'text': 'blue', 'score': 10},
          {'text': 'red', 'score': 8},
          {'text': 'black', 'score': 6},
          {'text': 'white', 'score': 4},
        ]
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answer': [
          {'text': 'lion', 'score': 10},
          {'text': 'Snake', 'score': 8},
          {'text': 'Elephant', 'score': 6},
          {'text': 'Rabbit', 'score': 4},
        ]
      },
      {
        'questionText': 'what\'s your favorite name?',
        'answer': [
          {'text': 'Mustafa', 'score': 10},
          {'text': 'Ahmed', 'score': 8},
          {'text': 'Ali', 'score': 6},
          {'text': 'Geen', 'score': 4},
        ]
      },
      {
        'questionText': 'what\'s your favorite country?',
        'answer': [
          {'text': 'Egypt', 'score': 10},
          {'text': 'USA', 'score': 8},
          {'text': 'Germany', 'score': 6},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
