#include <xc.h>        /* XC8 General Include File */
#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */
#include <string.h>
#include <stdio.h>
#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */
#include "lcd.h"


void main(void) {
    int count;
    unsigned int adcValue = 0;
    unsigned int adcValueOld = 0;
    char buffer[16];

    ConfigureOscillator();
    InitApp();

    lcd_init();
    lcd_enable();
    lcd_cursor_off();
    lcd_test();
    lcd_pos(2, 1);
    while (1) {
        ConvertADC();
        while (BusyADC());
        adcValue = ReadADC();
        if (adcValue != adcValueOld) {
            lcd_clear();
            lcd_pos(1, 1);
            memset(&buffer[0], 0, sizeof(buffer));
            sprintf(&buffer[0], "Valor: %.4u %.3u%%", adcValue, (int)(((float)adcValue / 1024) * 100));
            lcd_write_buffer(buffer, strlen(buffer));
            adcValueOld = adcValue;
        }
        __delay_ms(20);
    }
}

