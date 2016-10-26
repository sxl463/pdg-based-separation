
#include<stdlib.h>

int main(){
  int* __attribute__((aligned(65536))) p = (int)malloc(sizeof(int)*10);
  //  FILE* __attribute__((aligned(128))) shadow = fopen("shadow", "r");
  return 0;
}
