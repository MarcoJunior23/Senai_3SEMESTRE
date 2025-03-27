// Classe mãe Produtos
class Produtos {
  String nomeProduto;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  // Construtor da classe Produtos
  Produtos(this.nomeProduto, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  // Método para exibir informações do produto
  void exibirInformacoes() {
    print('Nome do Produto: $nomeProduto');
    print('Quantidade: $quantidade');
    print('Preço: R\$ $preco');
    print('Tipo de Comunicação: $tipoComunicacao');
    print('Consumo de Energia Elétrica: $consumoEnergia kWh');
  }
}

// Classe Fritadeira que herda de Produtos
class Fritadeira extends Produtos {
  bool ligada;

  // Construtor da classe Fritadeira
  Fritadeira(String nomeProduto, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : ligada = false, // Inicializa a fritadeira como desligada
        super(nomeProduto, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar a fritadeira
  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeProduto ligada.');
    } else {
      print('$nomeProduto já está ligada.');
    }
  }

  // Método para desligar a fritadeira
  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeProduto desligada.');
    } else {
      print('$nomeProduto já está desligada.');
    }
  }

  // Método para ajustar a temperatura
  void ajustarTemperatura(int setpoint) {
    if (ligada) {
      print('A temperatura da $nomeProduto foi ajustada para $setpoint °C.');
    } else {
      print('Não é possível ajustar a temperatura. A fritadeira está desligada.');
    }
  }
}

// Classe Televisao que herda de Produtos
class Televisao extends Produtos {
  bool ligada;

  // Construtor da classe Televisao
  Televisao(String nomeProduto, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : ligada = false, // Inicializa a televisão como desligada
        super(nomeProduto, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar a televisão
  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeProduto ligada.');
    } else {
      print('$nomeProduto já está ligada.');
    }
  }

  // Método para desligar a televisão
  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeProduto desligada.');
    } else {
      print('$nomeProduto já está desligada.');
    }
  }

  // Método para ajustar o volume
  void ajustarVolume(int volume) {
    if (ligada) {
      print('O volume da $nomeProduto foi ajustado para $volume.');
    } else {
      print('Não é possível ajustar o volume. A televisão está desligada.');
    }
  }
}

// Classe ArCondicionado que herda de Produtos
class ArCondicionado extends Produtos {
  bool ligada;

  // Construtor da classe ArCondicionado
  ArCondicionado(String nomeProduto, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : ligada = false, // Inicializa o ar-condicionado como desligado
        super(nomeProduto, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar o ar-condicionado
  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeProduto ligado.');
    } else {
      print('$nomeProduto já está ligado.');
    }
  }

  // Método para desligar o ar-condicionado
  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeProduto desligado.');
    } else {
      print('$nomeProduto já está desligado.');
    }
  }

  // Método para ajustar a temperatura
  void ajustarTemperatura(int setpoint) {
    if (ligada) {
      print('A temperatura do $nomeProduto foi ajustada para $setpoint °C.');
    } else {
      print('Não é possível ajustar a temperatura. O ar-condicionado está desligado.');
    }
  }
}
