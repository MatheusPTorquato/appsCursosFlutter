import 'package:flutter/material.dart';

class EntradaRadioBtn extends StatefulWidget {
  const EntradaRadioBtn({super.key});

  @override
  State<EntradaRadioBtn> createState() => _EntradaRadioBtnState();
}

class _EntradaRadioBtnState extends State<EntradaRadioBtn> {
  String _escolhaUser = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: "m",
          groupValue: _escolhaUser,
          onChanged: (String? escolha) {
            setState(() {
              _escolhaUser = escolha!;
            });
          },
        ),
        RadioListTile(
          value: "f",
          groupValue: _escolhaUser,
          onChanged: (String? escolha) {
            setState(() {
              _escolhaUser = escolha!;
            });
          },
        ),
      ],
    );
  }
}
