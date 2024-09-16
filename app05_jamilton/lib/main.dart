import 'package:flutter/material.dart';
import './pages/atm_consultoria_home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AtmConsultoriaHome(),
    );
  }
}
