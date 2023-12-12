import 'package:app_imc/components/ideal_weight.dart';
import 'package:flutter/material.dart';

class ShowIdealWeight extends StatelessWidget {
  const ShowIdealWeight({
    super.key,
    required this.weightMin,
    required this.weightMax,
  });

  final double weightMin;
  final double weightMax;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IdealWeight(value: weightMin, label: 'Mínimo'),
        IdealWeight(value: weightMax, label: 'Máximo'),
      ],
    );
  }
}
