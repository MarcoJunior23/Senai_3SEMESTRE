// Classe abstrata que define a estrutura básica para automóveis
abstract class Automoveis {
  // Atributos que representam as características do automóvel
  String nome; // Nome do automóvel
  String cor;  // Cor do automóvel
  int ano;     // Ano de fabricação do automóvel

  // Construtor da classe Automoveis que inicializa os atributos
  Automoveis(this.nome, this.cor, this.ano);

  // Método abstrato para exibir detalhes do automóvel
  void exibirDetalhes();
  
  // Método abstrato para colocar o cinto de segurança
  void colocarCinto();
  
  // Método abstrato para ligar o carro
  void ligarCarro();
  
  // Método abstrato para desligar o carro
  void desligarCarro();

  // Método abstrato para dirigir o carro
  void dirigir();
}

// Classe Carro que herda da classe abstrata Automoveis
class Carro extends Automoveis {
  // Atributo adicional que representa o número de portas do carro
  int numeroDePortas;
  
  // Atributo que indica se o motor do carro está ligado ou não
  bool motorLigado = false;

  // Construtor da classe Carro que inicializa os atributos da classe pai e o número de portas
  Carro(String nome, String cor, int ano, this.numeroDePortas) : super(nome, cor, ano);

  // Implementação do método para exibir detalhes do carro
  @override
  void exibirDetalhes() {
    print("Carro: $nome"); // Exibe o nome do carro
    print("Cor: $cor");     // Exibe a cor do carro
    print("Ano: $ano");     // Exibe o ano do carro
    print("Número de portas: $numeroDePortas"); // Exibe o número de portas
  }

  // Implementação do método para colocar o cinto de segurança
  @override
  void colocarCinto() {
    print("Cinto de segurança colocado."); // Mensagem indicando que o cinto foi colocado
  }

  // Implementação do método para ligar o carro
  @override
  void ligarCarro() {
    // Verifica se o motor já está ligado
    if (!motorLigado) {
      motorLigado = true; // Liga o motor
      print("Carro $nome ligado."); // Mensagem indicando que o carro foi ligado
    } else {
      print("O carro já está ligado."); // Mensagem indicando que o carro já estava ligado
    }
  }

  // Implementação do método para desligar o carro
  @override
  void desligarCarro() {
    // Verifica se o motor está ligado
    if (motorLigado) {
      motorLigado = false; // Desliga o motor
      print("Carro $nome desligado."); // Mensagem indicando que o carro foi desligado
    } else {
      print("O carro já está desligado."); // Mensagem indicando que o carro já estava desligado
    }
  }

  // Implementação do método para dirigir o carro
  @override
  void dirigir() {
    // Verifica se o motor está ligado
    if (motorLigado) {
      print("Dirigindo o carro $nome."); // Mensagem indicando que o carro está sendo dirigido
    } else {
      print("Não é possível dirigir. O carro está desligado."); // Mensagem indicando que não é possível dirigir
    }
  }
}