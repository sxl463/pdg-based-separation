typedef struct{
  int *pa;
  float b;
}MyStruct;

int f_call_by_reference(MyStruct *sp){
  *sp->pa = 2;
  sp->b = 2.3;
  return 0;
}

int f_call_by_value(MyStruct s){
  *s.pa = 2;
  s.b = 3.4;
  return 0;
}


int main(){
  int a = 3;
  MyStruct s = {&a, 1.5};
  MyStruct* p = &s;
  f_call_by_value(s);
  f_call_by_reference(p);


  return 0;
}
