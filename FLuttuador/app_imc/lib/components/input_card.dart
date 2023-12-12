import 'package:app_imc/components/calculate_imc_button.dart';
import 'package:flutter/material.dart';

class InputCard extends StatefulWidget {
  final void Function(String sex, int age, double weight, double height)
      callback;
  const InputCard({super.key, required this.callback});

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  bool isFemaleOrMale = false;
  String sex = 'Masculino';

  late TextEditingController ageController;
  late TextEditingController weightController;
  late TextEditingController heightController;

  VoidCallback? onPressedCalculteImcButton;

  @override
  void initState() {
    super.initState();
    ageController = TextEditingController();
    weightController = TextEditingController();
    heightController = TextEditingController();
  }

  @override
  void dispose() {
    ageController.dispose();
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              inputSex(),
              inputs('Digite a sua idade', 'anos', ageController),
              inputs('Digite o seu peso em Kg', 'Kg', weightController),
              inputs('Digite a sua altura em metros', 'm', heightController),
              CalculateImcButton(
                  onPressedCalculteImcButton: onPressedCalculteImcButton,
                  context: context),
            ],
          ),
        ),
      ),
    );
  }

  Row inputs(String startLabel, String endLabel,
      TextEditingController controllerText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            controller: controllerText,
            textAlign: TextAlign.end,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 24),
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: startLabel,
            ),
            onChanged: (value) {
              setState(() {
                onPressedCalculteImcButton = _isFilled()
                    ? () => widget.callback(
                          sex.substring(0, 1),
                          int.tryParse(ageController.text) ?? 0,
                          double.tryParse(
                                  weightController.text.replaceAll(',', '.')) ??
                              0,
                          double.tryParse(
                                  heightController.text.replaceAll(',', '.')) ??
                              0,
                        )
                    : null;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 0.0),
          child: SizedBox(
            width: 100,
            child: Text(
              endLabel,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }

  Row inputSex() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Sexo',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          sex,
          style: const TextStyle(color: Colors.green),
        ),
        Switch(
          value: isFemaleOrMale,
          onChanged: (value) {
            setState(() {
              isFemaleOrMale = value;
              sex = isFemaleOrMale ? 'Feminino' : 'Maculino';
            });
          },
        )
      ],
    );
  }

  bool _isFilled() {
    return ageController.text.isNotEmpty &&
        weightController.text.isNotEmpty &&
        heightController.text.isNotEmpty;
  }
}
