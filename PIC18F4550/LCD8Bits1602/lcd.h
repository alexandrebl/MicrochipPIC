/* 
 * File:   lcd.h
 * Author: Alexandre
 *
 * Created on 20 de Março de 2014, 09:29
 */
#ifndef LCD_H
#define	LCD_H

#include <xc.h>        /* XC8 General Include File */

#ifndef SYS_FREQ
#define SYS_FREQ        20000000L
#endif

#ifndef FCY
#define FCY             SYS_FREQ/4
#endif

#ifndef _XTAL_FREQ
#define _XTAL_FREQ      SYS_FREQ
#endif

#define lcd_rs          PORTAbits.RA1
#define lcd_rs_tris     TRISAbits.RA1
#define lcd_rw          PORTAbits.RA2
#define lcd_rw_tris     TRISAbits.RA2
#define lcd_e           PORTAbits.RA3
#define lcd_e_tris      TRISAbits.RA3
#define lcd_port        PORTD
#define lcd_port_tris   TRISD

void lcd_init();               
void lcd_test();
void lcd_write(char x);
void lcd_write_cmd(char x);
void lcd_write_buffer(const char buffer[], char size);
void lcd_enable();
void lcd_delay();
void lcd_pos(char linha, char coluna);
void lcd_clear();
void lcd_cursor_off();

#endif	/* LCD_H */

/* Example
void main()
 {
    while(1)
      {
        lcd_init();            //LCD init
        write_web();           //display company's website
        PORTD=0XC0;            //set the 2nd line display address
        lcd_enable();          //LCD display setting.
        write_tel();           //display company's tel number.
      }
 }
 */
