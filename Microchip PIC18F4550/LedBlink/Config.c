#include "Config.h"

void config(void){
    TRISA = 0x00;
    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0x00;
    TRISE = 0x00;
    PORTA = 0X00;
    PORTB = 0X00;
    PORTC = 0X00;
    PORTD = 0X00;
    PORTE = 0X00;
}

void test(char out){
    PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
    PORTD = 0x00;
    PORTE = 0x00;
    Delay1KTCYx(1000);
    PORTA = out;
    PORTB = out;
    PORTC = out;
    PORTD = out;
    PORTE = out;
    Delay1KTCYx(2000);
}
