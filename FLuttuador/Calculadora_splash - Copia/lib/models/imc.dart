import 'dart:math';

class Imc {
  final String sex;
  final double weight;
  final double height;
  final int age;

  List<num> valuesFemale = const [18.5, 23.9, 28.9, 34.9, 39.9, 40];
  List<num> valuesMale = const [20, 24.9, 29.9, 35.9, 42, 43];

  Imc(
      {required this.sex,
      required this.weight,
      required this.height,
      required this.age});

  Map<String, dynamic> getImc() {
    var mapImc = {
      'imc': 0.0,
      'resulttext':
          'Não foi possível calcular o IMC, informe o sexo Feminino ou Masculino',
      'weightMin': 0.0,
      'weightMax': 0.0,
    };
    if (['F', 'M'].contains(sex.toUpperCase())) {
      var valueImc = _calcImc();
      mapImc['imc'] = valueImc;
      mapImc['resulttext'] = sex.toUpperCase() == 'F'
          ? _getResultText(valueImc, valuesFemale)
          : _getResultText(valueImc, valuesMale);

      // var centimeter = (height * 100).toInt();
      // var womanOrMan = sex.toUpperCase() == 'F' ? 'woman' : 'man';
      // var idealWeight = IdealWeight.getIdealWeight(centimeter, womanOrMan);
      // mapImc['weightMin'] = idealWeight['weightMin'];
      // mapImc['weightMax'] = idealWeight['weightMax'];

      mapImc['weightMin'] = _calcWeightMin();
      mapImc['weightMax'] = _calcWeightMax();

      return mapImc;
    }
    return mapImc;
  }

  double _calcImc() {
    return weight / pow(height, 2);
  }

  num _calcWeightMin() {
    var imcMin = sex.toUpperCase() == 'F' ? valuesFemale[0] : valuesMale[0];
    return double.parse((imcMin * pow(height, 2)).toStringAsFixed(1));
  }

  num _calcWeightMax() {
    var imcMax = sex.toUpperCase() == 'F' ? valuesFemale[1] : valuesMale[1];
    return double.parse((imcMax * pow(height, 2)).toStringAsFixed(1));
  }

  String _getResultText(double valueImc, List<num> values) {
    return valueImc < values[0]
        ? 'Você está abaixo do seu peso'
        : valueImc < values[1]
            ? 'Parabéns - você está em seu peso normal'
            : valueImc <= values[2]
                ? 'Você está acima do seu peso (sobrepeso)'
                : valueImc <= values[3]
                    ? 'Você está com o peso acima do grau I'
                    : valueImc <= values[4]
                        ? 'Você está com o peso acima do grau II'
                        : 'Você está com o peso acima do grau III';
  }
}
