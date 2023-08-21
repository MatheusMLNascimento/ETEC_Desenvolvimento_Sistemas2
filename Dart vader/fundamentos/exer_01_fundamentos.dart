import 'dart:io';

void main() {
  print("Calculo de perimetro\n ========Retangulo======== \n");

// Pega os dados do teclado
  print("Insira a altura do retangulo:");
  var altura = double.parse(stdin.readLineSync() ?? '0');
  print("Insira o comprimento da base:");
  var base = double.parse(stdin.readLineSync() ?? '0');

// calcula os dados armazenados com base na equaçao p = 2(a + b)
  var perimetro = 2 * (altura + base);
  print("O perimetro do retangulo é: 2($altura + $base) = $perimetro");

  print("\n ========Quadrado======== \n");

// Pega os dados do teclado
  print("Insira o comprimento do lado");
  var lado = double.parse(stdin.readLineSync() ?? '0');

// calcula os dados armazenados com base na equaçao p = 4 X l
  perimetro = 4 * lado;
  print("Resultado: 4 X $lado = $perimetro");

  print("\n ========Paralelogramo======== \n");

// Pega os dados do teclado
  print("Insira a altura do paralelogramo:");
  altura = double.parse(stdin.readLineSync() ?? '0');
  print("Insira o comprimento da base:");
  base = double.parse(stdin.readLineSync() ?? '0');

// calcula os dados armazenados com base na equaçao p = 2(a + b)
  perimetro = 2 * (altura + base);
  print("Resultado: 2($altura + $base) = $perimetro");

  print("\n ========Trapézio======== \n");

// Pega os dados do teclado
  print("Insira o comprimento a:");
  var a = double.parse(stdin.readLineSync() ?? '0');
  print("Insira o comprimento b (menor):");
  var b = double.parse(stdin.readLineSync() ?? '0');
  print("Insira o comprimento c:");
  var c = double.parse(stdin.readLineSync() ?? '0');
  print("Insira o comprimento B (Maior):");
  var bB = double.parse(stdin.readLineSync() ?? '0');

// calcula os dados armazenados com base na equaçao p = a + b + c + B
  perimetro = a + b + c + bB;
  print("Resultado: $a + $b + $c + $bB = $perimetro");

  // Criado por: Matheus Nascimento 2ºDS, 07/08/2023
}
