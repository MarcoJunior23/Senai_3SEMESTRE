import 'dart:io';

void main() {
  // Lê a quantidade de litros
  int litros = obterQuantidadeLitros();

  // Lê o tipo de combustível
  String tipo = obterTipoCombustivel();

  // Calcula o total a ser pago
  double total = calcularTotal(litros, tipo);

  // Exibe o valor a ser pago
  print("Valor a ser pago: $total");
}

// Função para obter a quantidade de litros
int obterQuantidadeLitros() {
  print("Digite a quantidade de litros: ");
  return int.parse(stdin.readLineSync()!);
}

// Função para obter o tipo de combustível
String obterTipoCombustivel() {
  print("Digite o tipo do combustivel: \nE - Etanol \nD - Diesel \nG - Gasolina");
  return stdin.readLineSync()!;
}

// Função para calcular o total a ser pago
double calcularTotal(int litros, String tipo) {
  double desconto = 0;
  double total = 0;

  double etanol = 1.70;
  double diesel = 2.00;
  double gasolina = 4.50;

  switch (tipo) {
    case "E":
      desconto = (litros >= 15) ? 0.04 : 0.03;
      total = (etanol * litros) * (1 - desconto);
      break;
    case "D":
      desconto = (litros >= 15) ? 0.05 : 0.03;
      total = (diesel * litros) * (1 - desconto);
      break;
    case "G":
      if (litros >= 20) {
        desconto = 0.03;
        total = (gasolina * litros) * (1 - desconto);
      } else {
        total = gasolina * litros;
      }
      break;
    default:
      print("Tipo de combustível inválido.");
      return 0; // Retorna 0 se o tipo for inválido
  }

  return total;
}