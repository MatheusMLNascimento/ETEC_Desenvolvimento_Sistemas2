import 'package:flutter/material.dart';

class ShowIdealWeightText extends StatelessWidget {
  const ShowIdealWeightText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Peso ideal para a sua altura',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ],
    );
  }
}
