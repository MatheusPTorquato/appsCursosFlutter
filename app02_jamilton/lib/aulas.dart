import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tester"),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Padding(
          padding: EdgeInsets.all(50),
          child: Row(
            children: [
              Text("Teste"),
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.blueAccent,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Texto 1"),
                Text("Texto 2"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
