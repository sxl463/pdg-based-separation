/*
 * chfn.c - main program of chfn
 * Taking in user inputs, it first authenticates the user and then
 * getting inputs from the user and write to a file
 */
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <assert.h>
#include <ctype.h>
/*#include <upro.h>*/

#define BUFSIZE 100

int _auth(char* uname, char* passwd)
{
  int i;
  int result = 0;
  char username[BUFSIZE];
  char password[BUFSIZE];
  /* shadow file should have two lines, the first is the
     username and the second is the passwd*/
  FILE* __attribute__((aligned(128))) shadow = fopen("shadow", "r");
  if (NULL == shadow) {
    fprintf(stderr, "shadow cannot be opened\n");
    return 0;
  }

  for (i = 0; i < BUFSIZE - 1; i++) {
    int ch = fgetc(shadow);
    if (isspace(ch) || EOF == ch)
      break;
    username[i] = (char) ch;
  }

  username[i] = '\0';

  for (i = 0; i < BUFSIZE - 1; i++) {
    int ch = fgetc(shadow);
    if (isspace(ch) || EOF == ch)
      break;
    password[i] = (char) ch;
  }

  password[i] = '\0';

  result = (!strncmp(username, uname, BUFSIZE)) &&
    (!strncmp(password, passwd, BUFSIZE));

  fclose(shadow);
  return result;
}

/* User inputs the username and the password and then calls _auth
   to actually authenticate the user*/
int auth()
{
  int i;
  char username[BUFSIZE];
  char password[BUFSIZE];

  write(1, "Username : ", 11);

  for (i = 0; i < BUFSIZE - 1; i++) {
    int ch = fgetc(stdin);
    if (isspace(ch) || EOF == ch)
      break;
    username[i] = (char) ch;
  }

  username[i] = '\0';

  write(1, "Password : ", 11);

  for (i = 0; i < BUFSIZE - 1; i++) {
    int ch = fgetc(stdin);
    if (isspace(ch) || EOF == ch)
      break;
    password[i] = (char) ch;
  }

  password[i] = '\0';

  return _auth(username, password);
}

void _changeFn(char* Item, char* Content)
{
  char* entry = NULL;
  unsigned int size = 0;

  FILE* fp = NULL;

  if (NULL == Item || NULL == Content)
    return;

  size = strlen(Item) + strlen(" : ") + strlen(Content) + 1;
  entry = malloc(strlen(Item) + strlen(" : ") + strlen(Content) + 1);
  if (NULL == entry)
    return;

  memset(entry, '\0', size);

  entry = strcpy(entry, Item);
  entry = strcat(entry, " : ");
  entry = strcat(entry, Content);

  fp = fopen("passwd", "w+");
  if (NULL == fp) {
    fprintf(stderr, "Cannot open file passwd\n");
    exit(1);
  }

  fprintf(fp, "%s\n", entry);
  fclose(fp);
}

void changeFn(void)
{
  int i;
  char buf[BUFSIZE];

  write(1, "Phone number : ", 15);

  for (i = 0; i < BUFSIZE - 1; i++) {
    int ch = fgetc(stdin);
    if (isspace(ch) || EOF == ch)
      break;
    buf[i] = (char) ch;
  }
  buf[i] = '\0';
  _changeFn("Phone number", buf);
}

int main() {
  printf("Authentication\n");

  if (!auth()) {
    fprintf(stderr, "Authentication failed\n");
    exit(1);
  }
  changeFn();
  return 0;
}
