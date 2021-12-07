import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Data%20Structure/quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';

import 'result.dart';
class dscommon extends StatefulWidget {
  const dscommon({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<dscommon> {
    final _questions = const [
      {
        'questionText': 'Q1. Which is the data structure types?',
        'answers': [
          {'text': 'Primitive', 'score': -2},
          {'text': 'Non Primitive', 'score': -2},
          {'text': 'Both', 'score': 10},
          {'text': 'None of the above', 'score': -2},
        ],
      },
      {
        'questionText': 'Q2. Which is the non primitive data structure?',
        'answers': [
          {'text': 'int', 'score': -2},
          {'text': 'float', 'score': -2},
          {'text': 'String', 'score': -2},
          {
            'text':
            'Linear Data Structure',
            'score': 10
          },
        ],
      },
      {
        'questionText': 'Data Structure also classified into how categoey?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
          {'text': '4', 'score': -2},
        ],
      },
      {
        'questionText': 'Q4. Who is the category of classification category?',
        'answers': [
          {'text': 'Satic Data Structure', 'score': -2},
          {'text': 'Dynamic Data Structure', 'score': -2},
          {'text': 'Both of above', 'score': 10},
          {'text': 'Jeremy Ashkenas', 'score': -2},
        ],
      },
      {
        'questionText':
        'Q5. Which is not major operation on data Structure?',
        'answers': [
          {
            'text': 'Searching',
            'score': -2,
          },
          {
            'text': 'Sorting',
            'score': -2,
          },
          {
            'text': 'Insertion',
            'score': -2,
          },
          {
            'text': 'Updation',
            'score': -2,
          },
          {
            'text': 'Deletetion',
            'score': -2,
          },
          {'text': 'traversing', 'score': 10},
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

