import 'package:app_navigator/pages/two.dart';
import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela um"),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove a opção de voltar para página anterior quando avançar de página
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/two"); // Navegação entre páginas usando rotas (routes)
                //Navigator.of(context)
                    //.push(MaterialPageRoute(builder: (context) => const Two()));
              },
              child: const Text("Ir para tela dois"))
        ]),
      ),
    );
  }
}
