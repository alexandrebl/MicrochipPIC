#include "mcc_generated_files/mcc.h"

void main(void)
{
    SYSTEM_Initialize();
    
    
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
        
        LED_TX_Toggle();
        __delay_ms(100);
        
        char data = EUSART1_Read();
        
        if(data == 'A'){
            LED_RX_Toggle();
        }
    }
}
