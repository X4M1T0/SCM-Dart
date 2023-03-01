
// BIBLIOTECAS
import 'dart:io';


void main() {
  print('Seja bem vindo ao nosso sistem de cálculo de notas!');

  print('Deseja quais tipos de cálculo de média?');
  print('1 - Média Simples');
  print('2 - Calculo de notas');
  print('3 - MODA');
  print('4 - MEDIANA');

  print('*** Selecione os itens de acordo com os seus respectivos números ***');

  String? estilo = stdin.readLineSync();

  if(estilo == "bimestre"){
    calculoBimestral();
  } else if (estilo == "trimestre"){
    calculoTrimestral();
  }

  if(estilo == "1"){
    calculoMedia();
  }
  
}


/*
      CALCULO MÉDIA SIMPLES
*/

void calculoMedia(){
  int x = 0;
  print('Quantos valores deverão ser calculados?');

  final String? quest = stdin.readLineSync();

  final int? val = int.tryParse(quest!);

  for(x = 0; x < val!; x++){
    print('${x+1}º valor?');
    final String? value + "${x+1}"
  }
}


/*
      CALCULO BIMESTRAL
*/

void calculoBimestral(){
  int x = 0;

  print('Quantas matérias foram realizadas no ultimo bimestre?');
  var i = stdin.readLineSync();
  /*for(int m = 0; m < i; m++){
    print('Qual a nota da ${x+1} matéria?');
    final nota = stdin.readLineSync();
  }*/
}


/*
      CALCULO TRIMESTRAL
*/

void calculoTrimestral(){

}