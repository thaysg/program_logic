//Prova


/*
A partir das expressões mencionadas, assinale qual a
sequência correta de resultados, através dos seguintes
valores: X=1, A=3, B=5, C=8 e D=7.

- .não. (x>3) e (x<1) e .não. (B>D)
         1>3n e  1<1n e        5>7n

- .não. (d<0) e (c>5) ou (x>3) ou (c<7)
          7<0n e  5>5n ou  1>3n ou  5<7S
- (x>=3) e .não. (a<3) e (a+b=8) 
  1>=3n e         3<3n e  3+5=8S
- .não. (d>3) ou .não. (b<7) e .não. (c>b)
        7>3S ou         5<7S e        8>5S


São expressões booleanas. 

X=1, A=3, B=5, C=8 e  D=7

Substituimos o valor das variáveis nas expressões.

.não. (x>3) e (x<1) e .não. (B>D)-
.não. (1>3) e (1<1) e .não. (5>7)-
.não.(falso) e (falso) e .não.(falso)
verdadeiro E falso E verdadeiro = falso 


.não. (d<0) e (c>5) ou (x>3) ou (c<7)-
.não. (7<0) e (8>5) ou (1>3) ou (8<7)-
.nao. falso E verdadeiro OU falso OU falso  .... prioridade é o não
verdadeiro E verdadeiro OU falso OU falso .... prioridade é o e
verdadeiro ou falso ou falso = verdadeiro

(x>=3) e .não. (a<3) e (a+b=8)-
(1>=3) e .nao. (3<3) e (3+5=8) 
(falso) e .nao.(falso) e (verdadeiro)
falso e verdadeiro e verdadeiro = falso

.não. (d>3) ou .não. (b<7) e .não. (c>b)
.não. (7>3) ou .não. (5<7) e .não. (8>5)
.nao. verdadeiro ou nao falso e nao verdadeiro
falso ou verdadeiro e falso
falso ou falso = falso
*/

/*
Funcao operacao (n:Inteiro):Real
Var x:Real
inicio
   Se (n%2 = 0) então
      x <- n ^ 2
senão
x <- n / 2
FimSe
   Retorne x
FimFuncao
Inicio
S <- 0
   Para c <- 1 ate 3 faca
      S <- S + Operacao(c)
FimPara
   Escreva(S)
Fim
*/

/* void main() {
  void func(int n) {
    double x;
    if (n % 2 == 0) {
      x = pow(n, 2) as double;
    } else {
      x = n / 2;
    }
    print(x);
  }

  int s = 0;
  for (int c = 1; c <= 3; c++) {
    func(c);
    s += c;
  }
  print(s);
}
 */

/*
Observe o fragmento de código abaixo:

X <- 3
Y <- 4
Z <- 5 se ((X - 1) > 2) então
Y <- Y + 1 senão
  Y <- Y - 1
fim_se
Z <- X + Y
para I de 1 até 8 faça
  Y <- Y + 1
fim_para
Z <- Z + Y
*/

/* void main() {
  int x = 3;
  int y = 4;
  int z = 5;
  if ((x - 1) > 2) {
    y = y + 1;
  } else {
    y = y - 1;
  }
  for (int i = 1; i <= 8; i++) {
    y = y + 1;
  }
  z = z + y;
  print(z);
} */

/*
Inicio
Lógico: A, B, C;
Se A Então
   C1 
Senão
   Se B então
      Se C então
         C2
      Senão
         C3
         C4
      Fimse
   Fimse
   C5 
Fimse
C6 
Fim
Se no algoritmo dado, A=falso, 
B=verdadeiro, C=falso, quais comandos serão executados?
*/

/* void main() {
  bool a = false;
  bool b = true;
  bool c = false;
  if (a) {
    print("C1");
  } else {
    if (b) {
      if (c) {
        print("C2");
      } else {
        print("C3");
        print("C4");
      }
    } else {
      print("C5");
    }
  }
  print("C6");
} */

/*
Cont <- 1
X <- 0
Enquanto (Cont <= 5) faça
R <- X * 3
Escreva(R)
Cont <- Cont + 1
X <- X + 1
FimEnquanto
*/
/* 
void main() {
  int cont = 1;
  int x = 0;
  //primeira opção
  while (cont <= 5) {
    print(x * 3);
    cont++;
    x++;
  }
  //segunda opção
  /* while (cont <= 5) {
    int r = x * 3;
    print(r);
    cont = cont + 1;
    x = x + 1;
  } */
} */

/*
Algoritmo A0001
  var res, cont, x, n: Inteiro
  inicio
     cont <- n, res <- 0, x <- 2, n <- 4 enquanto (cont>=n) faca
         res <- res * x
         cont <- cont + 1
     fimEnquanto
     escreva(res)
fimAlgoritmo
*/

/* void main() {
  int res = 0;
  int cont = 0;
  int x = 2;
  int n = 4;
  while (cont >= n) {
    res = res * x;
    cont++;
  }
  print(res);
} */
