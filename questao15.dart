import "dart:io";

void main() {
//   15) Faça um algoritmo para ler o número e o peso de N bois de uma fazenda, armazene estes
// dados em um vetor e, em seguida, possibilite que sejam feitas várias pesquisas, onde o
// fazendeiro digitará um intervalo para os pesos e, então, o algoritmo deve fornecer uma
// impressão de todos os bois com peso dentro desse intervalo.

  var numeroBois = 2;

  var listaPesoBois = [];
  for (int i = 0; i < numeroBois; i++) {
    print("Digite o peso do ${i + 1} boi: ");

    double valor = double.parse(stdin.readLineSync()!);

    listaPesoBois.add(valor);
  }

  print("Digite o primeiro intervalo de valor: ");

  double intervalo1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo intervalo de valor: ");

  double intervalo2 = double.parse(stdin.readLineSync()!);

  var listaPequisada = [];
  for (int i = 0; i < listaPesoBois.length; i++) {
    if (listaPesoBois[i] >= intervalo1 && listaPesoBois[i] <= intervalo2) {
      listaPequisada.add(listaPesoBois[i]);
    }
  }

  print("O intervalo desejado é corresponte a: $listaPequisada");
}
