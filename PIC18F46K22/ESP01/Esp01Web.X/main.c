#include "mcc_generated_files/mcc.h"

void ledTxBlink(void);
void ledRxBlink(void);

void main(void)
{
    SYSTEM_Initialize();

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    ledRxBlink();

    while (1)
    {
        char *msg = "AT\r\n";
        
        for(char index = 0; index < 6; index++){
            if(EUSART1_is_tx_ready())
            {
                EUSART1_Write(msg[index]);
                while(EUSART1_is_tx_done());
            }
        }
        
        while(EUSART1_is_rx_ready())
        {
           char data = EUSART1_Read();

           if(data == 'O'){
               ledRxBlink();
           }
           
           if(data == 'o'){
               ledRxBlink();
           }
           
           if(data == 'a'){
               ledRxBlink();
           }
           
           if(data == 'T'){
               ledRxBlink();
           }
        }
        ledTxBlink();
    }
}

void ledTxBlink(void){
    LED_TX_SetHigh();
    __delay_ms(200);
    LED_TX_SetLow();
    __delay_ms(200);
}

void ledRxBlink(void){
    LED_RX_SetHigh();
    __delay_ms(1000);
    LED_RX_SetLow();
    __delay_ms(1000);
}
