import 'dart:io';
import 'dart:math';

void main() {
  // Lê os valores dos carros
  List<double> valoresCarros = [
    obterValorCarro(1),
    obterValorCarro(2),
    obterValorCarro(3)
  ];

  // Calcula o maior e o menor valor
  double carroMaisCaro = calcularMaiorValor(valoresCarros);
  double carroMaisBarato = calcularMenorValor(valoresCarros);

  // Exibe os resultados
  print("O carro mais caro é o que vale $carroMaisCaro");
  print("O carro mais barato é o que vale $carroMaisBarato");
}

// Função para obter o valor de um carro
double obterValorCarro(int numero) {
  print("Digite o valor do $numero° carro: ");
  return double.parse(stdin.readLineSync()!);
}

// Função para calcular o maior valor
double calcularMaiorValor(List<double> valores) {
  return valores.reduce(max);
}

// Função para calcular o menor valor
double calcularMenorValor(List<double> valores) {
  return valores.reduce(min);
}