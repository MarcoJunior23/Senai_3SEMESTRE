import 'dart:io';

void main() {
  // Lê a base do triângulo
  double base = lerValor("Digite o valor da base do triângulo: ");
  
  // Lê a altura do triângulo
  double altura = lerValor("Digite o valor da altura do triângulo: ");

  // Calcula a área do triângulo
  double area = calcularAreaTriangulo(base, altura);

  // Exibe a área do triângulo
  print("Área do triângulo: $area");
}

// Função para ler um valor do usuário
double lerValor(String mensagem) {
  print(mensagem);
  return double.parse(stdin.readLineSync()!);
}

// Função para calcular a área do triângulo
double calcularAreaTriangulo(double base, double altura) {
  return (base * altura) / 2;
}