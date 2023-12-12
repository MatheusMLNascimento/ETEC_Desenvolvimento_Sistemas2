import 'package:app_imc/components/show_ideal_weight.dart';
import 'package:app_imc/components/show_ideal_weight_text.dart';
import 'package:app_imc/components/show_imc.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double imc;
  final String textImc;
  final double weightMin;
  final double weightMax;
  final Color colorImc;

  const ResultCard({
    super.key,
    required this.imc,
    required this.textImc,
    required this.weightMin,
    required this.weightMax,
    required this.colorImc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 380,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShowImc(imc: imc, colorImc: colorImc, textImc: textImc),
              const ShowIdealWeightText(),
              ShowIdealWeight(weightMin: weightMin, weightMax: weightMax),
            ],
          ),
        ),
      ),
    );
  }
}
