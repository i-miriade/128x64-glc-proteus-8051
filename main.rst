                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed May  1 06:23:07 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _fonte
                                     13 	.globl _main
                                     14 	.globl _escreveEspaco
                                     15 	.globl _limp_glcd
                                     16 	.globl _conf_pag
                                     17 	.globl _conf_y
                                     18 	.globl _Init_LCGD
                                     19 	.globl _esc_glcd
                                     20 	.globl _le_glcd
                                     21 	.globl _delay_us_2
                                     22 	.globl _delay_ms_
                                     23 	.globl _delay_sec
                                     24 	.globl _delay_ms
                                     25 	.globl _delay_us
                                     26 	.globl _printf_fast_f
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _PS
                                     36 	.globl _PT1
                                     37 	.globl _PX1
                                     38 	.globl _PT0
                                     39 	.globl _PX0
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _EA
                                     57 	.globl _ES
                                     58 	.globl _ET1
                                     59 	.globl _EX1
                                     60 	.globl _ET0
                                     61 	.globl _EX0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _SM0
                                     71 	.globl _SM1
                                     72 	.globl _SM2
                                     73 	.globl _REN
                                     74 	.globl _TB8
                                     75 	.globl _RB8
                                     76 	.globl _TI
                                     77 	.globl _RI
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _TF1
                                     87 	.globl _TR1
                                     88 	.globl _TF0
                                     89 	.globl _TR0
                                     90 	.globl _IE1
                                     91 	.globl _IT1
                                     92 	.globl _IE0
                                     93 	.globl _IT0
                                     94 	.globl _P0_7
                                     95 	.globl _P0_6
                                     96 	.globl _P0_5
                                     97 	.globl _P0_4
                                     98 	.globl _P0_3
                                     99 	.globl _P0_2
                                    100 	.globl _P0_1
                                    101 	.globl _P0_0
                                    102 	.globl _B
                                    103 	.globl _ACC
                                    104 	.globl _PSW
                                    105 	.globl _IP
                                    106 	.globl _P3
                                    107 	.globl _IE
                                    108 	.globl _P2
                                    109 	.globl _SBUF
                                    110 	.globl _SCON
                                    111 	.globl _P1
                                    112 	.globl _TH1
                                    113 	.globl _TH0
                                    114 	.globl _TL1
                                    115 	.globl _TL0
                                    116 	.globl _TMOD
                                    117 	.globl _TCON
                                    118 	.globl _PCON
                                    119 	.globl _DPH
                                    120 	.globl _DPL
                                    121 	.globl _SP
                                    122 	.globl _P0
                                    123 	.globl _escreveEspaco_PARM_1
                                    124 	.globl _limp_glcd_PARM_1
                                    125 	.globl _conf_pag_PARM_2
                                    126 	.globl _conf_y_PARM_2
                                    127 	.globl _esc_glcd_PARM_3
                                    128 	.globl _esc_glcd_PARM_2
                                    129 	.globl _le_glcd_PARM_2
                                    130 	.globl _le_glcd_PARM_1
                                    131 	.globl _POS
                                    132 	.globl _contador
                                    133 	.globl _putchar
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 _B	=	0x00f0
                                    160 ;--------------------------------------------------------
                                    161 ; special function bits
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
                           000080   165 _P0_0	=	0x0080
                           000081   166 _P0_1	=	0x0081
                           000082   167 _P0_2	=	0x0082
                           000083   168 _P0_3	=	0x0083
                           000084   169 _P0_4	=	0x0084
                           000085   170 _P0_5	=	0x0085
                           000086   171 _P0_6	=	0x0086
                           000087   172 _P0_7	=	0x0087
                           000088   173 _IT0	=	0x0088
                           000089   174 _IE0	=	0x0089
                           00008A   175 _IT1	=	0x008a
                           00008B   176 _IE1	=	0x008b
                           00008C   177 _TR0	=	0x008c
                           00008D   178 _TF0	=	0x008d
                           00008E   179 _TR1	=	0x008e
                           00008F   180 _TF1	=	0x008f
                           000090   181 _P1_0	=	0x0090
                           000091   182 _P1_1	=	0x0091
                           000092   183 _P1_2	=	0x0092
                           000093   184 _P1_3	=	0x0093
                           000094   185 _P1_4	=	0x0094
                           000095   186 _P1_5	=	0x0095
                           000096   187 _P1_6	=	0x0096
                           000097   188 _P1_7	=	0x0097
                           000098   189 _RI	=	0x0098
                           000099   190 _TI	=	0x0099
                           00009A   191 _RB8	=	0x009a
                           00009B   192 _TB8	=	0x009b
                           00009C   193 _REN	=	0x009c
                           00009D   194 _SM2	=	0x009d
                           00009E   195 _SM1	=	0x009e
                           00009F   196 _SM0	=	0x009f
                           0000A0   197 _P2_0	=	0x00a0
                           0000A1   198 _P2_1	=	0x00a1
                           0000A2   199 _P2_2	=	0x00a2
                           0000A3   200 _P2_3	=	0x00a3
                           0000A4   201 _P2_4	=	0x00a4
                           0000A5   202 _P2_5	=	0x00a5
                           0000A6   203 _P2_6	=	0x00a6
                           0000A7   204 _P2_7	=	0x00a7
                           0000A8   205 _EX0	=	0x00a8
                           0000A9   206 _ET0	=	0x00a9
                           0000AA   207 _EX1	=	0x00aa
                           0000AB   208 _ET1	=	0x00ab
                           0000AC   209 _ES	=	0x00ac
                           0000AF   210 _EA	=	0x00af
                           0000B0   211 _P3_0	=	0x00b0
                           0000B1   212 _P3_1	=	0x00b1
                           0000B2   213 _P3_2	=	0x00b2
                           0000B3   214 _P3_3	=	0x00b3
                           0000B4   215 _P3_4	=	0x00b4
                           0000B5   216 _P3_5	=	0x00b5
                           0000B6   217 _P3_6	=	0x00b6
                           0000B7   218 _P3_7	=	0x00b7
                           0000B0   219 _RXD	=	0x00b0
                           0000B1   220 _TXD	=	0x00b1
                           0000B2   221 _INT0	=	0x00b2
                           0000B3   222 _INT1	=	0x00b3
                           0000B4   223 _T0	=	0x00b4
                           0000B5   224 _T1	=	0x00b5
                           0000B6   225 _WR	=	0x00b6
                           0000B7   226 _RD	=	0x00b7
                           0000B8   227 _PX0	=	0x00b8
                           0000B9   228 _PT0	=	0x00b9
                           0000BA   229 _PX1	=	0x00ba
                           0000BB   230 _PT1	=	0x00bb
                           0000BC   231 _PS	=	0x00bc
                           0000D0   232 _P	=	0x00d0
                           0000D1   233 _F1	=	0x00d1
                           0000D2   234 _OV	=	0x00d2
                           0000D3   235 _RS0	=	0x00d3
                           0000D4   236 _RS1	=	0x00d4
                           0000D5   237 _F0	=	0x00d5
                           0000D6   238 _AC	=	0x00d6
                           0000D7   239 _CY	=	0x00d7
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable register banks
                                    242 ;--------------------------------------------------------
                                    243 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        244 	.ds 8
                                    245 ;--------------------------------------------------------
                                    246 ; internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area DSEG    (DATA)
      000008                        249 _contador::
      000008                        250 	.ds 1
      000009                        251 _POS::
      000009                        252 	.ds 1
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	OSEG    (OVR,DATA)
                                    257 	.area	OSEG    (OVR,DATA)
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; Stack segment in internal ram 
                                    262 ;--------------------------------------------------------
                                    263 	.area	SSEG
      000022                        264 __start__stack:
      000022                        265 	.ds	1
                                    266 
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
      000000                        280 _le_glcd_PARM_1:
      000000                        281 	.ds 1
      000001                        282 _le_glcd_PARM_2:
      000001                        283 	.ds 1
      000002                        284 _esc_glcd_PARM_2:
      000002                        285 	.ds 1
      000003                        286 _esc_glcd_PARM_3:
      000003                        287 	.ds 1
      000004                        288 _conf_y_PARM_2:
      000004                        289 	.ds 1
      000005                        290 _conf_pag_PARM_2:
      000005                        291 	.ds 1
      000006                        292 _limp_glcd_PARM_1:
      000006                        293 	.ds 1
      000007                        294 _escreveEspaco_PARM_1:
      000007                        295 	.ds 1
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XSEG    (XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XABS    (ABS,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external initialized ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XISEG   (XDATA)
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; interrupt vector 
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
      000000                        326 __interrupt_vect:
      000000 02 00 06         [24]  327 	ljmp	__sdcc_gsinit_startup
                                    328 ;--------------------------------------------------------
                                    329 ; global & static initialisations
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.globl __sdcc_gsinit_startup
                                    336 	.globl __sdcc_program_startup
                                    337 	.globl __start__stack
                                    338 	.globl __mcs51_genXINIT
                                    339 	.globl __mcs51_genXRAMCLEAR
                                    340 	.globl __mcs51_genRAMCLEAR
                                    341 ;	main.c:26: char contador = 0;
      00005F 75 08 00         [24]  342 	mov	_contador,#0x00
                                    343 ;	main.c:27: char POS = 0;
      000062 75 09 00         [24]  344 	mov	_POS,#0x00
                                    345 	.area GSFINAL (CODE)
      000065 02 00 03         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      000003                        352 __sdcc_program_startup:
      000003 02 03 45         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'delay_us'
                                    361 ;------------------------------------------------------------
                                    362 ;us_count                  Allocated to registers 
                                    363 ;------------------------------------------------------------
                                    364 ;	delay.c:27: void delay_us(unsigned int us_count)
                                    365 ;	-----------------------------------------
                                    366 ;	 function delay_us
                                    367 ;	-----------------------------------------
      000068                        368 _delay_us:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
      000068 AE 82            [24]  377 	mov	r6,dpl
      00006A AF 83            [24]  378 	mov	r7,dph
                                    379 ;	delay.c:29: while(us_count!=0)
      00006C                        380 00101$:
      00006C EE               [12]  381 	mov	a,r6
      00006D 4F               [12]  382 	orl	a,r7
      00006E 60 07            [24]  383 	jz	00104$
                                    384 ;	delay.c:31: us_count--;
      000070 1E               [12]  385 	dec	r6
      000071 BE FF 01         [24]  386 	cjne	r6,#0xFF,00114$
      000074 1F               [12]  387 	dec	r7
      000075                        388 00114$:
      000075 80 F5            [24]  389 	sjmp	00101$
      000077                        390 00104$:
      000077 22               [24]  391 	ret
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'delay_ms'
                                    394 ;------------------------------------------------------------
                                    395 ;ms_count                  Allocated to registers 
                                    396 ;------------------------------------------------------------
                                    397 ;	delay.c:49: void delay_ms(unsigned int ms_count)
                                    398 ;	-----------------------------------------
                                    399 ;	 function delay_ms
                                    400 ;	-----------------------------------------
      000078                        401 _delay_ms:
      000078 AE 82            [24]  402 	mov	r6,dpl
      00007A AF 83            [24]  403 	mov	r7,dph
                                    404 ;	delay.c:51: while(ms_count!=0)
      00007C                        405 00101$:
      00007C EE               [12]  406 	mov	a,r6
      00007D 4F               [12]  407 	orl	a,r7
      00007E 60 15            [24]  408 	jz	00104$
                                    409 ;	delay.c:53: delay_us(112);   //delay_us is called to generate 1ms delay
      000080 90 00 70         [24]  410 	mov	dptr,#0x0070
      000083 C0 07            [24]  411 	push	ar7
      000085 C0 06            [24]  412 	push	ar6
      000087 12 00 68         [24]  413 	lcall	_delay_us
      00008A D0 06            [24]  414 	pop	ar6
      00008C D0 07            [24]  415 	pop	ar7
                                    416 ;	delay.c:54: ms_count--;
      00008E 1E               [12]  417 	dec	r6
      00008F BE FF 01         [24]  418 	cjne	r6,#0xFF,00114$
      000092 1F               [12]  419 	dec	r7
      000093                        420 00114$:
      000093 80 E7            [24]  421 	sjmp	00101$
      000095                        422 00104$:
      000095 22               [24]  423 	ret
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'delay_sec'
                                    426 ;------------------------------------------------------------
                                    427 ;sec_count                 Allocated to registers 
                                    428 ;------------------------------------------------------------
                                    429 ;	delay.c:77: void delay_sec(unsigned char sec_count)
                                    430 ;	-----------------------------------------
                                    431 ;	 function delay_sec
                                    432 ;	-----------------------------------------
      000096                        433 _delay_sec:
      000096 AF 82            [24]  434 	mov	r7,dpl
                                    435 ;	delay.c:81: while(sec_count!=0)
      000098                        436 00101$:
      000098 EF               [12]  437 	mov	a,r7
      000099 60 0D            [24]  438 	jz	00104$
                                    439 ;	delay.c:83: delay_ms(1000);    //delay_ms is called to generate 1sec delay
      00009B 90 03 E8         [24]  440 	mov	dptr,#0x03E8
      00009E C0 07            [24]  441 	push	ar7
      0000A0 12 00 78         [24]  442 	lcall	_delay_ms
      0000A3 D0 07            [24]  443 	pop	ar7
                                    444 ;	delay.c:84: sec_count--;
      0000A5 1F               [12]  445 	dec	r7
      0000A6 80 F0            [24]  446 	sjmp	00101$
      0000A8                        447 00104$:
      0000A8 22               [24]  448 	ret
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'delay_ms_'
                                    451 ;------------------------------------------------------------
                                    452 ;t                         Allocated to registers r6 r7 
                                    453 ;------------------------------------------------------------
                                    454 ;	main.c:43: void delay_ms_(unsigned int t)
                                    455 ;	-----------------------------------------
                                    456 ;	 function delay_ms_
                                    457 ;	-----------------------------------------
      0000A9                        458 _delay_ms_:
      0000A9 AE 82            [24]  459 	mov	r6,dpl
      0000AB AF 83            [24]  460 	mov	r7,dph
                                    461 ;	main.c:45: TMOD |= 0x01;
      0000AD 43 89 01         [24]  462 	orl	_TMOD,#0x01
                                    463 ;	main.c:46: TMOD &= ~0x02;
      0000B0 AD 89            [24]  464 	mov	r5,_TMOD
      0000B2 74 FD            [12]  465 	mov	a,#0xFD
      0000B4 5D               [12]  466 	anl	a,r5
      0000B5 F5 89            [12]  467 	mov	_TMOD,a
                                    468 ;	main.c:47: while(t>0)
      0000B7                        469 00104$:
      0000B7 EE               [12]  470 	mov	a,r6
      0000B8 4F               [12]  471 	orl	a,r7
      0000B9 60 16            [24]  472 	jz	00107$
                                    473 ;	main.c:49: TR0 = 0;
      0000BB C2 8C            [12]  474 	clr	_TR0
                                    475 ;	main.c:50: TF0 = 0;
      0000BD C2 8D            [12]  476 	clr	_TF0
                                    477 ;	main.c:51: TH0 = 0x9E;
      0000BF 75 8C 9E         [24]  478 	mov	_TH0,#0x9E
                                    479 ;	main.c:52: TL0 = 0x58;
      0000C2 75 8A 58         [24]  480 	mov	_TL0,#0x58
                                    481 ;	main.c:53: TR0 = 1;
      0000C5 D2 8C            [12]  482 	setb	_TR0
                                    483 ;	main.c:54: while(TF0 != 1);
      0000C7                        484 00101$:
      0000C7 30 8D FD         [24]  485 	jnb	_TF0,00101$
                                    486 ;	main.c:55: t--;
      0000CA 1E               [12]  487 	dec	r6
      0000CB BE FF 01         [24]  488 	cjne	r6,#0xFF,00124$
      0000CE 1F               [12]  489 	dec	r7
      0000CF                        490 00124$:
      0000CF 80 E6            [24]  491 	sjmp	00104$
      0000D1                        492 00107$:
      0000D1 22               [24]  493 	ret
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'delay_us_2'
                                    496 ;------------------------------------------------------------
                                    497 ;t                         Allocated to registers r6 r7 
                                    498 ;------------------------------------------------------------
                                    499 ;	main.c:60: void delay_us_2(unsigned int t){
                                    500 ;	-----------------------------------------
                                    501 ;	 function delay_us_2
                                    502 ;	-----------------------------------------
      0000D2                        503 _delay_us_2:
      0000D2 AE 82            [24]  504 	mov	r6,dpl
      0000D4 AF 83            [24]  505 	mov	r7,dph
                                    506 ;	main.c:61: TMOD &= ~0x01;
      0000D6 AD 89            [24]  507 	mov	r5,_TMOD
      0000D8 74 FE            [12]  508 	mov	a,#0xFE
      0000DA 5D               [12]  509 	anl	a,r5
      0000DB F5 89            [12]  510 	mov	_TMOD,a
                                    511 ;	main.c:62: TMOD |= 0x02;
      0000DD 43 89 02         [24]  512 	orl	_TMOD,#0x02
                                    513 ;	main.c:64: TR0 = 0;
      0000E0 C2 8C            [12]  514 	clr	_TR0
                                    515 ;	main.c:65: TF0 = 0;
      0000E2 C2 8D            [12]  516 	clr	_TF0
                                    517 ;	main.c:66: TL0 = 0xE7;
      0000E4 75 8A E7         [24]  518 	mov	_TL0,#0xE7
                                    519 ;	main.c:67: TH0 = 0XE7;
      0000E7 75 8C E7         [24]  520 	mov	_TH0,#0xE7
                                    521 ;	main.c:68: TR0 = 1;
      0000EA D2 8C            [12]  522 	setb	_TR0
      0000EC                        523 00106$:
                                    524 ;	main.c:70: for(;t>0;t--){
      0000EC EE               [12]  525 	mov	a,r6
      0000ED 4F               [12]  526 	orl	a,r7
      0000EE 60 0C            [24]  527 	jz	00108$
                                    528 ;	main.c:71: while(TF0==0);
      0000F0                        529 00101$:
                                    530 ;	main.c:72: TF0 = 0;
      0000F0 10 8D 02         [24]  531 	jbc	_TF0,00124$
      0000F3 80 FB            [24]  532 	sjmp	00101$
      0000F5                        533 00124$:
                                    534 ;	main.c:70: for(;t>0;t--){
      0000F5 1E               [12]  535 	dec	r6
      0000F6 BE FF 01         [24]  536 	cjne	r6,#0xFF,00125$
      0000F9 1F               [12]  537 	dec	r7
      0000FA                        538 00125$:
      0000FA 80 F0            [24]  539 	sjmp	00106$
      0000FC                        540 00108$:
      0000FC 22               [24]  541 	ret
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'le_glcd'
                                    544 ;------------------------------------------------------------
                                    545 ;byte                      Allocated to registers 
                                    546 ;------------------------------------------------------------
                                    547 ;	main.c:77: unsigned char le_glcd(__bit cd, __bit cs){
                                    548 ;	-----------------------------------------
                                    549 ;	 function le_glcd
                                    550 ;	-----------------------------------------
      0000FD                        551 _le_glcd:
                                    552 ;	main.c:81: RW = 1;
      0000FD D2 A3            [12]  553 	setb	_P2_3
                                    554 ;	main.c:82: CS1 = cs;
      0000FF A2 01            [12]  555 	mov	c,_le_glcd_PARM_2
      000101 92 A0            [24]  556 	mov	_P2_0,c
                                    557 ;	main.c:83: CS2 = !cs;
      000103 A2 01            [12]  558 	mov	c,_le_glcd_PARM_2
      000105 B3               [12]  559 	cpl	c
      000106 92 A1            [24]  560 	mov	_P2_1,c
                                    561 ;	main.c:84: RS = cd;
      000108 A2 00            [12]  562 	mov	c,_le_glcd_PARM_1
      00010A 92 A2            [24]  563 	mov	_P2_2,c
                                    564 ;	main.c:86: NOP4();
      00010C 00               [12]  565 	nop 
      00010D 00               [12]  566 	nop 
      00010E 00               [12]  567 	nop 
      00010F 00               [12]  568 	nop 
                                    569 ;	main.c:88: E = 1;
      000110 D2 A4            [12]  570 	setb	_P2_4
                                    571 ;	main.c:90: NOP8();
      000112 00               [12]  572 	nop 
      000113 00               [12]  573 	nop 
      000114 00               [12]  574 	nop 
      000115 00               [12]  575 	nop 
      000116 00               [12]  576 	nop 
      000117 00               [12]  577 	nop 
      000118 00               [12]  578 	nop 
      000119 00               [12]  579 	nop 
                                    580 ;	main.c:93: byte = DB;
      00011A 85 B0 82         [24]  581 	mov	dpl,_P3
                                    582 ;	main.c:96: NOP4();
      00011D 00               [12]  583 	nop 
      00011E 00               [12]  584 	nop 
      00011F 00               [12]  585 	nop 
      000120 00               [12]  586 	nop 
                                    587 ;	main.c:98: E = 0;
      000121 C2 A4            [12]  588 	clr	_P2_4
                                    589 ;	main.c:100: NOP12();
      000123 00               [12]  590 	nop 
      000124 00               [12]  591 	nop 
      000125 00               [12]  592 	nop 
      000126 00               [12]  593 	nop 
      000127 00               [12]  594 	nop 
      000128 00               [12]  595 	nop 
      000129 00               [12]  596 	nop 
      00012A 00               [12]  597 	nop 
      00012B 00               [12]  598 	nop 
      00012C 00               [12]  599 	nop 
      00012D 00               [12]  600 	nop 
      00012E 00               [12]  601 	nop 
                                    602 ;	main.c:102: return byte;
      00012F 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'esc_glcd'
                                    606 ;------------------------------------------------------------
                                    607 ;byte                      Allocated to registers r7 
                                    608 ;------------------------------------------------------------
                                    609 ;	main.c:107: void esc_glcd(unsigned char byte,__bit cd,__bit cs){
                                    610 ;	-----------------------------------------
                                    611 ;	 function esc_glcd
                                    612 ;	-----------------------------------------
      000130                        613 _esc_glcd:
      000130 AF 82            [24]  614 	mov	r7,dpl
                                    615 ;	main.c:109: while(le_glcd(CMD, cs) & 0x80);
      000132                        616 00101$:
      000132 C2 00            [12]  617 	clr	_le_glcd_PARM_1
      000134 A2 03            [12]  618 	mov	c,_esc_glcd_PARM_3
      000136 92 01            [24]  619 	mov	_le_glcd_PARM_2,c
      000138 C0 07            [24]  620 	push	ar7
      00013A 12 00 FD         [24]  621 	lcall	_le_glcd
      00013D E5 82            [12]  622 	mov	a,dpl
      00013F D0 07            [24]  623 	pop	ar7
      000141 20 E7 EE         [24]  624 	jb	acc.7,00101$
                                    625 ;	main.c:111: RW = 0;
      000144 C2 A3            [12]  626 	clr	_P2_3
                                    627 ;	main.c:112: CS1 = cs;
      000146 A2 03            [12]  628 	mov	c,_esc_glcd_PARM_3
      000148 92 A0            [24]  629 	mov	_P2_0,c
                                    630 ;	main.c:113: CS2 = !cs;
      00014A A2 03            [12]  631 	mov	c,_esc_glcd_PARM_3
      00014C B3               [12]  632 	cpl	c
      00014D 92 A1            [24]  633 	mov	_P2_1,c
                                    634 ;	main.c:114: RS = cd;
      00014F A2 02            [12]  635 	mov	c,_esc_glcd_PARM_2
      000151 92 A2            [24]  636 	mov	_P2_2,c
                                    637 ;	main.c:117: DB = byte;
      000153 8F B0            [24]  638 	mov	_P3,r7
                                    639 ;	main.c:120: NOP4();
      000155 00               [12]  640 	nop 
      000156 00               [12]  641 	nop 
      000157 00               [12]  642 	nop 
      000158 00               [12]  643 	nop 
                                    644 ;	main.c:122: E = 1;
      000159 D2 A4            [12]  645 	setb	_P2_4
                                    646 ;	main.c:123: NOP12();
      00015B 00               [12]  647 	nop 
      00015C 00               [12]  648 	nop 
      00015D 00               [12]  649 	nop 
      00015E 00               [12]  650 	nop 
      00015F 00               [12]  651 	nop 
      000160 00               [12]  652 	nop 
      000161 00               [12]  653 	nop 
      000162 00               [12]  654 	nop 
      000163 00               [12]  655 	nop 
      000164 00               [12]  656 	nop 
      000165 00               [12]  657 	nop 
      000166 00               [12]  658 	nop 
                                    659 ;	main.c:124: E = 0;
      000167 C2 A4            [12]  660 	clr	_P2_4
                                    661 ;	main.c:127: DB = 0xFF;
      000169 75 B0 FF         [24]  662 	mov	_P3,#0xFF
                                    663 ;	main.c:130: NOP12();
      00016C 00               [12]  664 	nop 
      00016D 00               [12]  665 	nop 
      00016E 00               [12]  666 	nop 
      00016F 00               [12]  667 	nop 
      000170 00               [12]  668 	nop 
      000171 00               [12]  669 	nop 
      000172 00               [12]  670 	nop 
      000173 00               [12]  671 	nop 
      000174 00               [12]  672 	nop 
      000175 00               [12]  673 	nop 
      000176 00               [12]  674 	nop 
      000177 00               [12]  675 	nop 
      000178 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'Init_LCGD'
                                    679 ;------------------------------------------------------------
                                    680 ;	main.c:135: void Init_LCGD(){
                                    681 ;	-----------------------------------------
                                    682 ;	 function Init_LCGD
                                    683 ;	-----------------------------------------
      000179                        684 _Init_LCGD:
                                    685 ;	main.c:137: E 	= 0;
      000179 C2 A4            [12]  686 	clr	_P2_4
                                    687 ;	main.c:138: RST = 1;
      00017B D2 A5            [12]  688 	setb	_P2_5
                                    689 ;	main.c:139: CS1 = 1;
      00017D D2 A0            [12]  690 	setb	_P2_0
                                    691 ;	main.c:140: CS2 = 1;
      00017F D2 A1            [12]  692 	setb	_P2_1
                                    693 ;	main.c:143: DB = 0xFF;
      000181 75 B0 FF         [24]  694 	mov	_P3,#0xFF
                                    695 ;	main.c:148: while(le_glcd(CMD, ESQ) & 0x10); 
      000184                        696 00101$:
      000184 C2 00            [12]  697 	clr	_le_glcd_PARM_1
      000186 C2 01            [12]  698 	clr	_le_glcd_PARM_2
      000188 12 00 FD         [24]  699 	lcall	_le_glcd
      00018B E5 82            [12]  700 	mov	a,dpl
      00018D 20 E4 F4         [24]  701 	jb	acc.4,00101$
                                    702 ;	main.c:149: while(le_glcd(CMD, DIR) & 0x10); 
      000190                        703 00104$:
      000190 C2 00            [12]  704 	clr	_le_glcd_PARM_1
      000192 D2 01            [12]  705 	setb	_le_glcd_PARM_2
      000194 12 00 FD         [24]  706 	lcall	_le_glcd
      000197 E5 82            [12]  707 	mov	a,dpl
      000199 20 E4 F4         [24]  708 	jb	acc.4,00104$
                                    709 ;	main.c:152: esc_glcd(0x3F, CMD, ESQ);
      00019C C2 02            [12]  710 	clr	_esc_glcd_PARM_2
      00019E C2 03            [12]  711 	clr	_esc_glcd_PARM_3
      0001A0 75 82 3F         [24]  712 	mov	dpl,#0x3F
      0001A3 12 01 30         [24]  713 	lcall	_esc_glcd
                                    714 ;	main.c:153: esc_glcd(0x3F, CMD, DIR);
      0001A6 C2 02            [12]  715 	clr	_esc_glcd_PARM_2
      0001A8 D2 03            [12]  716 	setb	_esc_glcd_PARM_3
      0001AA 75 82 3F         [24]  717 	mov	dpl,#0x3F
      0001AD 12 01 30         [24]  718 	lcall	_esc_glcd
                                    719 ;	main.c:158: esc_glcd(0x40, CMD, ESQ); // Y
      0001B0 C2 02            [12]  720 	clr	_esc_glcd_PARM_2
      0001B2 C2 03            [12]  721 	clr	_esc_glcd_PARM_3
      0001B4 75 82 40         [24]  722 	mov	dpl,#0x40
      0001B7 12 01 30         [24]  723 	lcall	_esc_glcd
                                    724 ;	main.c:159: esc_glcd(0x40, CMD, DIR); // Y
      0001BA C2 02            [12]  725 	clr	_esc_glcd_PARM_2
      0001BC D2 03            [12]  726 	setb	_esc_glcd_PARM_3
      0001BE 75 82 40         [24]  727 	mov	dpl,#0x40
      0001C1 12 01 30         [24]  728 	lcall	_esc_glcd
                                    729 ;	main.c:161: esc_glcd(0xB8, CMD, ESQ); // X
      0001C4 C2 02            [12]  730 	clr	_esc_glcd_PARM_2
      0001C6 C2 03            [12]  731 	clr	_esc_glcd_PARM_3
      0001C8 75 82 B8         [24]  732 	mov	dpl,#0xB8
      0001CB 12 01 30         [24]  733 	lcall	_esc_glcd
                                    734 ;	main.c:162: esc_glcd(0xB8, CMD, DIR); // X
      0001CE C2 02            [12]  735 	clr	_esc_glcd_PARM_2
      0001D0 D2 03            [12]  736 	setb	_esc_glcd_PARM_3
      0001D2 75 82 B8         [24]  737 	mov	dpl,#0xB8
      0001D5 12 01 30         [24]  738 	lcall	_esc_glcd
                                    739 ;	main.c:164: esc_glcd(0xC0, CMD, ESQ); // Z
      0001D8 C2 02            [12]  740 	clr	_esc_glcd_PARM_2
      0001DA C2 03            [12]  741 	clr	_esc_glcd_PARM_3
      0001DC 75 82 C0         [24]  742 	mov	dpl,#0xC0
      0001DF 12 01 30         [24]  743 	lcall	_esc_glcd
                                    744 ;	main.c:165: esc_glcd(0xC0, CMD, DIR); // Z
      0001E2 C2 02            [12]  745 	clr	_esc_glcd_PARM_2
      0001E4 D2 03            [12]  746 	setb	_esc_glcd_PARM_3
      0001E6 75 82 C0         [24]  747 	mov	dpl,#0xC0
      0001E9 02 01 30         [24]  748 	ljmp	_esc_glcd
                                    749 ;------------------------------------------------------------
                                    750 ;Allocation info for local variables in function 'conf_y'
                                    751 ;------------------------------------------------------------
                                    752 ;y                         Allocated to registers r7 
                                    753 ;------------------------------------------------------------
                                    754 ;	main.c:170: void conf_y(unsigned char y, __bit cs){
                                    755 ;	-----------------------------------------
                                    756 ;	 function conf_y
                                    757 ;	-----------------------------------------
      0001EC                        758 _conf_y:
      0001EC AF 82            [24]  759 	mov	r7,dpl
                                    760 ;	main.c:172: y = y & 0x3F;
      0001EE 53 07 3F         [24]  761 	anl	ar7,#0x3F
                                    762 ;	main.c:173: esc_glcd(0x40 | y, CMD, cs);
      0001F1 74 40            [12]  763 	mov	a,#0x40
      0001F3 4F               [12]  764 	orl	a,r7
      0001F4 F5 82            [12]  765 	mov	dpl,a
      0001F6 C2 02            [12]  766 	clr	_esc_glcd_PARM_2
      0001F8 A2 04            [12]  767 	mov	c,_conf_y_PARM_2
      0001FA 92 03            [24]  768 	mov	_esc_glcd_PARM_3,c
      0001FC 02 01 30         [24]  769 	ljmp	_esc_glcd
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'conf_pag'
                                    772 ;------------------------------------------------------------
                                    773 ;page                      Allocated to registers r7 
                                    774 ;------------------------------------------------------------
                                    775 ;	main.c:177: void conf_pag(unsigned char page, __bit cs){
                                    776 ;	-----------------------------------------
                                    777 ;	 function conf_pag
                                    778 ;	-----------------------------------------
      0001FF                        779 _conf_pag:
      0001FF AF 82            [24]  780 	mov	r7,dpl
                                    781 ;	main.c:179: page = page & 0x07;
      000201 53 07 07         [24]  782 	anl	ar7,#0x07
                                    783 ;	main.c:180: esc_glcd(0xb8 | page, CMD, cs);
      000204 74 B8            [12]  784 	mov	a,#0xB8
      000206 4F               [12]  785 	orl	a,r7
      000207 F5 82            [12]  786 	mov	dpl,a
      000209 C2 02            [12]  787 	clr	_esc_glcd_PARM_2
      00020B A2 05            [12]  788 	mov	c,_conf_pag_PARM_2
      00020D 92 03            [24]  789 	mov	_esc_glcd_PARM_3,c
      00020F 02 01 30         [24]  790 	ljmp	_esc_glcd
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'limp_glcd'
                                    793 ;------------------------------------------------------------
                                    794 ;i                         Allocated to registers r6 r7 
                                    795 ;j                         Allocated to registers r4 r5 
                                    796 ;------------------------------------------------------------
                                    797 ;	main.c:183: void limp_glcd(__bit cs){
                                    798 ;	-----------------------------------------
                                    799 ;	 function limp_glcd
                                    800 ;	-----------------------------------------
      000212                        801 _limp_glcd:
                                    802 ;	main.c:187: for(i = 0; i < 8; i++){
      000212 7E 00            [12]  803 	mov	r6,#0x00
      000214 7F 00            [12]  804 	mov	r7,#0x00
      000216                        805 00105$:
                                    806 ;	main.c:188: conf_pag(i, cs);
      000216 8E 82            [24]  807 	mov	dpl,r6
      000218 A2 06            [12]  808 	mov	c,_limp_glcd_PARM_1
      00021A 92 05            [24]  809 	mov	_conf_pag_PARM_2,c
      00021C C0 07            [24]  810 	push	ar7
      00021E C0 06            [24]  811 	push	ar6
      000220 12 01 FF         [24]  812 	lcall	_conf_pag
                                    813 ;	main.c:189: conf_y(0, cs);
      000223 A2 06            [12]  814 	mov	c,_limp_glcd_PARM_1
      000225 92 04            [24]  815 	mov	_conf_y_PARM_2,c
      000227 75 82 00         [24]  816 	mov	dpl,#0x00
      00022A 12 01 EC         [24]  817 	lcall	_conf_y
      00022D D0 06            [24]  818 	pop	ar6
      00022F D0 07            [24]  819 	pop	ar7
                                    820 ;	main.c:190: for(j = 0; j < 64; j++){
      000231 7C 00            [12]  821 	mov	r4,#0x00
      000233 7D 00            [12]  822 	mov	r5,#0x00
      000235                        823 00103$:
                                    824 ;	main.c:191: esc_glcd(0x00, DATA, cs);
      000235 D2 02            [12]  825 	setb	_esc_glcd_PARM_2
      000237 A2 06            [12]  826 	mov	c,_limp_glcd_PARM_1
      000239 92 03            [24]  827 	mov	_esc_glcd_PARM_3,c
      00023B 75 82 00         [24]  828 	mov	dpl,#0x00
      00023E C0 07            [24]  829 	push	ar7
      000240 C0 06            [24]  830 	push	ar6
      000242 C0 05            [24]  831 	push	ar5
      000244 C0 04            [24]  832 	push	ar4
      000246 12 01 30         [24]  833 	lcall	_esc_glcd
      000249 D0 04            [24]  834 	pop	ar4
      00024B D0 05            [24]  835 	pop	ar5
      00024D D0 06            [24]  836 	pop	ar6
      00024F D0 07            [24]  837 	pop	ar7
                                    838 ;	main.c:190: for(j = 0; j < 64; j++){
      000251 0C               [12]  839 	inc	r4
      000252 BC 00 01         [24]  840 	cjne	r4,#0x00,00120$
      000255 0D               [12]  841 	inc	r5
      000256                        842 00120$:
      000256 C3               [12]  843 	clr	c
      000257 EC               [12]  844 	mov	a,r4
      000258 94 40            [12]  845 	subb	a,#0x40
      00025A ED               [12]  846 	mov	a,r5
      00025B 94 00            [12]  847 	subb	a,#0x00
      00025D 40 D6            [24]  848 	jc	00103$
                                    849 ;	main.c:187: for(i = 0; i < 8; i++){
      00025F 0E               [12]  850 	inc	r6
      000260 BE 00 01         [24]  851 	cjne	r6,#0x00,00122$
      000263 0F               [12]  852 	inc	r7
      000264                        853 00122$:
      000264 C3               [12]  854 	clr	c
      000265 EE               [12]  855 	mov	a,r6
      000266 94 08            [12]  856 	subb	a,#0x08
      000268 EF               [12]  857 	mov	a,r7
      000269 94 00            [12]  858 	subb	a,#0x00
      00026B 40 A9            [24]  859 	jc	00105$
      00026D 22               [24]  860 	ret
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'escreveEspaco'
                                    863 ;------------------------------------------------------------
                                    864 ;	main.c:198: void escreveEspaco(__bit cs){
                                    865 ;	-----------------------------------------
                                    866 ;	 function escreveEspaco
                                    867 ;	-----------------------------------------
      00026E                        868 _escreveEspaco:
                                    869 ;	main.c:199: esc_glcd(0x00, DATA, cs);
      00026E D2 02            [12]  870 	setb	_esc_glcd_PARM_2
      000270 A2 07            [12]  871 	mov	c,_escreveEspaco_PARM_1
      000272 92 03            [24]  872 	mov	_esc_glcd_PARM_3,c
      000274 75 82 00         [24]  873 	mov	dpl,#0x00
      000277 12 01 30         [24]  874 	lcall	_esc_glcd
                                    875 ;	main.c:200: esc_glcd(0x00, DATA, cs);
      00027A D2 02            [12]  876 	setb	_esc_glcd_PARM_2
      00027C A2 07            [12]  877 	mov	c,_escreveEspaco_PARM_1
      00027E 92 03            [24]  878 	mov	_esc_glcd_PARM_3,c
      000280 75 82 00         [24]  879 	mov	dpl,#0x00
      000283 12 01 30         [24]  880 	lcall	_esc_glcd
                                    881 ;	main.c:201: esc_glcd(0x00, DATA, cs);	
      000286 D2 02            [12]  882 	setb	_esc_glcd_PARM_2
      000288 A2 07            [12]  883 	mov	c,_escreveEspaco_PARM_1
      00028A 92 03            [24]  884 	mov	_esc_glcd_PARM_3,c
      00028C 75 82 00         [24]  885 	mov	dpl,#0x00
      00028F 02 01 30         [24]  886 	ljmp	_esc_glcd
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'putchar'
                                    889 ;------------------------------------------------------------
                                    890 ;c                         Allocated to registers r7 
                                    891 ;i                         Allocated to registers r5 r6 
                                    892 ;------------------------------------------------------------
                                    893 ;	main.c:208: void putchar(char c){
                                    894 ;	-----------------------------------------
                                    895 ;	 function putchar
                                    896 ;	-----------------------------------------
      000292                        897 _putchar:
      000292 AF 82            [24]  898 	mov	r7,dpl
                                    899 ;	main.c:212: if(c < 9){
      000294 C3               [12]  900 	clr	c
      000295 EF               [12]  901 	mov	a,r7
      000296 64 80            [12]  902 	xrl	a,#0x80
      000298 94 89            [12]  903 	subb	a,#0x89
      00029A 50 2A            [24]  904 	jnc	00112$
                                    905 ;	main.c:213: conf_pag(c - 1, ESQ);
      00029C EF               [12]  906 	mov	a,r7
      00029D 14               [12]  907 	dec	a
      00029E FE               [12]  908 	mov	r6,a
      00029F C2 05            [12]  909 	clr	_conf_pag_PARM_2
      0002A1 8E 82            [24]  910 	mov	dpl,r6
      0002A3 C0 06            [24]  911 	push	ar6
      0002A5 12 01 FF         [24]  912 	lcall	_conf_pag
      0002A8 D0 06            [24]  913 	pop	ar6
                                    914 ;	main.c:214: conf_pag(c - 1, DIR);
      0002AA D2 05            [12]  915 	setb	_conf_pag_PARM_2
      0002AC 8E 82            [24]  916 	mov	dpl,r6
      0002AE 12 01 FF         [24]  917 	lcall	_conf_pag
                                    918 ;	main.c:215: conf_y(0, ESQ);
      0002B1 C2 04            [12]  919 	clr	_conf_y_PARM_2
      0002B3 75 82 00         [24]  920 	mov	dpl,#0x00
      0002B6 12 01 EC         [24]  921 	lcall	_conf_y
                                    922 ;	main.c:216: conf_y(0, DIR);
      0002B9 D2 04            [12]  923 	setb	_conf_y_PARM_2
      0002BB 75 82 00         [24]  924 	mov	dpl,#0x00
      0002BE 12 01 EC         [24]  925 	lcall	_conf_y
                                    926 ;	main.c:217: contador = 0;
      0002C1 75 08 00         [24]  927 	mov	_contador,#0x00
                                    928 ;	main.c:222: for(i = 0; i < 5; i++){
      0002C4 80 6D            [24]  929 	sjmp	00104$
      0002C6                        930 00112$:
      0002C6 7D 00            [12]  931 	mov	r5,#0x00
      0002C8 7E 00            [12]  932 	mov	r6,#0x00
      0002CA                        933 00107$:
                                    934 ;	main.c:223: esc_glcd(fonte[c - 32][i], DATA, POS);
      0002CA EF               [12]  935 	mov	a,r7
      0002CB FB               [12]  936 	mov	r3,a
      0002CC 33               [12]  937 	rlc	a
      0002CD 95 E0            [12]  938 	subb	a,acc
      0002CF FC               [12]  939 	mov	r4,a
      0002D0 EB               [12]  940 	mov	a,r3
      0002D1 24 E0            [12]  941 	add	a,#0xE0
      0002D3 F5 11            [12]  942 	mov	__mulint_PARM_2,a
      0002D5 EC               [12]  943 	mov	a,r4
      0002D6 34 FF            [12]  944 	addc	a,#0xFF
      0002D8 F5 12            [12]  945 	mov	(__mulint_PARM_2 + 1),a
      0002DA 90 00 05         [24]  946 	mov	dptr,#0x0005
      0002DD C0 07            [24]  947 	push	ar7
      0002DF C0 06            [24]  948 	push	ar6
      0002E1 C0 05            [24]  949 	push	ar5
      0002E3 12 08 B7         [24]  950 	lcall	__mulint
      0002E6 AB 82            [24]  951 	mov	r3,dpl
      0002E8 AC 83            [24]  952 	mov	r4,dph
      0002EA D0 05            [24]  953 	pop	ar5
      0002EC D0 06            [24]  954 	pop	ar6
      0002EE EB               [12]  955 	mov	a,r3
      0002EF 24 F4            [12]  956 	add	a,#_fonte
      0002F1 FB               [12]  957 	mov	r3,a
      0002F2 EC               [12]  958 	mov	a,r4
      0002F3 34 08            [12]  959 	addc	a,#(_fonte >> 8)
      0002F5 FC               [12]  960 	mov	r4,a
      0002F6 ED               [12]  961 	mov	a,r5
      0002F7 2B               [12]  962 	add	a,r3
      0002F8 F5 82            [12]  963 	mov	dpl,a
      0002FA EE               [12]  964 	mov	a,r6
      0002FB 3C               [12]  965 	addc	a,r4
      0002FC F5 83            [12]  966 	mov	dph,a
      0002FE E4               [12]  967 	clr	a
      0002FF 93               [24]  968 	movc	a,@a+dptr
      000300 FC               [12]  969 	mov	r4,a
      000301 E5 09            [12]  970 	mov	a,_POS
      000303 24 FF            [12]  971 	add	a,#0xff
      000305 92 03            [24]  972 	mov	_esc_glcd_PARM_3,c
      000307 D2 02            [12]  973 	setb	_esc_glcd_PARM_2
      000309 8C 82            [24]  974 	mov	dpl,r4
      00030B C0 06            [24]  975 	push	ar6
      00030D C0 05            [24]  976 	push	ar5
      00030F 12 01 30         [24]  977 	lcall	_esc_glcd
      000312 D0 05            [24]  978 	pop	ar5
      000314 D0 06            [24]  979 	pop	ar6
      000316 D0 07            [24]  980 	pop	ar7
                                    981 ;	main.c:222: for(i = 0; i < 5; i++){
      000318 0D               [12]  982 	inc	r5
      000319 BD 00 01         [24]  983 	cjne	r5,#0x00,00125$
      00031C 0E               [12]  984 	inc	r6
      00031D                        985 00125$:
      00031D C3               [12]  986 	clr	c
      00031E ED               [12]  987 	mov	a,r5
      00031F 94 05            [12]  988 	subb	a,#0x05
      000321 EE               [12]  989 	mov	a,r6
      000322 64 80            [12]  990 	xrl	a,#0x80
      000324 94 80            [12]  991 	subb	a,#0x80
      000326 40 A2            [24]  992 	jc	00107$
                                    993 ;	main.c:226: escreveEspaco(POS);
      000328 E5 09            [12]  994 	mov	a,_POS
      00032A 24 FF            [12]  995 	add	a,#0xff
      00032C 92 07            [24]  996 	mov	_escreveEspaco_PARM_1,c
      00032E 12 02 6E         [24]  997 	lcall	_escreveEspaco
                                    998 ;	main.c:227: contador = contador + 1;
      000331 05 08            [12]  999 	inc	_contador
      000333                       1000 00104$:
                                   1001 ;	main.c:230: if (contador == 8){
      000333 74 08            [12] 1002 	mov	a,#0x08
      000335 B5 08 0C         [24] 1003 	cjne	a,_contador,00109$
                                   1004 ;	main.c:231: POS = !POS;
      000338 E5 09            [12] 1005 	mov	a,_POS
      00033A B4 01 00         [24] 1006 	cjne	a,#0x01,00129$
      00033D                       1007 00129$:
      00033D E4               [12] 1008 	clr	a
      00033E 33               [12] 1009 	rlc	a
      00033F F5 09            [12] 1010 	mov	_POS,a
                                   1011 ;	main.c:232: contador = 0;
      000341 75 08 00         [24] 1012 	mov	_contador,#0x00
      000344                       1013 00109$:
      000344 22               [24] 1014 	ret
                                   1015 ;------------------------------------------------------------
                                   1016 ;Allocation info for local variables in function 'main'
                                   1017 ;------------------------------------------------------------
                                   1018 ;	main.c:237: void main(){
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function main
                                   1021 ;	-----------------------------------------
      000345                       1022 _main:
                                   1023 ;	main.c:243: Init_LCGD();
      000345 12 01 79         [24] 1024 	lcall	_Init_LCGD
                                   1025 ;	main.c:245: limp_glcd(ESQ);
      000348 C2 06            [12] 1026 	clr	_limp_glcd_PARM_1
      00034A 12 02 12         [24] 1027 	lcall	_limp_glcd
                                   1028 ;	main.c:246: limp_glcd(DIR);
      00034D D2 06            [12] 1029 	setb	_limp_glcd_PARM_1
      00034F 12 02 12         [24] 1030 	lcall	_limp_glcd
                                   1031 ;	main.c:248: printf_fast_f("\x01linha 1        >");
      000352 74 D4            [12] 1032 	mov	a,#___str_0
      000354 C0 E0            [24] 1033 	push	acc
      000356 74 0A            [12] 1034 	mov	a,#(___str_0 >> 8)
      000358 C0 E0            [24] 1035 	push	acc
      00035A 12 03 F3         [24] 1036 	lcall	_printf_fast_f
      00035D 15 81            [12] 1037 	dec	sp
      00035F 15 81            [12] 1038 	dec	sp
                                   1039 ;	main.c:249: printf_fast_f("\x02 linha 2       >");
      000361 74 E6            [12] 1040 	mov	a,#___str_1
      000363 C0 E0            [24] 1041 	push	acc
      000365 74 0A            [12] 1042 	mov	a,#(___str_1 >> 8)
      000367 C0 E0            [24] 1043 	push	acc
      000369 12 03 F3         [24] 1044 	lcall	_printf_fast_f
      00036C 15 81            [12] 1045 	dec	sp
      00036E 15 81            [12] 1046 	dec	sp
                                   1047 ;	main.c:250: printf_fast_f("\x03  linha 3      >");
      000370 74 F8            [12] 1048 	mov	a,#___str_2
      000372 C0 E0            [24] 1049 	push	acc
      000374 74 0A            [12] 1050 	mov	a,#(___str_2 >> 8)
      000376 C0 E0            [24] 1051 	push	acc
      000378 12 03 F3         [24] 1052 	lcall	_printf_fast_f
      00037B 15 81            [12] 1053 	dec	sp
      00037D 15 81            [12] 1054 	dec	sp
                                   1055 ;	main.c:251: printf_fast_f("\x04   linha 4     >");
      00037F 74 0A            [12] 1056 	mov	a,#___str_3
      000381 C0 E0            [24] 1057 	push	acc
      000383 74 0B            [12] 1058 	mov	a,#(___str_3 >> 8)
      000385 C0 E0            [24] 1059 	push	acc
      000387 12 03 F3         [24] 1060 	lcall	_printf_fast_f
      00038A 15 81            [12] 1061 	dec	sp
      00038C 15 81            [12] 1062 	dec	sp
                                   1063 ;	main.c:252: printf_fast_f("\x05    linha 5    >");
      00038E 74 1C            [12] 1064 	mov	a,#___str_4
      000390 C0 E0            [24] 1065 	push	acc
      000392 74 0B            [12] 1066 	mov	a,#(___str_4 >> 8)
      000394 C0 E0            [24] 1067 	push	acc
      000396 12 03 F3         [24] 1068 	lcall	_printf_fast_f
      000399 15 81            [12] 1069 	dec	sp
      00039B 15 81            [12] 1070 	dec	sp
                                   1071 ;	main.c:253: printf_fast_f("\x06     linha 6   >");	
      00039D 74 2E            [12] 1072 	mov	a,#___str_5
      00039F C0 E0            [24] 1073 	push	acc
      0003A1 74 0B            [12] 1074 	mov	a,#(___str_5 >> 8)
      0003A3 C0 E0            [24] 1075 	push	acc
      0003A5 12 03 F3         [24] 1076 	lcall	_printf_fast_f
      0003A8 15 81            [12] 1077 	dec	sp
      0003AA 15 81            [12] 1078 	dec	sp
                                   1079 ;	main.c:254: printf_fast_f("\x07      linha 7  >");
      0003AC 74 40            [12] 1080 	mov	a,#___str_6
      0003AE C0 E0            [24] 1081 	push	acc
      0003B0 74 0B            [12] 1082 	mov	a,#(___str_6 >> 8)
      0003B2 C0 E0            [24] 1083 	push	acc
      0003B4 12 03 F3         [24] 1084 	lcall	_printf_fast_f
      0003B7 15 81            [12] 1085 	dec	sp
      0003B9 15 81            [12] 1086 	dec	sp
                                   1087 ;	main.c:255: printf_fast_f("\x08       linha 8 >");
      0003BB 74 52            [12] 1088 	mov	a,#___str_7
      0003BD C0 E0            [24] 1089 	push	acc
      0003BF 74 0B            [12] 1090 	mov	a,#(___str_7 >> 8)
      0003C1 C0 E0            [24] 1091 	push	acc
      0003C3 12 03 F3         [24] 1092 	lcall	_printf_fast_f
      0003C6 15 81            [12] 1093 	dec	sp
      0003C8 15 81            [12] 1094 	dec	sp
                                   1095 ;	main.c:257: delay_ms(1000);
      0003CA 90 03 E8         [24] 1096 	mov	dptr,#0x03E8
      0003CD 12 00 78         [24] 1097 	lcall	_delay_ms
                                   1098 ;	main.c:259: printf_fast_f("\x04var = %5.1f    >", 123.568);
      0003D0 74 D1            [12] 1099 	mov	a,#0xD1
      0003D2 C0 E0            [24] 1100 	push	acc
      0003D4 74 22            [12] 1101 	mov	a,#0x22
      0003D6 C0 E0            [24] 1102 	push	acc
      0003D8 74 F7            [12] 1103 	mov	a,#0xF7
      0003DA C0 E0            [24] 1104 	push	acc
      0003DC 74 42            [12] 1105 	mov	a,#0x42
      0003DE C0 E0            [24] 1106 	push	acc
      0003E0 74 64            [12] 1107 	mov	a,#___str_8
      0003E2 C0 E0            [24] 1108 	push	acc
      0003E4 74 0B            [12] 1109 	mov	a,#(___str_8 >> 8)
      0003E6 C0 E0            [24] 1110 	push	acc
      0003E8 12 03 F3         [24] 1111 	lcall	_printf_fast_f
      0003EB E5 81            [12] 1112 	mov	a,sp
      0003ED 24 FA            [12] 1113 	add	a,#0xfa
      0003EF F5 81            [12] 1114 	mov	sp,a
                                   1115 ;	main.c:261: while(1);
      0003F1                       1116 00102$:
      0003F1 80 FE            [24] 1117 	sjmp	00102$
                                   1118 	.area CSEG    (CODE)
                                   1119 	.area CONST   (CODE)
      0008F4                       1120 _fonte:
      0008F4 00                    1121 	.db #0x00	;  0
      0008F5 00                    1122 	.db #0x00	;  0
      0008F6 00                    1123 	.db #0x00	;  0
      0008F7 00                    1124 	.db #0x00	;  0
      0008F8 00                    1125 	.db #0x00	;  0
      0008F9 00                    1126 	.db #0x00	;  0
      0008FA 00                    1127 	.db #0x00	;  0
      0008FB 5F                    1128 	.db #0x5F	;  95
      0008FC 00                    1129 	.db #0x00	;  0
      0008FD 00                    1130 	.db #0x00	;  0
      0008FE 00                    1131 	.db #0x00	;  0
      0008FF 07                    1132 	.db #0x07	;  7
      000900 00                    1133 	.db #0x00	;  0
      000901 07                    1134 	.db #0x07	;  7
      000902 00                    1135 	.db #0x00	;  0
      000903 14                    1136 	.db #0x14	;  20
      000904 7F                    1137 	.db #0x7F	;  127
      000905 14                    1138 	.db #0x14	;  20
      000906 7F                    1139 	.db #0x7F	;  127
      000907 14                    1140 	.db #0x14	;  20
      000908 24                    1141 	.db #0x24	;  36
      000909 2A                    1142 	.db #0x2A	;  42
      00090A 7F                    1143 	.db #0x7F	;  127
      00090B 2A                    1144 	.db #0x2A	;  42
      00090C 12                    1145 	.db #0x12	;  18
      00090D 23                    1146 	.db #0x23	;  35
      00090E 13                    1147 	.db #0x13	;  19
      00090F 08                    1148 	.db #0x08	;  8
      000910 64                    1149 	.db #0x64	;  100	'd'
      000911 62                    1150 	.db #0x62	;  98	'b'
      000912 36                    1151 	.db #0x36	;  54	'6'
      000913 49                    1152 	.db #0x49	;  73	'I'
      000914 55                    1153 	.db #0x55	;  85	'U'
      000915 22                    1154 	.db #0x22	;  34
      000916 50                    1155 	.db #0x50	;  80	'P'
      000917 00                    1156 	.db #0x00	;  0
      000918 05                    1157 	.db #0x05	;  5
      000919 03                    1158 	.db #0x03	;  3
      00091A 00                    1159 	.db #0x00	;  0
      00091B 00                    1160 	.db #0x00	;  0
      00091C 00                    1161 	.db #0x00	;  0
      00091D 1C                    1162 	.db #0x1C	;  28
      00091E 22                    1163 	.db #0x22	;  34
      00091F 41                    1164 	.db #0x41	;  65	'A'
      000920 00                    1165 	.db #0x00	;  0
      000921 00                    1166 	.db #0x00	;  0
      000922 41                    1167 	.db #0x41	;  65	'A'
      000923 22                    1168 	.db #0x22	;  34
      000924 1C                    1169 	.db #0x1C	;  28
      000925 00                    1170 	.db #0x00	;  0
      000926 08                    1171 	.db #0x08	;  8
      000927 2A                    1172 	.db #0x2A	;  42
      000928 1C                    1173 	.db #0x1C	;  28
      000929 2A                    1174 	.db #0x2A	;  42
      00092A 08                    1175 	.db #0x08	;  8
      00092B 08                    1176 	.db #0x08	;  8
      00092C 08                    1177 	.db #0x08	;  8
      00092D 3E                    1178 	.db #0x3E	;  62
      00092E 08                    1179 	.db #0x08	;  8
      00092F 08                    1180 	.db #0x08	;  8
      000930 00                    1181 	.db #0x00	;  0
      000931 50                    1182 	.db #0x50	;  80	'P'
      000932 30                    1183 	.db #0x30	;  48	'0'
      000933 00                    1184 	.db #0x00	;  0
      000934 00                    1185 	.db #0x00	;  0
      000935 08                    1186 	.db #0x08	;  8
      000936 08                    1187 	.db #0x08	;  8
      000937 08                    1188 	.db #0x08	;  8
      000938 08                    1189 	.db #0x08	;  8
      000939 08                    1190 	.db #0x08	;  8
      00093A 00                    1191 	.db #0x00	;  0
      00093B 30                    1192 	.db #0x30	;  48	'0'
      00093C 30                    1193 	.db #0x30	;  48	'0'
      00093D 00                    1194 	.db #0x00	;  0
      00093E 00                    1195 	.db #0x00	;  0
      00093F 20                    1196 	.db #0x20	;  32
      000940 10                    1197 	.db #0x10	;  16
      000941 08                    1198 	.db #0x08	;  8
      000942 04                    1199 	.db #0x04	;  4
      000943 02                    1200 	.db #0x02	;  2
      000944 3E                    1201 	.db #0x3E	;  62
      000945 51                    1202 	.db #0x51	;  81	'Q'
      000946 49                    1203 	.db #0x49	;  73	'I'
      000947 45                    1204 	.db #0x45	;  69	'E'
      000948 3E                    1205 	.db #0x3E	;  62
      000949 00                    1206 	.db #0x00	;  0
      00094A 42                    1207 	.db #0x42	;  66	'B'
      00094B 7F                    1208 	.db #0x7F	;  127
      00094C 40                    1209 	.db #0x40	;  64
      00094D 00                    1210 	.db #0x00	;  0
      00094E 42                    1211 	.db #0x42	;  66	'B'
      00094F 61                    1212 	.db #0x61	;  97	'a'
      000950 51                    1213 	.db #0x51	;  81	'Q'
      000951 49                    1214 	.db #0x49	;  73	'I'
      000952 46                    1215 	.db #0x46	;  70	'F'
      000953 21                    1216 	.db #0x21	;  33
      000954 41                    1217 	.db #0x41	;  65	'A'
      000955 45                    1218 	.db #0x45	;  69	'E'
      000956 4B                    1219 	.db #0x4B	;  75	'K'
      000957 31                    1220 	.db #0x31	;  49	'1'
      000958 18                    1221 	.db #0x18	;  24
      000959 14                    1222 	.db #0x14	;  20
      00095A 12                    1223 	.db #0x12	;  18
      00095B 7F                    1224 	.db #0x7F	;  127
      00095C 10                    1225 	.db #0x10	;  16
      00095D 27                    1226 	.db #0x27	;  39
      00095E 45                    1227 	.db #0x45	;  69	'E'
      00095F 45                    1228 	.db #0x45	;  69	'E'
      000960 45                    1229 	.db #0x45	;  69	'E'
      000961 39                    1230 	.db #0x39	;  57	'9'
      000962 3C                    1231 	.db #0x3C	;  60
      000963 4A                    1232 	.db #0x4A	;  74	'J'
      000964 49                    1233 	.db #0x49	;  73	'I'
      000965 49                    1234 	.db #0x49	;  73	'I'
      000966 30                    1235 	.db #0x30	;  48	'0'
      000967 01                    1236 	.db #0x01	;  1
      000968 71                    1237 	.db #0x71	;  113	'q'
      000969 09                    1238 	.db #0x09	;  9
      00096A 05                    1239 	.db #0x05	;  5
      00096B 03                    1240 	.db #0x03	;  3
      00096C 36                    1241 	.db #0x36	;  54	'6'
      00096D 49                    1242 	.db #0x49	;  73	'I'
      00096E 49                    1243 	.db #0x49	;  73	'I'
      00096F 49                    1244 	.db #0x49	;  73	'I'
      000970 36                    1245 	.db #0x36	;  54	'6'
      000971 06                    1246 	.db #0x06	;  6
      000972 49                    1247 	.db #0x49	;  73	'I'
      000973 49                    1248 	.db #0x49	;  73	'I'
      000974 29                    1249 	.db #0x29	;  41
      000975 1E                    1250 	.db #0x1E	;  30
      000976 00                    1251 	.db #0x00	;  0
      000977 36                    1252 	.db #0x36	;  54	'6'
      000978 36                    1253 	.db #0x36	;  54	'6'
      000979 00                    1254 	.db #0x00	;  0
      00097A 00                    1255 	.db #0x00	;  0
      00097B 00                    1256 	.db #0x00	;  0
      00097C 56                    1257 	.db #0x56	;  86	'V'
      00097D 36                    1258 	.db #0x36	;  54	'6'
      00097E 00                    1259 	.db #0x00	;  0
      00097F 00                    1260 	.db #0x00	;  0
      000980 00                    1261 	.db #0x00	;  0
      000981 08                    1262 	.db #0x08	;  8
      000982 14                    1263 	.db #0x14	;  20
      000983 22                    1264 	.db #0x22	;  34
      000984 41                    1265 	.db #0x41	;  65	'A'
      000985 14                    1266 	.db #0x14	;  20
      000986 14                    1267 	.db #0x14	;  20
      000987 14                    1268 	.db #0x14	;  20
      000988 14                    1269 	.db #0x14	;  20
      000989 14                    1270 	.db #0x14	;  20
      00098A 41                    1271 	.db #0x41	;  65	'A'
      00098B 22                    1272 	.db #0x22	;  34
      00098C 14                    1273 	.db #0x14	;  20
      00098D 08                    1274 	.db #0x08	;  8
      00098E 00                    1275 	.db #0x00	;  0
      00098F 02                    1276 	.db #0x02	;  2
      000990 01                    1277 	.db #0x01	;  1
      000991 51                    1278 	.db #0x51	;  81	'Q'
      000992 09                    1279 	.db #0x09	;  9
      000993 06                    1280 	.db #0x06	;  6
      000994 32                    1281 	.db #0x32	;  50	'2'
      000995 49                    1282 	.db #0x49	;  73	'I'
      000996 79                    1283 	.db #0x79	;  121	'y'
      000997 41                    1284 	.db #0x41	;  65	'A'
      000998 3E                    1285 	.db #0x3E	;  62
      000999 7E                    1286 	.db #0x7E	;  126
      00099A 11                    1287 	.db #0x11	;  17
      00099B 11                    1288 	.db #0x11	;  17
      00099C 11                    1289 	.db #0x11	;  17
      00099D 7E                    1290 	.db #0x7E	;  126
      00099E 7F                    1291 	.db #0x7F	;  127
      00099F 49                    1292 	.db #0x49	;  73	'I'
      0009A0 49                    1293 	.db #0x49	;  73	'I'
      0009A1 49                    1294 	.db #0x49	;  73	'I'
      0009A2 36                    1295 	.db #0x36	;  54	'6'
      0009A3 3E                    1296 	.db #0x3E	;  62
      0009A4 41                    1297 	.db #0x41	;  65	'A'
      0009A5 41                    1298 	.db #0x41	;  65	'A'
      0009A6 41                    1299 	.db #0x41	;  65	'A'
      0009A7 22                    1300 	.db #0x22	;  34
      0009A8 7F                    1301 	.db #0x7F	;  127
      0009A9 41                    1302 	.db #0x41	;  65	'A'
      0009AA 41                    1303 	.db #0x41	;  65	'A'
      0009AB 22                    1304 	.db #0x22	;  34
      0009AC 1C                    1305 	.db #0x1C	;  28
      0009AD 7F                    1306 	.db #0x7F	;  127
      0009AE 49                    1307 	.db #0x49	;  73	'I'
      0009AF 49                    1308 	.db #0x49	;  73	'I'
      0009B0 49                    1309 	.db #0x49	;  73	'I'
      0009B1 41                    1310 	.db #0x41	;  65	'A'
      0009B2 7F                    1311 	.db #0x7F	;  127
      0009B3 09                    1312 	.db #0x09	;  9
      0009B4 09                    1313 	.db #0x09	;  9
      0009B5 01                    1314 	.db #0x01	;  1
      0009B6 01                    1315 	.db #0x01	;  1
      0009B7 3E                    1316 	.db #0x3E	;  62
      0009B8 41                    1317 	.db #0x41	;  65	'A'
      0009B9 41                    1318 	.db #0x41	;  65	'A'
      0009BA 51                    1319 	.db #0x51	;  81	'Q'
      0009BB 32                    1320 	.db #0x32	;  50	'2'
      0009BC 7F                    1321 	.db #0x7F	;  127
      0009BD 08                    1322 	.db #0x08	;  8
      0009BE 08                    1323 	.db #0x08	;  8
      0009BF 08                    1324 	.db #0x08	;  8
      0009C0 7F                    1325 	.db #0x7F	;  127
      0009C1 00                    1326 	.db #0x00	;  0
      0009C2 41                    1327 	.db #0x41	;  65	'A'
      0009C3 7F                    1328 	.db #0x7F	;  127
      0009C4 41                    1329 	.db #0x41	;  65	'A'
      0009C5 00                    1330 	.db #0x00	;  0
      0009C6 20                    1331 	.db #0x20	;  32
      0009C7 40                    1332 	.db #0x40	;  64
      0009C8 41                    1333 	.db #0x41	;  65	'A'
      0009C9 3F                    1334 	.db #0x3F	;  63
      0009CA 01                    1335 	.db #0x01	;  1
      0009CB 7F                    1336 	.db #0x7F	;  127
      0009CC 08                    1337 	.db #0x08	;  8
      0009CD 14                    1338 	.db #0x14	;  20
      0009CE 22                    1339 	.db #0x22	;  34
      0009CF 41                    1340 	.db #0x41	;  65	'A'
      0009D0 7F                    1341 	.db #0x7F	;  127
      0009D1 40                    1342 	.db #0x40	;  64
      0009D2 40                    1343 	.db #0x40	;  64
      0009D3 40                    1344 	.db #0x40	;  64
      0009D4 40                    1345 	.db #0x40	;  64
      0009D5 7F                    1346 	.db #0x7F	;  127
      0009D6 02                    1347 	.db #0x02	;  2
      0009D7 04                    1348 	.db #0x04	;  4
      0009D8 02                    1349 	.db #0x02	;  2
      0009D9 7F                    1350 	.db #0x7F	;  127
      0009DA 7F                    1351 	.db #0x7F	;  127
      0009DB 04                    1352 	.db #0x04	;  4
      0009DC 08                    1353 	.db #0x08	;  8
      0009DD 10                    1354 	.db #0x10	;  16
      0009DE 7F                    1355 	.db #0x7F	;  127
      0009DF 3E                    1356 	.db #0x3E	;  62
      0009E0 41                    1357 	.db #0x41	;  65	'A'
      0009E1 41                    1358 	.db #0x41	;  65	'A'
      0009E2 41                    1359 	.db #0x41	;  65	'A'
      0009E3 3E                    1360 	.db #0x3E	;  62
      0009E4 7F                    1361 	.db #0x7F	;  127
      0009E5 09                    1362 	.db #0x09	;  9
      0009E6 09                    1363 	.db #0x09	;  9
      0009E7 09                    1364 	.db #0x09	;  9
      0009E8 06                    1365 	.db #0x06	;  6
      0009E9 3E                    1366 	.db #0x3E	;  62
      0009EA 41                    1367 	.db #0x41	;  65	'A'
      0009EB 51                    1368 	.db #0x51	;  81	'Q'
      0009EC 21                    1369 	.db #0x21	;  33
      0009ED 5E                    1370 	.db #0x5E	;  94
      0009EE 7F                    1371 	.db #0x7F	;  127
      0009EF 09                    1372 	.db #0x09	;  9
      0009F0 19                    1373 	.db #0x19	;  25
      0009F1 29                    1374 	.db #0x29	;  41
      0009F2 46                    1375 	.db #0x46	;  70	'F'
      0009F3 46                    1376 	.db #0x46	;  70	'F'
      0009F4 49                    1377 	.db #0x49	;  73	'I'
      0009F5 49                    1378 	.db #0x49	;  73	'I'
      0009F6 49                    1379 	.db #0x49	;  73	'I'
      0009F7 31                    1380 	.db #0x31	;  49	'1'
      0009F8 01                    1381 	.db #0x01	;  1
      0009F9 01                    1382 	.db #0x01	;  1
      0009FA 7F                    1383 	.db #0x7F	;  127
      0009FB 01                    1384 	.db #0x01	;  1
      0009FC 01                    1385 	.db #0x01	;  1
      0009FD 3F                    1386 	.db #0x3F	;  63
      0009FE 40                    1387 	.db #0x40	;  64
      0009FF 40                    1388 	.db #0x40	;  64
      000A00 40                    1389 	.db #0x40	;  64
      000A01 3F                    1390 	.db #0x3F	;  63
      000A02 1F                    1391 	.db #0x1F	;  31
      000A03 20                    1392 	.db #0x20	;  32
      000A04 40                    1393 	.db #0x40	;  64
      000A05 20                    1394 	.db #0x20	;  32
      000A06 1F                    1395 	.db #0x1F	;  31
      000A07 7F                    1396 	.db #0x7F	;  127
      000A08 20                    1397 	.db #0x20	;  32
      000A09 18                    1398 	.db #0x18	;  24
      000A0A 20                    1399 	.db #0x20	;  32
      000A0B 7F                    1400 	.db #0x7F	;  127
      000A0C 63                    1401 	.db #0x63	;  99	'c'
      000A0D 14                    1402 	.db #0x14	;  20
      000A0E 08                    1403 	.db #0x08	;  8
      000A0F 14                    1404 	.db #0x14	;  20
      000A10 63                    1405 	.db #0x63	;  99	'c'
      000A11 03                    1406 	.db #0x03	;  3
      000A12 04                    1407 	.db #0x04	;  4
      000A13 78                    1408 	.db #0x78	;  120	'x'
      000A14 04                    1409 	.db #0x04	;  4
      000A15 03                    1410 	.db #0x03	;  3
      000A16 61                    1411 	.db #0x61	;  97	'a'
      000A17 51                    1412 	.db #0x51	;  81	'Q'
      000A18 49                    1413 	.db #0x49	;  73	'I'
      000A19 45                    1414 	.db #0x45	;  69	'E'
      000A1A 43                    1415 	.db #0x43	;  67	'C'
      000A1B 00                    1416 	.db #0x00	;  0
      000A1C 00                    1417 	.db #0x00	;  0
      000A1D 7F                    1418 	.db #0x7F	;  127
      000A1E 41                    1419 	.db #0x41	;  65	'A'
      000A1F 41                    1420 	.db #0x41	;  65	'A'
      000A20 02                    1421 	.db #0x02	;  2
      000A21 04                    1422 	.db #0x04	;  4
      000A22 08                    1423 	.db #0x08	;  8
      000A23 10                    1424 	.db #0x10	;  16
      000A24 20                    1425 	.db #0x20	;  32
      000A25 41                    1426 	.db #0x41	;  65	'A'
      000A26 41                    1427 	.db #0x41	;  65	'A'
      000A27 7F                    1428 	.db #0x7F	;  127
      000A28 00                    1429 	.db #0x00	;  0
      000A29 00                    1430 	.db #0x00	;  0
      000A2A 04                    1431 	.db #0x04	;  4
      000A2B 02                    1432 	.db #0x02	;  2
      000A2C 01                    1433 	.db #0x01	;  1
      000A2D 02                    1434 	.db #0x02	;  2
      000A2E 04                    1435 	.db #0x04	;  4
      000A2F 40                    1436 	.db #0x40	;  64
      000A30 40                    1437 	.db #0x40	;  64
      000A31 40                    1438 	.db #0x40	;  64
      000A32 40                    1439 	.db #0x40	;  64
      000A33 40                    1440 	.db #0x40	;  64
      000A34 00                    1441 	.db #0x00	;  0
      000A35 01                    1442 	.db #0x01	;  1
      000A36 02                    1443 	.db #0x02	;  2
      000A37 04                    1444 	.db #0x04	;  4
      000A38 00                    1445 	.db #0x00	;  0
      000A39 20                    1446 	.db #0x20	;  32
      000A3A 54                    1447 	.db #0x54	;  84	'T'
      000A3B 54                    1448 	.db #0x54	;  84	'T'
      000A3C 54                    1449 	.db #0x54	;  84	'T'
      000A3D 78                    1450 	.db #0x78	;  120	'x'
      000A3E 7F                    1451 	.db #0x7F	;  127
      000A3F 48                    1452 	.db #0x48	;  72	'H'
      000A40 44                    1453 	.db #0x44	;  68	'D'
      000A41 44                    1454 	.db #0x44	;  68	'D'
      000A42 38                    1455 	.db #0x38	;  56	'8'
      000A43 38                    1456 	.db #0x38	;  56	'8'
      000A44 44                    1457 	.db #0x44	;  68	'D'
      000A45 44                    1458 	.db #0x44	;  68	'D'
      000A46 44                    1459 	.db #0x44	;  68	'D'
      000A47 20                    1460 	.db #0x20	;  32
      000A48 38                    1461 	.db #0x38	;  56	'8'
      000A49 44                    1462 	.db #0x44	;  68	'D'
      000A4A 44                    1463 	.db #0x44	;  68	'D'
      000A4B 48                    1464 	.db #0x48	;  72	'H'
      000A4C 7F                    1465 	.db #0x7F	;  127
      000A4D 38                    1466 	.db #0x38	;  56	'8'
      000A4E 54                    1467 	.db #0x54	;  84	'T'
      000A4F 54                    1468 	.db #0x54	;  84	'T'
      000A50 54                    1469 	.db #0x54	;  84	'T'
      000A51 18                    1470 	.db #0x18	;  24
      000A52 08                    1471 	.db #0x08	;  8
      000A53 7E                    1472 	.db #0x7E	;  126
      000A54 09                    1473 	.db #0x09	;  9
      000A55 01                    1474 	.db #0x01	;  1
      000A56 02                    1475 	.db #0x02	;  2
      000A57 08                    1476 	.db #0x08	;  8
      000A58 14                    1477 	.db #0x14	;  20
      000A59 54                    1478 	.db #0x54	;  84	'T'
      000A5A 54                    1479 	.db #0x54	;  84	'T'
      000A5B 3C                    1480 	.db #0x3C	;  60
      000A5C 7F                    1481 	.db #0x7F	;  127
      000A5D 08                    1482 	.db #0x08	;  8
      000A5E 04                    1483 	.db #0x04	;  4
      000A5F 04                    1484 	.db #0x04	;  4
      000A60 78                    1485 	.db #0x78	;  120	'x'
      000A61 00                    1486 	.db #0x00	;  0
      000A62 44                    1487 	.db #0x44	;  68	'D'
      000A63 7D                    1488 	.db #0x7D	;  125
      000A64 40                    1489 	.db #0x40	;  64
      000A65 00                    1490 	.db #0x00	;  0
      000A66 20                    1491 	.db #0x20	;  32
      000A67 40                    1492 	.db #0x40	;  64
      000A68 44                    1493 	.db #0x44	;  68	'D'
      000A69 3D                    1494 	.db #0x3D	;  61
      000A6A 00                    1495 	.db #0x00	;  0
      000A6B 00                    1496 	.db #0x00	;  0
      000A6C 7F                    1497 	.db #0x7F	;  127
      000A6D 10                    1498 	.db #0x10	;  16
      000A6E 28                    1499 	.db #0x28	;  40
      000A6F 44                    1500 	.db #0x44	;  68	'D'
      000A70 00                    1501 	.db #0x00	;  0
      000A71 41                    1502 	.db #0x41	;  65	'A'
      000A72 7F                    1503 	.db #0x7F	;  127
      000A73 40                    1504 	.db #0x40	;  64
      000A74 00                    1505 	.db #0x00	;  0
      000A75 7C                    1506 	.db #0x7C	;  124
      000A76 04                    1507 	.db #0x04	;  4
      000A77 18                    1508 	.db #0x18	;  24
      000A78 04                    1509 	.db #0x04	;  4
      000A79 78                    1510 	.db #0x78	;  120	'x'
      000A7A 7C                    1511 	.db #0x7C	;  124
      000A7B 08                    1512 	.db #0x08	;  8
      000A7C 04                    1513 	.db #0x04	;  4
      000A7D 04                    1514 	.db #0x04	;  4
      000A7E 78                    1515 	.db #0x78	;  120	'x'
      000A7F 38                    1516 	.db #0x38	;  56	'8'
      000A80 44                    1517 	.db #0x44	;  68	'D'
      000A81 44                    1518 	.db #0x44	;  68	'D'
      000A82 44                    1519 	.db #0x44	;  68	'D'
      000A83 38                    1520 	.db #0x38	;  56	'8'
      000A84 7C                    1521 	.db #0x7C	;  124
      000A85 14                    1522 	.db #0x14	;  20
      000A86 14                    1523 	.db #0x14	;  20
      000A87 14                    1524 	.db #0x14	;  20
      000A88 08                    1525 	.db #0x08	;  8
      000A89 08                    1526 	.db #0x08	;  8
      000A8A 14                    1527 	.db #0x14	;  20
      000A8B 14                    1528 	.db #0x14	;  20
      000A8C 18                    1529 	.db #0x18	;  24
      000A8D 7C                    1530 	.db #0x7C	;  124
      000A8E 7C                    1531 	.db #0x7C	;  124
      000A8F 08                    1532 	.db #0x08	;  8
      000A90 04                    1533 	.db #0x04	;  4
      000A91 04                    1534 	.db #0x04	;  4
      000A92 08                    1535 	.db #0x08	;  8
      000A93 48                    1536 	.db #0x48	;  72	'H'
      000A94 54                    1537 	.db #0x54	;  84	'T'
      000A95 54                    1538 	.db #0x54	;  84	'T'
      000A96 54                    1539 	.db #0x54	;  84	'T'
      000A97 20                    1540 	.db #0x20	;  32
      000A98 04                    1541 	.db #0x04	;  4
      000A99 3F                    1542 	.db #0x3F	;  63
      000A9A 44                    1543 	.db #0x44	;  68	'D'
      000A9B 40                    1544 	.db #0x40	;  64
      000A9C 20                    1545 	.db #0x20	;  32
      000A9D 3C                    1546 	.db #0x3C	;  60
      000A9E 40                    1547 	.db #0x40	;  64
      000A9F 40                    1548 	.db #0x40	;  64
      000AA0 20                    1549 	.db #0x20	;  32
      000AA1 7C                    1550 	.db #0x7C	;  124
      000AA2 1C                    1551 	.db #0x1C	;  28
      000AA3 20                    1552 	.db #0x20	;  32
      000AA4 40                    1553 	.db #0x40	;  64
      000AA5 20                    1554 	.db #0x20	;  32
      000AA6 1C                    1555 	.db #0x1C	;  28
      000AA7 3C                    1556 	.db #0x3C	;  60
      000AA8 40                    1557 	.db #0x40	;  64
      000AA9 30                    1558 	.db #0x30	;  48	'0'
      000AAA 40                    1559 	.db #0x40	;  64
      000AAB 3C                    1560 	.db #0x3C	;  60
      000AAC 44                    1561 	.db #0x44	;  68	'D'
      000AAD 28                    1562 	.db #0x28	;  40
      000AAE 10                    1563 	.db #0x10	;  16
      000AAF 28                    1564 	.db #0x28	;  40
      000AB0 44                    1565 	.db #0x44	;  68	'D'
      000AB1 0C                    1566 	.db #0x0C	;  12
      000AB2 50                    1567 	.db #0x50	;  80	'P'
      000AB3 50                    1568 	.db #0x50	;  80	'P'
      000AB4 50                    1569 	.db #0x50	;  80	'P'
      000AB5 3C                    1570 	.db #0x3C	;  60
      000AB6 44                    1571 	.db #0x44	;  68	'D'
      000AB7 64                    1572 	.db #0x64	;  100	'd'
      000AB8 54                    1573 	.db #0x54	;  84	'T'
      000AB9 4C                    1574 	.db #0x4C	;  76	'L'
      000ABA 44                    1575 	.db #0x44	;  68	'D'
      000ABB 00                    1576 	.db #0x00	;  0
      000ABC 08                    1577 	.db #0x08	;  8
      000ABD 36                    1578 	.db #0x36	;  54	'6'
      000ABE 41                    1579 	.db #0x41	;  65	'A'
      000ABF 00                    1580 	.db #0x00	;  0
      000AC0 00                    1581 	.db #0x00	;  0
      000AC1 00                    1582 	.db #0x00	;  0
      000AC2 7F                    1583 	.db #0x7F	;  127
      000AC3 00                    1584 	.db #0x00	;  0
      000AC4 00                    1585 	.db #0x00	;  0
      000AC5 00                    1586 	.db #0x00	;  0
      000AC6 41                    1587 	.db #0x41	;  65	'A'
      000AC7 36                    1588 	.db #0x36	;  54	'6'
      000AC8 08                    1589 	.db #0x08	;  8
      000AC9 00                    1590 	.db #0x00	;  0
      000ACA 08                    1591 	.db #0x08	;  8
      000ACB 08                    1592 	.db #0x08	;  8
      000ACC 2A                    1593 	.db #0x2A	;  42
      000ACD 1C                    1594 	.db #0x1C	;  28
      000ACE 08                    1595 	.db #0x08	;  8
      000ACF 08                    1596 	.db #0x08	;  8
      000AD0 1C                    1597 	.db #0x1C	;  28
      000AD1 2A                    1598 	.db #0x2A	;  42
      000AD2 08                    1599 	.db #0x08	;  8
      000AD3 08                    1600 	.db #0x08	;  8
      000AD4                       1601 ___str_0:
      000AD4 01                    1602 	.db 0x01
      000AD5 6C 69 6E 68 61 20 31  1603 	.ascii "linha 1        >"
             20 20 20 20 20 20 20
             20 3E
      000AE5 00                    1604 	.db 0x00
      000AE6                       1605 ___str_1:
      000AE6 02                    1606 	.db 0x02
      000AE7 20 6C 69 6E 68 61 20  1607 	.ascii " linha 2       >"
             32 20 20 20 20 20 20
             20 3E
      000AF7 00                    1608 	.db 0x00
      000AF8                       1609 ___str_2:
      000AF8 03                    1610 	.db 0x03
      000AF9 20 20 6C 69 6E 68 61  1611 	.ascii "  linha 3      >"
             20 33 20 20 20 20 20
             20 3E
      000B09 00                    1612 	.db 0x00
      000B0A                       1613 ___str_3:
      000B0A 04                    1614 	.db 0x04
      000B0B 20 20 20 6C 69 6E 68  1615 	.ascii "   linha 4     >"
             61 20 34 20 20 20 20
             20 3E
      000B1B 00                    1616 	.db 0x00
      000B1C                       1617 ___str_4:
      000B1C 05                    1618 	.db 0x05
      000B1D 20 20 20 20 6C 69 6E  1619 	.ascii "    linha 5    >"
             68 61 20 35 20 20 20
             20 3E
      000B2D 00                    1620 	.db 0x00
      000B2E                       1621 ___str_5:
      000B2E 06                    1622 	.db 0x06
      000B2F 20 20 20 20 20 6C 69  1623 	.ascii "     linha 6   >"
             6E 68 61 20 36 20 20
             20 3E
      000B3F 00                    1624 	.db 0x00
      000B40                       1625 ___str_6:
      000B40 07                    1626 	.db 0x07
      000B41 20 20 20 20 20 20 6C  1627 	.ascii "      linha 7  >"
             69 6E 68 61 20 37 20
             20 3E
      000B51 00                    1628 	.db 0x00
      000B52                       1629 ___str_7:
      000B52 08                    1630 	.db 0x08
      000B53 20 20 20 20 20 20 20  1631 	.ascii "       linha 8 >"
             6C 69 6E 68 61 20 38
             20 3E
      000B63 00                    1632 	.db 0x00
      000B64                       1633 ___str_8:
      000B64 04                    1634 	.db 0x04
      000B65 76 61 72 20 3D 20 25  1635 	.ascii "var = %5.1f    >"
             35 2E 31 66 20 20 20
             20 3E
      000B75 00                    1636 	.db 0x00
                                   1637 	.area XINIT   (CODE)
                                   1638 	.area CABS    (ABS,CODE)
