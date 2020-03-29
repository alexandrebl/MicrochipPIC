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
    
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    while (true)
    {
        send("AeT+CWMODE=", 11);
        receive();
        receive();
        receive();
        receive();
    }
}

void send(char *data, char size){    
    for(char index = 0; index < size; index++){
        if(EUSART_is_tx_ready()){
            EUSART_Write(data[index]);
            led1Blink();    
        }
    }
}

void receive(void){
    bool blink = false;


    while(EUSART_is_rx_ready()){
        char rxData = EUSART_Read();

        if(rxData == 'O'){
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
    __delay_ms(30);
    LED1_SetLow();
    __delay_ms(30);
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

