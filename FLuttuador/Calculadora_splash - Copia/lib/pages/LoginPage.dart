import 'dart:ui';

import 'package:calculadora_splash/controllers/login_controller.dart';
import 'package:calculadora_splash/models/user.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  void _onPressedButton() {
    var loginController = LoginController(
        user: User(
            email: emailController.text, password: passwordController.text));
    if (loginController.isValid()) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Login incorreto!!!'),
      ));

      emailController.clear();
      passwordController.clear();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            centerTitle: true,
            automaticallyImplyLeading: false),
        body: Center(
            child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://assets.materialup.com/uploads/bb73a507-7313-489c-b10c-2a97e7e393bb/preview.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
                style: const TextStyle(color: Colors.amber, fontSize: 23),
              ),
              TextFormField(
                controller: passwordController,
                autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Senha"),
                style: const TextStyle(color: Colors.amber, fontSize: 23),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _onPressedButton,
                child: const Text("Logar", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 7),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Criar conta",
                      style: TextStyle(fontSize: 20))),
            ],
          ),
        )));
  }
}
