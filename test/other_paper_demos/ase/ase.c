#define BUFSIZE 200
#define KEYSIZE 200

#include<stdio.h>
#include<stdlib.h>

static int inpasswd (char *username, char *password){

  char line[BUFSIZE];

  FILE *fp = fopen("/etc/shadow", "r");

  while (fgets(line, BUFSIZE, fp) != NULL) {
    if (matches(line, username, password))
      return 1;
  }
  return 0;
}

static char *signmsg (char *message){
  char privkey[KEYSIZE];
  FILE *fp = fopen("/private_key", "r");
  fread(privkey, KEYSIZE, 1, fp);
  char *signature = dosign(privkey, message);
  return signature;
}

int main (int argc, char **argv)
{
  char *username = argv[1];

  char *password = argv[2];

  if (inpasswd(username, password)) {

    char buffer [100];
    sprintf(buffer, "I am %s", username);
    char *signature = signmsg(buffer);
    printf("%s\n", signature);
  } 
  else
    printf("Bad login\n");
}
