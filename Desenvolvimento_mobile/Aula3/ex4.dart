import 'dart:io';

void main() {
  // Solicita o valor em real que o usuário deseja converter
  double valorEmReal = obterValorEmReal();

  // Solicita a moeda para a qual o usuário deseja converter
  int moedaEscolhida = escolherMoeda();

  // Realiza a conversão e exibe o resultado
  realizarConversao(valorEmReal, moedaEscolhida);
}

// Função para obter o valor em real do usuário
double obterValorEmReal() {
  print("Digite o valor em real que gostaria de converter: ");
  return double.parse(stdin.readLineSync()!);
}

// Função para escolher a moeda
int escolherMoeda() {
  print("Para qual dessas moedas: \n1 - Euro \n2 - Dólar \n3 - Franco Suíço");
  return int.parse(stdin.readLineSync()!);
}

// Função para realizar a conversão
void realizarConversao(double real, int escolha) {
  double taxaEuro = 7.00;
  double taxaDolar = 6.56;
  double taxaFranco = 4.35;
  double conversao = 0;

  switch (escolha) {
    case 1:
      conversao = taxaEuro * real;
      print("O valor em real $real para euro é $conversao");
      break;
    case 2:
      conversao = taxaDolar * real;
      print("O valor em real $real para dólar é $conversao");
      break;
    case 3:
      conversao = taxaFranco * real;
      print("O valor em real $real para franco suíço é $conversao");
      break;
    default:
      print("Escolha inválida.");
  }
}