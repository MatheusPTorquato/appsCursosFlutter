import 'package:flutter/material.dart';
import './pages/flip_a_coin_home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlipACoinHome(),
    );
  }
}
