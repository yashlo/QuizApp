import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class LinkedList extends StatefulWidget {
  const LinkedList({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<LinkedList> {
    final _questions = const [
      {
        'questionText': 'Q1. Which has  not a  fixed sized to store data?',
        'answers': [
          {'text': 'array', 'score': -2},
          {'text': 'Linked List', 'score': 10},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': 'Q2. Which contain continues memory location?',
        'answers': [
          {'text': 'array', 'score': 10},
          {'text': 'Linked List', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': "Q-3 In one location one list have many parts?",
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
          {'text': 'depens upon structure', 'score': -2},
        ],
      },
      {
        'questionText': "Q-4 Into the Link list data part what store?" ,
        'answers': [
          {'text': 'next address', 'score':-2},
          {'text': 'datatype', 'score': -2},
          {'text': 'value', 'score': 10},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText':
        'Q5. Into the last location what the pointer can store null in singly linked list?',
        'answers': [
          {'text': 'Yes', 'score': 10},
          {'text': 'No', 'score': -2},
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

