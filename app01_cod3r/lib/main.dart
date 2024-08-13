import 'package:flutter/material.dart';

void main() => runApp(const QuestionApp());

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Perguntas",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Text("Flutter Test"),
      ),
    );
  }
}
