import 'package:flutter/material.dart';
import './tela_empresa.dart';
import './tela_cliente.dart';
import './tela_contato.dart';
import './tela_servico.dart';

class AtmConsultoriaHome extends StatefulWidget {
  const AtmConsultoriaHome({super.key});

  @override
  State<AtmConsultoriaHome> createState() => _AtmConsultoriaHomeState();
}

class _AtmConsultoriaHomeState extends State<AtmConsultoriaHome> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaEmpresa()));
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaServico()));
  }

  void _abrirClientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaCliente()));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(35, 60, 35, 40),
              child: const Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("assets/images/menu_empresa.png"),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("assets/images/menu_servico.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirClientes,
                  child: Image.asset("assets/images/menu_cliente.png"),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("assets/images/menu_contato.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
