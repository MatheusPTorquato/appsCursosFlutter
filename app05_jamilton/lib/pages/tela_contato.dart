import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  final String textDescription =
      "Lorem ipsum odor amet, consectetuer adipiscing elit. Eleifend nam felis nostra augue habitant accumsan iaculis rhoncus imperdiet. Parturient ante dictumst proin habitant augue integer lectus. Nibh hendrerit vivamus neque litora porta suscipit morbi. Inceptos montes rhoncus aenean integer pretium leo diam. Vel pulvinar taciti quisque maecenas quisque fusce. Iaculis nam turpis dolor proin nulla libero eleifend. Nascetur augue litora condimentum aliquet ultricies venenatis conubia.\nIpsum vivamus proin, dis primis nulla sed et. Eleifend dolor at imperdiet amet ultricies lacinia. Ultricies pretium non non vestibulum tincidunt malesuada ridiculus. Curae maximus maximus molestie; aliquet neque natoque leo praesent. Vulputate bibendum risus dapibus nulla nisi adipiscing tortor. Hac viverra eleifend auctor nascetur phasellus, euismod erat inceptos.\nMontes rhoncus quam cursus posuere lacinia. Risus mattis class per nostra nam et sollicitudin. Facilisis adipiscing fringilla sit rutrum feugiat. Vestibulum class morbi ligula porta integer maecenas nisi imperdiet curae. Neque lacus tempor conubia ante; fusce nunc. Habitant orci placerat vehicula eu porta. Tempus vulputate tincidunt mollis ornare ligula purus donec. Congue efficitur suscipit adipiscing efficitur conubia per laoreet; venenatis himenaeos. Magnis augue consequat habitant tempus habitasse ac. Risus posuere sed parturient placerat litora bibendum sed arcu.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Contato",
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
                  Image.asset("assets/images/detalhe_contato.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Contato",
                    style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("atendimento@atmconsultoria.com.br"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Telefone: (11) 1234-5678"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Celular: (11) 98765-4321"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
