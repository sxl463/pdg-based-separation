#include <stdio.h>
#include <string.h>
static char username[20];
static char password[20] ;  

int greeter(char* str){
  printf("Welcome $s!\n", str);
} 

int encrypt(char* str,int key){
  if(str == NULL) return 1;
  unsigned int i;
  for(i=0;i < strlen(str);++i){
    str[i] = str[i] - key;
  }
  return 0;
}
 
int main(){
  printf("Create your username: \n");
  scanf("%s", username);
  greeter(username);
  printf("Enter your password: \n");
  scanf("%s", password);
  encrypt(password,5);
  printf("encrpted password is %s!\n",password);
  return 0;
}

