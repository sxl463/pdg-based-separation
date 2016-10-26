int foo
(int v, int* ptr)
{
  int tmp = 0;
  if (v > 47)
    *ptr = v;
  else
    tmp = *ptr;
  return tmp;
}


int main(){

  int a = 2;

  int*  __attribute__((aligned(256))) p;

  foo(a, p);

  return 0;
}
