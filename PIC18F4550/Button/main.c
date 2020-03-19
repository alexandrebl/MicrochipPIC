#include "main.h"

int main(){
    config();

    PORTCbits.RC1 = 1;
    while(1){
        if(PORTBbits.RB0 == 0){
            PORTCbits.RC0 = 1;
        }else{
            PORTCbits.RC0 = 0;
        }
        __delay_ms(20);
    }
    return 0;
}
