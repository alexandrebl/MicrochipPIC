#ifndef SYS_FREQ
#define SYS_FREQ        20000000L
#endif

#ifndef FCY
#define FCY             SYS_FREQ/4
#endif

#ifndef _XTAL_FREQ
#define _XTAL_FREQ      SYS_FREQ
#endif

void ConfigureOscillator(void); /* Handles clock switching/osc initialization */
