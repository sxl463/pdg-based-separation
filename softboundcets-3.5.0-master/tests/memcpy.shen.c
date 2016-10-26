#include <stdio.h>
#include <string.h>

int main (){
   const char src[50] = "abcd";
   char dest[50];
   memcpy(dest, src, strlen(src)+1);
   return 0;
}
