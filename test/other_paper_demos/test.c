
#include<fcntl.h>

struct stuff {
  int cnt;
  char buf[1024];
};

volatile void foo (char *buf_foo, int len_foo, char fac_foo){
  int i;
  for(i = 0; i < len_foo; i++)
    buf_foo[i] *= fac_foo;
}

volatile void bar(char *buf_bar, int len_bar, char off_bar){
  int i;
  for( i = 0; i < len_bar; i++)
    buf_bar[i] += off_bar;
}

volatile void foobar (char *buf_foobar, int len_foobar,
		      char fac_foobar, char off_foobar){
  foo(buf_foobar, len_foobar, fac_foobar);
  bar(buf_foobar, len_foobar, off_foobar);
}

int main(int ac, char **av){
  int fd;
  struct stuff st;
  char fac, off;
  fd = open(av[1], O_RDONLY);
  fac = (char)atoi(av[2]);
  off = (char)atoi(av[3]);
  while((st.cnt = read(fd, st.buf, 1024)) > 0){
    foobar(st.buf, st.cnt-24, fac, off);
    write(2, st.buf, st.cnt);
  }
  close(fd);
}
