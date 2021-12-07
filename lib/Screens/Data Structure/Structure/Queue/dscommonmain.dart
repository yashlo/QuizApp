import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'result.dart';
class Queue extends StatefulWidget {
  const Queue({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<Queue> {
    final _questions = const [
      {
        'questionText': 'Q1. Queue follow the following methodology?',
        'answers': [
          {'text': 'LIFO', 'score': -2},
          {'text': 'FIFO', 'score': 10},
          {'text': 'Both', 'score': -2},
          {'text': 'None', 'score': -2},
        ],
      },
      {
        'questionText': 'Q2. Queue has how many ends ?',
        'answers': [
          {'text': '0', 'score': -2},
          {'text': '1', 'score': -2},
          {'text': '2', 'score': 10},
          {'text': 'depaned upon Structure', 'score': -2},
        ],
      },
      {
        'questionText': "Q-3 Rear point to insertion point?",
        'answers': [
          {'text': 'Yes', 'score': 10},
          {'text': 'No', 'score': -2}
        ],
      },
      {
        'questionText': "Q-4  Front point to insertion point?" ,
        'answers': [
          {'text': 'Yes', 'score': -2},
          {'text': 'No', 'score': 10}
        ],
      },
      {
        'questionText':
        'Q5. Which is the correct point in queue?',
        'answers': [
          {'text': 'head', 'score': -2},
          {'text': 'Front', 'score': 10},
          {'text': 'Both', 'score': -2},
          {'text': 'None of the above', 'score': -2}
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

