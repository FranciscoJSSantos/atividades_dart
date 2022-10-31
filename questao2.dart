import 'dart:math';

void main() {
  double soma = 0.0;

  fatorial(int n) {
    return n == 1 ? 1 : n * fatorial(n - 1);
  }

  var lista1 = [3, 5, 7, 9, 11, 13, 15];
  var lista2 = [4, 8, 12, 16, 20, 24, 28];
  var lista3 = [5, 10, 15, 20, 25, 30, 35];

  for (int i = 1; i < lista1.length; i++) {
    if (i == 0 || i == 1 || i == 2 || i == 4 || i == 6) {
      soma += ((pow(lista1[i], fatorial(lista2[i]))) / lista3[i]);
    } else {
      soma -= ((pow(lista1[i], fatorial(lista2[i]))) / lista3[i]);
    }
  }

  print("Resultado é : $soma");
}
