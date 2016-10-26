
typedef struct {
  int x;
  int y;
}point;

int A(int x){
  return x+2;
}

int B(int b1, int b2){
  A(b1);
  return 0;
}

int C(point *_p){
  //A(_p->x);
  int temp = A(_p->x);
  B(temp, _p->y);
  return 0;
}

int main(){
  point* p;
  C(p);
  return 0;
}

