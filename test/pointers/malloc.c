#include <stdlib.h>
#include <stdio.h>

int main(){

  int n = 100;
  
  n++;

  int *p = (int*)malloc(sizeof(int) * (n+2));
  if(p == NULL){
    printf("p is NULL !\n");
  }
  else 
    {
      *p = 0;
      *(p+1) = 1;
      *(p+2) = 2;
    }
  printf("*(p+1) = %d\n", *(p+1));
  return 0;
}
