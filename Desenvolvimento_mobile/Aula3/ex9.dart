import 'dart:io';

void main() {
  // Lê a quantidade de kWh consumida
  int energia = obterConsumoEnergia();

  // Lê o tipo de residência
  String tipo = obterTipoResidencia();

  // Calcula o preço a pagar
  double preco = calcularPreco(tipo, energia);

  // Exibe o preço a pagar
  print("Preço a pagar: $preco");
}

// Função para obter a quantidade de kWh consumida
int obterConsumoEnergia() {
  print("Digite a quantidade de kWh consumida: ");
  return int.parse(stdin.readLineSync()!);
}

// Função para obter o tipo de residência
String obterTipoResidencia() {
  print("Digite o tipo de residência: \nR - Residência \nI - Indústria \nC - Comércio");
  return stdin.readLineSync()!;
}

// Função para calcular o preço a pagar
double calcularPreco(String tipo, int energia) {
  double preco = 0;

  switch (tipo) {
    case "R":
      preco = (energia <= 500) ? energia * 0.50 : energia * 0.70;
      break;
    case "I":
      preco = (energia <= 1000) ? energia * 0.65 : energia * 0.60;
      break;
    case "C":
      preco = (energia <= 5000) ? energia * 0.55 : energia * 0.50;
      break;
    default:
      print("Tipo de residência inválido.");
      return 0; // Retorna 0 se o tipo for inválido
  }

  return preco;
}