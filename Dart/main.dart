
// BIBLIOTECAS
import 'dart:io';


void main() {


  print('Seja bem vindo ao nosso sistem de cálculo de notas!');
  print('');
  print('*** Digite "help" para obter ajuda ***');
  print('');

  print('Deseja quais tipos de cálculo de média?');
  print('1 - Cálculo de Média');
  print('2 - Média Empresárial');
  print('3 - Notas Escolares');
  print('4 - MEDIANA');
  print('');
  print('*** Selecione os itens de acordo com os seus respectivos números ***');

  String? estilo = stdin.readLineSync();

  // SELECIONANDO: MÉDIA SIMPLES
  if(estilo == "1"){
    calculoMedia();
  } else if (estilo == "3"){
    print('Deseja calcular em que modelo?');
    print('1 - Bimestral');
    print('2 - Trimestral');
    print('3 - Anual');
    print('');
    print('*** Selecione os itens de acordo com os seus respectivos números ***');
  } else if(estilo == "help"){
    help();  
  } else {
    print('Erro: Escolha uma opção!!');
    print('*** Digite "help" para obter ajuda ***');
    main();
  }

  // SELECIONANDO: CALCULO DE NOTAS
}


/*
      CALCULO MÉDIA SIMPLES
*/

void calculoMedia(){
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


void help(){
  print('Preisando de uma ajuda? Seguem a baixo os comandos do SCM!');
  print('');

  // Comandos Básicos
  print('Comandos Básicos:');
  print('');
  print('Help - Abre a central de comandos');
  print('Return - Retorna ao passo anterior');
  print('Reload - Reinicia o programa');
  print('');

  //Explicando cálculos
  print('Cálculos:');
  print('');

    //Cálculo de média
    print('Calculo de média - Calculo de média baseadas nos valores implementados pelo usuário:');
    print('1 - Escolha a quantidade de valores inseridos;');
    print('2 - Adicione os valores;');
    print('3 - Receba o valor do cálculo instataneamente.');
}
