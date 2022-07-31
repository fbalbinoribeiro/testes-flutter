import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final String _questionText;
  final List<Map<String, Object>> _answers;
  final Function _answerHandler;

  const Quiz(this._questionText, this._answers, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Question(_questionText),
        ..._answers.map((answer) => Answer(answer, _answerHandler)),
      ],
    ));
  }
}
