import 'dart:io';
import 'dart:math';

void main() {
  var intValue = Random().nextInt(100);

  print("Bem vindo ao jogo da sorte, digite um numero pra começar: ");
  var userValue = int.parse(stdin.readLineSync()!);

  while (true) {
    if (userValue == intValue) {
      print("voce acertou");
      break;
    } else {
      print("o numero está entre 0 e $intValue");
    }

    print("digite um numero pra começar:");
    userValue = int.parse(stdin.readLineSync()!);
  }
}
