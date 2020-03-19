#include "Config.h"

void config(void){
    TRISA = 0x00;
    TRISB = 0b00000001;
    TRISC = 0x00;
    TRISD = 0x00;
    TRISE = 0x00;
    PORTA = 0X00;
    PORTB = 0X00; //RB0 Input
    PORTC = 0X00;
    PORTD = 0X00;
    PORTE = 0X00;
}