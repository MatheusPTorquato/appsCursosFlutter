import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({super.key});

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Serviços", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/detalhe_servico.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Nossos Serviços",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Consultoria"),
              const SizedBox(
                height: 16,
              ),
              const Text("Calculo de Preços"),
              const SizedBox(
                height: 16,
              ),
              const Text("Acompanhamento de projeto"),
            ],
          ),
        ),
      ),
    );
  }
}
