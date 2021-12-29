import 'dart:math';

//Exercicio 1
/*
  Escreva um algoritmo que leia dois números inteiros e compare-os, mostrando
na tela uma das mensagens abaixo:
 - O primeiro valor é o maior
 - O segundo valor é o maior
 - Não existe valor maior, os dois são iguais
 */

/* void main() {
  int n1 = 5;
  int n2 = 5;
  if (n1 > n2) {
    print("O primeiro valor é o maior");
  } else if (n1 < n2) {
    print("O segundo valor é o maior");
  } else {
    print("Não existe valor maior, os dois são iguais");
  }
}  */

//-----------------------------------------------------------------------------
//Exercicio 2
/*
  Crie um programa que leia duas notas de um aluno e calcule a sua média,
mostrando uma mensagem no final, de acordo com a média atingida:
 - Média até 4.9: REPROVADO
 - Média entre 5.0 e 6.9: RECUPERAÇÃO
 - Média 7.0 ou superior: APROVADO
 */

/* void main() {
  int n1 = 8;
  int n2 = 6;
  double m = (n1 + n2) / 2;
  print("Sua média foi $m");
  if (m >= 7) {
    print("APROVADO");
  } else if (m >= 5 && m < 7) {
    print("RECUPERAÇÃO");
  } else {
    print("REPROVADO");
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 3
/*
  Faça um programa que leia a largura e o comprimento de um terreno
retangular, calculando e mostrando a sua área em m². O programa também
devemostrar a classificação desse terreno, de acordo com a lista abaixo:
 - Abaixo de 100m² = TERRENO POPULAR
 - Entre 100m² e 500m² = TERRENO MASTER
 - Acima de 500m² = TERRENO VIP
*/

/* void main(){
  double l = 15;
  double c = 45;
  double a = l*c;
  print("A área do terreno é de $a metros quadrados");
  if(a < 100){
    print("TERRENO POPULAR");
  }
  else if(a >= 100 && a <= 500){
    print("TERRENO MASTER");
  }else{
    print("TERRENO VIP");
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 4
/*
 Desenvolva um programa que leia o nome de um funcionário, seu salário,
quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de
acordo com a tabela a seguir:
 - Até 3 anos de empresa: aumento de 3%
 - entre 3 e 10 anos: aumento de 12.5%
 - 10 anos ou mais: aumento de 20%
*/

/*void main(){
  String name = "josé";
  double s = 2050.54;
  int ano = 15;
  double nS;
  double aumento;
  if(ano < 3){
    aumento = (s * 3) /100;
    nS = s + aumento;
    print("Você teve um aumento de 3%, equivalente a R\$ $aumento, seu novo sário é de R\$ $nS");
  }else if(ano >= 3 && ano < 10){
    aumento = (s * 12.5) /100;
    nS = s + aumento;
    print("Você teve um aumento de 12.5%, equivalente a R\$ $aumento, seu novo sário é de R\$ $nS");
  }else{
    aumento = (s * 20) /100;
    nS = s + aumento;
    print("Você teve um aumento de 20%, equivalente a R\$ $aumento, seu novo sário é de R\$ $nS");
  }
}
*/

//-----------------------------------------------------------------------------
//Exercicio 5
/*
 Crie um programa que leia o tamanho de três segmentos de reta.
Analise seus comprimentos e diga se é possível formar um triângulo com essas
retas. Matematicamente, para três segmentos formarem um triângulo, o comprimento
de cada lado deve ser menor que a soma dos outros dois. E mostre se é:
 - EQUILÁTERO: todos os lados iguais
 - ISÓSCELES: dois lados iguais
 - ESCALENO: todos os lados diferentes
*/

/*
void main(){
  double a = 4;
  double b = 3;
  double c = 2;
  
  final bool triangulo = a < b + c && b < a + c && c < a + b;
  final bool equilatero = a == b && b == c && a == c;
  final bool isosceles = a == b && a == c && b == c;
 if(triangulo == true){
    print("É formado um triangulo");
   if(equilatero){
      print("O triangulo é EQUILÁTERO");
    }
    if(isosceles){
      print("O triangulo é ISÓSCELES");
    }else{
      print("O triangulo é ESCALENO");
    }
    
  }else{
   print("nao é triangulo");
 }
}
*/

//-----------------------------------------------------------------------------
//Exercicio 6
/*Crie um jogo de JoKenPo (Pedra-Papel-Tesoura)*/
/*REGRAS:
  Pedra ganha da tesoura (amassando-a ou quebrando-a).
  Tesoura ganha do papel (cortando-o).
  Papel ganha da pedra (embrulhando-a).
*/

/*
void main() {
  var jokenpo = ["pedra", "papel", "tesoura"];
  var appChoice = jokenpo[0];
  var userChoice = jokenpo[1];

  print("Escolha do App: " + appChoice);
  print("Escolha do usuario: " + userChoice);

  if (appChoice == userChoice) {
    print("Empate!");
  } else if (appChoice == "pedra" && userChoice == "tesoura") {
    print("App ganhou!");
  } else if (appChoice == "tesoura" && userChoice == "papel") {
    print("App ganhou!");
  } else if (appChoice == "papel" && userChoice == "pedra") {
    print("App ganhou!");
  } else {
    print("Usuario ganhou!");
  }
}
*/

//-----------------------------------------------------------------------------
//Exercicio 7
//Escreva um programa que mostre na tela a seguinte contagem:
//6 7 8 9 10 11 Acabou!

/*
void main(){
  int i;
  for(i = 6; i < 12; i++){
    print("$i");
  }
  print("Acabou");
}
*/

//-----------------------------------------------------------------------------
//Exercicio 8
/*
  Faça um algoritmo que mostre na tela a seguinte contagem:
10 9 8 7 6 5 4 3 Acabou!
*/

/*
void main(){
  int i;
  for(i = 10; i > 2; i--){
    print("$i");
  }
  print("Acabou");
}
*/

//-----------------------------------------------------------------------------
//Exercicio 9
/*
  Crie um aplicativo que mostre na tela a seguinte contagem:
0 3 6 9 12 15 18 Acabou!
*/

/*void main() {
  int i;
  for (i = 0; i < 19; i += 3) {
    print("$i");
  }
  print("Acabou");
}
*/

//-----------------------------------------------------------------------------
//Exercicio 10
/*
  Desenvolva um programa que mostre na tela a seguinte contagem:
100 95 90 85 80 ... 0 Acabou!
*/

/* void main() {
  int i;
  for (i = 100; i >= 0; i -= 5) {
    print("$i");
  }
  print("Acabou");
} */

//-----------------------------------------------------------------------------
//Exercicio 11
/*
   Faça um algoritmo que pergunte ao usuário um número inteiro e positivo
qualquer e mostre uma contagem até esse valor:
Ex: Digite um valor: 35
Contagem: 1 2 3 4 5 6 7 ... 33 34 35 Acabou!
*/

/* void main() {
  int number = 35;
  int i;
  for (i = 0; number >= i; i++) {
    print("$i");
  }
  print("Acabou");
} */

//-----------------------------------------------------------------------------
//Exercicio 12
/*
    Desenvolva um algoritmo que mostre uma contagem regressiva de 30 até 1,
marcando os números que forem divisíveis por 4, exatamente como mostrado abaixo:
30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...
*/

/* void main() {
  int i;
  for (i = 30; i >= 1; i--) {
    if (i % 4 == 0) {
      print("[$i]");
    } else {
      print("$i");
    }
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 13
/*
Crie um algoritmo que leia o valor inicial da contagem, o valor final e o
incremento, mostrando em seguida todos os valores no intervalo:
Ex: Digite o primeiro Valor: 3
Digite o último Valor: 10
Digite o incremento: 2
Contagem: 3 5 7 9 Acabou!

OBS: O programa acima vai ter um problema quando digitarmos o primeiro valor
maior que o último. Resolva esse problema com um código que funcione em qualquer
situação.
*/

/* void main() {
  int c;
  int f = 13;
  int u = 10;
  int i = 2;
  if (f > u) {
    for (c = f; c > u; c -= i) {
      print(c);
    }
  }
  for (c = f; c < u; c += i) {
    print(c);
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 14
/*
Crie um programa que calcule e mostre na tela o resultado da soma entre 6 +
8 + 10 + 12 + 14 + ... + 98 + 100.
*/

/* void main() {
  int i;
  int soma = 0;
  for (i = 6; i <= 100; i += 2) {
    soma += i;
    print(i);
  }
  print('A Soma é: $soma');
} */

//-----------------------------------------------------------------------------
//Exercicio 15
/*
 Desenvolva um aplicativo que mostre na tela o resultado da expressão 500 +
450 + 400 + 350 + 300 + ... + 50 + 0
*/

/* void main() {
  int i;
  int soma = 0;
  for (i = 500; i >= 0; i -= 50) {
    soma += i;
    print(i);
  }
  print('A Soma é: $soma');
} */

//-----------------------------------------------------------------------------
//Exercicio 16
/* 
void main() {
  stdout.write("Digite um numero ");
  var name = stdin.readLineSync();
  print("Hi, $name!");
} */

/* void main() {
  int? numero = stdin.readLineSync() as int;
  while (numero != null && numero <= 7) {
    print("O numero digitado foi: $numero");
    stdout.write("Digite um numero ");
    int soma = numero + 1;
    print(soma);
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 17
/* Faça um programa que leia 7 números inteiros e no final mostre 
o somatório entre eles. */

/* void main() {
  List<int> list = [1, 2, 4, 15, 6, 27, 4];
  int soma = 0;
  for (int i = 0; i < list.length; i++) {
    soma += list[i];
    print('$i + $soma');

    print('A soma é $soma');
  }
} */

//-----------------------------------------------------------------------------
//Exercicio 18
/*
Crie um programa que leia 6 números inteiros e no final mostre quantos
deles são pares e quantos são ímpares.
*/

//Primeira Solução
/* void main() {
  List<int> list = [8, 5, 7, 0, 6, 30];
  int i = 0;
  for (i; i < list.length; i++) {
    if (list[i] % 2 == 1) {
      print('${list[i]} é Impar ');
    } else {
      print('${list[i]} é Par');
    }
  }
} */

//Segunda Solução
/* void main() {
  List<int> list = [];
  int i = 0;
  for (i; i < 6; i++) {
    list.add(Random().nextInt(7));
  }
  print('Os números sorteados foram: $list');
  int par = 0;
  int impar = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      par++;
    } else {
      impar++;
    }
  }
  print('$par números pares');
  print('$impar números ímpares');
} */

//-----------------------------------------------------------------------------
//Exercicio 19
/*
 Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e
mostre na tela:
a) Quais foram os números sorteados
b) Quantos números estão acima de 5
c) Quantos números são divisíveis por 3
*/

/*

void main() {
  List<int> list = [];
  int i = 0;
  for (i; i < 20; i++) {
    list.add(Random().nextInt(11));
  }
  print('Os números sorteados foram: $list');
  int acima5 = 0;
  int div3 = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > 5) {
      acima5++;
    }
    if (list[i] % 3 == 0) {
      div3++;
    }
  }
  print('$acima5 números acima de 5 ');
  print('$div3 números divisíveis por 3 ');
} */

//-----------------------------------------------------------------------------
//Exercicio 20
/*
– REPETIÇÃO COM FAÇA ENQUANTO
61) Crie um programa que mostre na tela a seguinte contagem, usando a estrutura
“faça enquanto”
0 3 6 9 12 15 18 21 24 27 30 Acabou!
*/

/* void main() {
  int i = 0;
  do {
    print('$i');
    i += 3;
  } while (i < 30);
  print('Acabou!');
} */

//-----------------------------------------------------------------------------
//Exercicio 21
/*
Escreva um programa que leia um número qualquer e mostre a tabuada desse
número, usando a estrutura “para”.
Ex: Digite um valor: 5
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15 ...
*/

/* void main() {
  int numero = 6;
  int i = 1;
  for (i; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
 */

//-----------------------------------------------------------------------------
//Exercicio 22
/*
Crie um programa que preencha automaticamente (usando lógica, não apenas
atribuindo diretamente) um vetor numérico com 10 posições, conforme abaixo:
5 10 15 20 25 30 35 40 45 50
0  1  2  3  4  5  6  7  8  9
*/

/* void main() {
  List<int> list = [];
  int i = 1;
  for (i; i <= 10; i++) {
    list.add(i * 5);
  }
  print(list);
} */

//-----------------------------------------------------------------------------
//Exercicio 23
/*
Crie um programa que preencha automaticamente (usando lógica, não apenas
atribuindo diretamente) um vetor numérico com 10 posições, conforme abaixo:
9 8 7 6 5 4 3 2 1 0
0 1 2 3 4 5 6 7 8 9
*/

/* void main() {
  List<int> list = [];
  int i;
  for (i = 9; i >= 0; i--) {
    list.add(i * 1);
  }
  print(list);
} */

//-----------------------------------------------------------------------------
//Exercicio 24
/*
Crie uma lógica que preencha um vetor de 20 posições com números
aleatórios (entre 0 e 99) gerados pelo computador. Logo em seguida, mostre os
números gerados e depois coloque o vetor em ordem crescente, mostrando no final
os valores ordenados.
*/

/* void main() {
  List<int> list = [];
  int i = 0;
  for (i; i < 20; i++) {
    list.add(Random().nextInt(100));
  }
  print('Os números sorteados foram: $list');
  list.sort();
  print('Os números ordenados são: $list');
} */

//-----------------------------------------------------------------------------
//Exercicio 25
/*
Crie um programa que preencha automaticamente (usando lógica, não apenas
atribuindo diretamente) um vetor numérico com 15 posições com os primeiros
elementos da sequência de Fibonacci:
1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
0 1 2 3 4 5  6  7  8  9 10  11  12  13  14 15
*/
/* void main() {
  List<int> list = [];
  int i = 0;
  int a = 1;
  int b = 0;
  for (i; i <= 15; i++) {
    list.add(a);
    a = a + b;
    b = a - b;
  }
  print(list);
} */

//-----------------------------------------------------------------------------
//Exercicio 26
//Armstrong Numbers

import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int numberLength = number.toString().length;
    int numberCopy = number;
    num sum = 0;
    while (numberCopy > 0) {
      int digit = numberCopy % 10;
      sum += pow(digit, numberLength);
      numberCopy = numberCopy ~/ 10;
    }
    return sum == number;
  }
}

final armstrongNumbers = ArmstrongNumbers();
void main() {
  for (var number in [0, 9, 10, 153, 154, 370, 371, 407, 1634, 8208, 9474]) {
    if (armstrongNumbers.isArmstrongNumber(number)) {
      print("$number is armstrong number");
    } else {
      print("$number is not Armstrong number");
    }
  }
}
