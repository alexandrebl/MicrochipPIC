#define FOSC    (32000000)
#define FCY     (FOSC/2)

#include <stdio.h>
#include <stdlib.h>
#include <libpic30.h>

#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/pin_manager.h"

/* Configuration flags */
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
_CONFIG2( PLL_96MHZ_ON & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV5 & IOL1WAY_ON)


int main(){
    

    SYSTEM_Initialize();
    
    while(1){
        __delay_ms(1000);
        IO_RD6_Toggle();
    }
    
    return (EXIT_SUCCESS);
}
