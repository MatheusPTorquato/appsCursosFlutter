import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TesteViaCep extends StatefulWidget {
  const TesteViaCep({super.key});

  @override
  State<TesteViaCep> createState() => _TesteViaCepState();
}

class _TesteViaCepState extends State<TesteViaCep> {
  final TextEditingController cepController = TextEditingController();
  String _address = "";

  Future<void> _recuperarCep() async {
    String cep = cepController.text;
    String urlString = "https://viacep.com.br/ws/$cep/json/";
    Uri url = Uri.parse(urlString); // Convert the string to a Uri

    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = jsonDecode(response.body);
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String cidade = retorno["localidade"];
    String uf = retorno["uf"];

    setState(() {
      _address = "Rua: $logradouro\nBairro: $bairro\nCidade: $cidade\nUf: $uf";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo serviços web"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: cepController,
              decoration: const InputDecoration(
                label: Text("Digite seu cep. Ex: 12345678"),
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _recuperarCep,
              child: const Text("Clique aqui!"),
            ),
            Text(_address)
          ],
        ),
      ),
    );
  }
}
