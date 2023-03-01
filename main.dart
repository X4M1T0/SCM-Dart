
// BIBLIOTECAS
import 'dart:io';


void main() {
  print('Seja bem vindo ao nosso sistem de cálculo de notas!');

  print('Deseja calcular bimestre ou trimestre?');

  String? estilo = stdin.readLineSync();

  if(estilo == "bimestre"){
    calculoBimestral();
  } else if (estilo == "trimestre"){
    calculoTrimestral();
  }
  
}

void calculoBimestral(){
  int x = 0;

  print('Quantas matérias foram realizadas no ultimo bimestre?');
  var i = stdin.readLineSync();
  for(int m = 0; m < i; m++){
    print('Qual a nota da ${x+1} matéria?');
    final nota = stdin.readLineSync();
  }
}

void calculoTrimestral(){

}