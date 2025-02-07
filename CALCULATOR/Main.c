#include <pic.h>
#include <stdlib.h>
#include "KEYPAD_lib.h"
#include "LCD_SCREEN.h"
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define _4BIT 0x04
#define ADD 0x2B
#define SUB 0x2D
#define DIV 0x2F
#define MUL 0x2A
#define EQL 0x3D

int main(void){
	//unsigned char *string,*value_1,*value_2;
	unsigned int number,tmp,counter,answer,a,i;
	unsigned char data[10];
	counter = 0x00;
	KEYPAD_INIT();
	LCD_SETUP_4BIT();
	LCD_INITIALIZE_4BIT();
	while(TRUE){
		number = KEYPAD_KEYS();
		/*while(number != EQL){
			if(number == EQL){
				for(i = 0x00 ; i < 10 ; i++){
					if(data[i] == ADD){
						for(a = 0 ; a < i ; a++){
							value_1 =  value_1+data[a];
						}
						for(a = i+0x01 ; a < 0x0A ; a++){
							value_2 = value_2+data[a];
						}
						answer = (int)(value_1)+(int)(value_2);		
					}
					if(data[i] == SUB){
						for(a = 0 ; a < i ; a++){
							value_1 =  value_1+data[a];
						}
						for(a = i+0x01 ; a < 0x0A ; a++){
							value_2 = value_2+data[a];
						}
						answer = (int)(value_1)-(int)(value_2);
					}
					if(data[i] == DIV){
						for(a = 0 ; a < i ; a++){
							value_1 =  value_1+data[a];
						}
						for(a = i+0x01 ; a < 0x0A ; a++){
							value_2 = value_2+data[a];
						}
						answer = (int)(value_1)/(int)(value_2);
					}
					if(data[i] == MUL){
						for(a = 0 ; a < i ; a++){
							value_1 =  value_1+data[a];
						}
						for(a = i+0x01 ; a < 0x0A ; a++){
							value_2 = value_2+data[a];
						}
						answer = (int)(value_1)*(int)(value_2);
					}
				}
				break;
			}
			if(number != tmp){
				tmp = number;
				data[counter] = tmp;
				counter-=-0x01;
			}
		}
		string = data;*/
		LCD_INSTRUCTION_4BIT(0x80);
		LCD_DISPLAY("value ");
		if(number == 0x2A||
			number == 0x2B||
			number == 0x2D||
			number == 0x2F||
			number == 0x3D){
				
				LCD_INSTRUCTION_4BIT(0x89);
				LCD_DATA(number,_4BIT);
		}else{
			LCD_INSTRUCTION_4BIT(0x89);
			LCD_DATA(number+0x30,_4BIT);
		}
			
	}
	return EXIT_SUCCESS;
}