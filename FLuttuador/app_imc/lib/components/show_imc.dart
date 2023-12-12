import 'package:flutter/material.dart';

class ShowImc extends StatelessWidget {
  const ShowImc({
    super.key,
    required this.imc,
    required this.colorImc,
    required this.textImc,
  });

  final double imc;
  final Color colorImc;
  final String textImc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              imc.toStringAsFixed(1).replaceAll('.', ','),
              style: TextStyle(
                color: colorImc,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Seu IMC',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            textImc,
            softWrap: true,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
