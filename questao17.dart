void main() {
  var vetor1 = [1, 1];

  var vetor2 = [1, 1];

  var vetor3 = [];

  vetor2.forEach((item) => vetor3.add(item));

  vetor1.forEach((item) => vetor3.add(item));

  int sum = 0;

  vetor3.forEach((item) => sum += item as int);

  print(sum);
}
