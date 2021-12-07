import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              questionText,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ), //Text
          ),
        ],
      ),
    ); //Container
  }
}