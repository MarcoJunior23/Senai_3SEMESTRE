// Classe mãe Animal
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

// Classe Filha
class Filha extends Animal {
  double peso;

  // Construtor da classe Filha
  Filha(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  // Método para simular o animal acordando
  void acordou() {
    print('$nome acordou!');
  }

  // Método para simular o animal dormindo
  void dormiu() {
    print('$nome dormiu!');
  }
}

void main() {
  // Criando instâncias da classe Filha para diferentes tipos de animais
  Filha cachorro = Filha('Rex', 5, 'Marrom', 'Labrador', 30.0);
  Filha passarinho = Filha('Piu', 1, 'Amarelo', 'Canário', 0.5);
  Filha tigre = Filha('Sher Khan', 7, 'Laranja', 'Bengal', 200.0);
  Filha peixe = Filha('Nemo', 2, 'Laranja', 'Palhaço', 0.1);

  // Exibindo informações e chamando métodos
  cachorro.exibirInformacoes();
  cachorro.acordou();
  cachorro.dormiu();

  print('---');

  passarinho.exibirInformacoes();
  passarinho.acordou();
  passarinho.dormiu();

  print('---');

  tigre.exibirInformacoes();
  tigre.acordou();
  tigre.dormiu();

  print('---');

  peixe.exibirInformacoes();
  peixe.acordou();
  peixe.dormiu();
}

