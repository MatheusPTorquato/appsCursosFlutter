import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _preco = "";

  Future<void> _btcPrice() async {
    String urlString = "https://blockchain.info/ticker";
    Uri url = Uri.parse(urlString);

    http.Response response = await http.get(url);

    Map<String, dynamic> returnPrice = jsonDecode(response.body);

    setState(() {
      _preco = returnPrice["BRL"]["last"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bitcoin.png"),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Preço Atual:\nR\$ $_preco",
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: _btcPrice,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: const Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
