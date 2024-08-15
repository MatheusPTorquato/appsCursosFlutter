import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Questionnaire extends StatelessWidget {
  const Questionnaire({
    super.key,
    required this.questions,
    required this.selectedQuestion,
    required this.answer,
  });

  bool get hasSelectedQuestion => selectedQuestion < questions.length;

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) answer;

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = hasSelectedQuestion
        ? questions[selectedQuestion].cast()['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        TextQuestions(
          textQuestion: questions[selectedQuestion]['pergunta'].toString(),
        ),
        ...respostas.map((resp) {
          return AnswerQuestion(
            textAnswer: resp['texto'] as String,
            onChoices: () => answer((resp['pontuacao'] as int?) ?? 0),
          );
        })
      ],
    );
  }
}
