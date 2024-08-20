import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  late var _defaultImageApp = const AssetImage("images/padrao.png");
  late var _defaultPhase = "Sua Escolha!";

  void _onChoice(String userChoice) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var numberOption = Random().nextInt(opcoes.length);

    var appChoice = opcoes[numberOption];

    switch (appChoice) {
      case "pedra":
        setState(() {
          _defaultImageApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _defaultImageApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _defaultImageApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    if ((userChoice == "pedra" && appChoice == "tesoura") ||
        (userChoice == "tesoura" && appChoice == "papel") ||
        (userChoice == "papel" && appChoice == "pedra")) {
      _defaultPhase = "Você venceu!";
    } else if ((appChoice == "pedra" && userChoice == "tesoura") ||
        (appChoice == "tesoura" && userChoice == "papel") ||
        (appChoice == "papel" && userChoice == "pedra")) {
      _defaultPhase = "Você perdeu!";
    } else {
      _defaultPhase = "Empate!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "JokenPo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: Column(
              children: [
                const Text(
                  "Escolha do App:",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  //textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: null,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 40),
                    child: Image(
                      image: _defaultImageApp,
                    ),
                  ),
                ),
                Text(
                  _defaultPhase,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _onChoice("pedra"),
                        child: Image.asset(
                          "images/pedra.png",
                          width: 107,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _onChoice("papel"),
                        child: Image.asset(
                          "images/papel.png",
                          width: 107,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _onChoice("tesoura"),
                        child: Image.asset(
                          "images/tesoura.png",
                          width: 107,
                        ),
                      )
                    ],
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
