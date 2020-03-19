#include "mcc_generated_files/mcc.h"

void SerialRXData(void);

void main(void)
{
    SYSTEM_Initialize();
    
    EUSART1_RxDefaultInterruptHandler = &SerialRXData;

    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    int x = 1;
    while (1)
    {
        
        if(EUSART1_is_tx_ready())
        {
            EUSART1_Write(x++);
        }
        
        if(x == 127) x =0;
        
        LED_RX_Toggle();
        __delay_ms(100);
    }
}

void SerialRXData(void){
    
}