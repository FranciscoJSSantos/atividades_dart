import 'dart:math';

void main() {
  //1 5 100 | 2 10 90 |  4 15 80 | 8 20 70 | 16 25 60 | 32 30 50 | 64 35 40 | 128 40 30 | 256
  var lista1 = [1];
  var lista2 = [5];
  var lista3 = [100];
  var valueFinal = " ";

  var sum1 = 0;

//lisat de incremento binario
  for (int i = 1; i < 8; i++) {
    sum1 = pow(2, i) as int;
    lista1.add(sum1);
  }

//lista de 5 em 5
  for (int i = 5; i < 40; i += 5) {
    var sum2 = 5;
    sum2 += i;

    lista2.add(sum2);
  }

//lista de -10 em -10
  for (int i = 10; i < 80; i += 10) {
    var sum3 = 100;
    sum3 -= i;

    lista3.add(sum3);
  }

  for (int i = 0; i < 8; i++) {
    valueFinal += lista1[i].toString() +
        "  " +
        lista2[i].toString() +
        "  " +
        lista3[i].toString() +
        "  ";
  }

  print(valueFinal);
}
