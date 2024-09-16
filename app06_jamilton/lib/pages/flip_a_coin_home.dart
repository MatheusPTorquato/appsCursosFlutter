import 'dart:math';

import 'package:flutter/material.dart';
import './flip_a_coin_results.dart';

class FlipACoinHome extends StatefulWidget {
  const FlipACoinHome({super.key});

  @override
  State<FlipACoinHome> createState() => _FlipACoinHomeState();
}

class _FlipACoinHomeState extends State<FlipACoinHome> {
  void _playGame() {
    var itens = ["cara", "coroa"];
    var randomNumber = Random().nextInt(itens.length);

    var resultados = itens[randomNumber];

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => FlipACoinResults(
                valor: resultados,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/logo.png"),
          GestureDetector(
            onTap: _playGame,
            child: Image.asset("assets/images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
