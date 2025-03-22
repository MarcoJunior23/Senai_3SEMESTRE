class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  // Construtor da classe Animal
  Animal(this.nome, this.idade, this.cor, this.raca);

  // Método para exibir informações do animal
  void exibirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('Cor: $cor');
    print('Raça: $raca');
  }
}

void main() {
  Animal meuAnimal = Animal('Rex', 5, 'Marrom', 'Labrador');
  meuAnimal.exibirInformacoes();
}