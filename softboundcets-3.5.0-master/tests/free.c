#include <stdlib.h>

int main() {
  int num = 20;

  //  void *x = malloc(num+1);
  int* array = (int*)malloc(sizeof(int)*(num+1));
  array[20] = 3;

  //  free(x);
  // free(x);
}
