// ignore_for_file: file_names
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:calculadora_splash/services/prefs_service.dart';
import 'package:calculadora_splash/pages/HomePage.dart';
import 'package:calculadora_splash/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Widget> futureCall() async {
    bool isAuth = await PrefsService.isAuth();
    await Future.delayed(const Duration(seconds: 5));
    if (isAuth) {
      return Future.value(const Home());
    }
    return Future.value(const Login());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          "https://assets.materialup.com/uploads/bb73a507-7313-489c-b10c-2a97e7e393bb/preview.png"),
      title: const Text(
        "Calculadora IMC",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      gradientBackground: const LinearGradient(
        colors: [
          Color(0xff3c235c),
          Color(0xff5f2d81),
          Color(0xff61418b),
          Color(0xff6e52a2),
          Color(0xff8b66b9),
          Color(0xffbf7cd0),
          Color(0xffe193e8),
          Color(0xfff8adff),
        ],
      ),
      showLoader: true,
      loadingText: const Text("Loading...", style: TextStyle(fontSize: 25)),
      futureNavigator: futureCall(),
    );
  }
}
