struct tmp {
	unsigned long t;
	int (*f1)(void);
	int (*f2)(void);
};

int foo(void)
{
  return 0;
}

int bar(void)
{
  return 1;
}

void swap(struct tmp *t)
{
	unsigned long tmp, *p = &t->t;

	tmp = p[1];
	p[1] = p[2];
	p[2] = tmp;
}

int main()
{
  struct tmp a = {.f1 = foo, .f2 = bar};
  swap(&a);
  return a.f1();
}
