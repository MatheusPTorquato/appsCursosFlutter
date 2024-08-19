import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const AppDailyPhases());
}

class AppDailyPhases extends StatefulWidget {
  const AppDailyPhases({super.key});

  @override
  State<AppDailyPhases> createState() => _AppDailyPhasesState();
}

class _AppDailyPhasesState extends State<AppDailyPhases> {

  var _randomNumber = 0;

  final _phases = [
    "Hoje é o melhor dia da sua vida.",
    "Enfrente os problemas e leve a melhor!",
    "Dê mais atenção ao que você tem de bom na sua vida.",
    "Para chegar ao topo, o que importa é começar!",
    "Enfrente os problemas e leve a melhor! Levanta, sacode a poeira, dá a volta por cima.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.",
    "O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo.",
    "Comece seu dia com um sorriso que venha lá de dentro da alma.",
    "A sua irritação não solucionará problema algum. O seu mau humor não modifica a vida. Não estrague o seu dia."
  ];

  var _currentPhase = "Clique abaixo para gerar a frase";

  void _onChangePhases() {
    setState(() {
      _randomNumber = Random().nextInt(_phases.length);
      _currentPhase = _phases[_randomNumber];
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Frases do Dia",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _currentPhase,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: _onChangePhases,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text(
                    "Nova Frase",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
