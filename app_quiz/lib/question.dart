import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
