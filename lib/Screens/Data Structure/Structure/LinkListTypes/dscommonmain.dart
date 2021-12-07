import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class LinkedListTypes extends StatefulWidget {
  const LinkedListTypes({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<LinkedListTypes> {
    final _questions = const [
      {
        'questionText': 'Q1. How many types into the linklist?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': -2},
          {'text': '3', 'score': -2},
          {'text': '4', 'score': 10},
        ],
      },
      {
        'questionText': 'Q2. In the Single link list what the head pointer store?',
        'answers': [
          {'text': 'Address of first node', 'score': 10},
          {'text': 'Address of last node', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': "Q-3 Into the doubly link list how many pointer address are stored?",
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
          {'text': 'depens upon structure', 'score': -2},
        ],
      },
      {
        'questionText': "Q-4 How many node points to null into circuler link list?" ,
        'answers': [
          {'text': '0', 'score':-2},
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
        ],
      },
      {
        'questionText':
        'Q5. Circular Doubly Link List not points to null?',
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

