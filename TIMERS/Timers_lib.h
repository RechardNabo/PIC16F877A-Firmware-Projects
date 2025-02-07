/*

	tick = (prescalar/(fosc/4))
	tick = (prescalar/(20Mhz/4))
	tick = (prescalar*4)/fosc
	
	
	
*/
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif
#define SBIT_PS2 0x02


void TIMER_INIT(){

}

extern void TIMER_0(){
	/*if(TMR0IF == 0x01){}*/
	TMR0 = 0b101;
	TMR0IF = 0x00;
	OPTION_REG = (1<<SBIT_PS2);
	TMR0 = 0b100;
	TMR0IE = 0x01;
	GIE = 0x01;
	PEIE = 0x01;
}

extern void TIMER_1(){

}

extern void TIMER_2(){


}