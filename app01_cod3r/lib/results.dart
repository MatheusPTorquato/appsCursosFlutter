import 'package:flutter/material.dart';

class ResultsText extends StatelessWidget {
  const ResultsText(
      {super.key, required this.pontuacao, required this.onRestart});

  final int pontuacao;
  final void Function() onRestart;

  String get fraseResultado {
    if (pontuacao == 0) {
      return "Mais sorte da próxima vez!";
    } else if (pontuacao > 0 && pontuacao <= 1) {
      return "Bom começo, mas ainda há espaço para melhorar!";
    } else if (pontuacao > 1 && pontuacao <= 2) {
      return "Você está indo bem, continue assim!";
    } else if (pontuacao > 2 && pontuacao <= 3) {
      return "Muito bem! Você está quase lá!";
    } else if (pontuacao > 3 && pontuacao <= 4) {
      return "Ótimo trabalho! Você está quase perfeito!";
    } else if (pontuacao == 5) {
      return "Excelente! Você acertou tudo!";
    } else {
      return "Pontuação inválida.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Center(
            child: Text(
              "$fraseResultado\nAcertos: $pontuacao/5",
              style: const TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onRestart,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            fixedSize: const Size(250, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text(
            "Reiniciar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
