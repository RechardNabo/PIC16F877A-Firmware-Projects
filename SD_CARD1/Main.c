#include <htc.h>
#include <pic.h>
#include <stdlib.h>
#include <stdio.h>
#include "LCD_SCREEN.h"
#define _XTAL_FREQ 24000000
#define TRUE 0x01

#define CS TRISDbits.TRISD0
#define DI TRISDbits.TRISD1
#define DO TRISDbits.TRISD2

#define RECEIVE PORTDbits.R1
#define SEND PORTDbits.R2


int main(void){
	CS = 0x00; 
	DI = 0x00;
	DO = 0x01;
	LCD_SETUP_4BIT();
	LCD_INITIALIZE_4BIT();
	while(TRUE){
		LCD_INSTRUCTION_4BIT(0x80);
		LCD_DISPLAY("SD CARD PROJECT");
		__delay_ms(5);
	}
	return EXIT_SUCCESS;
}