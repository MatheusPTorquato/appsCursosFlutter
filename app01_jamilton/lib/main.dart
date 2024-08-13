import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final List _frases = [
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

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(_frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              '${_frases[_numeroAleatorio]}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Gerar frase',
        child: const Icon(Icons.space_bar_outlined),
      ),
    );
  }
}
