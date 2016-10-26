#include <stdio.h>

static int __attribute__((aligned(256))) var = 0;

int CalcSum (int s, int i){
  
  //  s = s + i;
  
  return s + i;
}

int main(){
  int sum = 0 ;
  int i = 0;
  int j = var + 1;

  while(i < 10){
    sum = CalcSum(sum , i) ;
    i = i + 1;
  }

  FILE* __attribute__((aligned(128))) fp = fopen("a.txt","w");
  fprintf(fp, "testing...\n");
  fclose(fp);
  return 0;
}
