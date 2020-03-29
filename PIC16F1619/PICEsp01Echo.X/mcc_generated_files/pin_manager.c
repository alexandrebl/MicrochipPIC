#include "pin_manager.h"





void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */
    LATA = 0x00;
    LATB = 0x00;
    LATC = 0x00;

    /**
    TRISx registers
    */
    TRISA = 0x11;
    TRISB = 0x70;
    TRISC = 0xDF;

    /**
    ANSELx registers
    */
    ANSELC = 0xCF;
    ANSELB = 0xD0;
    ANSELA = 0x11;

    /**
    WPUx registers
    */
    WPUB = 0x00;
    WPUA = 0x00;
    WPUC = 0x00;
    OPTION_REGbits.nWPUEN = 1;

    /**
    ODx registers
    */
    ODCONA = 0x00;
    ODCONB = 0x00;
    ODCONC = 0x00;

    /**
    SLRCONx registers
    */
    SLRCONA = 0x37;
    SLRCONB = 0xF0;
    SLRCONC = 0xFF;

    /**
    INLVLx registers
    */
    INLVLA = 0x3F;
    INLVLB = 0xF0;
    INLVLC = 0xFF;





   
    
	
    RXPPS = 0x0D;   //RB5->EUSART:RX;    
    RB7PPS = 0x12;   //RB7->EUSART:TX;    
}
  
void PIN_MANAGER_IOC(void)
{   
    LED1_SetLow();
    LED2_SetLow();
    LED3_SetLow();
    LED4_SetLow();
}

/**
 End of File
*/
