import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> _answer;
  final Function _answerHandler;

  const Answer(this._answer, this._answerHandler);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: ElevatedButton(onPressed: () => _answerHandler(_answer['score'] as int), child: Text(_answer['text'] as String)),
    );
  }
  
}