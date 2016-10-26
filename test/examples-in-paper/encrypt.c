#include <stdio.h>
#include <string.h>
static char username[20];
static char password[20] ;  

int greeter(char* str){
  if(str == NULL) return 1;
  printf("Welcome %s!\n", str);
  return 0;
} 

char* encrypt(char* str,int key){
  // if(str == NULL) return 1;
  unsigned int i;
  for(i=0;i < strlen(str);++i){
    str[i] = str[i] - key;
  }
  //  printf("encrypted password is %s!\n",str);
  return str;
}
 
int main(){
  printf("Create your username: \n");
  scanf("%s", username);
  if(greeter(username) == 1)
    printf("Invalid user!\n");
  printf("Enter your password: \n");
  scanf("%s", password);
  //encrypt(password,5) == 1)
  printf("encrypted password: %s\n", encrypt(password,5));
  return 0;
}

