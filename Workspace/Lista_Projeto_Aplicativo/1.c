#include <stdio.h>
#include <stdlib.h>

int main(){

  int numero;

  printf("Digite um número: ");
  scanf("%d",&numero);

  numero = numero*numero;

  printf("Esse é seu número elevado ao quadrado: %d\n",numero);
}
