import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class Array2d extends StatefulWidget {
  const Array2d({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<Array2d> {
    final _questions = const [
      {
        'questionText': 'Q1. How to represent to the 2d array declare?',
        'answers': [
          {'text': 'int a;', 'score': -2},
          {'text': 'int a[5];', 'score': -2},
          {'text': 'a[5] int', 'score': -2},
          {'text': 'int a[5][5]', 'score': 10},
        ],
      },
      {
        'questionText': 'Q2. a[5][5] store how many records?',
        'answers': [
          {'text': '5', 'score': -2},
          {'text': '25', 'score': 10},
          {'text': '30', 'score': -2},
          {
            'text':
            '16',
            'score': -2,
          },
        ],
      },
      {
        'questionText': "Q-3 a[5][26] array how many rows?",
        'answers': [
          {'text': '5', 'score': 10},
          {'text': '26', 'score': -2},
          {'text': '1', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': "Q-4 arr[5][10] array how many columns?" ,
        'answers': [
          {'text': '5', 'score':-2},
          {'text': '26', 'score': -2},
          {'text': '10', 'score': 10},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText':
        'Q5.  arr[][] array is correct?',
        'answers': [
          {'text': 'Yes', 'score': -2},
          {'text': 'No', 'score': 10},
        ],
      },
    ];

    var _questionIndex = 0;
    var _totalScore = 0;

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    void _answerQuestion(int score) {
      _totalScore += score;

      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print('We have more questions!');
      } else {
        print('No more questions!');
      }
    }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: topcolor,
            title:  Text(quiz,style: TextStyle(color: splashtextco,fontSize: 24,fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(child: Icon(Icons.logout),
                  ),
                ),
              )
            ],
          ),

          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: _questionIndex < _questions.length
                ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            ) : Result(_totalScore, _resetQuiz),
          ), //Padding
        ), //Scaffold
        debugShowCheckedModeBanner: false,
      ); //MaterialApp
    }
}

