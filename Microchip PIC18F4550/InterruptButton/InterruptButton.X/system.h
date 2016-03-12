#define SYS_FREQ        20000000L
#define FCY             SYS_FREQ/4
#define _XTAL_FREQ      SYS_FREQ

void ConfigureOscillator(void); /* Handles clock switching/osc initialization */
