import "dart:io";

void main() {
  var matricula = [];
  var nome = [];
  var sexo = [];
  var notas = [];
  var faltas = [];

  for (int i = 0; i < 2; i++) {
    print("Digite a matricula: ");
    matricula.add(stdin.readLineSync());

    print("Digite o nome: ");
    nome.add(stdin.readLineSync());

    print("Digite o sexo: ");
    sexo.add(stdin.readLineSync());

    print("Digite a 1 nota: ");
    double nota1 = double.parse(stdin.readLineSync()!);

    print("Digite a 2 nota: ");
    double nota2 = double.parse(stdin.readLineSync()!);

    print("Digite a 3 nota: ");
    double nota3 = double.parse(stdin.readLineSync()!);

    double somaNota = nota1 + nota2 + nota3;

    notas.add(somaNota);

    print("Digite as faltas: ");
    faltas.add(int.parse(stdin.readLineSync()!));
  }

  //média da turma

  double mediaTurma = 0.0;

  for (int i = 0; i < matricula.length; i++) {
    mediaTurma += notas[i];
  }

  print("A media da turma é: ${mediaTurma / matricula.length}");

  //percentual de alunos aprovados

  var listaAprovados = [];
  for (int i = 0; i < matricula.length; i++) {
    if (notas[i] >= 7.0 && faltas[i] <= 18) {
      listaAprovados.add(matricula[i]);
    }
  }

  var porcentagemAprovados = listaAprovados.length * 100;

  var aprovadosDaSala = porcentagemAprovados / matricula.length;

  print("O percentual de alunos aprovados é: $aprovadosDaSala");

  //A matrícula do aluno do sexo masculino e feminino que possui a maior média e que
  //foi aprovado.

  var matriculaAlunosSexoMasculinoFemininoComMaiorMedia = [];
  for (int i = 0; i < matricula.length; i++) {
    if ((sexo[i] == "F") ||
        (sexo[i] == "M") && notas[i] / 3 >= 7.0 && faltas[i] <= 18) {
      matriculaAlunosSexoMasculinoFemininoComMaiorMedia.add(matricula[i]);
    }
  }

  print(
      "A matrícula do aluno do sexo masculino e feminino que /npossui a maior média e que foi aprovado são: $matriculaAlunosSexoMasculinoFemininoComMaiorMedia");

  //A média dos alunos do sexo feminino.

  var listaSexoFeminino = [];

  for (int i = 0; i < matricula.length; i++) {
    if (sexo[i] == "F") {
      listaSexoFeminino.add(notas[i]);
    }
  }

  double mediaSexoFeminino = 0.0;

  for (int i = 0; i < listaSexoFeminino.length; i++) {
    var nota = listaSexoFeminino[i] / 3;
    mediaSexoFeminino = nota;
  }

  var doubleMediaAlunasSexoFeminino =
      mediaSexoFeminino / listaSexoFeminino.length;

  print(
      "A média dos alunos do sexo feminino é: $doubleMediaAlunasSexoFeminino");
}
