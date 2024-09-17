import 'package:flutter/material.dart';
import './teste_via_cep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TesteViaCep(),
    );
  }
}
