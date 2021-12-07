import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Pointer/quiz.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';

import 'result.dart';
class pointer extends StatefulWidget {
  const pointer({Key key}) : super(key: key);

  @override
  _dscommonState createState() => _dscommonState();
}

class _dscommonState extends State<pointer> {
    final _questions = const [
      {
        'questionText': 'Q1. What is the pointer can point?',
        'answers': [
          {'text': 'Address of another variable', 'score': 10},
          {'text': 'Datatypes of variable', 'score': -2},
          {'text': 'Both', 'score': -2},
          {'text': 'None of the above', 'score': -2},
        ],
      },
      {
        'questionText': 'Q2. Which thing to improvement pointer can not helpful?',
        'answers': [
          {'text': 'Traversing String', 'score': -2},
          {'text': 'Lookup Table', 'score': -2},
          {'text': 'Searching', 'score': 10},
          {
            'text':
            'Control Table',
            'score': -2,
          },
        ],
      },
      {
        'questionText': '''Q-3 #include <stdio.h>  
  int main( )  {  int a = 5;  int *b;  b = &a;  printf ("value of a = %d\n", a); 
   printf ("value of a = %d\n", *(&a));  printf ("value of a = %d\n", *b);  printf ("address of a = %u\n", &a);  
   printf ("address of a = %d\n", b);  printf ("address of b = %u\n", &b);  printf ("value of b = address of a = %u", b);  return 0;  
}  ''',
        'answers': [
          {'text': 'Run code but blank screen', 'score': -2},
          {'text': 'Run code Sucessfully with output', 'score': 10},
          {'text': 'Error', 'score': -2},
          {'text': 'none', 'score': -2},
        ],
      },
      {
        'questionText': '''Q-4 #include <stdio.h>  int main( ){int a = 5;int *b;int **c;  b = &a;c = &b;printf ("value of a = %d\n", a);printf ("value of a = %d\n", *(&a));printf ("value of a = %d\n", *b);
        printf ("value of a = %d\n", **c);printf ("value of b = address of a = %u\n", b);printf ("value of c = address of b = %u\n", c);
        printf ("address of a = %u\n", &a); printf ("address of a = %u\n", b);printf ("address of a = %u\n", *c);
        printf ("address of b = %u\n", &b);printf ("address of b = %u\n", c);printf ("address of c = %u\n", &c);
        return 0;}  ''',
        'answers': [
          {'text': 'Run code but blank screen', 'score': -2},
          {'text': 'Run code Sucessfully with output', 'score': 10},
          {'text': 'Error', 'score': -2},
          {'text': 'none', 'score': -2},

        ],
      },
      {
        'questionText':
        'Q5.  Which symbol is used to get the address of pointer stored',
        'answers': [
          {
            'text': '*',
            'score': -2,
          },
          {
            'text': '@',
            'score': -2,
          },
          {
            'text': '^',
            'score': -2,
          },
          {
            'text': '!',
            'score': -2,
          },
          {
            'text': '<>',
            'score': -2,
          },
          {'text': '&', 'score': 10},
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

