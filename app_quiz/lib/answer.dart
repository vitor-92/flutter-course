import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      width: double.infinity,
      child: OutlinedButton(
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 20),
        ),
        onPressed: selectHandler,
        style: OutlinedButton.styleFrom(
          primary: Colors.blue,
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.blue),
          elevation: 1,
          minimumSize: const Size.fromHeight(50),
        ),
      ),
    );
  }
}
