#include "mcc_generated_files/mcc.h"

void send(const char *data, char size);
void receive(void);
void setup(void);
bool error(void);
void reset(void);

void led1Blink(void);
void led2Blink(void);
void led3Blink(void);
void led4Blink(void);

const char *test = "AT";
const char *resetHw = "AT+RST";

void main(void)
{    
    setup();    
    reset();
    
    while (true)
    {
        send(test, 2);
        
        if(!error()) receive(); else{
            reset();
        }       
    }
}

void reset(void){
    send(resetHw, 6);
    __delay_ms(2000);
}

bool error(void){
    return EUSART_get_last_status().status != 0;
}

void setup(void){
    SYSTEM_Initialize();
    
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    PIN_MANAGER_IOC();
}

void send(const char *data, char size){    
    for(char index =0; index < size; index++){
        if(EUSART_is_tx_ready()){
            EUSART_Write(data[index]);
            while(EUSART_is_tx_done());
        }
    }
        
    if(EUSART_is_tx_ready()){
        EUSART_Write('\r');
        while(EUSART_is_tx_done());
    }
    
    if(EUSART_is_tx_ready()){
        EUSART_Write('\n');
        while(EUSART_is_tx_done());
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

void led1Blink(void){
    LED1_SetHigh();
    __delay_ms(30);
    LED1_SetLow();
    __delay_ms(30);
}

void led2Blink(void){
    LED2_SetHigh();
    __delay_ms(200);
    LED2_SetLow();
    __delay_ms(200);
}

void led3Blink(void){
    LED3_SetHigh();
    __delay_ms(200);
    LED3_SetLow();
    __delay_ms(200);
}

void led4Blink(void){
    LED4_SetHigh();
    __delay_ms(200);
    LED4_SetLow();
    __delay_ms(200);
}

