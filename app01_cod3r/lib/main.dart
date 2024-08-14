import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(const QuestionApp());

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
      //if(correctChoice == )
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'pergunta': 'Qual é a capital da Austrália?', //Camberra
        'respostas': ["Sydney", " Camberra", "Melbourne", "Darwin"]
      },
      {
        'pergunta': 'De onde é a invenção do chuveiro elétrico?', //BR
        'respostas': ["França ", "Estados Unidos", "Inglaterra ", "Brasil"]
      },
      {
        'pergunta':
            'Atualmente, quantos elementos químicos a tabela periódica possui?',
        //118
        'respostas': ["92", "109", "118", "113"]
      },
      {
        'pergunta': 'Quanto tempo a luz do Sol demora para chegar à Terra?',
        //8 min
        'respostas': ["1 dia ", "12 segundos", "8 minutos", "3 horas"]
      },
      {
        'pergunta': 'Em qual local da Ásia o português é língua oficial?',
        //Macau
        'respostas': ["Macau", "India", "Moçambique", "Angola"]
      }
    ];

    List respostas = [];

    for (String textAnswer
        in questions[_selectedQuestion].cast()['respostas']) {
      respostas.add(AnswerQuestion(
        textAnswer: textAnswer,
        onChoices: _answer,
      ));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Perguntas",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: <Widget>[
            TextQuestions(
              textQuestion: questions[_selectedQuestion]['pergunta'].toString(),
            ),
            ...respostas
          ],
        ),
      ),
    );
  }
}
