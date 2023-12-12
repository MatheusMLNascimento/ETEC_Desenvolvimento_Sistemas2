import 'package:flutter/material.dart';
import 'package:atv01_ui_flutter/widgets/HomePage.dart';

void main() {
  runApp(CartaoVisita());
}

class CartaoVisita extends StatelessWidget {
  const CartaoVisita({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão Visita',
      home: HomePage(),
    );
  }
}