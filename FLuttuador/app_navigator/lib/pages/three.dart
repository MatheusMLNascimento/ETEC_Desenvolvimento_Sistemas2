import 'package:app_navigator/pages/one.dart';
import 'package:app_navigator/pages/two.dart';
import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tela três"),
          centerTitle: true,
          automaticallyImplyLeading:
              false, // Remove a opção de voltar para página anterior quando avançar de página
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,
                          "/two"); // Navegação entre páginas usando rotas (routes)
                      //Navigator.of(context).push(
                      //MaterialPageRoute(builder: (context) => const Two()));
                    },
                    child: const Text("Voltar para tela dois")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,
                          "/one"); // Navegação entre páginas usando rotas (routes)
                      //Navigator.of(context).push(
                      //MaterialPageRoute(builder: (context) => const One()));
                    },
                    child: const Text("Ir para tela um"))
              ]),
        ));
  }
}
