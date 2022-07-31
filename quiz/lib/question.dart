import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  
  const Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: Text(_questionText),
    );
  }

}