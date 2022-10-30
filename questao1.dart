void main() {
  const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};

  const ordem = ['ovos', 'chocolate'];

  double somaBolos = 0.0;

  for (int i = 0; i < ordem.length; i++) {
    if (boloPrecos.keys.contains(ordem[i])) {
      somaBolos += boloPrecos[ordem[i]] as num;
    } else {
      print("bolo ${ordem[i]} não faz parte");
    }
  }

  print("Total dos bolos: ${somaBolos}");
}
