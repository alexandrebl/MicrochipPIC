#include "lcd.h"

void lcd_init() {
    lcd_rs_tris = 0;
    lcd_rw_tris = 0;
    lcd_e_tris = 0;
    lcd_port_tris = 0X00; //d port as output.

    __delay_ms(20);
    lcd_port = 0X1; //clr screen
    lcd_enable();
    lcd_port = 0X38; //8 bits 2 lines 5*7 mode.
    lcd_enable();
    lcd_port = 0X0e; //display on,culcd_rsor on,blink on.
    lcd_enable();
    lcd_port = 0X06; //character not move,culcd_rsor rotate right.
    lcd_enable();
    lcd_port = 0X80; //¡°WWW.PIC16.COM"
    lcd_enable();
}

void lcd_test() {
    int ln;
    int pos;
    const char msgTest[ ] = {'T', 'E', 'S', 'T', 'E', 'T', 'E', 'S', 'T', 'E', 'T', 'E', 'S', 'T', 'E', '.'};

    for (ln = 1; ln < 3; ln++) {
        lcd_pos(ln, 1);
        for (pos = 0; pos < 0x10; pos++) //total 16 bytes.
        {
            lcd_write(msgTest[pos]); //search table.
        }
    }
}

void lcd_write(char x) {
    lcd_port = x; //data send to lcd_port
    lcd_rs = 1; //is data not command.
    lcd_rw = 0; //is write not read.
    lcd_e = 0; //pull low enable signal.
    lcd_delay(); //for a while.
    lcd_e = 1; //pull high to build the rising edge.
}

void lcd_write_cmd(char x) {
    lcd_port = x; //data send to lcd_port
    lcd_rs = 0; //is data not command.
    lcd_rw = 0; //is write not read.
    lcd_e = 0; //pull low enable signal.
    lcd_delay(); //for a while.
    lcd_e = 1; //pull high to build the rising edge.
}

void lcd_write_buffer(const char buffer[], char size) {
    int pos = 0;
    size = (size > 0x10) ? size = 0x10 : size;
    for (pos = 0; pos < size; pos++) //total 16 bytes.
    {
        lcd_write(buffer[pos]); //search table.
    }
}

void lcd_enable() {
    lcd_rs = 0; //is command not data
    lcd_rw = 0; //is write not read.
    lcd_e = 0; //pull low enable signal.
    lcd_delay(); //for a while.
    lcd_e = 1; //pull high to build the rising edge
}

void lcd_pos(char linha, char coluna) {
    //Define linha
    if (linha <= 1) {
        linha = 0x80;
    } else {
        if (linha >= 2) {
            linha = 0xC0;
        }
    }
    //Define posição = linha + coluna
    if ((coluna > 1) && (coluna <= 16)) linha += coluna;
    lcd_write_cmd(linha);
}

void lcd_delay() {
    __delay_ms(2);
}

void lcd_clear() {
    lcd_write_cmd(0x01);
}

void lcd_cursor_off(){
    lcd_write_cmd(0x0C);
}