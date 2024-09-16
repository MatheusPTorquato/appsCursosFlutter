import 'package:flutter/material.dart';

class FlipACoinResults extends StatefulWidget {
  const FlipACoinResults({super.key, required this.valor});

  final String valor;

  @override
  State<FlipACoinResults> createState() => _FlipACoinResultsState();
}

class _FlipACoinResultsState extends State<FlipACoinResults> {

  @override
  Widget build(BuildContext context) {

    String caminhoImage;
    if(widget.valor == "cara"){
      caminhoImage = "assets/images/moeda_cara.png";
    } else {
      caminhoImage = "assets/images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch, // Center alignment
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                caminhoImage,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              "assets/images/botao_voltar.png",
            ),
          )
        ],
      ),
    );
  }
}
