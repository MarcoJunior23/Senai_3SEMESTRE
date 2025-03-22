// Classe mãe Maquinas
class Maquinas {
  String nomeMaquina;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  // Construtor da classe Maquinas
  Maquinas(this.nomeMaquina, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  // Método para exibir informações da máquina
  void exibirInformacoes() {
    print('Nome da Máquina: $nomeMaquina');
    print('Quantidade de Eixos: $quantidadeEixos');
    print('Rotações por Minuto: $rotacoesPorMinuto');
    print('Consumo de Energia Elétrica: $consumoEnergia kWh');
  }
}

// Classe Furadeira que herda de Maquinas
class Furadeira extends Maquinas {
  bool ligada;

  // Construtor da classe Furadeira
  Furadeira(String nomeMaquina, int quantidadeEixos, int rotacoesPorMinuto, double consumoEnergia)
      : ligada = false, // Inicializa a máquina como desligada
        super(nomeMaquina, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);

  // Método para ligar a máquina
  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeMaquina ligada.');
    } else {
      print('$nomeMaquina já está ligada.');
    }
  }

  // Método para desligar a máquina
  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeMaquina desligada.');
    } else {
      print('$nomeMaquina já está desligada.');
    }
  }

  // Método para ajustar a velocidade de rotação
  void ajustarVelocidade(int novaRotacao) {
    if (ligada) {
      rotacoesPorMinuto = novaRotacao;
      print('A velocidade de $nomeMaquina foi ajustada para $novaRotacao rotações por minuto.');
    } else {
      print('Não é possível ajustar a velocidade. A máquina está desligada.');
    }
  }
}

void main() {
  // Criando uma instância da classe Furadeira
  Furadeira minhaFuradeira = Furadeira('Furadeira Elétrica', 2, 1200, 1.5);

  // Exibindo informações da furadeira
  minhaFuradeira.exibirInformacoes();

  // Ligando a furadeira
  minhaFuradeira.ligar();

  // Ajustando a velocidade de rotação
  minhaFuradeira.ajustarVelocidade(1500);

  // Desligando a furadeira
  minhaFuradeira.desligar();
}

