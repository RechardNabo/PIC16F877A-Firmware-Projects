#include <pic.h>
#include <htc.h>
#include <stdlib.h>
#include "Timers_lib.h"
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define LED_EN TRISBbits.TRISB0
#define LED_CNTRL PORTBbits.RB0

int main(void){
	LED_EN = 0x00;
	while(TRUE){
	}
	return EXIT_SUCCESS;
}