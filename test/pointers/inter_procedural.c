int *gp, a, b, c;

void update(){
  gp = &b;
}

int main(){
  gp = &a;
  *gp = 5;
  update();
  *gp = 10;

  return 0;
}
