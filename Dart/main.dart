
// BIBLIOTECAS
import 'dart:ffi';
import 'dart:io';
import 'dart:mirrors';


// VARIÁVEIS
int etapa = 0;

String? condition;

String? estilo;

bool fim = false;

String modeloEscolar = 'Deseja calcular em que modelo? \n'
      '1 - Bimestral \n'
      '2 - Trimestral \n'
      '3 - Anual \n'
      '4 - Taxa de presença';

void main() {
  commandLine("clear");

  print('Seja bem vindo ao nosso sistem de cálculo de notas! \n \n'
  '*** Digite "help" para obter ajuda *** \n\n'
  'Deseja quais tipos de cálculo de média? \n'
  '1 - Cálculo de Média \n'
  '2 - Média Empresárial \n'
  '3 - Escolar \n'
  '4 - MEDIANA \n \n'
  '*** Selecione os itens de acordo com os seus respectivos números ***');

  condition = stdin.readLineSync();
  etapa = 0;
  fim = false;
  analiseDeEtapa(condition, etapa, fim);
  

  // SELECIONANDO: CALCULO DE NOTAS
}


/*
      CALCULO MÉDIA SIMPLES
*/

void calculoMedia(){
  commandLine("clear");

  int x = 1;
  int somaValue = 0;
  print('Quantos valores deverão ser calculados?');

  final String? quest = stdin.readLineSync();

  final int? val = int.tryParse(quest!);
  if(val! < 2){
    print('\n **** A QUANTIDADE DE VALORES DEVE SER MAIOR QUE "2" **** \n');
    calculoMedia();
  }

  for(x = 1; x <= val; x++){
    print('$xº valor?');
    int? valueInt = int.tryParse(stdin.readLineSync()!);
    somaValue = valueInt! + (somaValue);
    //print('val= $val ; x= $x ; somaValue= $somaValue');

    if(x == val){
      final completeValue = somaValue / x;
      print('Seu valor de média é: $completeValue');

      fim = true;
      etapa = 10;
      analiseDeEtapa(condition!, etapa, fim);
    }
  }
}




/*
      CALCULO BIMESTRAL
*/

void calculoNotaEscolar(modelo){
  commandLine("clear");


  int x;
  int valSoma = 0;

  if(modelo == "1"){
    print('Quantas matérias foram realizadas no ultimo bimestre?');
    int? i = int.tryParse(stdin.readLineSync()!);

    if(i! < 2){
      print('\n **** A QUANTIDADE DE VALORES DEVE SER MAIOR QUE "2" **** \n');
      calculoNotaEscolar(modelo);
    }

    for(x = 0; x < i; x++){
      print('Qual a nota da ${x+1} matéria?');
      int? valNota = int.tryParse(stdin.readLineSync()!);
      valSoma = valNota! + (valSoma);
    }

  } else if (modelo == "2"){

  }
  else if (modelo == "3"){

  } else if (modelo == "4"){
    // Variable Area
    String mode = "";

    print('Qual a taxa minima de presença em sua escola/faculdade? \n\n'
    '** ESCREVA SOMENTE COM NÚMEROS ** \n');
    double valTax = double.parse(stdin.readLineSync()!);

    if (valTax > 0){
      valTax = valTax / (100);
    }

    commandLine("clear");
    print(valTax);
    print('Você estuda por qual método? \n' 
    '1- bimestre \n' 
    '2- trimestre');
    var modeloMensal = stdin.readLineSync();

    commandLine("clear");
    if(modeloMensal == "1"){
      mode = 'bimestre';
    } else if(modeloMensal == "2"){
      mode = 'trimestre';
    }

    print('Quantas aulas você tem por dia?');
    int? aulas = int.tryParse(stdin.readLineSync()!);

    commandLine("clear");
    print('Qual sua quantidade de dias com falta no ultimo $mode');
    double faltas = double.parse(stdin.readLineSync()!);

    int aulasMes = aulas! * (22);

    if(modeloMensal == "1"){
      print(valTax);
      aulasMes = aulasMes * (2);
      double valueTax1 = aulasMes * (valTax);

      faltas = aulasMes - ((faltas) / (100));
      print('Você teria que ir $valTax dias');

      double qtdFaltas = faltas * (aulas);

    } else if (modeloMensal == "2"){
      aulasMes = aulasMes * (3);
    }

  }

}



/*
      CALCULO MÉDIA EMPRESARIAL
*/
void mediaEmpresarial(){
  commandLine("clear");
}



void analiseDeEtapa(condition, etapa, fim){
  // print('entrou em analise de etapa com $condition');

  if(condition == "help"){
    help();
  }

  if (etapa == 0){
    if(condition == "1"){
      calculoMedia();
    } else if (condition == "3"){
      commandLine("clear");

      print(modeloEscolar); 
      String? modelo = stdin.readLineSync();
      calculoNotaEscolar(modelo!);
    } else {
      commandLine("clear");
      
      print('Erro: Escolha uma opção!! \n'
      '*** Digite "help" para obter ajuda ***');
      main();
    }
  }

  if(fim == true && etapa >= 10){
    print ('Para onde deseja ir? \n\n'
    '1- Calcular novamente \n'
    '2- Início \n'
    '3- Ajuda \n'
    '4- Sair');

    condition = stdin.readLineSync();
    // WHEN ETAPA > 10 == FINALIZAÇÕES
    if(etapa == 10 && condition == "1"){
      calculoMedia();
    } else if (etapa == 11 && condition == "1"){
      mediaEmpresarial();
    }

    if (condition == "2"){
      main(); 
    } else if (condition == "3"){
      help();
    } else {}


  } else if (fim == true){
    print ('Para onde deseja ir? \n\n'
    '1- Início \n'
    '2- Sair');

    if (condition == "1"){
      main(); 
    } else if (condition == "2"){
      help();
    }
  }
}

void help(){
  
  commandLine("clear");

  print('Preisando de uma ajuda? Seguem a baixo os comandos do SCM! \n \n'

  'OBS: SEMPRE INTERPRETE AS OPÇÕES REPONDENDO PELO NÚMERO RESPECTIVO A OPÇÃO!! \n \n'

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


void commandLine(func){

  if(func == "clear"){
    // COMMAND LINE TO CLEAR CMD
    print("\x1B[2J\x1B[0;0H");
  } else if (func == "exit"){

  }
}

