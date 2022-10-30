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

  // print(matricula);
  // print(nome);
  // print(notas);
  // print(faltas);

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

  var porcentagemAprovados = listaAprovados.length / 100;

  var aprovadosDaSala = matricula.length;
}
