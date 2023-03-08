
// BIBLIOTECAS
import 'dart:io';


// VARIÁVEIS
int etapa = 0;
String? condition = "";
String? estilo = "";
bool fim = false;


void main() {
  clear();

  print('Seja bem vindo ao nosso sistem de cálculo de notas! \n \n'
  '*** Digite "help" para obter ajuda *** \n\n'
  'Deseja quais tipos de cálculo de média? \n'
  '1 - Cálculo de Média \n'
  '2 - Média Empresárial \n'
  '3 - Notas Escolares \n'
  '4 - MEDIANA \n \n'
  '*** Selecione os itens de acordo com os seus respectivos números ***');

  condition = stdin.readLineSync();
  etapa = 0;
  analiseDeEtapa(condition, etapa, fim);
  

  // SELECIONANDO: CALCULO DE NOTAS
}


/*
      CALCULO MÉDIA SIMPLES
*/

void calculoMedia(){
  clear();
  int x = 1;
  int somaValue = 0;
  print('Quantos valores deverão ser calculados?');

  final String? quest = stdin.readLineSync();

  final int? val = int.tryParse(quest!);
  if(val! < 2){
    print('**** A QUANTIDADE DE VALORES DEVE SER MAIOR QUE "2" ****');
    calculoMedia();
  }

  for(x = 1; x <= val; x++){
    print('$xº valor?');
    final String? value = stdin.readLineSync();
    final int? valueInt = int.tryParse(value!);
    somaValue = valueInt! + (somaValue);
    //print('val= $val ; x= $x ; somaValue= $somaValue');

    if(x == val){
      final completeValue = somaValue / x;
      print('Seu valor de média é: $completeValue');

      fim == true;
      etapa = 10;
      analiseDeEtapa(condition!, etapa, fim);
    }
  }
}




/*
      CALCULO BIMESTRAL
*/

void calculoBimestral(){
  clear();
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

void mediaEmpresarial(){}




void help(){
  clear();
  print('Preisando de uma ajuda? Seguem a baixo os comandos do SCM! \n \n'

  // Comandos Básicos
  'Comandos Básicos: \n \n'
  'Help - Abre a central de comandos \n'
  'Return - Retorna ao passo anterior \n'
  'Reload - Reinicia o programa \n \n'

  //Explicando cálculos
  'Cálculos: \n \n'

    //Cálculo de média
    'Calculo de média - Calculo de média baseadas nos valores implementados pelo usuário: \n'
    '1 - Escolha a quantidade de valores inseridos; \n'
    '2 - Adicione os valores; \n'
    '3 - Receba o valor do cálculo instataneamente.');
}



void analiseDeEtapa(condition, etapa, fim){
  // print('entrou em analise de etapa com $condition');

  if(condition == help){
    help();
  }

  if (etapa == 0){
    if(condition == "1"){
      calculoMedia();
    } else if (condition == "3"){
      clear();
      print('Deseja calcular em que modelo? \n'
      '1 - Bimestral \n'
      '2 - Trimestral \n'
      '3 - Anual'); 
    } else {
      clear();
      print('Erro: Escolha uma opção!! \n'
      '*** Digite "help" para obter ajuda ***');
      main();
    }
  }

  if(fim == true){
    print ('Para onde deseja ir?');
    print('');
    print('1- Calcular novamente');
    print('2- Início');
    print('3- Ajuda');
    print('4- Sair');

    condition = stdin.readLineSync();
    // WHEN ETAPA > 10 == FINALIZAÇÕES
    if(etapa == 10 && condition == "1"){
      clear();
      calculoMedia();
    } else if (etapa == 11 && condition == "1"){
      clear();
      mediaEmpresarial();
    }

    if (condition == "2"){
      clear();
      main(); 
    } else if (condition == "3"){
      help();
    } else {}
  }
}

void clear(){
  // COMMAND LINE TO CLEAR CMD
  print("\x1B[2J\x1B[0;0H");
}
