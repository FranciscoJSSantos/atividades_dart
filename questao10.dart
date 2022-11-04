import 'dart:math';
import 'dart:io';

void main() {
  var listaNome = [];
  var listaSexo = [];
  var listaIdade = [];
  var listaExperiencia = [];

  print("INICIO DO PROGRAMA DE CADASTRO");
  print("Digite FIM no nome para finalizar o processo");

  while (true) {
    print("====================");
    print("Digite o seu nome: ");
    String? nome = stdin.readLineSync();
    if (nome != "FIM") {
      listaNome.add(nome);
    } else {
      break;
    }

    print("Digite seu sexo, M ou F: ");
    String? sexo = stdin.readLineSync();
    listaSexo.add(sexo);

    print("Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);
    listaIdade.add(idade);

    print("Possui experiencia, S ou N");
    String? experiencia = (stdin.readLineSync());
    listaExperiencia.add(experiencia);
  }

  //O número de candidatos do sexo feminino e masculino.

  var candidatosMasculinos = [];
  var candidatosFemininos = [];

  for (int i = 0; i < listaSexo.length; i++) {
    if (listaSexo[i] == "M") {
      candidatosMasculinos.add(listaSexo[i]);
    } else {
      candidatosFemininos.add(listaSexo[i]);
    }
  }

  print("====================");
  if (candidatosMasculinos.length > 0) {
    print("Numero de candidatos masculinos é: ${candidatosMasculinos.length}");
  } else {
    print("Não temos candidatos masculinos cadastrados");
  }

  print("====================");
  if (candidatosFemininos.length > 0) {
    print("Numero de candidatas femininos é: ${candidatosFemininos.length}");
  } else {
    print("Não temos candidatas femininas cadastrados");
  }

  //A idade média dos homens que já tem experiência no serviço.

  num idadeDosHomens = 0;

  for (int i = 0; i < listaIdade.length; i++) {
    if (listaExperiencia[i] == "S") {
      idadeDosHomens += listaIdade[i];
    }
  }

  double idadeMediaDosHomens = idadeDosHomens / listaIdade.length;

  print("====================");
  if (listaIdade.length > 0) {
    print(
        "A idade média dos homens que já tem experiência no serviço é $idadeMediaDosHomens");
  } else {
    print("Não temos homens com experiencia ou cadastrado");
  }

  //A porcentagem dos homens com mais de 45 anos com relação ao total de homens.

  var porcentagemDosHomensMais = [];

  for (int i = 0; i < listaIdade.length; i++) {
    if (listaSexo[i] == "M" && listaIdade[i] > 45) {
      porcentagemDosHomensMais.add(listaIdade[i]);
    }
  }

  var porcentagemTotalHomens = porcentagemDosHomensMais.length * 100;
  var porcentagemHomensMaisQuarentaCinco =
      porcentagemTotalHomens / listaIdade.length;

  print("====================");
  if (listaIdade.length > 0) {
    print(
        "A porcentagem dos homens com mais de 45 anos com relação ao total de homens é: $porcentagemHomensMaisQuarentaCinco %");
  } else {
    print("Não temos dados de homens ou de idades de +45 suficientes");
  }

// O número de mulheres com idade inferior a 30 anos e com experiência no serviço.

  num mulheresMenorComExperincia = 0;

  for (int i = 0; i < listaSexo.length; i++) {
    if (listaSexo[i] == "F" &&
        listaIdade[i] < 30 &&
        listaExperiencia[i] == "S") {
      mulheresMenorComExperincia += 1;
    }
  }

  print("====================");
  if (listaSexo.length > 0) {
    print(
        "O número de mulheres com idade inferior a 30 anos e com experiência no serviço é  $mulheresMenorComExperincia");
  } else {
    print(
        "Não temos mulheres,idade inferior a 30 ou com experiencia no servico");
  }

  // O nome da candidata com a menor idade que já tem experiência no serviço.

  var nomeDaCandidata;
  var novaListaNomeSexoFeminino = [];
  var novaListaIdadeSexoFeminino = [];
  var novaListaExperienciaSexoFeminino = [];

  //separando sexo feminino na lista e já tem experiencia
  print("====================");
  if (listaSexo.contains("F")) {
    for (int i = 0; i < listaSexo.length; i++) {
      if (listaSexo[i] == "F" && listaExperiencia[i] == "S") {
        novaListaNomeSexoFeminino.add(listaNome[i]);
        novaListaIdadeSexoFeminino.add(listaSexo[i]);
        novaListaExperienciaSexoFeminino.add(listaExperiencia[i]);
      }
    }
  } else {
    print("não temos mulheres no cadastro");
  }

  var menorIdadeFeminia = 0;

  for (int i = 0; i < novaListaExperienciaSexoFeminino.length; i++) {
    var a = novaListaIdadeSexoFeminino[i];
    var b = novaListaIdadeSexoFeminino[i + 1];

    if (!b) {
      b = 0;
    }

    var menor;

    if (a < b) {
      menor = a;
    } else if (b < a) {
      menor = b;
    } else if (a == b) {
      menor = a;
    }

    menorIdadeFeminia = menor;
  }

  var nomeDaCantidataComMenorIdadeExperiencia;

  for (int i = 0; i < novaListaNomeSexoFeminino.length; i++) {
    if (novaListaIdadeSexoFeminino[i] == menorIdadeFeminia) {
      nomeDaCantidataComMenorIdadeExperiencia = novaListaNomeSexoFeminino[i];
    }
  }

  print("====================");
  if (novaListaExperienciaSexoFeminino.length > 0) {
    print(
        "O nome da candidata com a menor idade que já tem experiência no serviço é $nomeDaCantidataComMenorIdadeExperiencia");
  } else {
    print("não temos dados para analise");
  }
}
