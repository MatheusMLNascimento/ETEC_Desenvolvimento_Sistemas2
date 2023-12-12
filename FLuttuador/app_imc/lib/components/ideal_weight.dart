import 'package:flutter/material.dart';

class IdealWeight extends StatelessWidget {
  const IdealWeight({
    super.key,
    required this.value,
    required this.label,
  });

  final double value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toStringAsFixed(1).replaceAll('.', ','),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }
}
