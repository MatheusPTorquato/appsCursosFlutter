import 'package:flutter/material.dart';
import './questionnaire.dart';
import './results.dart';

void main() => runApp(const QuestionApp());

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _pontuacaoTotal = 0;

  final _questions = const [
    {
      'pergunta': 'Qual é a capital da Austrália?', //Camberra
      'respostas': [
        {'texto': 'Sydney', 'pontuacao': 0},
        {'texto': 'Camberra', 'pontuacao': 10},
        {'texto': 'Melbourne', 'pontuacao': 0},
        {'texto': 'Darwin', 'pontuacao': 0},
      ]
    },
    {
      'pergunta': 'De onde é a invenção do chuveiro elétrico?', //BR
      'respostas': [
        {'texto': "França", 'pontuacao': 0},
        {'texto': "Estados Unidos", 'pontuacao': 0},
        {'texto': "Inglaterra", 'pontuacao': 0},
        {'texto': "Brasil", 'pontuacao': 10},
      ]
    },
    {
      'pergunta': 'Atualmente, quantos elementos químicos a tabela periódica possui?',
      //118
      'respostas': [
        {'texto': "92", 'pontuacao': 0},
        {'texto': "109", 'pontuacao': 0},
        {'texto': "118", 'pontuacao': 10},
        {'texto': "113", 'pontuacao': 0},
      ]
    },
    {
      'pergunta': 'Quanto tempo a luz do Sol demora para chegar à Terra?',
      //8 min
      'respostas': [
        {'texto': "1 dia", 'pontuacao': 0},
        {'texto': "12 segundos", 'pontuacao': 0},
        {'texto': "8 minutos", 'pontuacao': 10},
        {'texto': "3 horas", 'pontuacao': 0},
      ]
    },
    {
      'pergunta': 'Em qual local da Ásia o português é língua oficial?',
      //Macau
      'respostas': [
        {'texto': "Macau", 'pontuacao': 10},
        {'texto': "Índia", 'pontuacao': 0},
        {'texto': "Moçambique", 'pontuacao': 0},
        {'texto': "Angola", 'pontuacao': 0},
      ]
    }
  ];

  void _onAnswer(int pontuacao) {
    setState(() {
      _selectedQuestion++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _onRestart(){
    setState(() {
      _selectedQuestion = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get hasSelectedQuestion => _selectedQuestion < _questions.length;

  @override
  Widget build(BuildContext context) {

    final int quantidadeAcertos = (_pontuacaoTotal / 10).toInt();

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
        body: hasSelectedQuestion
            ? Questionnaire(
          questions: _questions,
          selectedQuestion: _selectedQuestion,
          answer: _onAnswer,
        )
            : ResultsText(
          pontuacao: quantidadeAcertos, onRestart: _onRestart,
        ),
      ),
    );
  }
}
