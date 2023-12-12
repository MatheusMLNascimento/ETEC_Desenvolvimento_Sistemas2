import 'package:app_imc/pages/home_page.dart';
import 'package:app_imc/pages/login_page.dart';
import 'package:app_imc/services/prefs_service.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Future<Widget> futureCall() async {
    bool isAuth = await PrefsService.isAuth();
    await Future.delayed(const Duration(seconds: 5));
    if (isAuth) {
      return Future.value(const HomePage());
    }
    return Future.value(const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('images/logo_etec.png'),
      title: const Text(
        "App IMC",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      gradientBackground: const LinearGradient(
        colors: [
          Color(0xff39235c),
          Color(0xff523173),
          Color(0xff6e418b),
          Color(0xff8c52a2),
          Color(0xffac66b9),
          Color(0xffcd7cd0),
          Color(0xffe893e2),
          Color(0xffffadf0),
        ],
      ),
      showLoader: true,
      loadingText: const Text("Loading..."),
      futureNavigator: futureCall(),
    );
  }
}
