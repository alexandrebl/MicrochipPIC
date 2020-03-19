#ifndef SYSTEM_H
#define SYSTEM_H

#define SYS_FREQ        48000000L
#define FCY             SYS_FREQ/4
#define _XTAL_FREQ      SYS_FREQ

void ConfigureOscillator(void); /* Handles clock switching/osc initialization */

#endif