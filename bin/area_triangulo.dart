import 'dart:io';

//calculo área triangulo = (B*H) / 2

void main(List<String> arguments) {
  
  double base = 0;
  double altura = 0;

  do {
    try {
      print('Digite a base do triângulo: ');
      base = double.parse(stdin.readLineSync()!);
      if (base <= 0) {
        print("não pode ser negativo e nem zero");
      }
    } catch (e) {
      print("Caractere inválido");
    }
  } while (base <= 0);

  do {
    try {
      print('Digite a altura do triângulo: ');
      altura = double.parse(stdin.readLineSync()!);
      if (altura <= 0) {
        print("não pode ser negativo e nem zero");
      }
    } catch (e) {
      print("Caractere inválido");
    }
  } while (altura <= 0);

  double resultado = (base * altura) / 2.0;
  //String resultado1 = resultado.toStringAsFixed(2);

  print("A área do triângulo é ${resultado}");
}
