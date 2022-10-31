import 'dart:math';
import 'dart:io';

void main() {
  double soma = 0.0;

  var user = [];

  for (int i = 0; i < 10; i++) {
    print("Digite o ${i + 1} termo: ");
    int valor = int.parse(stdin.readLineSync()!);

    user.add(valor);
  }
  //usar lista user

  fatorial(int n) {
    return n == 1 ? 1 : n * fatorial(n - 1);
  }

  var lista1 = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  for (int i = 1; i < lista1.length; i++) {
    if (i == 0 || i == 6) {
      soma += (pow(user[i], lista1[i]) / fatorial(1));
    } else if (i == 1 || i == 5) {
      soma += (pow(user[i], lista1[i]) / fatorial(2));
    } else if (i == 2 || i == 4) {
      soma += (pow(user[i], lista1[i]) / fatorial(3));
    } else {
      soma += (pow(user[i], lista1[i]) / fatorial(4));
    }
  }

  print("Resultado é : $soma");
}
