/*
 * Created by Alexandre Brandão Lustosa 
 * may/31/2015
 */

/* Libraries*/
#include <stdio.h>
#include <stdlib.h>
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "HardwareProfile.h"
#include <libpic30.h>

//Initialization method definition
void Init();

//Main method
int main() {

    //Initialize
    Init();
    
    //Initialize variable
    int valor = LED_ON;
    
    //Infinity loop
    while(1){
        //Set value
        LED0_IO = valor;
        
        //Verify if led is on
        if(valor == LED_ON){
            //Turn off led
            valor = LED_OFF;
        }else{
            //Turn on led
            valor = LED_ON;
        }
        
        //Wait for one second
        __delay_ms(1000);
    }
    
    //Return success
    return (EXIT_SUCCESS);
}

//Initialization method
void Init(){
    //Define todos os pinos dos LEDs como saída
    LED0_TRIS = OUTPUT;
	LED1_TRIS = OUTPUT;
	LED2_TRIS = OUTPUT;
	LED3_TRIS = OUTPUT;
	LED4_TRIS = OUTPUT;
	LED5_TRIS = OUTPUT;
	LED6_TRIS = OUTPUT;
	LED7_TRIS = OUTPUT;

    //Inicializa os leds como desligados
	LED0_IO   = LED_OFF;	
	LED1_IO   = LED_OFF;
	LED2_IO   = LED_OFF;
	LED3_IO   = LED_OFF;
	LED4_IO   = LED_OFF;
	LED5_IO   = LED_OFF;
	LED6_IO   = LED_OFF;
	LED7_IO   = LED_OFF;
}

