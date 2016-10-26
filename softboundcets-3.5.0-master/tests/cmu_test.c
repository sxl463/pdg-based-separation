#include <stddef.h>

void foo(int *a)
{
  for (size_t i = 0; i < 100; ++i)
    a[i] = i;
}
