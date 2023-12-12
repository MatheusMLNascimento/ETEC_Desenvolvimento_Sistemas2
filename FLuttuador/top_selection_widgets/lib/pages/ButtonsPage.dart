import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo de botões"),
        centerTitle: true,
      ),
      body: const ButtonTypesExample(),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          ElevatedButton(onPressed: onPressed, child: const Text("Elevated")),
          FilledButton(onPressed: onPressed, child: const Text("Filled")),
          FilledButton.tonal(
            onPressed: onPressed,
            child: const Text('Filled Tonal'),
          ),
          OutlinedButton(onPressed: onPressed, child: const Text("Outlined")),
          TextButton(onPressed: onPressed, child: const Text('Text'))
        ]
      ),
    );
  }
}