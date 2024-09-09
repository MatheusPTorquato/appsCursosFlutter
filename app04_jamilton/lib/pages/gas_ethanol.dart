import 'package:flutter/material.dart';

class GasEthanol extends StatefulWidget {
  const GasEthanol({super.key});

  @override
  State<GasEthanol> createState() => _GasEthanolState();
}

class _GasEthanolState extends State<GasEthanol> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoGasolina == null || precoAlcool == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilize o ponto";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Gasolina é melhor";
        });
      } else {
        setState(() {
          _textoResultado = "Álcool é melhor";
        });
      }
    }
    //_controllerAlcool.clear();
    //_controllerGasolina.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  const Text(
                    "Saiba qual a melhor opção para o abastecimento do seu veiculo",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: "Preço Álcool, ex: 1.59",
                      labelStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 25,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    controller: _controllerAlcool,
                  ),
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: "Preço Gasolina, ex: 3.15",
                      labelStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 25,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    controller: _controllerGasolina,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _calcular,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(15)),
                      child: const Text(
                        "Calcular",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      _textoResultado,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
