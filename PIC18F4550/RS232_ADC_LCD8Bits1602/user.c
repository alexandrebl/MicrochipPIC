#include <xc.h>         /* XC8 General Include File */
#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */
#include <plib/adc.h>
#include "user.h"
#include "plib/adc.h"
#include "plib/usart.h"


void InitApp(void){
    /* TODO Initialize User Ports/Peripherals/Project here */
    TRISA = 0x00000001; //RA0 Input
    TRISB = 0b00000001; //RB0 Input
    TRISC = 0x00;
    TRISD = 0x00;
    TRISE = 0x00;
    /* Setup analog functionality and port direction */
    ADCON1 = 0x0F; //For Digital
    CMCON = 0x07;
    /* Initialize peripherals */
    PORTA = 0X00;
    PORTB = 0X00; //RB0 Input
    PORTC = 0X00;
    PORTD = 0X00;
    PORTE = 0X00;
    /* Configure the IPEN bit (1=on) in RCON to turn on/off int priorities */
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.RBIP = 1;
    /* Enable interrupts */
    INTCONbits.INT0IF = 0;
    INTCONbits.INT0IE = 1;

    RCONbits.IPEN = 1;
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 0;

    /* ADC Config */
    OpenADC(ADC_FOSC_16 & ADC_RIGHT_JUST & ADC_2_TAD,
            ADC_CH0 & ADC_INT_OFF & ADC_VREFPLUS_VDD & ADC_VREFMINUS_VSS,
            ADC_1ANA);
    SetChanADC(ADC_CH0);
    __delay_ms(1);

    //Com PORT -> 19200bps 8Bit 1Stop / fosc = 48Mhz / BRGH = 155
    TRISCbits.RC6 = 0;
    TRISCbits.RC7 = 1;
    OpenUSART(USART_TX_INT_OFF & USART_RX_INT_OFF & 
            USART_ASYNCH_MODE & USART_EIGHT_BIT & USART_BRGH_HIGH, 155);
}
