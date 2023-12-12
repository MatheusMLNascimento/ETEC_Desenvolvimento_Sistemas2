import 'package:app_navigator/pages/one.dart';
import 'package:app_navigator/pages/three.dart';
import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tela dois"),
          centerTitle: true,
          automaticallyImplyLeading: false, // Remove a opção de voltar para página anterior quando avançar de página
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/one"); // Navegação entre páginas usando rotas (routes)
                      // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (context) => const One()));
                    },
                    child: const Text("Voltar para tela um")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/three"); // Navegação entre páginas usando rotas (routes)
                      // Navigator.of(context).push(MaterialPageRoute(
                          // builder: (context) => const Three()));
                    },
                    child: const Text("Ir para tela três"))
              ]),
        ));
  }
}
