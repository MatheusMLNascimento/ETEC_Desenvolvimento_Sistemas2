import 'package:flutter/material.dart';

// Stateful
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late final TextEditingController valorRealController;
  late final TextEditingController valorDolarController;
  var resultado = "0.00";

  @override
  void initState() {
    super.initState();
    valorRealController = TextEditingController();
    valorDolarController = TextEditingController();
  }

  @override
  void dispose() {
    valorRealController.dispose();
    valorDolarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Marcelo advogado"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(children: [
          TextFormField(
            controller: valorRealController,
            decoration: const InputDecoration(
                labelText: "Digite o valor em Reais",
                labelStyle: TextStyle(fontSize: 20)),
            scrollPadding: const EdgeInsets.only(right: 10, left: 10),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: valorDolarController,
            decoration: const InputDecoration(
                labelText: "Digite o valor em Dolar(USD)",
                labelStyle: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                double valorReal = double.parse(valorRealController.text);
                double valorDolar = double.parse(valorDolarController.text);
                resultado = (valorReal * valorDolar).toStringAsFixed(2);
              });
            },
            color: Colors.blueAccent,
            child: const Text(
              "Converter",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            resultado,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
