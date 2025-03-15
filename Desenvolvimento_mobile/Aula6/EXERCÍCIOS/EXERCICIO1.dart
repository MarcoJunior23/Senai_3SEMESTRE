abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  // Construtor
  MaquinaIndustrial(this.nome, this.potencia) : status = false;

  // Métodos abstratos
  void ligar();
  void desligar();

  // Métodos para acessar os atributos
  String getNome() => nome;
  double getPotencia() => potencia;
  bool getStatus() => status;
}

class Compressor extends MaquinaIndustrial {
  // Construtor
  Compressor(String nome, double potencia) : super(nome, potencia);

  // Implementação do método ligar
  @override
  void ligar() {
    status = true;
    print('$nome foi ligada.');
  }

  // Implementação do método desligar
  @override
  void desligar() {
    status = false;
    print('$nome foi desligada.');
  }
}

void main() {
  // Criando uma instância da classe Compressor
  var compressor = Compressor('Compressor 3000', 1500.0);
  
  // Ligando a máquina
  compressor.ligar();
  
  // Verificando o status da máquina
  print('Status: ${compressor.getStatus()}');
  
  // Desligando a máquina
  compressor.desligar();
  print('Status: ${compressor.getStatus()}');
}
