// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variáveis para armazenar dados do switch de sexo
  bool valor = true;

  // Variáveis para armazenar os valores dos campos de entrada
  int idade = 0;
  double altura = 0.0;
  String sexo = 'Masculino';

  // Variáveis para armazenar os resultados do cálculo
  double imc = 0.0;
  String formatado = "0";
  String classificacao = '';
  double peso = 0.0;
  double pesoMinimo = 0.0;
  double pesoMaximo = 0.0;

  void calculaPeso() {
    setState(() {
      // Calcula peso min e max com base na altura
      if (sexo == 'Masculino') {
        if (altura < 1.55) {
          pesoMinimo = 50;
          pesoMaximo = 58.2;
        } else if (altura > 1.93) {
          pesoMinimo = 73.9;
          pesoMaximo = 84.4;
        } else {
          // Formula de Lorentz para homens
          pesoMinimo = altura * 100 - 100 - ((altura * 100 - 150) / 4);
          pesoMaximo = pesoMinimo + (pesoMinimo * 0.1);
        }
      } else {
        // Feminino
        if (altura < 1.50) {
          pesoMinimo = 45.5;
          pesoMaximo = 53.2;
        } else if (altura > 1.83) {
          pesoMinimo = 67.3;
          pesoMaximo = 76.8;
        } else {
          // Formula de Lorentz para mulheres
          pesoMinimo = altura * 100 - 100 - ((altura * 100 - 150) / 2.5);
          pesoMaximo = pesoMinimo + (pesoMinimo * 0.1);
        }
      }
    });
  }

  // Método para calcular o IMC e a classificação
  void calcularIMC() {
    setState(() {
      // Fórmula do IMC
      imc = peso / (altura * altura);
      formatado = imc
          .toStringAsFixed(2); // Format pro imc ter 2 num depois do "." apenas

      // Classificação do IMC para homens
      if (sexo == 'Masculino') {
        if (imc < 20) {
          classificacao = 'Você está abaixo do peso ideal';
        } else if (imc >= 20 && imc < 24.9) {
          classificacao = 'Parabéns, você está em seu peso normal';
        } else if (imc >= 25 && imc < 29.9) {
          classificacao = 'Você está acima do seupeso (sobrepeso)';
        } else if (imc >= 30 && imc < 35.9) {
          classificacao = 'Você está com o peso acima do grau I';
        } else if (imc >= 36 && imc < 42) {
          classificacao = 'Você está com o peso acima do grau II';
        } else {
          classificacao = 'Você está com o peso acima do grau III';
        }
      } else {
        // Classificação do IMC para mulheres
        if (imc < 18.5) {
          classificacao = 'Você está abaixo do peso ideal';
        } else if (imc >= 18.6 && imc < 23.9) {
          classificacao = 'Parabéns, você está em seu peso normal';
        } else if (imc >= 24 && imc < 28.9) {
          classificacao = 'Você está acima do seupeso (sobrepeso)';
        } else if (imc >= 29 && imc < 34.9) {
          classificacao = 'Você está com o peso acima do grau I';
        } else if (imc >= 35 && imc < 39.9) {
          classificacao = 'Você está com o peso acima do grau II';
        } else {
          classificacao = 'Você está com o peso acima do grau III';
        }
      }
    });
  }

  void encapsulaIMCeAltura() {
    calculaPeso();
    calcularIMC();
  }

  void atualizarSwitch(bool novoValor) {
    setState(() {
      valor = novoValor; // Atualiza o valor do switch com o novo valor
      if (valor) {
        sexo =
            "Masculino"; // Se o valor for verdadeiro, atualiza o título para "Masculino"
      } else {
        sexo =
            "Feminino"; // Se o valor for falso, atualiza o título para "Feminino"
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculadora de IMC',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
        ),
        body: Container(
          // Define a cor do container de fora
          color: const Color(0xffcbcbcb),
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                // Define a cor do container de dentro
                color: const Color(0xffffffff),
                // Define o raio da borda como 5 pixels
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                const Text(
                  textAlign: TextAlign.start,
                  "Sexo",
                  style: TextStyle(fontSize: 25),
                ),
                // Campo para escolher o sexo
                SwitchListTile(
                  value: valor,
                  onChanged: atualizarSwitch,
                  title: Text(sexo, style: const TextStyle(fontSize: 18)),
                ),

                TextField(
                  decoration: const InputDecoration(
                      labelText: 'Digite o seu peso em KG',
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    peso = double.parse(value);
                  },
                ),
                const SizedBox(height: 13),
                // Campo para digitar a idade em anos
                TextField(
                  decoration: const InputDecoration(
                      labelText: 'Digite a sua idade em ANOS',
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    idade = int.parse(value);
                  },
                ),
                const SizedBox(height: 13),
                // Campo para digitar a altura em metros
                TextField(
                  decoration: const InputDecoration(
                      labelText: 'Digite a sua altura em METROS',
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    altura = double.parse(value);
                  },
                ),
                const SizedBox(height: 13),

                // Botão para calcular o IMC
                ElevatedButton(
                  onPressed: encapsulaIMCeAltura,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(500, 50)),
                  child: const Text(
                    'Calcular IMC',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                // Seção para mostrar o resultado do cálculo
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        formatado,
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),

                      Text(
                        textAlign: TextAlign.center,
                        classificacao,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Peso ideal para sua altura',
                        style: TextStyle(fontSize: 18),
                      ),
                      // Row para números peso mín e máx
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '$pesoMinimo',
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(
                            '$pesoMaximo',
                            style: const TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      // Row para textos peso mín e máx
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Peso Mínimo',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            'Peso máximo',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
