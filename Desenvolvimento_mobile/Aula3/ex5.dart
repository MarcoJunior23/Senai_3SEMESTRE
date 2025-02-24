import 'dart:io';

void main() {
  // Lê as notas do aluno
  double primeiraNota = obterNota("digite a 1° nota: ");
  double segundaNota = obterNota("digite a 2° nota: ");

  // Calcula a média
  double media = calcularMedia(primeiraNota, segundaNota);

  // Exibe o resultado com base na média
  exibirResultado(media);
}

// Função para obter a nota do usuário
double obterNota(String mensagem) {
  print(mensagem);
  return double.parse(stdin.readLineSync()!);
}

// Função para calcular a média
double calcularMedia(double nota1, double nota2) {
  return (nota1 + nota2) / 2;
}

// Função para exibir o resultado com base na média
void exibirResultado(double media) {
  if (media >= 7) {
    print("Aluno aprovado - Média: $media");
  } else if (media >= 4) {
    print("Aluno em Exame - Média: $media");
  } else {
    print("Aluno Reprovado - Média: $media");
  }
}