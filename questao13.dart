void main() {
  var lista = [3, 8, 5, 3, 8, 7, 3, 7, 3, 7];

  var map = Map();

  lista.forEach((e) {
    if (!map.containsKey(e)) {
      map[e] = 1;
    } else {
      map[e] += 1;
    }
  });

  print(map);
}
