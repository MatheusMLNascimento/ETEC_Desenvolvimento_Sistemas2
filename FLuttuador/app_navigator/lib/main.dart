import 'package:app_navigator/pages/one.dart';
import 'package:app_navigator/pages/three.dart';
import 'package:app_navigator/pages/two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const app_navigator());
}

class app_navigator extends StatelessWidget {
  const app_navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o "debug banner" da página
      initialRoute: "/one", // Rota inicial, funciona como um "Home"
      routes: { // Lista de rotas que poderão ser usadas pelo usuário
        "/one": (context) => const One(), // Rota 1 (página 1)
        "/two": (context) => const Two(), // Rota 2 (página 2)
        "/three": (context) => const Three() // Rota 3 (página 3)
      },
    );
  }
}
