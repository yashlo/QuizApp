import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class Array extends StatefulWidget {
  const Array({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<Array> {
    final _questions = const [
      {
        'questionText': 'Q1. Array can hold which data value?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': -2},
          {'text': '3', 'score': -2},
          {'text': 'as many you want', 'score': 10},
        ],
      },
      {
        'questionText': 'Q2. How many types of array ?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
          {
            'text':
            '4',
            'score': -2,
          },
        ],
      },
      {
        'questionText': "Q-3 How to declare single type of value?",
        'answers': [
          {'text': 'int a;', 'score': -2},
          {'text': 'int a[10];', 'score': 10},
          {'text': 'both', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': '''Q-4 #include <stdio.h> void main (){int marks_1 = 56, marks_2 = 78, marks_3 = 88, marks_4 = 76, marks_5 = 56, marks_6 = 89;
        float avg = (marks_1 + marks_2 + marks_3 + marks_4 + marks_5 +marks_6) / 6 ;printf(avg);} ''',
        'answers': [
          {'text': 'Run code but blank screen', 'score': -2},
          {'text': 'Run code Sucessfully with output', 'score': 10},
          {'text': 'Error', 'score': -2},
          {'text': 'none', 'score': -2},

        ],
      },
      {
        'questionText':
        'Q5.  How to get the first element value in array?',
        'answers': [
          {'text': 'a[0]', 'score': 10},
          {'text': 'a[1]', 'score': -2},
          {'text': 'a[2]', 'score':-2},
          {'text': 'a[n]', 'score':-2},
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

