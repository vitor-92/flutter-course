import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    return 'Score:' + resultScore.toString().padLeft(3, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 120,
        child: Column(
          children: [
            const Text(
              'You did it!',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              resultPhrase,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: resetQuiz,
              child: Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
