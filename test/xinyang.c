struct tmp {
	unsigned long v;
	int (*f1)(void);
	int (*f2)(void);
};

void swap(struct tmp *t)
{
	unsigned long tmp, *p = &t->v;
	int (*fp)(void);

	tmp = p[1];
	p[1] = p[2];
	p[2] = tmp;
	
	fp = t->f1; /* p[2] (t->f1) should flow to t->f1, which flows to fp */
}
