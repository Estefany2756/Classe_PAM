class Carro {
  String modelo;
  int velocidadeAtual = 0;
  int velocidadeMaxima;

  Carro(this.modelo, this.velocidadeMaxima);

  void acelerar(int quantidade) {
    velocidadeAtual += quantidade;

    if (velocidadeAtual > velocidadeMaxima) {
      velocidadeAtual = velocidadeMaxima;
      print("Velocidade máxima atingida!");
    }
  }

  void frear(int quantidade) {
    velocidadeAtual -= quantidade;

    if (velocidadeAtual < 0) {
      velocidadeAtual = 0;
      print("O carro já está parado.");
    }
  }

  void desligar() {
    velocidadeAtual = 0;
    print("Carro desligado. Velocidade zerada.");
  }

  void exibirEstado() {
    print(
      "Carro: $modelo | Velocidade atual: $velocidadeAtual km/h | Velocidade máxima: $velocidadeMaxima km/h"
    );
  }
}

void main() {
  Carro carro = Carro("Fusca", 120);

  carro.acelerar(50);
  carro.acelerar(80);

  carro.exibirEstado();

  carro.frear(30);
  carro.frear(70);
  carro.frear(50);

  carro.exibirEstado();

  carro.acelerar(40);
  carro.desligar();

  carro.exibirEstado();
}