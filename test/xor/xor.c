
#include<string.h>

#define BLOCK_SIZE 100

void main(char *data, char *key) {

    int i = 0;
    int y = 0;

    for(i = 0, y = 0; i <= strlen(data); ) {         
        int o = 0;
        for(o = 0; o <= BLOCK_SIZE; o++) {
            if(data[i] != ' ') {
                data[i] ^= key[y]; 
            }
            i++; 
        }   

        y++;         
        if(key[y] == ' ') {
            y = 0; 
        }
    }
}
