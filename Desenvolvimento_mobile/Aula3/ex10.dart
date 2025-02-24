import 'dart:io';

void main() {
  // Lê os quatro números
  List<double> numeros = obterNumeros();

  // Lê a operação desejada
  String operacao = obterOperacao();

  // Calcula e exibe o resultado
  double resultado = calcularResultado(numeros, operacao);
  exibirResultado(resultado, operacao);
}

// Função para obter os quatro números
List<double> obterNumeros() {
  List<double> numeros = [];
  for (int i = 1; i <= 4; i++) {
    print("Valor do $i° número: ");
    double numero = double.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  return numeros;
}

// Função para obter a operação desejada
String obterOperacao() {
  print("\ndigite qual operação quer: \n+ - soma \n- - subtração \n* - multiplicação \n/ - divisão");
  return stdin.readLineSync()!;
}

// Função para calcular o resultado com base na operação
double calcularResultado(List<double> numeros, String operacao) {
  switch (operacao) {
    case "+":
      return numeros.reduce((a, b) => a + b);
    case "-":
      return numeros.reduce((a, b) => a - b);
    case "*":
      return numeros.reduce((a, b) => a * b);
    case "/":
      return (numeros[0] / numeros[1]) + (numeros[2] / numeros[3]);
    default:
      print("Operação inválida.");
      return 0; // Retorna 0 se a operação for inválida
  }
}

// Função para exibir o resultado
void exibirResultado(double resultado, String operacao) {
  switch (operacao) {
    case "+":
      print("soma = $resultado");
      break;
    case "-":
      print("subtração = $resultado");
      break;
    case "*":
      print("multiplicação = $resultado");
      break;
    case "/":
      print("divisão = $resultado");
      break;
  }
}