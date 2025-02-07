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
	FNCALL	_main,_LCD_SETUP_4BIT
	FNCALL	_main,_LCD_INITIALIZE_4BIT
	FNCALL	_main,_LCD_INSTRUCTION_4BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_4BIT,_LCD_INSTRUCTION_4BIT
	FNROOT	_main
	global	_CARRY
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:
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
	global	_TRISDbits
_TRISDbits	set	136
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
	retlw	83	;'S'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	74	;'J'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"SD_CARD1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
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
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
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
	global	LCD_INSTRUCTION_4BIT@x_1252
LCD_INSTRUCTION_4BIT@x_1252:	; 2 bytes @ 0xC
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
	global	LCD_DATA@x_1245
LCD_DATA@x_1245:	; 2 bytes @ 0x1C
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
;;Data sizes: Strings 16, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     37      37
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strlen	unsigned int  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;
;; strlen@s	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;
;; strlen@cp	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;
;; LCD_DISPLAY@string	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    2311
;;                                             10 COMMON     2     2      0
;;                     _LCD_SETUP_4BIT
;;                _LCD_INITIALIZE_4BIT
;;               _LCD_INSTRUCTION_4BIT
;;                        _LCD_DISPLAY
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
;; (2) _LCD_DATA                                            39    37      2     975
;;                                              0 COMMON     7     5      2
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_4BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD_SETUP_4BIT
;;   _LCD_INITIALIZE_4BIT
;;     _LCD_INSTRUCTION_4BIT
;;   _LCD_INSTRUCTION_4BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     25      25       5       46.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  729[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_SETUP_4BIT
;;		_LCD_INITIALIZE_4BIT
;;		_LCD_INSTRUCTION_4BIT
;;		_LCD_DISPLAY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\Main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l2900:	
;Main.c: 18: TRISDbits.TRISD0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h,0	;volatile
	line	19
;Main.c: 19: TRISDbits.TRISD1 = 0x00;
	bcf	(136)^080h,1	;volatile
	line	20
;Main.c: 20: TRISDbits.TRISD2 = 0x01;
	bsf	(136)^080h,2	;volatile
	line	21
	
l2902:	
;Main.c: 21: LCD_SETUP_4BIT();
	fcall	_LCD_SETUP_4BIT
	line	22
	
l2904:	
;Main.c: 22: LCD_INITIALIZE_4BIT();
	fcall	_LCD_INITIALIZE_4BIT
	goto	l2906
	line	23
;Main.c: 23: while(0x01){
	
l730:	
	line	24
	
l2906:	
;Main.c: 24: LCD_INSTRUCTION_4BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	25
	
l2908:	
;Main.c: 25: LCD_DISPLAY("SD CARD PROJECT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	26
	
l2910:	
;Main.c: 26: _delay((unsigned long)((5)*(24000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u3907:
	decfsz	((??_main+0)+0),f
	goto	u3907
	decfsz	((??_main+0)+0+1),f
	goto	u3907
opt asmopt_on

	goto	l2906
	line	27
	
l731:	
	line	23
	goto	l2906
	
l732:	
	line	29
;Main.c: 27: }
;Main.c: 28: return 0;
;	Return value of _main is never used
	
l733:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_LCD_DISPLAY
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  string          1   34[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
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
psect	text194
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
	
l2890:	
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
	
l2892:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l2898
	
l725:	
	line	185
	
l2894:	
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
	
l2896:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l2898
	
l724:	
	
l2898:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u3895
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u3895:
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l2894
u3890:
	goto	l727
	
l726:	
	line	187
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_4BIT
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _LCD_INITIALIZE_4BIT *****************
;; Defined at:
;;		line 165 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
psect	text195
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
	line	165
	global	__size_of_LCD_INITIALIZE_4BIT
	__size_of_LCD_INITIALIZE_4BIT	equ	__end_of_LCD_INITIALIZE_4BIT-_LCD_INITIALIZE_4BIT
	
_LCD_INITIALIZE_4BIT:	
	opt	stack 6
; Regs used in _LCD_INITIALIZE_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l2888:	
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
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_4BIT
	__end_of_LCD_INITIALIZE_4BIT:
;; =============== function _LCD_INITIALIZE_4BIT ends ============

	signat	_LCD_INITIALIZE_4BIT,88
	global	_LCD_INSTRUCTION_4BIT
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _LCD_INSTRUCTION_4BIT *****************
;; Defined at:
;;		line 110 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
psect	text196
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
	
l2852:	
;LCD_SCREEN.h: 111: int _4bit_[0x04];
;LCD_SCREEN.h: 112: unsigned char data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	113
	
l2854:	
;LCD_SCREEN.h: 113: data = data>>0x04;
	movf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movlw	04h
u3645:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
	addlw	-1
	skipz
	goto	u3645
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	movf	(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	114
	
l2856:	
;LCD_SCREEN.h: 114: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x)
	clrf	(LCD_INSTRUCTION_4BIT@x+1)
	
l2858:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3655
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u3655:

	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l2862
u3650:
	goto	l707
	
l2860:	
	goto	l707
	
l706:	
	line	115
	
l2862:	
;LCD_SCREEN.h: 115: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u3664
u3665:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u3664:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u3674
u3675:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u3674:
	addlw	-1
	skipz
	goto	u3675
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
	
l2864:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x+1),f
	
l2866:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3685
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u3685:

	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l2862
u3680:
	
l707:	
	line	117
;LCD_SCREEN.h: 116: }
;LCD_SCREEN.h: 117: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u3691
	goto	u3690
	
u3691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3704
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3704:
	line	118
;LCD_SCREEN.h: 118: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u3711
	goto	u3710
	
u3711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3724
u3710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3724:
	line	119
;LCD_SCREEN.h: 119: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u3731
	goto	u3730
	
u3731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3744
u3730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3744:
	line	120
;LCD_SCREEN.h: 120: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u3751
	goto	u3750
	
u3751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3764
u3750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3764:
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
	
l2868:	
;LCD_SCREEN.h: 124: _delay((unsigned long)((2)*(24000000/4000.0)));
	opt asmopt_off
movlw	16
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	148
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u3917:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u3917
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u3917
	clrwdt
opt asmopt_on

	line	125
	
l2870:	
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
	
l2872:	
;LCD_SCREEN.h: 128: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x_1252)
	clrf	(LCD_INSTRUCTION_4BIT@x_1252+1)
	
l2874:	
	movf	(LCD_INSTRUCTION_4BIT@x_1252+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3775
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1252),w
u3775:

	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l2878
u3770:
	goto	l709
	
l2876:	
	goto	l709
	
l708:	
	line	129
	
l2878:	
;LCD_SCREEN.h: 129: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x_1252),w
	goto	u3784
u3785:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u3784:
	addlw	-1
	skipz
	goto	u3785
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1252),w
	goto	u3794
u3795:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u3794:
	addlw	-1
	skipz
	goto	u3795
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x_1252),w
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
	
l2880:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1252),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x_1252+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1252+1),f
	
l2882:	
	movf	(LCD_INSTRUCTION_4BIT@x_1252+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3805
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1252),w
u3805:

	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l2878
u3800:
	
l709:	
	line	131
;LCD_SCREEN.h: 130: }
;LCD_SCREEN.h: 131: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u3811
	goto	u3810
	
u3811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3824
u3810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3824:
	line	132
;LCD_SCREEN.h: 132: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3844:
	line	133
;LCD_SCREEN.h: 133: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u3851
	goto	u3850
	
u3851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3864
u3850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3864:
	line	134
;LCD_SCREEN.h: 134: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u3871
	goto	u3870
	
u3871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3884
u3870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3884:
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
	
l2884:	
;LCD_SCREEN.h: 138: _delay((unsigned long)((2)*(24000000/4000.0)));
	opt asmopt_off
movlw	16
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	148
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u3927:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u3927
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u3927
	clrwdt
opt asmopt_on

	line	139
	
l2886:	
;LCD_SCREEN.h: 139: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	141
	
l710:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_4BIT
	__end_of_LCD_INSTRUCTION_4BIT:
;; =============== function _LCD_INSTRUCTION_4BIT ends ============

	signat	_LCD_INSTRUCTION_4BIT,4216
	global	_LCD_DATA
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
	line	55
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:	
	opt	stack 6
; Regs used in _LCD_DATA: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_DATA@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DATA@data)
	line	56
	
l2798:	
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
	goto	u3171
	goto	u3170
u3171:
	goto	l695
u3170:
	line	60
	
l2800:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u3185:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l2802:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l2804:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3195
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3195:

	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l2808
u3190:
	goto	l697
	
l2806:	
	goto	l697
	
l696:	
	line	62
	
l2808:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x),w
	goto	u3204
u3205:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3204:
	addlw	-1
	skipz
	goto	u3205
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u3214
u3215:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3214:
	addlw	-1
	skipz
	goto	u3215
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
	
l2810:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l2812:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3225
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3225:

	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l2808
u3220:
	
l697:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3231
	goto	u3230
	
u3231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3244
u3230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3244:
	line	65
;LCD_SCREEN.h: 65: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3251
	goto	u3250
	
u3251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3264
u3250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3264:
	line	66
;LCD_SCREEN.h: 66: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3271
	goto	u3270
	
u3271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3284
u3270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3284:
	line	67
;LCD_SCREEN.h: 67: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3291
	goto	u3290
	
u3291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3304
u3290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3304:
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
	
l2814:	
;LCD_SCREEN.h: 71: _delay((unsigned long)((2)*(24000000/4000.0)));
	opt asmopt_off
movlw	16
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	148
movwf	((??_LCD_DATA+0)+0),f
u3937:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3937
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3937
	clrwdt
opt asmopt_on

	line	72
	
l2816:	
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
	
l2818:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1245)
	clrf	(LCD_DATA@x_1245+1)
	
l2820:	
	movf	(LCD_DATA@x_1245+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3315
	movlw	low(04h)
	subwf	(LCD_DATA@x_1245),w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l2824
u3310:
	goto	l699
	
l2822:	
	goto	l699
	
l698:	
	line	76
	
l2824:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x_1245),w
	goto	u3324
u3325:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3324:
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1245),w
	goto	u3334
u3335:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3334:
	addlw	-1
	skipz
	goto	u3335
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1245),w
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
	
l2826:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1245),f
	skipnc
	incf	(LCD_DATA@x_1245+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1245+1),f
	
l2828:	
	movf	(LCD_DATA@x_1245+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(04h)
	subwf	(LCD_DATA@x_1245),w
u3345:

	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l2824
u3340:
	
l699:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3351
	goto	u3350
	
u3351:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3364
u3350:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3364:
	line	79
;LCD_SCREEN.h: 79: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3371
	goto	u3370
	
u3371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3384
u3370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3384:
	line	80
;LCD_SCREEN.h: 80: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3391
	goto	u3390
	
u3391:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3404
u3390:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3404:
	line	81
;LCD_SCREEN.h: 81: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3411
	goto	u3410
	
u3411:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3424
u3410:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3424:
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
	
l2830:	
;LCD_SCREEN.h: 85: _delay((unsigned long)((2)*(24000000/4000.0)));
	opt asmopt_off
movlw	16
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	148
movwf	((??_LCD_DATA+0)+0),f
u3947:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3947
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3947
	clrwdt
opt asmopt_on

	line	86
	
l2832:	
;LCD_SCREEN.h: 86: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	88
	
l695:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l703
u3430:
	line	90
	
l2834:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l2836:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l2838:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3445
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3445:

	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l2842
u3440:
	goto	l702
	
l2840:	
	goto	l702
	
l701:	
	line	92
	
l2842:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@v),w
	goto	u3454
u3455:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3454:
	addlw	-1
	skipz
	goto	u3455
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u3464
u3465:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3464:
	addlw	-1
	skipz
	goto	u3465
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
	
l2844:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l2846:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3475
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3475:

	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l2842
u3470:
	
l702:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u3481
	goto	u3480
	
u3481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u3494
u3480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u3494:
	line	95
;LCD_SCREEN.h: 95: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u3501
	goto	u3500
	
u3501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u3514
u3500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u3514:
	line	96
;LCD_SCREEN.h: 96: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u3521
	goto	u3520
	
u3521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u3534
u3520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u3534:
	line	97
;LCD_SCREEN.h: 97: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u3541
	goto	u3540
	
u3541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u3554
u3540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u3554:
	line	98
;LCD_SCREEN.h: 98: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u3561
	goto	u3560
	
u3561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3574
u3560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3574:
	line	99
;LCD_SCREEN.h: 99: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u3581
	goto	u3580
	
u3581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3594
u3580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3594:
	line	100
;LCD_SCREEN.h: 100: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u3601
	goto	u3600
	
u3601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3614
u3600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3614:
	line	101
;LCD_SCREEN.h: 101: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u3621
	goto	u3620
	
u3621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3634
u3620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3634:
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
	
l2848:	
;LCD_SCREEN.h: 105: _delay((unsigned long)((5)*(24000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	245
movwf	((??_LCD_DATA+0)+0),f
u3957:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3957
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3957
opt asmopt_on

	line	106
	
l2850:	
;LCD_SCREEN.h: 106: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	goto	l703
	line	107
	
l700:	
	line	108
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	_strlen
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(16), 
;;  cp              1    9[COMMON] PTR const unsigned char 
;;		 -> STR_1(16), 
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
psect	text198
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
	
l2790:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2792
	
l1411:	
	line	10
	goto	l2792
	
l1410:	
	line	9
	
l2792:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l2792
u3160:
	goto	l2794
	
l1412:	
	line	11
	
l2794:	
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
	goto	l1413
	
l2796:	
	line	12
	
l1413:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_4BIT
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

;; *************** function _LCD_SETUP_4BIT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
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
psect	text199
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\PIC16F877A\SD_CARD1\LCD_SCREEN.h"
	line	25
	global	__size_of_LCD_SETUP_4BIT
	__size_of_LCD_SETUP_4BIT	equ	__end_of_LCD_SETUP_4BIT-_LCD_SETUP_4BIT
	
_LCD_SETUP_4BIT:	
	opt	stack 7
; Regs used in _LCD_SETUP_4BIT: []
	line	27
	
l1786:	
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
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_4BIT
	__end_of_LCD_SETUP_4BIT:
;; =============== function _LCD_SETUP_4BIT ends ============

	signat	_LCD_SETUP_4BIT,88
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
