#include <stdio.h>

typedef struct{
  int x;
  int y;
}point;

void to_origin(point *ptr){
  if(ptr == NULL){
    printf("Invalid point!\n");
  }
  ptr->x = 0;
  ptr->y = 0;
}

int move_up(point *ptr){
  if(ptr == NULL){
    printf("Invalid point!\n");
    return 1;
  }
  ptr->y++;
  return 0;
}


int main(){

  point pt1 = {2,3};
  point *p = &pt1;

  to_origin(p);

  if(move_up(p) == 0)
    printf("p->x = %d \np->y = %d\n",p->x,p->y);

  return 0;
}
