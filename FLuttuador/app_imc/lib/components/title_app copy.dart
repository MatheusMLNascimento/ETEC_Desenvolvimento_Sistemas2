import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Calculadora de IMC',
          style: TextStyle(
              color: Colors.green, fontSize: 32, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
