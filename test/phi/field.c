typedef struct {
  int f1;
  int f2;
  int f3;
  int f4;
  int f5;
}MyStruct;

int func(){
  return 3;
}

int main(){
  MyStruct sp = {15,0,25,0,0};
  
  int p1, p2;

  if(func() > 0){
    p1 = sp.f2;
  }
  else
    p2= sp.f4;
  
  int p = p1 || p2;
  
  int t = p + 3;

  
  return 0;
}
