import "dart:io";

void main() {
  //mude o valor
  print("Digite uma sequencia e ela será invertida: ");
  String? valor = stdin.readLineSync();

  print(valor?.split('').reversed.join());
}
