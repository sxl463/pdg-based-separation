typedef struct{
  int* p1;
  int* p2;
}Base1;

typedef struct{
  int* p1;
  float* p2;
}Base2;


/*
struct Common1{
  int a;
  int b;
  struct Common2* bp;
};

struct Common2{
  int a;
  int b;
  struct Common1* bp;
  };*/



typedef struct {
  int a;
  float b;
  Base1* sp;
}S1;


typedef struct {
  int a;
  float b;
  Base2* sp;
}S2;





int test(){
  
  S1 s1;
  S2 s2;
  return 0;
}
