#include "lcd.h"

void lcd_set(char data, bool msb) {
    if(msb == true){
        data = (data & 0xF0) >> 4;
    }else{
        data = data & 0x0F;
    }
    lcd_port_D0 = (data & 0x01);
    lcd_port_D1 = ((data & 0x02) >> 1);
    lcd_port_D2 = ((data & 0x04) >> 2);
    lcd_port_D3 = ((data & 0x08) >> 3);
}

void lcd_init() {
    lcd_rs_tris = 0;
    lcd_rw_tris = 0;
    lcd_e_tris = 0;
    lcd_port_D0_tris = 0;
    lcd_port_D1_tris = 0;
    lcd_port_D2_tris = 0;
    lcd_port_D3_tris = 0;

    __delay_ms(20);
    lcd_write_cmd(0x33);
    lcd_write_cmd(0x32);
    lcd_write_cmd(0x28);
    lcd_write_cmd(0x0F);
    lcd_write_cmd(0x06);
    lcd_write_cmd(0x01);
}

void lcd_test() {
    int ln;
    int pos;
    const char msgTest[ ] = {'T', 'E', 'S', 'T', 'E', 'T', 'E', 'S', 'T', 'E', 'T', 'E', 'S', 'T', 'E', '!'};

    for (ln = 1; ln < 3; ln++) {
        lcd_pos(ln, 1);
        for (pos = 0; pos < 0x10; pos++) //total 16 bytes.
        {
            lcd_write(msgTest[pos]); //search table.
        }
    }
}

void lcd_write(char x) {
    lcd_set(x, true);
    lcd_enable(false);
    lcd_set(x, false);
    lcd_enable(false);
}

void lcd_write_cmd(char x) {
    lcd_set(x, true);
    lcd_enable(true);
    lcd_set(x, false);
    lcd_enable(true);
}

void lcd_write_buffer(const char buffer[], char size) {
    int pos = 0;
    size = (size > 0x10) ? size = 0x10 : size;
    for (pos = 0; pos < size; pos++) //total 16 bytes.
    {
        lcd_write(buffer[pos]); //search table.
    }
}

void lcd_enable(bool iscmd) {
    if(iscmd == true){
        lcd_rs = 0; //is command not data
    }else{
        lcd_rs = 1; //is data not command
    }
    lcd_rw = 0; //is write not read.
    lcd_e = 1; //pull high to build the rising edge
    lcd_delay(); //for a while.
    lcd_e = 0; //pull low enable signal.
    
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

void lcd_cursor_off() {
    lcd_write_cmd(0x0C);
}