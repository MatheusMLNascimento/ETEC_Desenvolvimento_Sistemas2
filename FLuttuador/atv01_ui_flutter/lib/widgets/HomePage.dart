// Criado por: Matheus Nascimento 2ºDS
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cartão de Visita"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize
            .min, // Define o tamanho da Column como mínimo, removendo os espaços vazios
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Estica o conteúdo dentro dos limites da Column
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.account_circle, size: 85),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Flutter McFlutter",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 55,
                      ),
                    ),
                    Text(
                      "Experienced App Developer",
                      style: TextStyle(fontSize: 26),
                    ),
                  ])
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "123 Street A",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "(19) 999-4657",
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.accessibility, size: 40,),
              Icon(Icons.timer, size: 40,),
              Icon(Icons.phone_android, size: 40,),
              Icon(Icons.phone_iphone, size: 40,)
            ],
          ),
        ],
      )),
    );
  }
}
