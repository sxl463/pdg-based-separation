#include <stdio.h>
void main(){

  int n = 5;
 mylabel:
  printf("n = %d\n",n);
  n--;
  if(n>0) goto mylabel;
  printf("liftoff!\n");
}
