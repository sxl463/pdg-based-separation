int f(){
  return 5;
}

int main(){
  int y, z;
  y = f();

  z = (y+1) || (y+2);
  /*
  if (y < 0)
    z = y + 1;
  else
  z = y + 2;*/
  return z;
}
