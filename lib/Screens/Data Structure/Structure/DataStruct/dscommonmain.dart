import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/DataStruct/quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';

import 'result.dart';
class dsstruct extends StatefulWidget {
  const dsstruct({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<dsstruct> {
    final _questions = const [
      {
        'questionText': 'Q1. Struct data type how many records?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': -2},
          {'text': '3', 'score': -2},
          {'text': 'as manny you want', 'score': 10},
        ],
      },
      {
        'questionText': 'Q2. Which thing holds value not data?',
        'answers': [
          {'text': 'Data types', 'score': 10},
          {'text': 'structure', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2,},
        ],
      },
      {
        'questionText':"Q-3 Which thing can hold different kind and types?",
        'answers': [
          {'text': 'Union', 'score': -2},
          {'text': 'Structure', 'score': -2},
          {'text': 'Both', 'score': 10},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': "Q-4 Which is used more time complexity?",
        'answers': [
          {'text': 'Union', 'score': -2},
          {'text': 'Structure', 'score': -2},
          {'text': 'Both', 'score': 10},
          {'text': 'none', 'score': -2},

        ],
      },
      {
        'questionText':
        'Q5.  Which keyword is used to declare structure?',
        'answers':[
          {'text': 'int','score':-2},
          {'text': 'union','score':-2},
          {'text': 'struct','score':10},
          {'text': 'none','score':-2},
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

