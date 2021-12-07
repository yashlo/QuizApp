import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class DoublyLinkedList extends StatefulWidget {
  const DoublyLinkedList({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<DoublyLinkedList> {
    final _questions = const [
      {
        'questionText': 'Q1. What is doublly link list how any pointer comes into the picture?',
        'answers': [
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': '3', 'score': -2},
          {'text': 'None of the above', 'score': -2},
        ],
      },
      {
        'questionText': 'Q2. In the  Doubly link list what is the value of previous node pointer for the first node?',
        'answers': [
          {'text': 'null', 'score': 10},
          {'text': 'last node', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': "Q-3 What the previous node address contain which pointer ?",
        'answers': [
          {'text': 'First Node Address', 'score': -2},
          {'text': 'Previous Node Address', 'score': 10},
          {'text': 'Last Node Address', 'score': -2},
          {'text': 'Next Node Address', 'score': -2},
        ],
      },
      {
        'questionText': "Q-4  What the next node address contain which pointer?" ,
        'answers': [
          {'text': 'First Node Address', 'score': -2},
          {'text': 'Previous Node Address', 'score': -2},
          {'text': 'Last Node Address', 'score': -2},
          {'text': 'Next Node Address', 'score': 10},

        ],
      },
      {
        'questionText':
        'Q5. In the  Doubly link list what is the value of next node pointer for the last node?',
        'answers': [
          {'text': 'null', 'score': 10},
          {'text': 'last node', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'none', 'score': -2},

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

