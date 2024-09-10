import 'package:flutter/material.dart';
import './campo_texto.dart';
import './entrada_checkbox.dart';
import './entrada_radio_btn.dart';
import './entrada_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CampoTexto(),
              EntradaCheckbox(),
              EntradaRadioBtn(),
              EntradaSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
