import 'package:flutter/material.dart';

class TextQuestions extends StatelessWidget {
  const TextQuestions({super.key, required this.textQuestion});

  final String textQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        textQuestion,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
