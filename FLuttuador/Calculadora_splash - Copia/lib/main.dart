import 'package:calculadora_splash/pages/CalculadoraImc.dart';
import 'package:calculadora_splash/pages/HomePage.dart';
import 'package:calculadora_splash/pages/LoginPage.dart';
import 'package:calculadora_splash/pages/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const calc_imc());
}

class calc_imc extends StatelessWidget {
  const calc_imc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o "debug banner" da página
      initialRoute: "/", // Rota inicial, funciona como um "Home"
      routes: {
        // Lista de rotas que poderão ser usadas pelo usuário
        "/": (context) => const SplashScreen(), // Rota 1 (Tela de Loading)
        "/login": (context) => const Login(), // Rota 2 (Tela de Login)
        "/home": (context) => const Home(), // Rota 3 (Tela inicial)
        "/calc": (context) =>
            const CalculadoraImc() // Rota 4 (Calculadora, não confundir com Home da Rota 3)
      },
    );
  }
}
