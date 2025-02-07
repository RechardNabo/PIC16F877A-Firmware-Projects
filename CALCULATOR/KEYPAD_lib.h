//#include "LCD_SCREEN.h"
#define _XTAL_FREQ 20000000
#define TIME 0x02
#define ADD 0x2B
#define SUB 0x2D
#define DIV 0x2F
#define MUL 0x2A
#define EQL 0x3D

unsigned int number = 0x00;
unsigned char num ;

void KEYPAD_INIT(){
	TRISD = 0b11110000;
}

unsigned int KEYPAD_KEYS(){
	
	PORTD = 0b00000001;
	if(RD4 == 0x01){
		number = 0x07;
	}
	if(RD5  == 0x01){
		number = 0x08;
	}
	if(RD6 == 0x01){
		number = 0x09;
	}
	if(RD7 == 0x01){
		number = DIV;
	}
	__delay_ms(TIME);
	//=================================
	PORTD = 0b00000010;
	if(RD4 == 0x01){
		number = 0x04;
	}
	if(RD5 == 0x01){
		number = 0x05;
	}
	if(RD6 == 0x01){
		number = 0x06;
	}
	if(RD7 == 0x01){
		number = MUL;
	}
	__delay_ms(TIME);
	//============================
	PORTD = 0b00000100;
	if(RD4 == 0x01){
		number = 0x01;
	}
	if(RD5 == 0x01){
		number = 0x02;
	}
	if(RD6 == 0x01){
		number = 0x03;
	}
	if(RD7 == 0x01){
		number = SUB;
	}
	__delay_ms(TIME);
	//============================
	PORTD = 0b00001000;
	if(RD4 == 0x01){
		
	}
	if(RD5 == 0x01){
		number = 0x00;
	}
	if(RD6 == 0x01){
		number = EQL;
	}
	if(RD7 == 0x01){
		number = ADD;
	}
	__delay_ms(TIME);
	return number;
}