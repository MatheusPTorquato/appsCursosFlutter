import 'package:flutter/material.dart';

class AnswerQuestion extends StatelessWidget {
  const AnswerQuestion({
    super.key,
    required this.textAnswer,
    required this.onChoices,
  });

  final String textAnswer;

  final void Function() onChoices;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: ElevatedButton(
        onPressed: onChoices,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          fixedSize: const Size(250, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          textAnswer,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
