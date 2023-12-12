import 'package:flutter/material.dart';
import "package:calculadora_imc/widgets/HomePage.dart";

void main() {
  runApp(const CalculadoraImc());
}

class CalculadoraImc extends StatelessWidget {
  const CalculadoraImc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
