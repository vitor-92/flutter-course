import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => _QuizApp();
}

//undescore added transform the class from public to private class, the class can not be changeable from another file
//you can use it to turn properties and functions to private too
class _QuizApp extends State {
  var _questionIndex = 0;
  var _totalScore = 0;

  var questions = [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'black', 'score': 3}
      ]
    },
    {
      'questionText': 'Whats\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 2},
        {'text': 'dog', 'score': 3},
        {'text': 'rabbit', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats\'s your favorite state?',
      'answers': [
        {'text': 'SP', 'score': 1},
        {'text': 'MG', 'score': 3},
        {'text': 'SC', 'score': 2}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if (_questionIndex < questions.length) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My simple Quiz'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
