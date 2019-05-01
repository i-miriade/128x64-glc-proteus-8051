;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Wed May  1 06:23:07 2019
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fonte
	.globl _main
	.globl _escreveEspaco
	.globl _limp_glcd
	.globl _conf_pag
	.globl _conf_y
	.globl _Init_LCGD
	.globl _esc_glcd
	.globl _le_glcd
	.globl _delay_us_2
	.globl _delay_ms_
	.globl _delay_sec
	.globl _delay_ms
	.globl _delay_us
	.globl _printf_fast_f
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _escreveEspaco_PARM_1
	.globl _limp_glcd_PARM_1
	.globl _conf_pag_PARM_2
	.globl _conf_y_PARM_2
	.globl _esc_glcd_PARM_3
	.globl _esc_glcd_PARM_2
	.globl _le_glcd_PARM_2
	.globl _le_glcd_PARM_1
	.globl _POS
	.globl _contador
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_contador::
	.ds 1
_POS::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_le_glcd_PARM_1:
	.ds 1
_le_glcd_PARM_2:
	.ds 1
_esc_glcd_PARM_2:
	.ds 1
_esc_glcd_PARM_3:
	.ds 1
_conf_y_PARM_2:
	.ds 1
_conf_pag_PARM_2:
	.ds 1
_limp_glcd_PARM_1:
	.ds 1
_escreveEspaco_PARM_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:26: char contador = 0;
	mov	_contador,#0x00
;	main.c:27: char POS = 0;
	mov	_POS,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us_count                  Allocated to registers 
;------------------------------------------------------------
;	delay.c:27: void delay_us(unsigned int us_count)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	delay.c:29: while(us_count!=0)
00101$:
	mov	a,r6
	orl	a,r7
	jz	00104$
;	delay.c:31: us_count--;
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms_count                  Allocated to registers 
;------------------------------------------------------------
;	delay.c:49: void delay_ms(unsigned int ms_count)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	delay.c:51: while(ms_count!=0)
00101$:
	mov	a,r6
	orl	a,r7
	jz	00104$
;	delay.c:53: delay_us(112);   //delay_us is called to generate 1ms delay
	mov	dptr,#0x0070
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	delay.c:54: ms_count--;
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_sec'
;------------------------------------------------------------
;sec_count                 Allocated to registers 
;------------------------------------------------------------
;	delay.c:77: void delay_sec(unsigned char sec_count)
;	-----------------------------------------
;	 function delay_sec
;	-----------------------------------------
_delay_sec:
	mov	r7,dpl
;	delay.c:81: while(sec_count!=0)
00101$:
	mov	a,r7
	jz	00104$
;	delay.c:83: delay_ms(1000);    //delay_ms is called to generate 1sec delay
	mov	dptr,#0x03E8
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	delay.c:84: sec_count--;
	dec	r7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms_'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:43: void delay_ms_(unsigned int t)
;	-----------------------------------------
;	 function delay_ms_
;	-----------------------------------------
_delay_ms_:
	mov	r6,dpl
	mov	r7,dph
;	main.c:45: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	main.c:46: TMOD &= ~0x02;
	mov	r5,_TMOD
	mov	a,#0xFD
	anl	a,r5
	mov	_TMOD,a
;	main.c:47: while(t>0)
00104$:
	mov	a,r6
	orl	a,r7
	jz	00107$
;	main.c:49: TR0 = 0;
	clr	_TR0
;	main.c:50: TF0 = 0;
	clr	_TF0
;	main.c:51: TH0 = 0x9E;
	mov	_TH0,#0x9E
;	main.c:52: TL0 = 0x58;
	mov	_TL0,#0x58
;	main.c:53: TR0 = 1;
	setb	_TR0
;	main.c:54: while(TF0 != 1);
00101$:
	jnb	_TF0,00101$
;	main.c:55: t--;
	dec	r6
	cjne	r6,#0xFF,00124$
	dec	r7
00124$:
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us_2'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:60: void delay_us_2(unsigned int t){
;	-----------------------------------------
;	 function delay_us_2
;	-----------------------------------------
_delay_us_2:
	mov	r6,dpl
	mov	r7,dph
;	main.c:61: TMOD &= ~0x01;
	mov	r5,_TMOD
	mov	a,#0xFE
	anl	a,r5
	mov	_TMOD,a
;	main.c:62: TMOD |= 0x02;
	orl	_TMOD,#0x02
;	main.c:64: TR0 = 0;
	clr	_TR0
;	main.c:65: TF0 = 0;
	clr	_TF0
;	main.c:66: TL0 = 0xE7;
	mov	_TL0,#0xE7
;	main.c:67: TH0 = 0XE7;
	mov	_TH0,#0xE7
;	main.c:68: TR0 = 1;
	setb	_TR0
00106$:
;	main.c:70: for(;t>0;t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
;	main.c:71: while(TF0==0);
00101$:
;	main.c:72: TF0 = 0;
	jbc	_TF0,00124$
	sjmp	00101$
00124$:
;	main.c:70: for(;t>0;t--){
	dec	r6
	cjne	r6,#0xFF,00125$
	dec	r7
00125$:
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'le_glcd'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	main.c:77: unsigned char le_glcd(__bit cd, __bit cs){
;	-----------------------------------------
;	 function le_glcd
;	-----------------------------------------
_le_glcd:
;	main.c:81: RW = 1;
	setb	_P2_3
;	main.c:82: CS1 = cs;
	mov	c,_le_glcd_PARM_2
	mov	_P2_0,c
;	main.c:83: CS2 = !cs;
	mov	c,_le_glcd_PARM_2
	cpl	c
	mov	_P2_1,c
;	main.c:84: RS = cd;
	mov	c,_le_glcd_PARM_1
	mov	_P2_2,c
;	main.c:86: NOP4();
	nop 
	nop 
	nop 
	nop 
;	main.c:88: E = 1;
	setb	_P2_4
;	main.c:90: NOP8();
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	main.c:93: byte = DB;
	mov	dpl,_P3
;	main.c:96: NOP4();
	nop 
	nop 
	nop 
	nop 
;	main.c:98: E = 0;
	clr	_P2_4
;	main.c:100: NOP12();
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	main.c:102: return byte;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'esc_glcd'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:107: void esc_glcd(unsigned char byte,__bit cd,__bit cs){
;	-----------------------------------------
;	 function esc_glcd
;	-----------------------------------------
_esc_glcd:
	mov	r7,dpl
;	main.c:109: while(le_glcd(CMD, cs) & 0x80);
00101$:
	clr	_le_glcd_PARM_1
	mov	c,_esc_glcd_PARM_3
	mov	_le_glcd_PARM_2,c
	push	ar7
	lcall	_le_glcd
	mov	a,dpl
	pop	ar7
	jb	acc.7,00101$
;	main.c:111: RW = 0;
	clr	_P2_3
;	main.c:112: CS1 = cs;
	mov	c,_esc_glcd_PARM_3
	mov	_P2_0,c
;	main.c:113: CS2 = !cs;
	mov	c,_esc_glcd_PARM_3
	cpl	c
	mov	_P2_1,c
;	main.c:114: RS = cd;
	mov	c,_esc_glcd_PARM_2
	mov	_P2_2,c
;	main.c:117: DB = byte;
	mov	_P3,r7
;	main.c:120: NOP4();
	nop 
	nop 
	nop 
	nop 
;	main.c:122: E = 1;
	setb	_P2_4
;	main.c:123: NOP12();
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	main.c:124: E = 0;
	clr	_P2_4
;	main.c:127: DB = 0xFF;
	mov	_P3,#0xFF
;	main.c:130: NOP12();
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_LCGD'
;------------------------------------------------------------
;	main.c:135: void Init_LCGD(){
;	-----------------------------------------
;	 function Init_LCGD
;	-----------------------------------------
_Init_LCGD:
;	main.c:137: E 	= 0;
	clr	_P2_4
;	main.c:138: RST = 1;
	setb	_P2_5
;	main.c:139: CS1 = 1;
	setb	_P2_0
;	main.c:140: CS2 = 1;
	setb	_P2_1
;	main.c:143: DB = 0xFF;
	mov	_P3,#0xFF
;	main.c:148: while(le_glcd(CMD, ESQ) & 0x10); 
00101$:
	clr	_le_glcd_PARM_1
	clr	_le_glcd_PARM_2
	lcall	_le_glcd
	mov	a,dpl
	jb	acc.4,00101$
;	main.c:149: while(le_glcd(CMD, DIR) & 0x10); 
00104$:
	clr	_le_glcd_PARM_1
	setb	_le_glcd_PARM_2
	lcall	_le_glcd
	mov	a,dpl
	jb	acc.4,00104$
;	main.c:152: esc_glcd(0x3F, CMD, ESQ);
	clr	_esc_glcd_PARM_2
	clr	_esc_glcd_PARM_3
	mov	dpl,#0x3F
	lcall	_esc_glcd
;	main.c:153: esc_glcd(0x3F, CMD, DIR);
	clr	_esc_glcd_PARM_2
	setb	_esc_glcd_PARM_3
	mov	dpl,#0x3F
	lcall	_esc_glcd
;	main.c:158: esc_glcd(0x40, CMD, ESQ); // Y
	clr	_esc_glcd_PARM_2
	clr	_esc_glcd_PARM_3
	mov	dpl,#0x40
	lcall	_esc_glcd
;	main.c:159: esc_glcd(0x40, CMD, DIR); // Y
	clr	_esc_glcd_PARM_2
	setb	_esc_glcd_PARM_3
	mov	dpl,#0x40
	lcall	_esc_glcd
;	main.c:161: esc_glcd(0xB8, CMD, ESQ); // X
	clr	_esc_glcd_PARM_2
	clr	_esc_glcd_PARM_3
	mov	dpl,#0xB8
	lcall	_esc_glcd
;	main.c:162: esc_glcd(0xB8, CMD, DIR); // X
	clr	_esc_glcd_PARM_2
	setb	_esc_glcd_PARM_3
	mov	dpl,#0xB8
	lcall	_esc_glcd
;	main.c:164: esc_glcd(0xC0, CMD, ESQ); // Z
	clr	_esc_glcd_PARM_2
	clr	_esc_glcd_PARM_3
	mov	dpl,#0xC0
	lcall	_esc_glcd
;	main.c:165: esc_glcd(0xC0, CMD, DIR); // Z
	clr	_esc_glcd_PARM_2
	setb	_esc_glcd_PARM_3
	mov	dpl,#0xC0
	ljmp	_esc_glcd
;------------------------------------------------------------
;Allocation info for local variables in function 'conf_y'
;------------------------------------------------------------
;y                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:170: void conf_y(unsigned char y, __bit cs){
;	-----------------------------------------
;	 function conf_y
;	-----------------------------------------
_conf_y:
	mov	r7,dpl
;	main.c:172: y = y & 0x3F;
	anl	ar7,#0x3F
;	main.c:173: esc_glcd(0x40 | y, CMD, cs);
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	clr	_esc_glcd_PARM_2
	mov	c,_conf_y_PARM_2
	mov	_esc_glcd_PARM_3,c
	ljmp	_esc_glcd
;------------------------------------------------------------
;Allocation info for local variables in function 'conf_pag'
;------------------------------------------------------------
;page                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:177: void conf_pag(unsigned char page, __bit cs){
;	-----------------------------------------
;	 function conf_pag
;	-----------------------------------------
_conf_pag:
	mov	r7,dpl
;	main.c:179: page = page & 0x07;
	anl	ar7,#0x07
;	main.c:180: esc_glcd(0xb8 | page, CMD, cs);
	mov	a,#0xB8
	orl	a,r7
	mov	dpl,a
	clr	_esc_glcd_PARM_2
	mov	c,_conf_pag_PARM_2
	mov	_esc_glcd_PARM_3,c
	ljmp	_esc_glcd
;------------------------------------------------------------
;Allocation info for local variables in function 'limp_glcd'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:183: void limp_glcd(__bit cs){
;	-----------------------------------------
;	 function limp_glcd
;	-----------------------------------------
_limp_glcd:
;	main.c:187: for(i = 0; i < 8; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	main.c:188: conf_pag(i, cs);
	mov	dpl,r6
	mov	c,_limp_glcd_PARM_1
	mov	_conf_pag_PARM_2,c
	push	ar7
	push	ar6
	lcall	_conf_pag
;	main.c:189: conf_y(0, cs);
	mov	c,_limp_glcd_PARM_1
	mov	_conf_y_PARM_2,c
	mov	dpl,#0x00
	lcall	_conf_y
	pop	ar6
	pop	ar7
;	main.c:190: for(j = 0; j < 64; j++){
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;	main.c:191: esc_glcd(0x00, DATA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_limp_glcd_PARM_1
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_esc_glcd
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:190: for(j = 0; j < 64; j++){
	inc	r4
	cjne	r4,#0x00,00120$
	inc	r5
00120$:
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x00
	jc	00103$
;	main.c:187: for(i = 0; i < 8; i++){
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
00122$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jc	00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'escreveEspaco'
;------------------------------------------------------------
;	main.c:198: void escreveEspaco(__bit cs){
;	-----------------------------------------
;	 function escreveEspaco
;	-----------------------------------------
_escreveEspaco:
;	main.c:199: esc_glcd(0x00, DATA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_escreveEspaco_PARM_1
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	lcall	_esc_glcd
;	main.c:200: esc_glcd(0x00, DATA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_escreveEspaco_PARM_1
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	lcall	_esc_glcd
;	main.c:201: esc_glcd(0x00, DATA, cs);	
	setb	_esc_glcd_PARM_2
	mov	c,_escreveEspaco_PARM_1
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	ljmp	_esc_glcd
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	main.c:208: void putchar(char c){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
;	main.c:212: if(c < 9){
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x89
	jnc	00112$
;	main.c:213: conf_pag(c - 1, ESQ);
	mov	a,r7
	dec	a
	mov	r6,a
	clr	_conf_pag_PARM_2
	mov	dpl,r6
	push	ar6
	lcall	_conf_pag
	pop	ar6
;	main.c:214: conf_pag(c - 1, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,r6
	lcall	_conf_pag
;	main.c:215: conf_y(0, ESQ);
	clr	_conf_y_PARM_2
	mov	dpl,#0x00
	lcall	_conf_y
;	main.c:216: conf_y(0, DIR);
	setb	_conf_y_PARM_2
	mov	dpl,#0x00
	lcall	_conf_y
;	main.c:217: contador = 0;
	mov	_contador,#0x00
;	main.c:222: for(i = 0; i < 5; i++){
	sjmp	00104$
00112$:
	mov	r5,#0x00
	mov	r6,#0x00
00107$:
;	main.c:223: esc_glcd(fonte[c - 32][i], DATA, POS);
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#0xE0
	mov	__mulint_PARM_2,a
	mov	a,r4
	addc	a,#0xFF
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,#_fonte
	mov	r3,a
	mov	a,r4
	addc	a,#(_fonte >> 8)
	mov	r4,a
	mov	a,r5
	add	a,r3
	mov	dpl,a
	mov	a,r6
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_POS
	add	a,#0xff
	mov	_esc_glcd_PARM_3,c
	setb	_esc_glcd_PARM_2
	mov	dpl,r4
	push	ar6
	push	ar5
	lcall	_esc_glcd
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:222: for(i = 0; i < 5; i++){
	inc	r5
	cjne	r5,#0x00,00125$
	inc	r6
00125$:
	clr	c
	mov	a,r5
	subb	a,#0x05
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
;	main.c:226: escreveEspaco(POS);
	mov	a,_POS
	add	a,#0xff
	mov	_escreveEspaco_PARM_1,c
	lcall	_escreveEspaco
;	main.c:227: contador = contador + 1;
	inc	_contador
00104$:
;	main.c:230: if (contador == 8){
	mov	a,#0x08
	cjne	a,_contador,00109$
;	main.c:231: POS = !POS;
	mov	a,_POS
	cjne	a,#0x01,00129$
00129$:
	clr	a
	rlc	a
	mov	_POS,a
;	main.c:232: contador = 0;
	mov	_contador,#0x00
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:237: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:243: Init_LCGD();
	lcall	_Init_LCGD
;	main.c:245: limp_glcd(ESQ);
	clr	_limp_glcd_PARM_1
	lcall	_limp_glcd
;	main.c:246: limp_glcd(DIR);
	setb	_limp_glcd_PARM_1
	lcall	_limp_glcd
;	main.c:248: printf_fast_f("\x01linha 1        >");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:249: printf_fast_f("\x02 linha 2       >");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:250: printf_fast_f("\x03  linha 3      >");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:251: printf_fast_f("\x04   linha 4     >");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:252: printf_fast_f("\x05    linha 5    >");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:253: printf_fast_f("\x06     linha 6   >");	
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:254: printf_fast_f("\x07      linha 7  >");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:255: printf_fast_f("\x08       linha 8 >");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	main.c:257: delay_ms(1000);
	mov	dptr,#0x03E8
	lcall	_delay_ms
;	main.c:259: printf_fast_f("\x04var = %5.1f    >", 123.568);
	mov	a,#0xD1
	push	acc
	mov	a,#0x22
	push	acc
	mov	a,#0xF7
	push	acc
	mov	a,#0x42
	push	acc
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:261: while(1);
00102$:
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_fonte:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x5F	;  95
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x07	;  7
	.db #0x00	;  0
	.db #0x07	;  7
	.db #0x00	;  0
	.db #0x14	;  20
	.db #0x7F	;  127
	.db #0x14	;  20
	.db #0x7F	;  127
	.db #0x14	;  20
	.db #0x24	;  36
	.db #0x2A	;  42
	.db #0x7F	;  127
	.db #0x2A	;  42
	.db #0x12	;  18
	.db #0x23	;  35
	.db #0x13	;  19
	.db #0x08	;  8
	.db #0x64	;  100	'd'
	.db #0x62	;  98	'b'
	.db #0x36	;  54	'6'
	.db #0x49	;  73	'I'
	.db #0x55	;  85	'U'
	.db #0x22	;  34
	.db #0x50	;  80	'P'
	.db #0x00	;  0
	.db #0x05	;  5
	.db #0x03	;  3
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x1C	;  28
	.db #0x22	;  34
	.db #0x41	;  65	'A'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x41	;  65	'A'
	.db #0x22	;  34
	.db #0x1C	;  28
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x2A	;  42
	.db #0x1C	;  28
	.db #0x2A	;  42
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x3E	;  62
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x00	;  0
	.db #0x50	;  80	'P'
	.db #0x30	;  48	'0'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x00	;  0
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x10	;  16
	.db #0x08	;  8
	.db #0x04	;  4
	.db #0x02	;  2
	.db #0x3E	;  62
	.db #0x51	;  81	'Q'
	.db #0x49	;  73	'I'
	.db #0x45	;  69	'E'
	.db #0x3E	;  62
	.db #0x00	;  0
	.db #0x42	;  66	'B'
	.db #0x7F	;  127
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x42	;  66	'B'
	.db #0x61	;  97	'a'
	.db #0x51	;  81	'Q'
	.db #0x49	;  73	'I'
	.db #0x46	;  70	'F'
	.db #0x21	;  33
	.db #0x41	;  65	'A'
	.db #0x45	;  69	'E'
	.db #0x4B	;  75	'K'
	.db #0x31	;  49	'1'
	.db #0x18	;  24
	.db #0x14	;  20
	.db #0x12	;  18
	.db #0x7F	;  127
	.db #0x10	;  16
	.db #0x27	;  39
	.db #0x45	;  69	'E'
	.db #0x45	;  69	'E'
	.db #0x45	;  69	'E'
	.db #0x39	;  57	'9'
	.db #0x3C	;  60
	.db #0x4A	;  74	'J'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x30	;  48	'0'
	.db #0x01	;  1
	.db #0x71	;  113	'q'
	.db #0x09	;  9
	.db #0x05	;  5
	.db #0x03	;  3
	.db #0x36	;  54	'6'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x36	;  54	'6'
	.db #0x06	;  6
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x29	;  41
	.db #0x1E	;  30
	.db #0x00	;  0
	.db #0x36	;  54	'6'
	.db #0x36	;  54	'6'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x56	;  86	'V'
	.db #0x36	;  54	'6'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x14	;  20
	.db #0x22	;  34
	.db #0x41	;  65	'A'
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x41	;  65	'A'
	.db #0x22	;  34
	.db #0x14	;  20
	.db #0x08	;  8
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x01	;  1
	.db #0x51	;  81	'Q'
	.db #0x09	;  9
	.db #0x06	;  6
	.db #0x32	;  50	'2'
	.db #0x49	;  73	'I'
	.db #0x79	;  121	'y'
	.db #0x41	;  65	'A'
	.db #0x3E	;  62
	.db #0x7E	;  126
	.db #0x11	;  17
	.db #0x11	;  17
	.db #0x11	;  17
	.db #0x7E	;  126
	.db #0x7F	;  127
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x36	;  54	'6'
	.db #0x3E	;  62
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x22	;  34
	.db #0x7F	;  127
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x22	;  34
	.db #0x1C	;  28
	.db #0x7F	;  127
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x41	;  65	'A'
	.db #0x7F	;  127
	.db #0x09	;  9
	.db #0x09	;  9
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x3E	;  62
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x51	;  81	'Q'
	.db #0x32	;  50	'2'
	.db #0x7F	;  127
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x7F	;  127
	.db #0x00	;  0
	.db #0x41	;  65	'A'
	.db #0x7F	;  127
	.db #0x41	;  65	'A'
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x40	;  64
	.db #0x41	;  65	'A'
	.db #0x3F	;  63
	.db #0x01	;  1
	.db #0x7F	;  127
	.db #0x08	;  8
	.db #0x14	;  20
	.db #0x22	;  34
	.db #0x41	;  65	'A'
	.db #0x7F	;  127
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x7F	;  127
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x02	;  2
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x04	;  4
	.db #0x08	;  8
	.db #0x10	;  16
	.db #0x7F	;  127
	.db #0x3E	;  62
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x3E	;  62
	.db #0x7F	;  127
	.db #0x09	;  9
	.db #0x09	;  9
	.db #0x09	;  9
	.db #0x06	;  6
	.db #0x3E	;  62
	.db #0x41	;  65	'A'
	.db #0x51	;  81	'Q'
	.db #0x21	;  33
	.db #0x5E	;  94
	.db #0x7F	;  127
	.db #0x09	;  9
	.db #0x19	;  25
	.db #0x29	;  41
	.db #0x46	;  70	'F'
	.db #0x46	;  70	'F'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x49	;  73	'I'
	.db #0x31	;  49	'1'
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x7F	;  127
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x3F	;  63
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x3F	;  63
	.db #0x1F	;  31
	.db #0x20	;  32
	.db #0x40	;  64
	.db #0x20	;  32
	.db #0x1F	;  31
	.db #0x7F	;  127
	.db #0x20	;  32
	.db #0x18	;  24
	.db #0x20	;  32
	.db #0x7F	;  127
	.db #0x63	;  99	'c'
	.db #0x14	;  20
	.db #0x08	;  8
	.db #0x14	;  20
	.db #0x63	;  99	'c'
	.db #0x03	;  3
	.db #0x04	;  4
	.db #0x78	;  120	'x'
	.db #0x04	;  4
	.db #0x03	;  3
	.db #0x61	;  97	'a'
	.db #0x51	;  81	'Q'
	.db #0x49	;  73	'I'
	.db #0x45	;  69	'E'
	.db #0x43	;  67	'C'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x7F	;  127
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x08	;  8
	.db #0x10	;  16
	.db #0x20	;  32
	.db #0x41	;  65	'A'
	.db #0x41	;  65	'A'
	.db #0x7F	;  127
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x04	;  4
	.db #0x02	;  2
	.db #0x01	;  1
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x78	;  120	'x'
	.db #0x7F	;  127
	.db #0x48	;  72	'H'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x38	;  56	'8'
	.db #0x38	;  56	'8'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x20	;  32
	.db #0x38	;  56	'8'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x48	;  72	'H'
	.db #0x7F	;  127
	.db #0x38	;  56	'8'
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x18	;  24
	.db #0x08	;  8
	.db #0x7E	;  126
	.db #0x09	;  9
	.db #0x01	;  1
	.db #0x02	;  2
	.db #0x08	;  8
	.db #0x14	;  20
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x3C	;  60
	.db #0x7F	;  127
	.db #0x08	;  8
	.db #0x04	;  4
	.db #0x04	;  4
	.db #0x78	;  120	'x'
	.db #0x00	;  0
	.db #0x44	;  68	'D'
	.db #0x7D	;  125
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x40	;  64
	.db #0x44	;  68	'D'
	.db #0x3D	;  61
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x7F	;  127
	.db #0x10	;  16
	.db #0x28	;  40
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x41	;  65	'A'
	.db #0x7F	;  127
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x7C	;  124
	.db #0x04	;  4
	.db #0x18	;  24
	.db #0x04	;  4
	.db #0x78	;  120	'x'
	.db #0x7C	;  124
	.db #0x08	;  8
	.db #0x04	;  4
	.db #0x04	;  4
	.db #0x78	;  120	'x'
	.db #0x38	;  56	'8'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x44	;  68	'D'
	.db #0x38	;  56	'8'
	.db #0x7C	;  124
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x14	;  20
	.db #0x14	;  20
	.db #0x18	;  24
	.db #0x7C	;  124
	.db #0x7C	;  124
	.db #0x08	;  8
	.db #0x04	;  4
	.db #0x04	;  4
	.db #0x08	;  8
	.db #0x48	;  72	'H'
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x54	;  84	'T'
	.db #0x20	;  32
	.db #0x04	;  4
	.db #0x3F	;  63
	.db #0x44	;  68	'D'
	.db #0x40	;  64
	.db #0x20	;  32
	.db #0x3C	;  60
	.db #0x40	;  64
	.db #0x40	;  64
	.db #0x20	;  32
	.db #0x7C	;  124
	.db #0x1C	;  28
	.db #0x20	;  32
	.db #0x40	;  64
	.db #0x20	;  32
	.db #0x1C	;  28
	.db #0x3C	;  60
	.db #0x40	;  64
	.db #0x30	;  48	'0'
	.db #0x40	;  64
	.db #0x3C	;  60
	.db #0x44	;  68	'D'
	.db #0x28	;  40
	.db #0x10	;  16
	.db #0x28	;  40
	.db #0x44	;  68	'D'
	.db #0x0C	;  12
	.db #0x50	;  80	'P'
	.db #0x50	;  80	'P'
	.db #0x50	;  80	'P'
	.db #0x3C	;  60
	.db #0x44	;  68	'D'
	.db #0x64	;  100	'd'
	.db #0x54	;  84	'T'
	.db #0x4C	;  76	'L'
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x36	;  54	'6'
	.db #0x41	;  65	'A'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x7F	;  127
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x41	;  65	'A'
	.db #0x36	;  54	'6'
	.db #0x08	;  8
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x2A	;  42
	.db #0x1C	;  28
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x1C	;  28
	.db #0x2A	;  42
	.db #0x08	;  8
	.db #0x08	;  8
___str_0:
	.db 0x01
	.ascii "linha 1        >"
	.db 0x00
___str_1:
	.db 0x02
	.ascii " linha 2       >"
	.db 0x00
___str_2:
	.db 0x03
	.ascii "  linha 3      >"
	.db 0x00
___str_3:
	.db 0x04
	.ascii "   linha 4     >"
	.db 0x00
___str_4:
	.db 0x05
	.ascii "    linha 5    >"
	.db 0x00
___str_5:
	.db 0x06
	.ascii "     linha 6   >"
	.db 0x00
___str_6:
	.db 0x07
	.ascii "      linha 7  >"
	.db 0x00
___str_7:
	.db 0x08
	.ascii "       linha 8 >"
	.db 0x00
___str_8:
	.db 0x04
	.ascii "var = %5.1f    >"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
