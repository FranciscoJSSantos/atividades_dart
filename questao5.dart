import 'dart:io';

void main() {
  var bebes = [];

  while (true) {
    print("Nome: ");
    String? nome = stdin.readLineSync();
    if (nome == '1') break;
    print("Sexo: ");
    String? sexo = stdin.readLineSync();
    print("Peso: ");
    String? peso = stdin.readLineSync();
    bebes.add(
        {'nome': nome, 'sexo': sexo, 'peso': double.parse(peso!), 'class': ''});
  }

  for (var bebe in bebes) {
    if (bebe['peso'] >= 0 && bebe['peso'] <= 2) {
      bebe['class'] = 'Baixo Peso';
    } else if (bebe['peso'] > 2 && bebe['peso'] <= 4) {
      bebe['class'] = 'Normal';
    } else {
      bebe['class'] = 'Alto Peso';
    }
    print(bebe);
  }

  var topF = bebes[0];
  for (var bebe in bebes) {
    if (bebe['sexo'] == 'F' && bebe['peso'] > topF['peso']) topF = bebe;
  }
  print('${topF["nome"]} é a que tem o maior peso');

  int bp = 0;
  int n = 0;
  int ap = 0;
  for (var bebe in bebes) {
    if (bebe['class'] == 'Baixo Peso') bp += 1;
    if (bebe['class'] == 'Normal') n += 1;
    if (bebe['class'] == 'Alto Peso') ap += 1;
  }

  print("Baixo Peso: ${(bp * 100) / bebes.length}%");
  print("Normal: ${(n * 100) / bebes.length}%");
  print("Alto Peso: ${(ap * 100) / bebes.length}%");
}
