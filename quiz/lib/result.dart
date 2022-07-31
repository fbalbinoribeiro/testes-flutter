
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final VoidCallback _resetHandler;

  String get _resultText {
   return _resultScore < 10 ? 'You have problems. Your score is $_resultScore' : 'You are awesome! Your score is $_resultScore';
  }

  const Result(this._resultScore, this._resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: Column(children: [Text(_resultText, style: const TextStyle(fontSize: 30), textAlign: TextAlign.center), ElevatedButton(onPressed: _resetHandler, child: const Text('Reset'))]),
    );
  }

}