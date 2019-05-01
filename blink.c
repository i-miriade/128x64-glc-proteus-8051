#include <8051.h>
#include <stdio.h>

void delay(void){

    int i, j;

    for(i = 0; i < 10000; i++){
        for(j = 0; j < 10; j++){
        }
    }
}

void main(void){

    P3 = 0;

    while(1){
        P3_0 = 1;
        delay();
        P3_0 = 0;
        delay();
    }
    
}