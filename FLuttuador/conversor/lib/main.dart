import 'package:flutter/material.dart';
import 'widget/HomePage.dart';

void main() {
  runApp(const Conversor());
}

class Conversor extends StatelessWidget {
  const Conversor({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}