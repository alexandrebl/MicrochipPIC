#include <xc.h>         /* XC8 General Include File */
#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */
#include "system.h"
#include "lcd.h"
#include <plib/delays.h>

void interrupt high_isr(void){
   if((INTCONbits.INT0IF == 1) && (INTCONbits.INT0IE == 1)){
       lcd_clear();
       lcd_write_buffer("INTERRUPT INT0", 14);
       __delay_ms(10);
       INTCONbits.INT0IF = 0;
   }
}

void low_priority interrupt low_isr(void){
}
