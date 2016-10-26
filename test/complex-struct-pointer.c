#include<stdio.h>

struct S{
  int si;
  char* sp_S;
};


struct conn{
  int i;
  float f;
  short s;
  char *buf_c;
  void *write_and_free;
  unsigned char *buf_uc;
  struct {
    char * buf_in;
    int in;
  } inner_struct;

  char** buf_cp2;
  char*** buf_cp3;

  struct S* sp;
};

char* function(struct conn* cp_f){

  return cp_f->buf_c;
}


int main(){
  
  char str[10]  = "abcdefg"; 
  struct S s1 = {3,str};

  struct conn C;
  C.sp = &s1;


  function(&C);
  return 0;
}
