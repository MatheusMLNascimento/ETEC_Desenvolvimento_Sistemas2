import 'package:flutter/material.dart';
import "package:top_selection_widgets/pages/ButtonsPage.dart";
import "package:top_selection_widgets/pages/CheckBoxPage.dart";
import "package:top_selection_widgets/pages/RadioButtonPage.dart";
import "package:top_selection_widgets/pages/SliderPage.dart";
import "package:top_selection_widgets/pages/SwitchPage.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principais Widgets de Seleção"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          botaoMenu("Exemplo de tipos de botões", () {
            _navegarTelaBotoes(context);
          }),
          botaoMenu("Exemplo de checkbox", () {
            _navegarTelaCheckbox(context);
          }),
          botaoMenu("Exemplo de radioButton", () {
            _navegarTelaRadioButton(context);
          }),
          botaoMenu("Exemplo de slider", () {
            _navegarTelaSlider(context);
          }),
          botaoMenu("Exemplo de switch", () {
            _navegarTelaSwitch(context);
          })
        ],
      )),
    );
  }

  ElevatedButton botaoMenu(String titulo, Function funcao) {
    return ElevatedButton(
        onPressed: () {
          funcao();
        },
        child: Text(titulo));
  }

  void _navegarTelaBotoes(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ButtonsPage()));
  }

  void _navegarTelaCheckbox(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const CheckBoxPage()));
  }

  void _navegarTelaRadioButton(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RadioButtonPage()));
  }

  void _navegarTelaSlider(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SliderPage()));
  }

  void _navegarTelaSwitch(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SwitchPage()));
  }
}
