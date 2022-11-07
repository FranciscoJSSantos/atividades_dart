import 'dart:io';

void main() {
  var listaCodigo = [];
  var listaNome = [];
  var listaSexo = [];
  var listaNumeroHoras = [];

  var salarioBruto = [];

  //salario bruto pra por sexo;
  var salarioBrutoMasculino = [];
  var salarioBrutoFeminino = [];

  var salarioLiquido = [];

  //salario liquido pra por sexo;
  var salarioLiquidoMasculino = [];
  var salarioLiquidoFeminino = [];

  double valorHoraAula = 12.30;

  print("INICIO DO PROGRAMA");
  print("Digite 9999 no codigo para finalizar o processo");

  while (true) {
    print("====================");
    print("Digite o seu codigo: ");
    String? codigo = stdin.readLineSync();

    if (codigo != "9999") {
      listaCodigo.add(codigo);
    } else {
      break;
    }

    print("Digite o seu nome: ");
    String? nome = stdin.readLineSync();
    listaNome.add(nome);

    print("Digite seu sexo, M ou F: ");
    String? sexo = stdin.readLineSync();
    listaSexo.add(sexo);

    print("Digite a sua quantidade de horas dadas: ");
    int horas = int.parse(stdin.readLineSync()!);
    listaNumeroHoras.add(horas);
  }

  //criando lista do salario salario bruto
  for (int i = 0; i < listaCodigo.length; i++) {
    double salarioBrutoProfessor = valorHoraAula * listaNumeroHoras[i];
    salarioBruto.add(salarioBrutoProfessor);

    if (listaSexo[i] == "M" || listaSexo[i] == "m") {
      salarioBrutoMasculino.add(salarioBrutoProfessor);
    } else {
      salarioBrutoFeminino.add(salarioBrutoProfessor);
    }
  }

  for (int i = 0; i < salarioBruto.length; i++) {
    double salarioBrutoProfessor = valorHoraAula * listaNumeroHoras[i];

    if (listaSexo[i] == "M" || listaSexo[i] == "m") {
      double calculoDesconto =
          (salarioBrutoProfessor * 1.10) - salarioBrutoProfessor;
      double salarioLiquido1 = salarioBrutoProfessor - calculoDesconto;
      salarioLiquidoMasculino.add(salarioLiquido1);
      salarioLiquido.add(salarioLiquido1);
    } else {
      double calculoDesconto =
          (salarioBrutoProfessor * 1.05) - salarioBrutoProfessor;
      double salarioLiquido2 = salarioBrutoProfessor - calculoDesconto;
      salarioLiquidoFeminino.add(salarioLiquido2);
      salarioLiquido.add(salarioLiquido2);
    }
  }

  //listagem contendo codigo, nome, salario Bruto, salario liquido de todos os professores lidos
  //imprimir media dos salarios liquidos de cada sexo

  if (listaCodigo.length > 0) {
    for (int i = 0; i < listaCodigo.length; i++) {
      print("==========");
      print("${i + 1} da lista: ");
      print("Código: ${listaCodigo[i]}");
      print("Nome: ${listaNome[i]}");
      print("Salario Bruto: ${salarioBruto[i]}");
      print("Salario Liquido: ${salarioLiquido[i]}");
    }
  } else {
    print("não temos pessoas pra analise");
  }

  double totalSalarioLiquidoMasculino = 0.0;

  print("==========");

  if (salarioLiquidoMasculino.length > 0) {
    for (int i = 0; i < salarioLiquidoMasculino.length; i++) {
      totalSalarioLiquidoMasculino += salarioBrutoMasculino[i];
    }
    print(
        "media do salario masculino é de: ${totalSalarioLiquidoMasculino / salarioBrutoMasculino.length}");
  } else {
    print("não temos dados masculinos suficientes");
  }

  double totalSalarioLiquidoFeminino = 0.0;

  if (salarioLiquidoFeminino.length > 0) {
    for (int i = 0; i < salarioLiquidoFeminino.length; i++) {
      totalSalarioLiquidoFeminino += salarioBrutoFeminino[i];
    }
    print(
        "media do salario feminino é de: ${totalSalarioLiquidoFeminino / salarioBrutoFeminino.length}");
  } else {
    print("não temos dados femininos suficientes");
  }
}
