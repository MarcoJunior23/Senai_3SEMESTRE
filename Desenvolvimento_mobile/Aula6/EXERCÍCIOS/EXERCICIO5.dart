class Carro extends Automoveis {
  int numeroDePortas;

  Carro(String nome, String cor, int ano, this.numeroDePortas) : super(nome, cor, ano);

  @override
  void exibirDetalhes() {
    print("Carro: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
    print("Número de portas: $numeroDePortas");
  }
}