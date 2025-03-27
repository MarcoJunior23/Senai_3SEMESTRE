abstract class EquipamentoIndustrial {
  String identificacao;
  double consumoEnergia;
  bool ligado;

  EquipamentoIndustrial(this.identificacao, this.consumoEnergia, {this.ligado = false});

  void ativar();
  void desativar();
}

class PrensaHidraulica extends EquipamentoIndustrial {
  double forcaEmToneladas;

  PrensaHidraulica(String identificacao, double consumoEnergia, this.forcaEmToneladas) : super(identificacao, consumoEnergia);

  @override
  void ativar() {
    ligado = true;
    print("A prensa hidráulica $identificacao foi ativada com consumo de $consumoEnergia kW e força de $forcaEmToneladas toneladas.");
  }

  @override
  void desativar() {
    ligado = false;
    print("A prensa hidráulica $identificacao foi desativada.");
  }
}

class RobotDeSoldagem extends EquipamentoIndustrial {
  String metodoDeSoldagem;

  RobotDeSoldagem(String identificacao, double consumoEnergia, this.metodoDeSoldagem) : super(identificacao, consumoEnergia);

  @override
  void ativar() {
    ligado = true;
    print("O robô de soldagem $identificacao foi ativado com consumo de $consumoEnergia kW e utiliza o método de soldagem $metodoDeSoldagem.");
  }

  @override
  void desativar() {
    ligado = false;
    print("O robô de soldagem $identificacao foi desativado.");
  }
}