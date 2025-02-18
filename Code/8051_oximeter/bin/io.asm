;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module io
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_tiny
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
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
	.globl _getUserHexInput_PARM_2
	.globl _getUserNumberInput_PARM_2
	.globl _putchar
	.globl _getchar
	.globl _getUserNumberInput
	.globl _getUserHexInput
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_putchar_c_65536_17:
	.ds 2
_getUserNumberInput_PARM_2:
	.ds 2
_getUserNumberInput_maxDigits_65536_21:
	.ds 1
_getUserNumberInput_value_65536_22:
	.ds 2
_getUserNumberInput_fail_131073_24:
	.ds 1
_getUserHexInput_PARM_2:
	.ds 2
_getUserHexInput_maxChar_65536_32:
	.ds 1
_getUserHexInput_value_65536_33:
	.ds 2
_getUserHexInput_fail_131073_35:
	.ds 1
_getUserHexInput_x_262146_39:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_17'
;------------------------------------------------------------
;	src/io.c:34: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_17
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/io.c:36: while (TI != 1);       // Waits until TI flag is ready to transmit data, set by hardware
00101$:
;	src/io.c:37: TI = 0;               // Once data has been transmitted, TI flag is cleared by software
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/io.c:38: SBUF = c;             // Transmits the ASCII value of c on the serial line
	mov	dptr,#_putchar_c_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	src/io.c:39: return c;
	mov	dpl,r6
	mov	dph,r7
;	src/io.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	src/io.c:48: int getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src/io.c:50: while (RI != 1);      // Waits until RI has received data
00101$:
;	src/io.c:51: RI = 0;               // Once data has been received, software clears the RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	src/io.c:52: return SBUF;          // Returns value in SBUF to the calling function
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	src/io.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getUserNumberInput'
;------------------------------------------------------------
;maxVal                    Allocated with name '_getUserNumberInput_PARM_2'
;maxDigits                 Allocated with name '_getUserNumberInput_maxDigits_65536_21'
;value                     Allocated with name '_getUserNumberInput_value_65536_22'
;fail                      Allocated with name '_getUserNumberInput_fail_131073_24'
;i                         Allocated with name '_getUserNumberInput_i_196609_25'
;c                         Allocated with name '_getUserNumberInput_c_262145_26'
;x                         Allocated with name '_getUserNumberInput_x_327681_28'
;------------------------------------------------------------
;	src/io.c:62: uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal) //max number of digits user can input
;	-----------------------------------------
;	 function getUserNumberInput
;	-----------------------------------------
_getUserNumberInput:
	mov	a,dpl
	mov	dptr,#_getUserNumberInput_maxDigits_65536_21
	movx	@dptr,a
;	src/io.c:66: while (1)
	mov	dptr,#_getUserNumberInput_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getUserNumberInput_maxDigits_65536_21
	movx	a,@dptr
	mov	r5,a
00113$:
;	src/io.c:68: value = 0;
	mov	dptr,#_getUserNumberInput_value_65536_22
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/io.c:69: bool fail = false;
	mov	dptr,#_getUserNumberInput_fail_131073_24
	movx	@dptr,a
;	src/io.c:70: printf_tiny("\n\rEnter a maximum %d digit number:", maxDigits);
	mov	ar3,r5
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:71: for (uint8_t i = 0; i < maxDigits; i++)
	mov	r4,#0x00
00116$:
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00152$
	ljmp	00109$
00152$:
;	src/io.c:73: char c = getchar();               //  take user input
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:74: if (c == '\r')                    //user enters ENTER key
	cjne	r2,#0x0d,00153$
	ljmp	00109$
00153$:
;	src/io.c:78: printf_tiny("%c", c);            //prints character on screen as user is typing
	mov	ar1,r2
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar3
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:79: if (c >= '0' && c <= '9')        // check if input is a number
	cjne	r2,#0x30,00154$
00154$:
	jnc	00155$
	ljmp	00106$
00155$:
	mov	a,r2
	add	a,#0xff - 0x39
	jnc	00156$
	ljmp	00106$
00156$:
;	src/io.c:81: uint8_t x = c - '0';           //converts user input(ASCII) to int
	mov	a,r2
	add	a,#0xd0
	mov	r2,a
;	src/io.c:82: value = value * 10 + x;        //calculates multi-digit ASCII input
	mov	dptr,#_getUserNumberInput_value_65536_22
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	__mulint
	mov	r1,dpl
	mov	r3,dph
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r2
	mov	r2,#0x00
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	mov	dptr,#_getUserNumberInput_value_65536_22
	mov	a,r1
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	src/io.c:83: if (value > maxVal)
	mov	dptr,#_getUserNumberInput_value_65536_22
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00117$
;	src/io.c:85: ERROR_LOG("Value entered is beyond range %x", maxVal);
	push	ar7
	push	ar6
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:86: fail = true;
	mov	dptr,#_getUserNumberInput_fail_131073_24
	mov	a,#0x01
	movx	@dptr,a
;	src/io.c:87: break;
	sjmp	00109$
00106$:
;	src/io.c:92: ERROR_LOG("Enter only digit!");   //if user enters an other character than a number
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:93: fail = true;
	mov	dptr,#_getUserNumberInput_fail_131073_24
	mov	a,#0x01
	movx	@dptr,a
;	src/io.c:94: break;
	sjmp	00109$
00117$:
;	src/io.c:71: for (uint8_t i = 0; i < maxDigits; i++)
	inc	r4
	ljmp	00116$
00109$:
;	src/io.c:98: if (fail == false)                      //if no previous errors have occured, break while loop
	mov	dptr,#_getUserNumberInput_fail_131073_24
	movx	a,@dptr
	jz	00158$
	ljmp	00113$
00158$:
;	src/io.c:103: USER_INPUT_CHECK("User entered input = %d", value);
	mov	dptr,#_getUserNumberInput_value_65536_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/io.c:104: return value;
	mov	dpl,r6
	mov	dph,r7
;	src/io.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getUserHexInput'
;------------------------------------------------------------
;maxVal                    Allocated with name '_getUserHexInput_PARM_2'
;maxChar                   Allocated with name '_getUserHexInput_maxChar_65536_32'
;value                     Allocated with name '_getUserHexInput_value_65536_33'
;fail                      Allocated with name '_getUserHexInput_fail_131073_35'
;i                         Allocated with name '_getUserHexInput_i_196609_36'
;c                         Allocated with name '_getUserHexInput_c_262145_37'
;x                         Allocated with name '_getUserHexInput_x_262146_39'
;------------------------------------------------------------
;	src/io.c:113: uint16_t getUserHexInput(uint8_t maxChar,uint16_t maxVal) //max number of digits user can input
;	-----------------------------------------
;	 function getUserHexInput
;	-----------------------------------------
_getUserHexInput:
	mov	a,dpl
	mov	dptr,#_getUserHexInput_maxChar_65536_32
	movx	@dptr,a
;	src/io.c:117: while (1)
	mov	dptr,#_getUserHexInput_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getUserHexInput_maxChar_65536_32
	movx	a,@dptr
	mov	r5,a
00137$:
;	src/io.c:119: value = 0;
	mov	dptr,#_getUserHexInput_value_65536_33
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/io.c:120: bool fail = false;
	mov	dptr,#_getUserHexInput_fail_131073_35
	movx	@dptr,a
;	src/io.c:121: printf_tiny("\n\rEnter a maximum %d character input:", maxChar);
	mov	ar3,r5
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:122: for (uint8_t i = 0; i < maxChar; i++)
	mov	r4,#0x00
00140$:
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00200$
	ljmp	00133$
00200$:
;	src/io.c:124: char c = getchar();               //  take user input
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:125: if (c == '\r')                    //user enters ENTER key
	cjne	r2,#0x0d,00201$
	ljmp	00133$
00201$:
;	src/io.c:129: printf_tiny("%c", c);            //prints character on screen as user is typing
	mov	ar1,r2
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar3
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:131: if (c >= '0' && c <= '9')        // check if input is a number
	cjne	r2,#0x30,00202$
00202$:
	jc	00128$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00128$
;	src/io.c:133: x = c - '0';           //converts user input(ASCII) to int
	mov	ar3,r2
	mov	a,r3
	add	a,#0xd0
	mov	dptr,#_getUserHexInput_x_262146_39
	movx	@dptr,a
	ljmp	00129$
00128$:
;	src/io.c:135: else if (c == 'A' || c == 'a')
	cjne	r2,#0x41,00205$
	sjmp	00123$
00205$:
	cjne	r2,#0x61,00124$
00123$:
;	src/io.c:137: x = 10;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0a
	movx	@dptr,a
	ljmp	00129$
00124$:
;	src/io.c:139: else if (c == 'B' || c == 'b')
	cjne	r2,#0x42,00208$
	sjmp	00119$
00208$:
	cjne	r2,#0x62,00120$
00119$:
;	src/io.c:141: x = 11;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0b
	movx	@dptr,a
	sjmp	00129$
00120$:
;	src/io.c:143: else if (c == 'C' || c == 'c')
	cjne	r2,#0x43,00211$
	sjmp	00115$
00211$:
	cjne	r2,#0x63,00116$
00115$:
;	src/io.c:145: x = 12;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0c
	movx	@dptr,a
	sjmp	00129$
00116$:
;	src/io.c:147: else if (c == 'D' || c == 'd')
	cjne	r2,#0x44,00214$
	sjmp	00111$
00214$:
	cjne	r2,#0x64,00112$
00111$:
;	src/io.c:149: x = 13;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0d
	movx	@dptr,a
	sjmp	00129$
00112$:
;	src/io.c:151: else if (c == 'E' || c == 'e')
	cjne	r2,#0x45,00217$
	sjmp	00107$
00217$:
	cjne	r2,#0x65,00108$
00107$:
;	src/io.c:153: x = 14;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0e
	movx	@dptr,a
	sjmp	00129$
00108$:
;	src/io.c:155: else if (c == 'F' || c == 'f')
	cjne	r2,#0x46,00220$
	sjmp	00103$
00220$:
	cjne	r2,#0x66,00104$
00103$:
;	src/io.c:157: x = 15;
	mov	dptr,#_getUserHexInput_x_262146_39
	mov	a,#0x0f
	movx	@dptr,a
	sjmp	00129$
00104$:
;	src/io.c:161: ERROR_LOG("Enter only values between 0 to 9 and A to F!");   //if user enters an other character than a number
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:162: fail = true;
	mov	dptr,#_getUserHexInput_fail_131073_35
	mov	a,#0x01
	movx	@dptr,a
;	src/io.c:163: break;
	sjmp	00133$
00129$:
;	src/io.c:165: value = value * 16 + x;        //calculates multi-digit ASCII input
	mov	dptr,#_getUserHexInput_value_65536_33
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	dptr,#_getUserHexInput_x_262146_39
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	dptr,#_getUserHexInput_value_65536_33
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	src/io.c:166: if (value > maxVal)
	mov	dptr,#_getUserHexInput_value_65536_33
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00141$
;	src/io.c:168: ERROR_LOG("Value entered is beyond range %x", maxVal);
	push	ar7
	push	ar6
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	src/io.c:169: fail = true;
	mov	dptr,#_getUserHexInput_fail_131073_35
	mov	a,#0x01
	movx	@dptr,a
;	src/io.c:170: break;
	sjmp	00133$
00141$:
;	src/io.c:122: for (uint8_t i = 0; i < maxChar; i++)
	inc	r4
	ljmp	00140$
00133$:
;	src/io.c:174: if (fail == false)                      //if no previous errors have occured, break while loop
	mov	dptr,#_getUserHexInput_fail_131073_35
	movx	a,@dptr
	jz	00224$
	ljmp	00137$
00224$:
;	src/io.c:179: USER_INPUT_CHECK("User entered input = %x", value);
	mov	dptr,#_getUserHexInput_value_65536_33
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/io.c:180: return value;
	mov	dpl,r6
	mov	dph,r7
;	src/io.c:181: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a maximum %d digit number:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Value entered is beyond range %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Enter only digit!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;33mUser entered input = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a maximum %d character input:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Enter only values between 0 to 9 and A to F!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;33mUser entered input = %x"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
