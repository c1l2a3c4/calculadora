import 'package:flutter/material.dart';
import 'screens/calculadora_screen.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  //gerenciamento de estado estático - texto,
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalculadoraHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
