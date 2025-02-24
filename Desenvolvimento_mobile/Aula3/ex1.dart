import 'dart:io';

void main() {
  // Função para ler uma entrada do usuário
  String lerEntrada(String mensagem) {
    print(mensagem);
    return stdin.readLineSync()!;
  }

  // Lendo os dados do usuário
  String nome = lerEntrada("Digite seu nome: ");
  String curso = lerEntrada("Digite seu curso: ");
  String idade = lerEntrada("Digite sua idade: ");

  // Exibindo as informações coletadas
  mostrarInformacoes(nome, curso, idade);
}

// Função para exibir as informações
void mostrarInformacoes(String nome, String curso, String idade) {
  print("\nNome: $nome");
  print("Curso: $curso");
  print("Idade: $idade");
}