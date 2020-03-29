#include "mcc_generated_files/mcc.h"

void send(const char *data, char size);
void receive(void);

void led1Blink();
void led2Blink();
void led3Blink();
void led4Blink();

const char *test = "AT";

void main(void)
{    
    SYSTEM_Initialize();
    
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    while (true)
    {
        send(test, 2);
        receive();        
    }
}

void send(const char *data, char size){    
    for(char index =0; index < size; index++){
        if(EUSART_is_tx_ready()){
            EUSART_Write(data[index]);
        }
    }
        
    if(EUSART_is_tx_ready()){
        EUSART_Write('\r');
    }
    
    if(EUSART_is_tx_ready()){
        EUSART_Write('\n');
    }
    __delay_ms(100);
    led1Blink();    
}

void receive(void){
    bool found = false;

    char rxData;
    do{
        rxData = EUSART_Read();
        
        if((found == false) && (rxData == 'O')){         
            found = true;
        }        
        
        if((found) && (rxData == 'K')){
            led2Blink();
            led3Blink();
            led4Blink();
        }

    }while(EUSART_is_rx_ready() && rxData != 'K' && found);
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

