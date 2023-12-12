import 'package:flutter/material.dart';

class CalculateImcButton extends StatelessWidget {
  const CalculateImcButton({
    super.key,
    required this.onPressedCalculteImcButton,
    required this.context,
  });

  final VoidCallback? onPressedCalculteImcButton;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: onPressedCalculteImcButton,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            textStyle: const TextStyle(color: Colors.white, fontSize: 20),
            padding: const EdgeInsets.all(18),
          ),
          child: const Text('Calcular IMC')),
    );
  }
}
