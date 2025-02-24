import 'dart:io';

void main() {
  // Solicita o valor do salário bruto
  double salarioBruto = obterSalarioBruto();

  // Calcula o salário líquido
  double salarioLiquido = calcularSalarioLiquido(salarioBruto);

  // Exibe o valor do salário líquido
  print("Valor do salário líquido: $salarioLiquido");
}

// Função para obter o salário bruto do usuário
double obterSalarioBruto() {
  print("Digite o valor do salário bruto: ");
  return double.parse(stdin.readLineSync()!);
}

// Função para calcular o salário líquido
double calcularSalarioLiquido(double salarioBruto) {
  double imposto = salarioBruto * 0.10; 
  double bonificacao = salarioBruto * 0.20;

  return salarioBruto - imposto + bonificacao;
}