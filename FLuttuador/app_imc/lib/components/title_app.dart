import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Calculadora de IMC',
      style: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
