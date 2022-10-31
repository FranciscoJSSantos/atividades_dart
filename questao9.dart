void main() {
  var caracteristica = [];

  for (int i = 1000; i < 10000; i++) {
    var numero = i.toString();

    //transformação de numeros
    var dois_primeiros = numero[0] + numero[1];

    var dois_ultimos = numero[2] + numero[3];

    var doisInteiros = int.parse(dois_primeiros);

    var doisUltimosInteiros = int.parse(dois_ultimos);

    var valorSoma = doisInteiros + doisUltimosInteiros;
    var valorMult = valorSoma * valorSoma;

    if (i == valorMult) {
      caracteristica.add(i);
    }
  }

  print("A lista especifica é: $caracteristica");
}
