#include <xc.h>        /* XC8 General Include File */
#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */
#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */
#include "lcd.h"

void main(void)
{
    ConfigureOscillator();
    InitApp();

    lcd_init();
    lcd_cursor_off();
    lcd_test();
    //lcd_pos(2,1);
    while(1)
    {
        
    }
}

