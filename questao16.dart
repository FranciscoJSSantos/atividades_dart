void main() {
  var vetor1 = [1, 2];
  var vetor2 = [3, 2];
  var vetor3 = [5, 2];
  var vetor4 = [7, 2];

  var vetorIntercessao = [];

  var vetor5 = new List.from(vetor1)
    ..addAll(vetor2)
    ..addAll(vetor3)
    ..addAll(vetor4);

  vetor5.sort();

  print("Vetor ordenado");
  print(vetor5);

  for (int i = 0; i < vetor5.length; i++) {
    if (vetor1.contains(vetor5[i]) &&
        vetor2.contains(vetor5[i]) &&
        vetor3.contains(vetor5[i]) &&
        vetor4.contains(vetor5[i])) {
      if (!vetorIntercessao.contains(vetor5[i])) {
        vetorIntercessao.add(vetor5[i]);
      }
    }
  }

  print("Vetor intercessao");
  print(vetorIntercessao);
}
