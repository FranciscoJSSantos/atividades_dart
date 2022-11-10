import 'dart:io';

void main(List<String> args) {
  var alunos = [];
  while (2 * 2 == 4) {
    print("código: ");
    String? cod = stdin.readLineSync();
    if (cod == '0000') break;
    print("curso: (CC/SI)");
    String? curso = stdin.readLineSync();

    print("nome: ");
    String? nome = stdin.readLineSync();

    print("sexo: (M/F)");
    String? sexo = stdin.readLineSync();

    print("pontuação: ");
    String? pts = stdin.readLineSync();

    alunos.add({
      'codigo': cod,
      'curso': curso,
      'nome': nome,
      'sexo': sexo,
      'pontuação': int.parse(pts!)
    });
  }

  for (var aluno in alunos) {
    if (aluno['curso'] == 'CC' && aluno['pontuação'] > 2500) print(aluno);
  }

  var topM = alunos[0];
  for (var aluno in alunos) {
    if (aluno['sexo'] == 'M' && aluno['pontuação'] > topM['pontuação'])
      topM = aluno;
  }
  print('o candidato ${topM["nome"]} teve a maior pontuação');

  var topMSI = alunos[0];
  for (var aluno in alunos) {
    if (aluno['sexo'] == 'M' &&
        aluno['curso'] == 'SI' &&
        aluno['pontuação'] > topMSI['pontuação']) topMSI = aluno;
  }
  print("código do aluno com maior pontuação em SI: ${topMSI['cod']}");

  int totM = 0;
  int totF = 0;
  for (var aluno in alunos) {
    if (aluno['sexo'] == 'M') totM++;
    if (aluno['sexo'] == 'F') totF++;
  }
  print("percentual de candidatos do sexo F: ${(totF * 100) / alunos.length}%");
  print("percentual de candidatos do sexo M: ${(totM * 100) / alunos.length}%");
}
