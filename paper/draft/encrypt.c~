#include <stdio.h>
#include <string.h>

static char password[20] ;  

void foo(){
  printf("function foo should be separated!\n");
} 

int encrypt(char* password,int key){
  
  if(password == NULL)
    return 1;
  
  unsigned int i;
  for(i=0;i < strlen(password);++i){
    password[i] = password[i] - key;
  }
  return 0;
}
 

int main(){

  foo();
  printf("Enter the password: \n ");
  scanf("%s",password);
  printf("Passwrod = %s\n",password);
  encrypt(password,10);
  printf("Encrypted value = %s\n",password);
  //  decrypt(password,10);
  //  printf("Decrypted value = %s\n",password);
  return 0;
}

/*
int decrypt(char password*,int key){
  if(password == nullptr)
    return 1;
  unsigned int i;
  for(i=0;i<strlen(password);++i){
    password[i] = password[i] + key;
  }
  return 0;
  }*/
