// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is Your Favourate Color?',
      'Answers': ['Blue', 'Black', 'Red', 'White']
    },
    {
      'questionText': 'What is Your Favourate Animal?',
      'Answers': ['Horse', 'Cat', 'Dog', 'Lion']
    },
    {
      'questionText': 'What is Your Programming Language?',
      'Answers': ['Python', 'Java', 'Dart', 'c#']
    },
    {
      'questionText': 'What is Your Mobile app  Framework?',
      'Answers': ['Xamarin', 'React Native', 'Flutter']
    },
  ];
  var _questionIndex = 0;

  void _answerChosen() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerChosen, _questionIndex)
            : Center(child: Text("You Did It")),
      ),
    );
  }
}
