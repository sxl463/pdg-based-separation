#define SENSITIVE 256

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
   int id;
   char *name;
   float balance;
}account;

static account record = { 101, "Jessica", 1723.2};

void foo(){
  printf("This is foo.\n");
}

int check_account(account* pa){
  if(pa->id < 0) {
    printf("Wrong account, check id!\n");
    return 1;
  }
  if(strcmp(pa->name, record.name) == 0){
    printf("Jessica's account, balance =");
    return 0;
  }
  return 2;
}


int main(){
  account __attribute__((aligned(SENSITIVE))) s;
  s.name = "Bob";

  if(check_account(&s));

   printf("%s\n",s.name);

}
