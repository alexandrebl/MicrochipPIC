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
    int size;
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
            //Linha 1
            lcd_pos(1, 1);
            memset(&buffer[0], 0, sizeof (buffer));
            sprintf(&buffer[0], "Step:%.4u %3.1f%%", adcValue, ((float) adcValue / 1023) * 100);
            size = (strlen(buffer) > sizeof(buffer)) ? sizeof(buffer) : strlen(buffer);
            lcd_write_buffer(buffer, size);
            for(count = 0; count < size; count++){
                while(BusyUSART());
                putcUSART((char)buffer[count]);
            }
            //Linha 2
            lcd_pos(2, 1);
            memset(&buffer[0], 0, sizeof (buffer));
            sprintf(&buffer[0], "Volts:%1.7fV", (float)adcValue * ((float)5 /1023));
            size = (strlen(buffer) > sizeof(buffer)) ? sizeof(buffer) : strlen(buffer);
            lcd_write_buffer(buffer, size);
            //Variável de controle
            adcValueOld = adcValue;
            for(count = 0; count < size; count++){
                while(BusyUSART());
                putcUSART((char)buffer[count]);
            }
        }
        for (count = 0; count < 40; count++) {
            __delay_ms(10);
        }
    }
}

