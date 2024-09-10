import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUser = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: _escolhaUser,
          onChanged: (bool valor) {
            setState(() {
              _escolhaUser = valor;
            });
          },
        ),
        Text("Receber notificação?")
      ],
    );
  }
}
