import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Clientes",
          style: TextStyle(color: Colors.white),
        ),
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
                  Image.asset("assets/images/detalhe_cliente.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Nossos clientes",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/cliente1.png"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Empresa de Software"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/cliente2.png"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Empresa de Auditoria"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
