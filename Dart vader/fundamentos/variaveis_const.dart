import 'dart:io';

void main() {
  // Variaveis


  // Dados variaveis
  String nome = "Matheus";
  int idade = 17;
  double altura = 1.74;
  bool estaFeliz = true;

  // var detecta automaticamente o tipo da variavel e define uma única vez, 
  // não podendo alterar seu tipo novamente, a menos que use comandos específicos
  // ignore: unused_local_variable
  var fone = "123452323";
  fone = 123345234.toString();

  // o dynamic funciona quase igual o "var", com a diferença que o tipo de sua variavel pode ser alterada quando e quantas vezes quiser
  // ignore: unused_local_variable
  dynamic endereco = "Rua A";
  endereco = 1234;

  // constantes(const) servem para travar tanto o tipo quanto o dado, sendo inacessível alterar qualquer coisa de uma const
  const PI = 3.14156;
  print("Entre com o valor do raio:");
  // stdin significa "Standard Input", que é o teclado
  final raio = double.parse(stdin.readLineSync() ?? '0');
  final areaCircunferencia = PI * raio * raio;
  print('A area da circunferencia é $areaCircunferencia');

  // Modelo de interpolação
  // Tecnicamente um printf/format
  print(
      "Meu nome é $nome, tenho $altura de altura, $idade anos. Se estou feliz? $estaFeliz.");
}
