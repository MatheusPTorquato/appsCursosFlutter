import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({super.key});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {

  final String textDescription = "Lorem ipsum odor amet, consectetuer adipiscing elit. Eleifend nam felis nostra augue habitant accumsan iaculis rhoncus imperdiet. Parturient ante dictumst proin habitant augue integer lectus. Nibh hendrerit vivamus neque litora porta suscipit morbi. Inceptos montes rhoncus aenean integer pretium leo diam. Vel pulvinar taciti quisque maecenas quisque fusce. Iaculis nam turpis dolor proin nulla libero eleifend. Nascetur augue litora condimentum aliquet ultricies venenatis conubia.\nIpsum vivamus proin, dis primis nulla sed et. Eleifend dolor at imperdiet amet ultricies lacinia. Ultricies pretium non non vestibulum tincidunt malesuada ridiculus. Curae maximus maximus molestie; aliquet neque natoque leo praesent. Vulputate bibendum risus dapibus nulla nisi adipiscing tortor. Hac viverra eleifend auctor nascetur phasellus, euismod erat inceptos.\nMontes rhoncus quam cursus posuere lacinia. Risus mattis class per nostra nam et sollicitudin. Facilisis adipiscing fringilla sit rutrum feugiat. Vestibulum class morbi ligula porta integer maecenas nisi imperdiet curae. Neque lacus tempor conubia ante; fusce nunc. Habitant orci placerat vehicula eu porta. Tempus vulputate tincidunt mollis ornare ligula purus donec. Congue efficitur suscipit adipiscing efficitur conubia per laoreet; venenatis himenaeos. Magnis augue consequat habitant tempus habitasse ac. Risus posuere sed parturient placerat litora bibendum sed arcu.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Empresa", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/detalhe_empresa.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Sobre a empresa",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(textDescription)
            ],
          ),
        ),
      ),
    );
  }
}
