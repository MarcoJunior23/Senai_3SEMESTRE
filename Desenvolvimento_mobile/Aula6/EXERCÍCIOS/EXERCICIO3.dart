class Pessoa {
  String _nomeCompleto;
  int _anos;

  Pessoa(this._nomeCompleto, this._anos);

  String get nomeCompleto => _nomeCompleto;
  set nomeCompleto(String novoNomeCompleto) {
    if (novoNomeCompleto.isNotEmpty) {
      _nomeCompleto = novoNomeCompleto;
    } else {
      print("O nome não pode ser vazio.");
    }
  }

  int get anos => _anos;
  set anos(int novaIdade) {
    if (novaIdade > 0) {
      _anos = novaIdade;
    } else {
      print("A idade deve ser maior que zero.");
    }
  }

  void exibirDados() {
    print("Nome: $_nomeCompleto, Idade: $_anos anos");
  }
}