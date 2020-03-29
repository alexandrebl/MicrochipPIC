#include "mcc_generated_files/mcc.h"

void send(char *data, char size);
void receive(void);

void led1Blink();
void led2Blink();
void led3Blink();
void led4Blink();

void main(void)
{
    SYSTEM_Initialize();

    while (true)
    {
        send("AT\r\n", 6);
        
        receive();
    }
}

void send(char *data, char size){
    if(EUSART_is_tx_ready()){
        EUSART_Write('A');
        led1Blink();
    }
    if(EUSART_is_tx_ready()){
        EUSART_Write('T');
        led1Blink();
    }
    if(EUSART_is_tx_ready()){
        EUSART_Write('\r');
        led1Blink();
    }
    if(EUSART_is_tx_ready()){
        EUSART_Write('\n');
        led1Blink();
    }
}

void receive(void){
    bool blink = false;
    while(EUSART_is_rx_ready()){
        char rxData = EUSART_Read();
        
        if(rxData == 'A'){
            led3Blink();
        }else{        
            led4Blink();
        }        
        blink = true;
    }
    
    if(blink) led2Blink();
}

void led1Blink(){
    LED1_SetHigh();
    __delay_ms(400);
    LED1_SetLow();
    __delay_ms(400);
}

void led2Blink(){
    LED2_SetHigh();
    __delay_ms(200);
    LED2_SetLow();
    __delay_ms(200);
}

void led3Blink(){
    LED3_SetHigh();
    __delay_ms(200);
    LED3_SetLow();
    __delay_ms(200);
}

void led4Blink(){
    LED4_SetHigh();
    __delay_ms(200);
    LED4_SetLow();
    __delay_ms(200);
}
