/* Libraries */
#include <xc.h>

/* Verify if already defined */
#ifndef _HARDWAREPROFILE_H_
#define _HARDWAREPROFILE_H_

/* Configuration flags */
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
_CONFIG2( PLL_96MHZ_ON & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV5 & IOL1WAY_ON)
                
/* System clock */        
#define GetSystemClock()        32000000
#define GetPeripheralClock()    GetSystemClock()
#define GetInstructionClock()   (GetSystemClock() / 2)
#define FOSC    GetSystemClock()
#define FCY     (FOSC/2)

/* Constants */
#define LED_ON      0 
#define LED_OFF     1
        
#define INPUT       1
#define OUTPUT      0

/* Port constants */
#define LED0_TRIS			(TRISBbits.TRISB9)	// Ref D2
#define LED0_IO				(LATBbits.LATB9)	
#define LED1_TRIS			(TRISBbits.TRISB8)	// Ref D3
#define LED1_IO				(LATBbits.LATB8)	
#define LED2_TRIS			(TRISFbits.TRISF3)	// Ref D4
#define LED2_IO				(LATFbits.LATF3)
#define LED3_TRIS			(TRISBbits.TRISB14)	// Ref D5
#define LED3_IO				(LATBbits.LATB14)
#define LED4_TRIS			(TRISFbits.TRISF1)	// Ref D6
#define LED4_IO				(LATFbits.LATF1)
#define LED5_TRIS			(TRISFbits.TRISF0)	// Ref D7
#define LED5_IO				(LATFbits.LATF0)
#define LED6_TRIS			(TRISDbits.TRISD7)	// Ref D8
#define LED6_IO				(LATDbits.LATD7)
#define LED7_TRIS			(TRISDbits.TRISD6)	// Ref D9	
#define LED7_IO				(LATDbits.LATD6)
        
#endif