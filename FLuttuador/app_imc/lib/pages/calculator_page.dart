import 'package:app_imc/components/input_card.dart';
import 'package:app_imc/components/result_card.dart';
import 'package:app_imc/components/title_app.dart';
import 'package:app_imc/models/imc.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double imc = 0.0;
  String textImc = '';
  double weightMin = 0.0;
  double weightMax = 0.0;
  Color color = const Color.fromRGBO(0, 0, 0, 1);

  _calculateImc(String sex, int age, double weight, double height) {
    Imc objImc = Imc(sex: sex, weight: weight, height: height, age: age);
    var mapImc = objImc.getImc();
    setState(() {
      imc = mapImc['imc'];
      textImc = mapImc['resulttext'];
      weightMin = mapImc['weightMin'];
      weightMax = mapImc['weightMax'];
      color = sex.toUpperCase() == 'F'
          ? _getColor(imc, objImc.valuesFemale)
          : _getColor(imc, objImc.valuesMale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleApp(),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: const Color.fromARGB(255, 176, 190, 197),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InputCard(callback: _calculateImc),
              Visibility(
                visible: imc > 0.0,
                child: ResultCard(
                  imc: imc,
                  textImc: textImc,
                  weightMin: weightMin,
                  weightMax: weightMax,
                  colorImc: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColor(double valueImc, List<num> values) {
    return valueImc < values[0]
        ? const Color.fromRGBO(0, 176, 240, 1)
        : valueImc <= values[1]
            ? const Color.fromRGBO(146, 208, 80, 1)
            : valueImc <= values[2]
                ? const Color.fromRGBO(255, 255, 0, 1)
                : valueImc <= values[3]
                    ? const Color.fromRGBO(255, 102, 0, 1)
                    : valueImc <= values[4]
                        ? const Color.fromRGBO(255, 51, 0, 1)
                        : const Color.fromRGBO(255, 0, 0, 1);
  }
}
