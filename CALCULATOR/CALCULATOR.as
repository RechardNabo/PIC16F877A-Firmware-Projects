opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_KEYPAD_INIT
	FNCALL	_main,_LCD_SETUP_4BIT
	FNCALL	_main,_LCD_INITIALIZE_4BIT
	FNCALL	_main,_KEYPAD_KEYS
	FNCALL	_main,_LCD_INSTRUCTION_4BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_main,_LCD_DATA
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_4BIT,_LCD_INSTRUCTION_4BIT
	FNROOT	_main
	global	_number
	global	_num
	global	_PORTD
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TRISD
_TRISD	set	136
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"CALCULATOR.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_number:
       ds      2

_num:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_KEYPAD_INIT
?_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	??_KEYPAD_INIT
??_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	?_LCD_SETUP_4BIT
?_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_SETUP_4BIT
??_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DATA
?_LCD_DATA:	; 0 bytes @ 0x0
	global	?_LCD_INSTRUCTION_4BIT
?_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_INSTRUCTION_4BIT
??_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INITIALIZE_4BIT
?_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DISPLAY
?_LCD_DISPLAY:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_KEYPAD_KEYS
?_KEYPAD_KEYS:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_KEYPAD_KEYS
??_KEYPAD_KEYS:	; 0 bytes @ 0x2
	global	??_LCD_DATA
??_LCD_DATA:	; 0 bytes @ 0x2
	ds	3
	global	??_LCD_INITIALIZE_4BIT
??_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x5
	ds	3
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	1
	global	??_LCD_DISPLAY
??_LCD_DISPLAY:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
	global	main@counter
main@counter:	; 2 bytes @ 0xA
	ds	2
	global	main@number
main@number:	; 2 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	LCD_INSTRUCTION_4BIT@instruction
LCD_INSTRUCTION_4BIT@instruction:	; 1 bytes @ 0x0
	global	LCD_DATA@_8bit_
LCD_DATA@_8bit_:	; 16 bytes @ 0x0
	ds	1
	global	LCD_INSTRUCTION_4BIT@_4bit_
LCD_INSTRUCTION_4BIT@_4bit_:	; 8 bytes @ 0x1
	ds	8
	global	LCD_INSTRUCTION_4BIT@data
LCD_INSTRUCTION_4BIT@data:	; 1 bytes @ 0x9
	ds	1
	global	LCD_INSTRUCTION_4BIT@x
LCD_INSTRUCTION_4BIT@x:	; 2 bytes @ 0xA
	ds	2
	global	LCD_INSTRUCTION_4BIT@x_1256
LCD_INSTRUCTION_4BIT@x_1256:	; 2 bytes @ 0xC
	ds	4
	global	LCD_DATA@_4bit_
LCD_DATA@_4bit_:	; 8 bytes @ 0x10
	ds	8
	global	LCD_DATA@data
LCD_DATA@data:	; 1 bytes @ 0x18
	ds	1
	global	LCD_DATA@_data
LCD_DATA@_data:	; 1 bytes @ 0x19
	ds	1
	global	LCD_DATA@x
LCD_DATA@x:	; 2 bytes @ 0x1A
	ds	2
	global	LCD_DATA@x_1249
LCD_DATA@x_1249:	; 2 bytes @ 0x1C
	ds	2
	global	LCD_DATA@v
LCD_DATA@v:	; 2 bytes @ 0x1E
	ds	2
	global	LCD_DISPLAY@length
LCD_DISPLAY@length:	; 2 bytes @ 0x20
	ds	2
	global	LCD_DISPLAY@string
LCD_DISPLAY@string:	; 1 bytes @ 0x22
	ds	1
	global	LCD_DISPLAY@x
LCD_DISPLAY@x:	; 2 bytes @ 0x23
	ds	2
;;Data sizes: Strings 7, constant 0, data 0, bss 3, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     37      40
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strlen	unsigned int  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; ?_KEYPAD_KEYS	unsigned int  size(1) Largest target is 0
;;
;; strlen@s	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; strlen@cp	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; LCD_DISPLAY@string	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _LCD_DISPLAY->_strlen
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCD_DISPLAY
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                22    22      0    3442
;;                                             10 COMMON     4     4      0
;;                        _KEYPAD_INIT
;;                     _LCD_SETUP_4BIT
;;                _LCD_INITIALIZE_4BIT
;;                        _KEYPAD_KEYS
;;               _LCD_INSTRUCTION_4BIT
;;                        _LCD_DISPLAY
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DISPLAY                                          5     5      0    1177
;;                                             32 BANK0      5     5      0
;;                             _strlen
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INITIALIZE_4BIT                                  0     0      0     567
;;               _LCD_INSTRUCTION_4BIT
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INSTRUCTION_4BIT                                19    19      0     567
;;                                              0 COMMON     5     5      0
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DATA                                            39    37      2     975
;;                                              0 COMMON     7     5      2
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_KEYS                                          4     2      2       0
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_4BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_INIT                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _KEYPAD_INIT
;;   _LCD_SETUP_4BIT
;;   _LCD_INITIALIZE_4BIT
;;     _LCD_INSTRUCTION_4BIT
;;   _KEYPAD_KEYS
;;   _LCD_INSTRUCTION_4BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;   _LCD_DATA
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      36       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     25      28       5       50.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      39      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           10    0        unsigned char [10]
;;  number          2   12[COMMON] unsigned int 
;;  counter         2   10[COMMON] unsigned int 
;;  i               2    0        unsigned int 
;;  a               2    0        unsigned int 
;;  answer          2    0        unsigned int 
;;  tmp             2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  2  755[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KEYPAD_INIT
;;		_LCD_SETUP_4BIT
;;		_LCD_INITIALIZE_4BIT
;;		_KEYPAD_KEYS
;;		_LCD_INSTRUCTION_4BIT
;;		_LCD_DISPLAY
;;		_LCD_DATA
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\Main.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l3084:	
;Main.c: 16: unsigned int number,tmp,counter,answer,a,i;
;Main.c: 17: unsigned char data[10];
;Main.c: 18: counter = 0x00;
	clrf	(main@counter)
	clrf	(main@counter+1)
	line	19
	
l3086:	
;Main.c: 19: KEYPAD_INIT();
	fcall	_KEYPAD_INIT
	line	20
	
l3088:	
;Main.c: 20: LCD_SETUP_4BIT();
	fcall	_LCD_SETUP_4BIT
	line	21
	
l3090:	
;Main.c: 21: LCD_INITIALIZE_4BIT();
	fcall	_LCD_INITIALIZE_4BIT
	goto	l3092
	line	22
;Main.c: 22: while(0x01){
	
l756:	
	line	23
	
l3092:	
;Main.c: 23: number = KEYPAD_KEYS();
	fcall	_KEYPAD_KEYS
	movf	(1+(?_KEYPAD_KEYS)),w
	clrf	(main@number+1)
	addwf	(main@number+1)
	movf	(0+(?_KEYPAD_KEYS)),w
	clrf	(main@number)
	addwf	(main@number)

	line	73
	
l3094:	
;Main.c: 73: LCD_INSTRUCTION_4BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	74
	
l3096:	
;Main.c: 74: LCD_DISPLAY("value ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	79
	
l3098:	
;Main.c: 75: if(number == 0x2A||
;Main.c: 76: number == 0x2B||
;Main.c: 77: number == 0x2D||
;Main.c: 78: number == 0x2F||
;Main.c: 79: number == 0x3D){
	movlw	02Ah
	xorwf	(main@number),w
	iorwf	(main@number+1),w
	skipnz
	goto	u4251
	goto	u4250
u4251:
	goto	l3108
u4250:
	
l3100:	
	movlw	02Bh
	xorwf	(main@number),w
	iorwf	(main@number+1),w
	skipnz
	goto	u4261
	goto	u4260
u4261:
	goto	l3108
u4260:
	
l3102:	
	movlw	02Dh
	xorwf	(main@number),w
	iorwf	(main@number+1),w
	skipnz
	goto	u4271
	goto	u4270
u4271:
	goto	l3108
u4270:
	
l3104:	
	movlw	02Fh
	xorwf	(main@number),w
	iorwf	(main@number+1),w
	skipnz
	goto	u4281
	goto	u4280
u4281:
	goto	l3108
u4280:
	
l3106:	
	movlw	03Dh
	xorwf	(main@number),w
	iorwf	(main@number+1),w
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l3110
u4290:
	goto	l3108
	
l759:	
	line	81
	
l3108:	
;Main.c: 81: LCD_INSTRUCTION_4BIT(0x89);
	movlw	(089h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	82
;Main.c: 82: LCD_DATA(number,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movf	(main@number),w
	fcall	_LCD_DATA
	line	83
;Main.c: 83: }else{
	goto	l3092
	
l757:	
	line	84
	
l3110:	
;Main.c: 84: LCD_INSTRUCTION_4BIT(0x89);
	movlw	(089h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	85
;Main.c: 85: LCD_DATA(number+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movf	(main@number),w
	addlw	030h
	fcall	_LCD_DATA
	goto	l3092
	line	86
	
l760:	
	goto	l3092
	line	88
	
l761:	
	line	22
	goto	l3092
	
l762:	
	line	90
;Main.c: 86: }
;Main.c: 88: }
;Main.c: 89: return 0;
;	Return value of _main is never used
	
l763:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_LCD_DISPLAY
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  string          1   34[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(7), 
;;  x               2   35[BANK0 ] unsigned int 
;;  length          2   32[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_strlen
;;		_LCD_DATA
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text238
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
	line	181
	global	__size_of_LCD_DISPLAY
	__size_of_LCD_DISPLAY	equ	__end_of_LCD_DISPLAY-_LCD_DISPLAY
	
_LCD_DISPLAY:	
	opt	stack 5
; Regs used in _LCD_DISPLAY: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCD_DISPLAY@string stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DISPLAY@string)
	line	182
	
l3074:	
;LCD_SCREEN.h: 182: unsigned int length = strlen(string);
	movf	(LCD_DISPLAY@string),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_DISPLAY@length+1)
	addwf	(LCD_DISPLAY@length+1)
	movf	(0+(?_strlen)),w
	clrf	(LCD_DISPLAY@length)
	addwf	(LCD_DISPLAY@length)

	line	184
	
l3076:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l3082
	
l751:	
	line	185
	
l3078:	
;LCD_SCREEN.h: 185: LCD_DATA(string[x],0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movf	(LCD_DISPLAY@x),w
	addwf	(LCD_DISPLAY@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DATA
	line	184
	
l3080:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l3082
	
l750:	
	
l3082:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u4245
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u4245:
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l3078
u4240:
	goto	l753
	
l752:	
	line	187
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_4BIT
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _LCD_INITIALIZE_4BIT *****************
;; Defined at:
;;		line 165 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_INSTRUCTION_4BIT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text239
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
	line	165
	global	__size_of_LCD_INITIALIZE_4BIT
	__size_of_LCD_INITIALIZE_4BIT	equ	__end_of_LCD_INITIALIZE_4BIT-_LCD_INITIALIZE_4BIT
	
_LCD_INITIALIZE_4BIT:	
	opt	stack 6
; Regs used in _LCD_INITIALIZE_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l3072:	
;LCD_SCREEN.h: 166: LCD_INSTRUCTION_4BIT(0x02);
	movlw	(02h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	167
;LCD_SCREEN.h: 167: LCD_INSTRUCTION_4BIT(0x28);
	movlw	(028h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	168
;LCD_SCREEN.h: 168: LCD_INSTRUCTION_4BIT(0x0c);
	movlw	(0Ch)
	fcall	_LCD_INSTRUCTION_4BIT
	line	169
;LCD_SCREEN.h: 169: LCD_INSTRUCTION_4BIT(0x06);
	movlw	(06h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	170
;LCD_SCREEN.h: 170: LCD_INSTRUCTION_4BIT(0x01);
	movlw	(01h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	172
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_4BIT
	__end_of_LCD_INITIALIZE_4BIT:
;; =============== function _LCD_INITIALIZE_4BIT ends ============

	signat	_LCD_INITIALIZE_4BIT,88
	global	_LCD_INSTRUCTION_4BIT
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

;; *************** function _LCD_INSTRUCTION_4BIT *****************
;; Defined at:
;;		line 110 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  instruction     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  instruction     1    0[BANK0 ] unsigned char 
;;  x               2   12[BANK0 ] int 
;;  x               2   10[BANK0 ] int 
;;  _4bit_          8    1[BANK0 ] int [4]
;;  data            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5      14       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INITIALIZE_4BIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text240
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
	line	110
	global	__size_of_LCD_INSTRUCTION_4BIT
	__size_of_LCD_INSTRUCTION_4BIT	equ	__end_of_LCD_INSTRUCTION_4BIT-_LCD_INSTRUCTION_4BIT
	
_LCD_INSTRUCTION_4BIT:	
	opt	stack 7
; Regs used in _LCD_INSTRUCTION_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_INSTRUCTION_4BIT@instruction stored from wreg
	line	112
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_INSTRUCTION_4BIT@instruction)
	
l3036:	
;LCD_SCREEN.h: 111: int _4bit_[0x04];
;LCD_SCREEN.h: 112: unsigned char data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	113
	
l3038:	
;LCD_SCREEN.h: 113: data = data>>0x04;
	movf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movlw	04h
u3995:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
	addlw	-1
	skipz
	goto	u3995
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	movf	(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	114
	
l3040:	
;LCD_SCREEN.h: 114: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x)
	clrf	(LCD_INSTRUCTION_4BIT@x+1)
	
l3042:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4005
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4005:

	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l3046
u4000:
	goto	l733
	
l3044:	
	goto	l733
	
l732:	
	line	115
	
l3046:	
;LCD_SCREEN.h: 115: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4014
u4015:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4014:
	addlw	-1
	skipz
	goto	u4015
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4024
u4025:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4024:
	addlw	-1
	skipz
	goto	u4025
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x),w
	movwf	(??_LCD_INSTRUCTION_4BIT+4)+0
	addwf	(??_LCD_INSTRUCTION_4BIT+4)+0,w
	addlw	LCD_INSTRUCTION_4BIT@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	movwf	indf
	line	114
	
l3048:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x+1),f
	
l3050:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4035
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4035:

	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l3046
u4030:
	
l733:	
	line	117
;LCD_SCREEN.h: 116: }
;LCD_SCREEN.h: 117: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4041
	goto	u4040
	
u4041:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4054
u4040:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4054:
	line	118
;LCD_SCREEN.h: 118: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4061
	goto	u4060
	
u4061:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4074
u4060:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4074:
	line	119
;LCD_SCREEN.h: 119: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4081
	goto	u4080
	
u4081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4094
u4080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4094:
	line	120
;LCD_SCREEN.h: 120: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4101
	goto	u4100
	
u4101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4114
u4100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4114:
	line	121
;LCD_SCREEN.h: 121: RB1 = 0x00;
	bcf	(49/8),(49)&7
	line	122
;LCD_SCREEN.h: 122: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	123
;LCD_SCREEN.h: 123: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	124
	
l3052:	
;LCD_SCREEN.h: 124: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u4307:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u4307
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u4307
	nop2
opt asmopt_on

	line	125
	
l3054:	
;LCD_SCREEN.h: 125: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	127
;LCD_SCREEN.h: 127: data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	128
	
l3056:	
;LCD_SCREEN.h: 128: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x_1256)
	clrf	(LCD_INSTRUCTION_4BIT@x_1256+1)
	
l3058:	
	movf	(LCD_INSTRUCTION_4BIT@x_1256+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4125
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1256),w
u4125:

	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l3062
u4120:
	goto	l735
	
l3060:	
	goto	l735
	
l734:	
	line	129
	
l3062:	
;LCD_SCREEN.h: 129: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x_1256),w
	goto	u4134
u4135:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4134:
	addlw	-1
	skipz
	goto	u4135
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1256),w
	goto	u4144
u4145:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4144:
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x_1256),w
	movwf	(??_LCD_INSTRUCTION_4BIT+4)+0
	addwf	(??_LCD_INSTRUCTION_4BIT+4)+0,w
	addlw	LCD_INSTRUCTION_4BIT@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	movwf	indf
	line	128
	
l3064:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1256),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x_1256+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1256+1),f
	
l3066:	
	movf	(LCD_INSTRUCTION_4BIT@x_1256+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4155
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1256),w
u4155:

	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l3062
u4150:
	
l735:	
	line	131
;LCD_SCREEN.h: 130: }
;LCD_SCREEN.h: 131: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4161
	goto	u4160
	
u4161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4174
u4160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4174:
	line	132
;LCD_SCREEN.h: 132: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4181
	goto	u4180
	
u4181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4194
u4180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4194:
	line	133
;LCD_SCREEN.h: 133: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4201
	goto	u4200
	
u4201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4214
u4200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4214:
	line	134
;LCD_SCREEN.h: 134: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4221
	goto	u4220
	
u4221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4234
u4220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4234:
	line	135
;LCD_SCREEN.h: 135: RB1 = 0x00;
	bcf	(49/8),(49)&7
	line	136
;LCD_SCREEN.h: 136: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	137
;LCD_SCREEN.h: 137: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	138
	
l3068:	
;LCD_SCREEN.h: 138: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u4317:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u4317
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u4317
	nop2
opt asmopt_on

	line	139
	
l3070:	
;LCD_SCREEN.h: 139: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	141
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_4BIT
	__end_of_LCD_INSTRUCTION_4BIT:
;; =============== function _LCD_INSTRUCTION_4BIT ends ============

	signat	_LCD_INSTRUCTION_4BIT,4216
	global	_LCD_DATA
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  mode            2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  data            1   24[BANK0 ] unsigned char 
;;  v               2   30[BANK0 ] int 
;;  x               2   28[BANK0 ] int 
;;  x               2   26[BANK0 ] int 
;;  _8bit_         16    0[BANK0 ] int [8]
;;  _4bit_          8   16[BANK0 ] int [4]
;;  _data           1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      32       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         7      32       0       0       0
;;Total ram usage:       39 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text241
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
	line	55
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:	
	opt	stack 7
; Regs used in _LCD_DATA: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_DATA@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DATA@data)
	line	56
	
l2982:	
;LCD_SCREEN.h: 56: unsigned char _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	59
;LCD_SCREEN.h: 57: int _4bit_[0x04];
;LCD_SCREEN.h: 58: int _8bit_[0x08];
;LCD_SCREEN.h: 59: if(mode == 0x04){
	movlw	04h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l721
u3520:
	line	60
	
l2984:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u3535:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u3535
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l2986:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l2988:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3545
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3545:

	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l2992
u3540:
	goto	l723
	
l2990:	
	goto	l723
	
l722:	
	line	62
	
l2992:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x),w
	goto	u3554
u3555:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3554:
	addlw	-1
	skipz
	goto	u3555
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u3564
u3565:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3564:
	addlw	-1
	skipz
	goto	u3565
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	61
	
l2994:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l2996:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3575
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3575:

	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l2992
u3570:
	
l723:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3581
	goto	u3580
	
u3581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3594
u3580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3594:
	line	65
;LCD_SCREEN.h: 65: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3601
	goto	u3600
	
u3601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3614
u3600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3614:
	line	66
;LCD_SCREEN.h: 66: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3621
	goto	u3620
	
u3621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3634
u3620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3634:
	line	67
;LCD_SCREEN.h: 67: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3641
	goto	u3640
	
u3641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3654
u3640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3654:
	line	68
;LCD_SCREEN.h: 68: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	69
;LCD_SCREEN.h: 69: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	70
;LCD_SCREEN.h: 70: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	71
	
l2998:	
;LCD_SCREEN.h: 71: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u4327:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4327
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4327
	nop2
opt asmopt_on

	line	72
	
l3000:	
;LCD_SCREEN.h: 72: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	74
;LCD_SCREEN.h: 74: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	75
	
l3002:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1249)
	clrf	(LCD_DATA@x_1249+1)
	
l3004:	
	movf	(LCD_DATA@x_1249+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3665
	movlw	low(04h)
	subwf	(LCD_DATA@x_1249),w
u3665:

	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l3008
u3660:
	goto	l725
	
l3006:	
	goto	l725
	
l724:	
	line	76
	
l3008:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x_1249),w
	goto	u3674
u3675:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3674:
	addlw	-1
	skipz
	goto	u3675
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1249),w
	goto	u3684
u3685:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3684:
	addlw	-1
	skipz
	goto	u3685
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1249),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	75
	
l3010:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1249),f
	skipnc
	incf	(LCD_DATA@x_1249+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1249+1),f
	
l3012:	
	movf	(LCD_DATA@x_1249+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3695
	movlw	low(04h)
	subwf	(LCD_DATA@x_1249),w
u3695:

	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3008
u3690:
	
l725:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3701
	goto	u3700
	
u3701:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3714
u3700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3714:
	line	79
;LCD_SCREEN.h: 79: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3721
	goto	u3720
	
u3721:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3734
u3720:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3734:
	line	80
;LCD_SCREEN.h: 80: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3741
	goto	u3740
	
u3741:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3754
u3740:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3754:
	line	81
;LCD_SCREEN.h: 81: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3761
	goto	u3760
	
u3761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3774
u3760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3774:
	line	82
;LCD_SCREEN.h: 82: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	83
;LCD_SCREEN.h: 83: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	84
;LCD_SCREEN.h: 84: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	85
	
l3014:	
;LCD_SCREEN.h: 85: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u4337:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4337
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4337
	nop2
opt asmopt_on

	line	86
	
l3016:	
;LCD_SCREEN.h: 86: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	88
	
l721:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l729
u3780:
	line	90
	
l3018:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l3020:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l3022:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3795
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3795:

	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3026
u3790:
	goto	l728
	
l3024:	
	goto	l728
	
l727:	
	line	92
	
l3026:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@v),w
	goto	u3804
u3805:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3804:
	addlw	-1
	skipz
	goto	u3805
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u3814
u3815:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3814:
	addlw	-1
	skipz
	goto	u3815
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@v),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_8bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	91
	
l3028:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l3030:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3825:

	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l3026
u3820:
	
l728:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u3844:
	line	95
;LCD_SCREEN.h: 95: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u3851
	goto	u3850
	
u3851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u3864
u3850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u3864:
	line	96
;LCD_SCREEN.h: 96: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u3871
	goto	u3870
	
u3871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u3884
u3870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u3884:
	line	97
;LCD_SCREEN.h: 97: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u3891
	goto	u3890
	
u3891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u3904
u3890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u3904:
	line	98
;LCD_SCREEN.h: 98: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u3911
	goto	u3910
	
u3911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3924
u3910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3924:
	line	99
;LCD_SCREEN.h: 99: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u3931
	goto	u3930
	
u3931:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3944
u3930:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3944:
	line	100
;LCD_SCREEN.h: 100: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u3951
	goto	u3950
	
u3951:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3964
u3950:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3964:
	line	101
;LCD_SCREEN.h: 101: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u3971
	goto	u3970
	
u3971:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3984
u3970:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3984:
	line	102
;LCD_SCREEN.h: 102: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	103
;LCD_SCREEN.h: 103: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	104
;LCD_SCREEN.h: 104: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	105
	
l3032:	
;LCD_SCREEN.h: 105: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	118
movwf	((??_LCD_DATA+0)+0),f
u4347:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4347
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4347
	clrwdt
opt asmopt_on

	line	106
	
l3034:	
;LCD_SCREEN.h: 106: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	goto	l729
	line	107
	
l726:	
	line	108
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	_KEYPAD_KEYS
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _KEYPAD_KEYS *****************
;; Defined at:
;;		line 17 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\KEYPAD_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text242
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\KEYPAD_lib.h"
	line	17
	global	__size_of_KEYPAD_KEYS
	__size_of_KEYPAD_KEYS	equ	__end_of_KEYPAD_KEYS-_KEYPAD_KEYS
	
_KEYPAD_KEYS:	
	opt	stack 7
; Regs used in _KEYPAD_KEYS: [wreg+status,2+status,0]
	line	19
	
l2916:	
;KEYPAD_lib.h: 19: PORTD = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
l2918:	
;KEYPAD_lib.h: 20: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2922
u3370:
	line	21
	
l2920:	
;KEYPAD_lib.h: 21: number = 0x07;
	movlw	low(07h)
	movwf	(_number)
	movlw	high(07h)
	movwf	((_number))+1
	goto	l2922
	line	22
	
l696:	
	line	23
	
l2922:	
;KEYPAD_lib.h: 22: }
;KEYPAD_lib.h: 23: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2926
u3380:
	line	24
	
l2924:	
;KEYPAD_lib.h: 24: number = 0x08;
	movlw	low(08h)
	movwf	(_number)
	movlw	high(08h)
	movwf	((_number))+1
	goto	l2926
	line	25
	
l697:	
	line	26
	
l2926:	
;KEYPAD_lib.h: 25: }
;KEYPAD_lib.h: 26: if(RD6 == 0x01){
	btfss	(70/8),(70)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l2930
u3390:
	line	27
	
l2928:	
;KEYPAD_lib.h: 27: number = 0x09;
	movlw	low(09h)
	movwf	(_number)
	movlw	high(09h)
	movwf	((_number))+1
	goto	l2930
	line	28
	
l698:	
	line	29
	
l2930:	
;KEYPAD_lib.h: 28: }
;KEYPAD_lib.h: 29: if(RD7 == 0x01){
	btfss	(71/8),(71)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l699
u3400:
	line	30
	
l2932:	
;KEYPAD_lib.h: 30: number = 0x2F;
	movlw	low(02Fh)
	movwf	(_number)
	movlw	high(02Fh)
	movwf	((_number))+1
	line	31
	
l699:	
	line	32
;KEYPAD_lib.h: 31: }
;KEYPAD_lib.h: 32: _delay((unsigned long)((0x02)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4357:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4357
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4357
	nop2
opt asmopt_on

	line	34
;KEYPAD_lib.h: 34: PORTD = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	35
	
l2934:	
;KEYPAD_lib.h: 35: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l2938
u3410:
	line	36
	
l2936:	
;KEYPAD_lib.h: 36: number = 0x04;
	movlw	low(04h)
	movwf	(_number)
	movlw	high(04h)
	movwf	((_number))+1
	goto	l2938
	line	37
	
l700:	
	line	38
	
l2938:	
;KEYPAD_lib.h: 37: }
;KEYPAD_lib.h: 38: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l2942
u3420:
	line	39
	
l2940:	
;KEYPAD_lib.h: 39: number = 0x05;
	movlw	low(05h)
	movwf	(_number)
	movlw	high(05h)
	movwf	((_number))+1
	goto	l2942
	line	40
	
l701:	
	line	41
	
l2942:	
;KEYPAD_lib.h: 40: }
;KEYPAD_lib.h: 41: if(RD6 == 0x01){
	btfss	(70/8),(70)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l2946
u3430:
	line	42
	
l2944:	
;KEYPAD_lib.h: 42: number = 0x06;
	movlw	low(06h)
	movwf	(_number)
	movlw	high(06h)
	movwf	((_number))+1
	goto	l2946
	line	43
	
l702:	
	line	44
	
l2946:	
;KEYPAD_lib.h: 43: }
;KEYPAD_lib.h: 44: if(RD7 == 0x01){
	btfss	(71/8),(71)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l703
u3440:
	line	45
	
l2948:	
;KEYPAD_lib.h: 45: number = 0x2A;
	movlw	low(02Ah)
	movwf	(_number)
	movlw	high(02Ah)
	movwf	((_number))+1
	line	46
	
l703:	
	line	47
;KEYPAD_lib.h: 46: }
;KEYPAD_lib.h: 47: _delay((unsigned long)((0x02)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4367:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4367
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4367
	nop2
opt asmopt_on

	line	49
;KEYPAD_lib.h: 49: PORTD = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	50
	
l2950:	
;KEYPAD_lib.h: 50: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l2954
u3450:
	line	51
	
l2952:	
;KEYPAD_lib.h: 51: number = 0x01;
	movlw	low(01h)
	movwf	(_number)
	movlw	high(01h)
	movwf	((_number))+1
	goto	l2954
	line	52
	
l704:	
	line	53
	
l2954:	
;KEYPAD_lib.h: 52: }
;KEYPAD_lib.h: 53: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2958
u3460:
	line	54
	
l2956:	
;KEYPAD_lib.h: 54: number = 0x02;
	movlw	low(02h)
	movwf	(_number)
	movlw	high(02h)
	movwf	((_number))+1
	goto	l2958
	line	55
	
l705:	
	line	56
	
l2958:	
;KEYPAD_lib.h: 55: }
;KEYPAD_lib.h: 56: if(RD6 == 0x01){
	btfss	(70/8),(70)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l2962
u3470:
	line	57
	
l2960:	
;KEYPAD_lib.h: 57: number = 0x03;
	movlw	low(03h)
	movwf	(_number)
	movlw	high(03h)
	movwf	((_number))+1
	goto	l2962
	line	58
	
l706:	
	line	59
	
l2962:	
;KEYPAD_lib.h: 58: }
;KEYPAD_lib.h: 59: if(RD7 == 0x01){
	btfss	(71/8),(71)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l707
u3480:
	line	60
	
l2964:	
;KEYPAD_lib.h: 60: number = 0x2D;
	movlw	low(02Dh)
	movwf	(_number)
	movlw	high(02Dh)
	movwf	((_number))+1
	line	61
	
l707:	
	line	62
;KEYPAD_lib.h: 61: }
;KEYPAD_lib.h: 62: _delay((unsigned long)((0x02)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4377:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4377
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4377
	nop2
opt asmopt_on

	line	64
;KEYPAD_lib.h: 64: PORTD = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	65
	
l2966:	
;KEYPAD_lib.h: 65: if(RD4 == 0x01){
	line	67
	
l708:	
	line	68
;KEYPAD_lib.h: 67: }
;KEYPAD_lib.h: 68: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l2970
u3490:
	line	69
	
l2968:	
;KEYPAD_lib.h: 69: number = 0x00;
	clrf	(_number)
	clrf	(_number+1)
	goto	l2970
	line	70
	
l709:	
	line	71
	
l2970:	
;KEYPAD_lib.h: 70: }
;KEYPAD_lib.h: 71: if(RD6 == 0x01){
	btfss	(70/8),(70)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2974
u3500:
	line	72
	
l2972:	
;KEYPAD_lib.h: 72: number = 0x3D;
	movlw	low(03Dh)
	movwf	(_number)
	movlw	high(03Dh)
	movwf	((_number))+1
	goto	l2974
	line	73
	
l710:	
	line	74
	
l2974:	
;KEYPAD_lib.h: 73: }
;KEYPAD_lib.h: 74: if(RD7 == 0x01){
	btfss	(71/8),(71)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l711
u3510:
	line	75
	
l2976:	
;KEYPAD_lib.h: 75: number = 0x2B;
	movlw	low(02Bh)
	movwf	(_number)
	movlw	high(02Bh)
	movwf	((_number))+1
	line	76
	
l711:	
	line	77
;KEYPAD_lib.h: 76: }
;KEYPAD_lib.h: 77: _delay((unsigned long)((0x02)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4387:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4387
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4387
	nop2
opt asmopt_on

	line	78
	
l2978:	
;KEYPAD_lib.h: 78: return number;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_number+1),w
	clrf	(?_KEYPAD_KEYS+1)
	addwf	(?_KEYPAD_KEYS+1)
	movf	(_number),w
	clrf	(?_KEYPAD_KEYS)
	addwf	(?_KEYPAD_KEYS)

	goto	l712
	
l2980:	
	line	79
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_KEYS
	__end_of_KEYPAD_KEYS:
;; =============== function _KEYPAD_KEYS ends ============

	signat	_KEYPAD_KEYS,90
	global	_strlen
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(7), 
;;  cp              1    9[COMMON] PTR const unsigned char 
;;		 -> STR_1(7), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;; This function uses a non-reentrant model
;;
psect	text243
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt	stack 5
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
;strlen@s stored from wreg
	line	8
	movwf	(strlen@s)
	
l2908:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2910
	
l1441:	
	line	10
	goto	l2910
	
l1440:	
	line	9
	
l2910:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2910
u3360:
	goto	l2912
	
l1442:	
	line	11
	
l2912:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	80h
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	80h
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(??_strlen+4)+0
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(??_strlen+4)+0
	movf	0+(??_strlen+4)+0,w
	addlw	low(-1)
	movwf	(?_strlen)
	movf	1+(??_strlen+4)+0,w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(?_strlen)
	goto	l1443
	
l2914:	
	line	12
	
l1443:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_4BIT
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _LCD_SETUP_4BIT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text244
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\LCD_SCREEN.h"
	line	25
	global	__size_of_LCD_SETUP_4BIT
	__size_of_LCD_SETUP_4BIT	equ	__end_of_LCD_SETUP_4BIT-_LCD_SETUP_4BIT
	
_LCD_SETUP_4BIT:	
	opt	stack 7
; Regs used in _LCD_SETUP_4BIT: []
	line	27
	
l2906:	
;LCD_SCREEN.h: 27: TRISB1 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	28
;LCD_SCREEN.h: 28: TRISB2 = 0x00;
	bcf	(1074/8)^080h,(1074)&7
	line	29
;LCD_SCREEN.h: 29: TRISB3 = 0x00;
	bcf	(1075/8)^080h,(1075)&7
	line	31
;LCD_SCREEN.h: 31: TRISC0 = 0x00;
	bcf	(1080/8)^080h,(1080)&7
	line	32
;LCD_SCREEN.h: 32: TRISC1 = 0x00;
	bcf	(1081/8)^080h,(1081)&7
	line	33
;LCD_SCREEN.h: 33: TRISC2 = 0x00;
	bcf	(1082/8)^080h,(1082)&7
	line	34
;LCD_SCREEN.h: 34: TRISC3 = 0x00;
	bcf	(1083/8)^080h,(1083)&7
	line	35
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_4BIT
	__end_of_LCD_SETUP_4BIT:
;; =============== function _LCD_SETUP_4BIT ends ============

	signat	_LCD_SETUP_4BIT,88
	global	_KEYPAD_INIT
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _KEYPAD_INIT *****************
;; Defined at:
;;		line 13 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\KEYPAD_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\CALCULATOR\KEYPAD_lib.h"
	line	13
	global	__size_of_KEYPAD_INIT
	__size_of_KEYPAD_INIT	equ	__end_of_KEYPAD_INIT-_KEYPAD_INIT
	
_KEYPAD_INIT:	
	opt	stack 7
; Regs used in _KEYPAD_INIT: [wreg]
	line	14
	
l2904:	
;KEYPAD_lib.h: 14: TRISD = 0b11110000;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	15
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_INIT
	__end_of_KEYPAD_INIT:
;; =============== function _KEYPAD_INIT ends ============

	signat	_KEYPAD_INIT,88
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
