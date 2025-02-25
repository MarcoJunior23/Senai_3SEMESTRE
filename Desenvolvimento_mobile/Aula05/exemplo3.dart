/*
Exemplo classe com atributos previstos
24/02/2025
*/

class Pessoa{
  String? _nome"Marco"; // representa _ atributo privado

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome:"Marco";
  pring("${}")
}