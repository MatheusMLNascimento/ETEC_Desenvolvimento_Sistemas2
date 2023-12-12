import 'package:app_imc/pages/calculator_page.dart';
import 'package:app_imc/pages/home_page.dart';
import 'package:app_imc/pages/login_page.dart';
import 'package:app_imc/pages/splash_screen_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/calculator': (context) => const CalculatorPage(),
      },
    );
  }
}
