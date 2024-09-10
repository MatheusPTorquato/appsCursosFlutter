import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _onSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Comida br"),
        Checkbox(
            value: _onSelected,
            onChanged: (bool? selected) {
              setState(() {
                _onSelected = selected!;
              });
            }),
        if (_onSelected)
          const TextField(
            decoration: InputDecoration(
              labelText: 'Insira a data',
            ),
          ),
        CheckboxListTile(
          value: _onSelected,
          onChanged: (bool? selected) {
            setState(() {
              _onSelected = selected!;
            });
          },
          title: const Text("teste"),
        )
      ],
    );
  }
}
