import 'dart:io';

void main() {
  // Lê as idades das duas pessoas
  int idadePessoa1 = obterIdade("Digite a idade da 1° pessoa: ");
  int idadePessoa2 = obterIdade("Digite a idade da 2° pessoa: ");

  // Compara as idades e exibe o resultado
  compararIdades(idadePessoa1, idadePessoa2);
}

// Função para obter a idade do usuário
int obterIdade(String mensagem) {
  print(mensagem);
  return int.parse(stdin.readLineSync()!);
}

// Função para comparar as idades e exibir o resultado
void compararIdades(int idade1, int idade2) {
  if (idade1 > idade2) {
    print("Pessoa 1 é mais velha que Pessoa 2");
  } else if (idade2 > idade1) {
    print("Pessoa 2 é mais velha que Pessoa 1");
  } else {
    print("As duas pessoas têm a mesma idade");
  }
}