#include<stdlib.h>
int function(){
  int *p1 = (int*) malloc(sizeof (int)*100);

  for(int i = 0; i < 100; i++){
    p1[i] = 10*i;
  }

  int *p2 = (int*) malloc(sizeof (int)*100);
  
  for(int j = 0; j < 100; j++){
    p2[j] = p1[j] + 5;
  }

  int *p3;
  p3 = p1;

  
  free(p1);
  free(p2);

  return 0;
}
