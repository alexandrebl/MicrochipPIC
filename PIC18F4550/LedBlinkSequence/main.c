#include <xc.h>        /* XC8 General Include File */
#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */
#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */

void main(void)
{
    ConfigureOscillator();
    InitApp();

    char valor = 0;
    while(1)
    {
        valor++;
        PORTA = valor;
        __delay_ms(20);
        __delay_ms(20);
        __delay_ms(20);
        __delay_ms(20);
    }
}

