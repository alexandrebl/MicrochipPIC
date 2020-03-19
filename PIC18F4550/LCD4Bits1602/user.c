#include <xc.h>         /* XC8 General Include File */
#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */
#include "user.h"

void InitApp(void){
    /* TODO Initialize User Ports/Peripherals/Project here */
    TRISA = 0x00;
    TRISB = 0b00000001; //RB0 Input
    TRISC = 0x00;
    TRISD = 0x00;
    TRISE = 0x00;
    /* Setup analog functionality and port direction */
    ADCON1 = 0x0F; //For Digital
    CMCON = 0x07;
    /* Initialize peripherals */
    PORTA = 0X00;
    PORTB = 0X00; //RB0 Input
    PORTC = 0X00;
    PORTD = 0X00;
    PORTE = 0X00;
    /* Configure the IPEN bit (1=on) in RCON to turn on/off int priorities */
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.RBIP = 1;
    /* Enable interrupts */
    INTCONbits.INT0IF = 0;
    INTCONbits.INT0IE = 1;

    RCONbits.IPEN = 1;
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 0;
}
