
// BIBLIOTECAS
import 'dart:io';


void main() {
  print('Seja bem vindo ao nosso sistem de cálculo de notas!');

  print('Deseja quais tipos de cálculo de média?');
  print('1 - Cálculo de Média');
  print('2 - Cálculo de notas');
  print('3 - MODA');
  print('4 - MEDIANA');
  print('');
  print('*** Selecione os itens de acordo com os seus respectivos números ***');

  String? estilo = stdin.readLineSync();

  // SELECIONANDO: MÉDIA SIMPLES
  if(estilo == "1"){
    
    calculoMedia();
  }

  // SELECIONANDO: CALCULO DE NOTAS
}


/*
      CALCULO MÉDIA SIMPLES
*/

void calculoMedia(String itens){
  int x = 1;
  int somaValue = 0;
  print('Quantos valores deverão ser calculados?');

  final String? quest = stdin.readLineSync();

  final int? val = int.tryParse(quest!);

  for(x = 1; x <= val!; x++){
    print('$xº valor?');
    final String? value = stdin.readLineSync();
    final int? valueInt = int.tryParse(value!);
    somaValue = valueInt! + (somaValue);
    //print('val= $val ; x= $x ; somaValue= $somaValue');

    if(x == val){
      final completeValue = somaValue / x;
      print('Seu valor de média é: $completeValue');
    }
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