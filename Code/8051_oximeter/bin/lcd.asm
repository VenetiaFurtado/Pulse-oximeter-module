;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _font
	.globl _lcdTest
	.globl _generateRandom
	.globl _glcdPlotIrValue
	.globl _glcdInit
	.globl _glcdUpdateStatus
	.globl _glcdUpdateBpm
	.globl _glcdUpdateSpo2
	.globl _itoa
	.globl _glcdDrawGraph
	.globl _absolute
	.globl _glcdWriteString
	.globl _gcldClearString
	.globl _glcdWriteChar
	.globl _glcdClear
	.globl _setPixel
	.globl _glcdRead
	.globl _glcdWrite
	.globl _glcdGoToAddr
	.globl _glcdControllerSelect
	.globl _gLcdWriteToRegister
	.globl _busyWait
	.globl _delay
	.globl _printf_tiny
	.globl _printf
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
	.globl _generateRandom_PARM_2
	.globl _previousReadingY
	.globl _previousReadingX
	.globl _itoa_PARM_2
	.globl _glcdDrawGraph_PARM_4
	.globl _glcdDrawGraph_PARM_3
	.globl _glcdDrawGraph_PARM_2
	.globl _absolute_PARM_2
	.globl _glcdWriteString_PARM_3
	.globl _glcdWriteString_PARM_2
	.globl _gcldClearString_PARM_3
	.globl _gcldClearString_PARM_2
	.globl _glcdWriteChar_PARM_3
	.globl _glcdWriteChar_PARM_2
	.globl _setPixel_PARM_3
	.globl _setPixel_PARM_2
	.globl _glcdWrite_PARM_3
	.globl _glcdWrite_PARM_2
	.globl _glcdGoToAddr_PARM_2
	.globl _gLcdWriteToRegister_PARM_2
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
_glcdDrawGraph_sloc0_1_0:
	.ds 2
_glcdDrawGraph_sloc1_1_0:
	.ds 2
_glcdDrawGraph_sloc2_1_0:
	.ds 2
_itoa_sloc0_1_0:
	.ds 3
_glcdPlotIrValue_sloc0_1_0:
	.ds 2
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
_delay_timeUs_65536_17:
	.ds 2
_gLcdWriteToRegister_PARM_2:
	.ds 1
_gLcdWriteToRegister_addr_65536_22:
	.ds 1
_gLcdWriteToRegister_ptr_65536_23:
	.ds 2
_glcdControllerSelect_column_65536_30:
	.ds 1
_glcdGoToAddr_PARM_2:
	.ds 1
_glcdGoToAddr_column_65536_34:
	.ds 1
_glcdWrite_PARM_2:
	.ds 1
_glcdWrite_PARM_3:
	.ds 1
_glcdWrite_column_65536_38:
	.ds 1
_glcdRead_column_65536_43:
	.ds 1
_glcdRead_ptr_65536_44:
	.ds 2
_setPixel_PARM_2:
	.ds 1
_setPixel_PARM_3:
	.ds 1
_setPixel_row_65536_49:
	.ds 1
_setPixel_pageByte_65538_52:
	.ds 1
_glcdWriteChar_PARM_2:
	.ds 1
_glcdWriteChar_PARM_3:
	.ds 1
_glcdWriteChar_column_65536_60:
	.ds 1
_gcldClearString_PARM_2:
	.ds 1
_gcldClearString_PARM_3:
	.ds 1
_gcldClearString_column_65536_64:
	.ds 1
_glcdWriteString_PARM_2:
	.ds 1
_glcdWriteString_PARM_3:
	.ds 3
_glcdWriteString_column_65536_68:
	.ds 1
_absolute_PARM_2:
	.ds 2
_absolute_value1_65536_71:
	.ds 2
_absolute_result_65536_72:
	.ds 1
_glcdDrawGraph_PARM_2:
	.ds 2
_glcdDrawGraph_PARM_3:
	.ds 2
_glcdDrawGraph_PARM_4:
	.ds 2
_glcdDrawGraph_x1_65536_75:
	.ds 2
_glcdDrawGraph_temp_131072_77:
	.ds 2
_glcdDrawGraph_temp_131072_78:
	.ds 2
_glcdDrawGraph_error_65537_79:
	.ds 2
_glcdDrawGraph_yStep_65537_79:
	.ds 2
_glcdDrawGraph_y_65538_82:
	.ds 2
_itoa_PARM_2:
	.ds 3
_itoa_val_65536_88:
	.ds 1
_itoa_digits_65537_91:
	.ds 3
_glcdUpdateSpo2_oxygen_65536_96:
	.ds 1
_glcdUpdateSpo2_oxygenLevel_65536_97:
	.ds 5
_glcdUpdateBpm_bpm_65536_98:
	.ds 1
_glcdUpdateBpm_bpmString_65536_99:
	.ds 4
_glcdUpdateStatus_status_65536_100:
	.ds 3
_previousReadingX::
	.ds 1
_previousReadingY::
	.ds 1
_glcdPlotIrValue_IrValue_65536_103:
	.ds 1
_glcdPlotIrValue_x_65536_104:
	.ds 1
_generateRandom_PARM_2:
	.ds 2
_generateRandom_min_65536_109:
	.ds 2
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;timeUs                    Allocated with name '_delay_timeUs_65536_17'
;i                         Allocated with name '_delay_i_131072_19'
;------------------------------------------------------------
;	src/lcd.c:77: void delay(const uint16_t timeUs)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
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
	mov	dptr,#_delay_timeUs_65536_17
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:79: for (uint16_t i = 0; i < timeUs; i++)
	mov	dptr,#_delay_timeUs_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	src/lcd.c:81: __asm__("nop");
	nop
;	src/lcd.c:79: for (uint16_t i = 0; i < timeUs; i++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	src/lcd.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'busyWait'
;------------------------------------------------------------
;ptr                       Allocated with name '_busyWait_ptr_65536_21'
;------------------------------------------------------------
;	src/lcd.c:89: void busyWait()
;	-----------------------------------------
;	 function busyWait
;	-----------------------------------------
_busyWait:
;	src/lcd.c:94: while ((*ptr & BUSY_MASK) != 0);
00101$:
	mov	dptr,#0x800e
	movx	a,@dptr
	jb	acc.7,00101$
;	src/lcd.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gLcdWriteToRegister'
;------------------------------------------------------------
;val                       Allocated with name '_gLcdWriteToRegister_PARM_2'
;addr                      Allocated with name '_gLcdWriteToRegister_addr_65536_22'
;ptr                       Allocated with name '_gLcdWriteToRegister_ptr_65536_23'
;------------------------------------------------------------
;	src/lcd.c:103: void gLcdWriteToRegister(MemoryAddress addr, uint8_t val)
;	-----------------------------------------
;	 function gLcdWriteToRegister
;	-----------------------------------------
_gLcdWriteToRegister:
	mov	a,dpl
	mov	dptr,#_gLcdWriteToRegister_addr_65536_22
	movx	@dptr,a
;	src/lcd.c:107: if (addr == COMMAND_WRITE)
	movx	a,@dptr
	mov	r7,a
	jnz	00114$
;	src/lcd.c:110: ptr = (__xdata uint8_t *)COMMAND_WRITE_ADDR;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	mov	a,#0x0c
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00114$:
;	src/lcd.c:112: else if (addr == COMMAND_WRITE_LEFT)
	cjne	r7,#0x01,00111$
;	src/lcd.c:114: ptr = (__xdata uint8_t *)COMMAND_WRITE_LEFT_ADDR;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	mov	a,#0x08
	movx	@dptr,a
	swap	a
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00111$:
;	src/lcd.c:116: else if (addr == COMMAND_WRITE_RIGHT)
	cjne	r7,#0x02,00108$
;	src/lcd.c:118: ptr = (__xdata uint8_t *)COMMAND_WRITE_RIGHT_ADDR;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	mov	a,#0x04
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00108$:
;	src/lcd.c:120: else if (addr == DATA_WRITE_LEFT)
	cjne	r7,#0x05,00105$
;	src/lcd.c:122: ptr = (__xdata uint8_t *)DATA_WRITE_LEFT_ADDR;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	mov	a,#0x09
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00105$:
;	src/lcd.c:124: else if (addr == DATA_WRITE_RIGHT)
	cjne	r7,#0x06,00102$
;	src/lcd.c:126: ptr = (__xdata uint8_t *)DATA_WRITE_RIGHT_ADDR;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	mov	a,#0x05
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00102$:
;	src/lcd.c:130: ERROR_LOG("Unknown Memory Addr! = %d", addr);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/lcd.c:131: return;
	ret
00115$:
;	src/lcd.c:134: *ptr = val;
	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	src/lcd.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdControllerSelect'
;------------------------------------------------------------
;column                    Allocated with name '_glcdControllerSelect_column_65536_30'
;------------------------------------------------------------
;	src/lcd.c:143: uint8_t glcdControllerSelect(uint8_t column)
;	-----------------------------------------
;	 function glcdControllerSelect
;	-----------------------------------------
_glcdControllerSelect:
	mov	a,dpl
	mov	dptr,#_glcdControllerSelect_column_65536_30
	movx	@dptr,a
;	src/lcd.c:146: if (column < MAX_COLUMN_PER_CONTROLLER)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,00110$
00110$:
	jnc	00102$
;	src/lcd.c:148: return COLUMN_SELECT_LEFT;
	mov	dpl,#0x03
	ret
00102$:
;	src/lcd.c:152: return COLUMN_SELECT_RIGHT;
	mov	dpl,#0x04
;	src/lcd.c:154: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdGoToAddr'
;------------------------------------------------------------
;page                      Allocated with name '_glcdGoToAddr_PARM_2'
;column                    Allocated with name '_glcdGoToAddr_column_65536_34'
;controllerSelect          Allocated with name '_glcdGoToAddr_controllerSelect_65536_35'
;------------------------------------------------------------
;	src/lcd.c:162: void glcdGoToAddr(uint8_t column, uint8_t page)
;	-----------------------------------------
;	 function glcdGoToAddr
;	-----------------------------------------
_glcdGoToAddr:
	mov	a,dpl
	mov	dptr,#_glcdGoToAddr_column_65536_34
	movx	@dptr,a
;	src/lcd.c:164: uint8_t controllerSelect = glcdControllerSelect(column);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_glcdControllerSelect
	mov	r6,dpl
	pop	ar7
;	src/lcd.c:166: if (controllerSelect == COLUMN_SELECT_LEFT)
	cjne	r6,#0x03,00104$
;	src/lcd.c:169: gLcdWriteToRegister(COMMAND_WRITE_LEFT, PAGE_MASK | page);
	mov	dptr,#_glcdGoToAddr_PARM_2
	movx	a,@dptr
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	orl	a,#0xb8
	movx	@dptr,a
	mov	dpl,#0x01
	push	ar7
	lcall	_gLcdWriteToRegister
;	src/lcd.c:170: busyWait();
	lcall	_busyWait
	pop	ar7
;	src/lcd.c:173: gLcdWriteToRegister(COMMAND_WRITE_LEFT, Y_MASK | column);
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_gLcdWriteToRegister
;	src/lcd.c:174: busyWait();
	ljmp	_busyWait
00104$:
;	src/lcd.c:176: else if (controllerSelect == COLUMN_SELECT_RIGHT) // right controller
	cjne	r6,#0x04,00106$
;	src/lcd.c:178: column = column - MAX_COLUMN_PER_CONTROLLER;
	mov	a,r7
	add	a,#0xc0
	mov	dptr,#_glcdGoToAddr_column_65536_34
	movx	@dptr,a
;	src/lcd.c:181: gLcdWriteToRegister(COMMAND_WRITE_RIGHT, PAGE_MASK | page);
	mov	dptr,#_glcdGoToAddr_PARM_2
	movx	a,@dptr
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	orl	a,#0xb8
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_gLcdWriteToRegister
;	src/lcd.c:182: busyWait();
	lcall	_busyWait
;	src/lcd.c:185: gLcdWriteToRegister(COMMAND_WRITE_RIGHT, Y_MASK | column);
	mov	dptr,#_glcdGoToAddr_column_65536_34
	movx	a,@dptr
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	orl	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_gLcdWriteToRegister
;	src/lcd.c:186: busyWait();
;	src/lcd.c:188: }
	ljmp	_busyWait
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdWrite'
;------------------------------------------------------------
;page                      Allocated with name '_glcdWrite_PARM_2'
;val                       Allocated with name '_glcdWrite_PARM_3'
;column                    Allocated with name '_glcdWrite_column_65536_38'
;controllerSelect          Allocated with name '_glcdWrite_controllerSelect_65537_40'
;------------------------------------------------------------
;	src/lcd.c:197: void glcdWrite(uint8_t column, uint8_t page, char val)
;	-----------------------------------------
;	 function glcdWrite
;	-----------------------------------------
_glcdWrite:
	mov	a,dpl
	mov	dptr,#_glcdWrite_column_65536_38
	movx	@dptr,a
;	src/lcd.c:199: glcdGoToAddr(column, page);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdWrite_PARM_2
	movx	a,@dptr
	mov	dptr,#_glcdGoToAddr_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_glcdGoToAddr
	pop	ar7
;	src/lcd.c:202: uint8_t controllerSelect = glcdControllerSelect(column);
	mov	dpl,r7
	lcall	_glcdControllerSelect
	mov	r7,dpl
;	src/lcd.c:204: if (controllerSelect == COLUMN_SELECT_LEFT)
	cjne	r7,#0x03,00102$
;	src/lcd.c:206: gLcdWriteToRegister(DATA_WRITE_LEFT, val);
	mov	dptr,#_glcdWrite_PARM_3
	movx	a,@dptr
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_gLcdWriteToRegister
	sjmp	00103$
00102$:
;	src/lcd.c:210: gLcdWriteToRegister(DATA_WRITE_RIGHT, val);
	mov	dptr,#_glcdWrite_PARM_3
	movx	a,@dptr
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_gLcdWriteToRegister
00103$:
;	src/lcd.c:212: busyWait();
;	src/lcd.c:213: }
	ljmp	_busyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdRead'
;------------------------------------------------------------
;column                    Allocated with name '_glcdRead_column_65536_43'
;controllerSelect          Allocated with name '_glcdRead_controllerSelect_65536_44'
;ptr                       Allocated with name '_glcdRead_ptr_65536_44'
;dataByte                  Allocated with name '_glcdRead_dataByte_65537_48'
;------------------------------------------------------------
;	src/lcd.c:221: uint8_t glcdRead(uint8_t column)
;	-----------------------------------------
;	 function glcdRead
;	-----------------------------------------
_glcdRead:
	mov	a,dpl
	mov	dptr,#_glcdRead_column_65536_43
	movx	@dptr,a
;	src/lcd.c:223: uint8_t controllerSelect = glcdControllerSelect(column);
	movx	a,@dptr
	mov	dpl,a
	lcall	_glcdControllerSelect
	mov	r7,dpl
;	src/lcd.c:225: __xdata uint8_t *ptr = NULL;
	mov	dptr,#_glcdRead_ptr_65536_44
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:227: if (controllerSelect == COLUMN_SELECT_LEFT)
	cjne	r7,#0x03,00105$
;	src/lcd.c:229: ptr = (__xdata uint8_t *)DATA_READ_LEFT_ADDR;
	mov	dptr,#_glcdRead_ptr_65536_44
	mov	a,#0x0b
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00105$:
;	src/lcd.c:231: else if (controllerSelect == COLUMN_SELECT_RIGHT)
	cjne	r7,#0x04,00102$
;	src/lcd.c:233: ptr = (__xdata uint8_t *)DATA_READ_RIGHT_ADDR;
	mov	dptr,#_glcdRead_ptr_65536_44
	mov	a,#0x07
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00102$:
;	src/lcd.c:237: ERROR_LOG("UNKNOWN CONTROLLER");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00106$:
;	src/lcd.c:240: uint8_t dataByte = *ptr;
	mov	dptr,#_glcdRead_ptr_65536_44
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
;	src/lcd.c:242: return dataByte;
;	src/lcd.c:243: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;column                    Allocated with name '_setPixel_PARM_2'
;val                       Allocated with name '_setPixel_PARM_3'
;row                       Allocated with name '_setPixel_row_65536_49'
;page                      Allocated with name '_setPixel_page_65537_51'
;pixelPosition             Allocated with name '_setPixel_pixelPosition_65537_51'
;pageByte                  Allocated with name '_setPixel_pageByte_65538_52'
;------------------------------------------------------------
;	src/lcd.c:252: void setPixel(uint8_t row, uint8_t column, BitValue val)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	a,dpl
	mov	dptr,#_setPixel_row_65536_49
	movx	@dptr,a
;	src/lcd.c:255: row = 63 - row;
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x3f
	clr	c
	subb	a,r7
	movx	@dptr,a
;	src/lcd.c:258: uint8_t page = row / 8;
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	src/lcd.c:260: uint8_t pixelPosition = row % 8;
	anl	ar7,#0x07
;	src/lcd.c:263: glcdGoToAddr(column, page);
	mov	dptr,#_setPixel_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_glcdGoToAddr_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar4
	lcall	_glcdGoToAddr
	pop	ar4
	pop	ar6
;	src/lcd.c:269: uint8_t pageByte = glcdRead(column);
	mov	dpl,r6
	push	ar6
	push	ar4
	lcall	_glcdRead
	pop	ar4
	pop	ar6
;	src/lcd.c:270: pageByte = glcdRead(column);
	mov	dpl,r6
	push	ar6
	push	ar4
	lcall	_glcdRead
	mov	r5,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	mov	dptr,#_setPixel_pageByte_65538_52
	mov	a,r5
	movx	@dptr,a
;	src/lcd.c:274: if (val == ONE)
	mov	dptr,#_setPixel_PARM_3
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x01,00104$
;	src/lcd.c:276: pageByte = pageByte | (1 << pixelPosition);
	mov	ar2,r7
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	mov	r2,a
	mov	dptr,#_setPixel_pageByte_65538_52
	orl	a,r5
	movx	@dptr,a
	sjmp	00105$
00104$:
;	src/lcd.c:278: else if (val == ZERO)
	mov	a,r3
	jnz	00105$
;	src/lcd.c:281: pageByte = pageByte & (~(1 << pixelPosition));
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	cpl	a
	mov	r7,a
	mov	dptr,#_setPixel_pageByte_65538_52
	anl	a,r5
	movx	@dptr,a
00105$:
;	src/lcd.c:285: glcdWrite(column, page, pageByte);
	mov	dptr,#_setPixel_pageByte_65538_52
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdWrite_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_glcdWrite_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r6
;	src/lcd.c:286: }
	ljmp	_glcdWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdClear'
;------------------------------------------------------------
;column                    Allocated with name '_glcdClear_column_131072_56'
;page                      Allocated with name '_glcdClear_page_262144_58'
;------------------------------------------------------------
;	src/lcd.c:292: void glcdClear()
;	-----------------------------------------
;	 function glcdClear
;	-----------------------------------------
_glcdClear:
;	src/lcd.c:294: for (uint8_t column = 0; column < 128; column++)
	mov	r7,#0x00
00107$:
	cjne	r7,#0x80,00129$
00129$:
	jnc	00109$
;	src/lcd.c:296: for (uint8_t page = 0; page < 8; page++)
	mov	ar6,r7
	mov	r5,#0x00
00104$:
	cjne	r5,#0x08,00131$
00131$:
	jnc	00108$
;	src/lcd.c:298: glcdWrite(column, page, 0x00);
	mov	dptr,#_glcdWrite_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_glcdWrite_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	_glcdWrite
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:296: for (uint8_t page = 0; page < 8; page++)
	inc	r5
	sjmp	00104$
00108$:
;	src/lcd.c:294: for (uint8_t column = 0; column < 128; column++)
	inc	r7
	sjmp	00107$
00109$:
;	src/lcd.c:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdWriteChar'
;------------------------------------------------------------
;page                      Allocated with name '_glcdWriteChar_PARM_2'
;c                         Allocated with name '_glcdWriteChar_PARM_3'
;column                    Allocated with name '_glcdWriteChar_column_65536_60'
;offset                    Allocated with name '_glcdWriteChar_offset_65536_61'
;i                         Allocated with name '_glcdWriteChar_i_131072_62'
;------------------------------------------------------------
;	src/lcd.c:310: void glcdWriteChar(uint8_t column, uint8_t page, char c)
;	-----------------------------------------
;	 function glcdWriteChar
;	-----------------------------------------
_glcdWriteChar:
	mov	a,dpl
	mov	dptr,#_glcdWriteChar_column_65536_60
	movx	@dptr,a
;	src/lcd.c:313: uint8_t offset = (c - 0x20) * CHARACTER_WIDTH;
	mov	dptr,#_glcdWriteChar_PARM_3
	movx	a,@dptr
	add	a,#0xe0
	mov	b,#0x03
	mul	ab
	mov	r7,a
;	src/lcd.c:314: for (uint8_t i = 0; i < CHARACTER_WIDTH; i++)
	mov	dptr,#_glcdWriteChar_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_glcdWriteChar_column_65536_60
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
00103$:
	cjne	r4,#0x03,00116$
00116$:
	jnc	00109$
;	src/lcd.c:317: glcdWrite(column, page, font[offset + i]);
	mov	ar2,r7
	mov	r3,#0x00
	mov	ar0,r4
	mov	r1,#0x00
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_font
	mov	dpl,a
	mov	a,r3
	addc	a,#(_font >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dptr,#_glcdWrite_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_glcdWrite_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_glcdWrite
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:318: column++;
	inc	r5
	mov	dptr,#_glcdWriteChar_column_65536_60
	mov	a,r5
	movx	@dptr,a
;	src/lcd.c:314: for (uint8_t i = 0; i < CHARACTER_WIDTH; i++)
	inc	r4
	sjmp	00103$
00109$:
	mov	dptr,#_glcdWriteChar_column_65536_60
	mov	a,r5
	movx	@dptr,a
;	src/lcd.c:320: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcldClearString'
;------------------------------------------------------------
;page                      Allocated with name '_gcldClearString_PARM_2'
;size                      Allocated with name '_gcldClearString_PARM_3'
;column                    Allocated with name '_gcldClearString_column_65536_64'
;i                         Allocated with name '_gcldClearString_i_131072_66'
;------------------------------------------------------------
;	src/lcd.c:329: void gcldClearString(uint8_t column, uint8_t page, uint8_t size)
;	-----------------------------------------
;	 function gcldClearString
;	-----------------------------------------
_gcldClearString:
	mov	a,dpl
	mov	dptr,#_gcldClearString_column_65536_64
	movx	@dptr,a
;	src/lcd.c:331: for (uint8_t i = 0; i < size; i++)
	mov	dptr,#_gcldClearString_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gcldClearString_PARM_3
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00105$
;	src/lcd.c:333: glcdWriteChar(column, page, 0x20);
	mov	dptr,#_gcldClearString_column_65536_64
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_glcdWriteChar_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_glcdWriteChar_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_glcdWriteChar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:334: column += CHARACTER_WIDTH + 1;
	mov	dptr,#_gcldClearString_column_65536_64
	mov	a,#0x04
	add	a,r4
	movx	@dptr,a
;	src/lcd.c:331: for (uint8_t i = 0; i < size; i++)
	inc	r5
	sjmp	00103$
00105$:
;	src/lcd.c:336: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdWriteString'
;------------------------------------------------------------
;page                      Allocated with name '_glcdWriteString_PARM_2'
;string                    Allocated with name '_glcdWriteString_PARM_3'
;column                    Allocated with name '_glcdWriteString_column_65536_68'
;i                         Allocated with name '_glcdWriteString_i_65536_69'
;------------------------------------------------------------
;	src/lcd.c:345: void glcdWriteString(uint8_t column, uint8_t page, char string[])
;	-----------------------------------------
;	 function glcdWriteString
;	-----------------------------------------
_glcdWriteString:
	mov	a,dpl
	mov	dptr,#_glcdWriteString_column_65536_68
	movx	@dptr,a
;	src/lcd.c:348: while (string[i] != '\0')
	mov	dptr,#_glcdWriteString_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdWriteString_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r3,#0x00
00101$:
	mov	a,r3
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	ar2,r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00104$
;	src/lcd.c:350: glcdWriteChar(column, page, string[i]);
	mov	dptr,#_glcdWriteString_column_65536_68
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_glcdWriteChar_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_glcdWriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	lcall	_glcdWriteChar
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:352: i++;
	inc	r3
;	src/lcd.c:353: column += CHARACTER_WIDTH + 1;
	mov	dptr,#_glcdWriteString_column_65536_68
	mov	a,#0x04
	add	a,r1
	movx	@dptr,a
	sjmp	00101$
00104$:
;	src/lcd.c:355: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'absolute'
;------------------------------------------------------------
;value2                    Allocated with name '_absolute_PARM_2'
;value1                    Allocated with name '_absolute_value1_65536_71'
;result                    Allocated with name '_absolute_result_65536_72'
;------------------------------------------------------------
;	src/lcd.c:364: uint8_t absolute(int value1, int value2)
;	-----------------------------------------
;	 function absolute
;	-----------------------------------------
_absolute:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_absolute_value1_65536_71
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:367: if (value1 > value2)
	mov	dptr,#_absolute_value1_65536_71
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_absolute_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	src/lcd.c:369: result = value1 - value2;
	mov	ar3,r6
	mov	ar2,r4
	mov	dptr,#_absolute_result_65536_72
	mov	a,r3
	clr	c
	subb	a,r2
	movx	@dptr,a
	sjmp	00103$
00102$:
;	src/lcd.c:373: result = value2 - value1;
	mov	dptr,#_absolute_result_65536_72
	mov	a,r4
	clr	c
	subb	a,r6
	movx	@dptr,a
00103$:
;	src/lcd.c:375: return result;
	mov	dptr,#_absolute_result_65536_72
	movx	a,@dptr
;	src/lcd.c:376: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdDrawGraph'
;------------------------------------------------------------
;sloc0                     Allocated with name '_glcdDrawGraph_sloc0_1_0'
;sloc1                     Allocated with name '_glcdDrawGraph_sloc1_1_0'
;sloc2                     Allocated with name '_glcdDrawGraph_sloc2_1_0'
;y1                        Allocated with name '_glcdDrawGraph_PARM_2'
;x2                        Allocated with name '_glcdDrawGraph_PARM_3'
;y2                        Allocated with name '_glcdDrawGraph_PARM_4'
;x1                        Allocated with name '_glcdDrawGraph_x1_65536_75'
;slope                     Allocated with name '_glcdDrawGraph_slope_65536_76'
;temp                      Allocated with name '_glcdDrawGraph_temp_131072_77'
;temp                      Allocated with name '_glcdDrawGraph_temp_131072_78'
;deltaX                    Allocated with name '_glcdDrawGraph_deltaX_65537_79'
;deltaY                    Allocated with name '_glcdDrawGraph_deltaY_65537_79'
;error                     Allocated with name '_glcdDrawGraph_error_65537_79'
;yStep                     Allocated with name '_glcdDrawGraph_yStep_65537_79'
;y                         Allocated with name '_glcdDrawGraph_y_65538_82'
;x                         Allocated with name '_glcdDrawGraph_x_131074_83'
;------------------------------------------------------------
;	src/lcd.c:386: void glcdDrawGraph(int x1, int y1, int x2, int y2)
;	-----------------------------------------
;	 function glcdDrawGraph
;	-----------------------------------------
_glcdDrawGraph:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:388: int slope = absolute(y1, y2) - absolute(x1, x2);
	mov	dptr,#_glcdDrawGraph_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_absolute_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_absolute
	mov	r3,dpl
	mov	_glcdDrawGraph_sloc1_1_0,r3
	mov	(_glcdDrawGraph_sloc1_1_0 + 1),#0x00
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	movx	a,@dptr
	mov	_glcdDrawGraph_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_glcdDrawGraph_sloc0_1_0 + 1),a
	mov	dptr,#_absolute_PARM_2
	mov	a,_glcdDrawGraph_sloc0_1_0
	movx	@dptr,a
	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar1
	push	ar0
	lcall	_absolute
	mov	r3,dpl
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r2,#0x00
	mov	a,_glcdDrawGraph_sloc1_1_0
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,(_glcdDrawGraph_sloc1_1_0 + 1)
	subb	a,r2
	mov	r2,a
;	src/lcd.c:389: if (slope > 0)
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r3,a
	jz	00102$
;	src/lcd.c:393: temp = x1;
	mov	dptr,#_glcdDrawGraph_temp_131072_77
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:394: x1 = y1;
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:395: y1 = temp;
	mov	dptr,#_glcdDrawGraph_temp_131072_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:398: temp = x2;
	mov	dptr,#_glcdDrawGraph_temp_131072_77
	mov	a,_glcdDrawGraph_sloc0_1_0
	movx	@dptr,a
	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:399: x2 = y2;
	mov	dptr,#_glcdDrawGraph_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:400: y2 = temp;
	mov	dptr,#_glcdDrawGraph_temp_131072_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	src/lcd.c:403: if (x1 > x2)
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	src/lcd.c:407: temp = x1;
	mov	dptr,#_glcdDrawGraph_temp_131072_78
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:408: x1 = x2;
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:409: x2 = temp;
	mov	dptr,#_glcdDrawGraph_temp_131072_78
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:412: temp = y1;
	mov	dptr,#_glcdDrawGraph_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_temp_131072_78
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:413: y1 = y2;
	mov	dptr,#_glcdDrawGraph_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:414: y2 = temp;
	mov	dptr,#_glcdDrawGraph_temp_131072_78
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00104$:
;	src/lcd.c:417: int deltaX = x2 - x1;
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
;	src/lcd.c:418: int deltaY = absolute(y2, y1);
	mov	dptr,#_glcdDrawGraph_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_glcdDrawGraph_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_absolute_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_absolute
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_glcdDrawGraph_sloc1_1_0,r0
	mov	(_glcdDrawGraph_sloc1_1_0 + 1),#0x00
;	src/lcd.c:419: int error = deltaX / 2;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_glcdDrawGraph_error_65537_79
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:421: if (y1 < y2)
	clr	c
	mov	a,r1
	subb	a,r4
	mov	a,r2
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	src/lcd.c:423: yStep = 1;
	mov	dptr,#_glcdDrawGraph_yStep_65537_79
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00106$:
;	src/lcd.c:427: yStep = -1;
	mov	dptr,#_glcdDrawGraph_yStep_65537_79
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00107$:
;	src/lcd.c:430: int y = y1;
	mov	dptr,#_glcdDrawGraph_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_glcdDrawGraph_y_65538_82
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
	mov	dptr,#_glcdDrawGraph_x1_65536_75
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_glcdDrawGraph_yStep_65537_79
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	movx	a,@dptr
	mov	_glcdDrawGraph_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_glcdDrawGraph_sloc0_1_0 + 1),a
00115$:
	clr	c
	mov	a,_glcdDrawGraph_sloc0_1_0
	subb	a,r4
	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00151$
	ret
00151$:
;	src/lcd.c:433: if (slope > 0)
	mov	a,r3
	jz	00109$
;	src/lcd.c:435: setPixel(x, y, 1);
	push	ar1
	push	ar2
	mov	ar0,r4
	mov	dptr,#_glcdDrawGraph_y_65538_82
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_setPixel_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#_setPixel_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar2
	pop	ar1
	sjmp	00110$
00109$:
;	src/lcd.c:439: setPixel(y, x, 1);
	push	ar1
	push	ar2
	mov	dptr,#_glcdDrawGraph_y_65538_82
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_setPixel_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_setPixel_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
	pop	ar2
	pop	ar1
;	src/lcd.c:439: setPixel(y, x, 1);
00110$:
;	src/lcd.c:441: error = error - deltaY;
	push	ar1
	push	ar2
	mov	dptr,#_glcdDrawGraph_error_65537_79
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_glcdDrawGraph_error_65537_79
	mov	a,r0
	clr	c
	subb	a,_glcdDrawGraph_sloc1_1_0
	movx	@dptr,a
	mov	a,r2
	subb	a,(_glcdDrawGraph_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:442: if (error < 0)
	mov	dptr,#_glcdDrawGraph_error_65537_79
	movx	a,@dptr
	mov	_glcdDrawGraph_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_glcdDrawGraph_sloc2_1_0 + 1),a
	pop	ar2
	pop	ar1
	jnb	acc.7,00116$
;	src/lcd.c:444: y = y + yStep;
	push	ar3
	mov	dptr,#_glcdDrawGraph_y_65538_82
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_glcdDrawGraph_y_65538_82
	mov	a,r1
	add	a,r0
	movx	@dptr,a
	mov	a,r2
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:445: error = error + deltaX;
	mov	dptr,#_glcdDrawGraph_error_65537_79
	mov	a,r6
	add	a,_glcdDrawGraph_sloc2_1_0
	movx	@dptr,a
	mov	a,r7
	addc	a,(_glcdDrawGraph_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
	pop	ar3
;	src/lcd.c:445: error = error + deltaX;
00116$:
;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
	inc	r4
	cjne	r4,#0x00,00154$
	inc	r5
00154$:
;	src/lcd.c:448: }
	ljmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'itoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '_itoa_sloc0_1_0'
;result                    Allocated with name '_itoa_PARM_2'
;val                       Allocated with name '_itoa_val_65536_88'
;count                     Allocated with name '_itoa_count_65537_91'
;digits                    Allocated with name '_itoa_digits_65537_91'
;i                         Allocated with name '_itoa_i_65538_93'
;j                         Allocated with name '_itoa_j_131074_94'
;------------------------------------------------------------
;	src/lcd.c:457: uint8_t itoa(uint8_t val, char result[])
;	-----------------------------------------
;	 function itoa
;	-----------------------------------------
_itoa:
	mov	a,dpl
	mov	dptr,#_itoa_val_65536_88
	movx	@dptr,a
;	src/lcd.c:459: if (val == 0)
	movx	a,@dptr
	jnz	00114$
;	src/lcd.c:461: result[0] = '0';
	mov	dptr,#_itoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:462: return 1;
	mov	dpl,#0x01
	ret
;	src/lcd.c:467: while (val != 0)
00114$:
	mov	r7,#0x00
00103$:
	mov	dptr,#_itoa_val_65536_88
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00105$
;	src/lcd.c:470: digits[count] = val % 10;
	mov	a,r7
	add	a,#_itoa_digits_65537_91
	mov	r4,a
	clr	a
	addc	a,#(_itoa_digits_65537_91 >> 8)
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r1,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
;	src/lcd.c:472: val = val / 10;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r3
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	dptr,#_itoa_val_65536_88
	mov	a,r5
	movx	@dptr,a
;	src/lcd.c:473: count++;
	inc	r7
	sjmp	00103$
00105$:
;	src/lcd.c:478: for (int j = count - 1; j >= 0; j--)
	mov	ar6,r7
	mov	r5,#0x00
	dec	r7
	cjne	r7,#0xff,00136$
	dec	r5
00136$:
	mov	dptr,#_itoa_PARM_2
	movx	a,@dptr
	mov	_itoa_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_itoa_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_itoa_sloc0_1_0 + 2),a
	mov	r1,#0x00
00108$:
	mov	a,r5
	jb	acc.7,00106$
;	src/lcd.c:480: result[i] = '0' + digits[j];
	push	ar6
	mov	a,r1
	add	a,_itoa_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_itoa_sloc0_1_0 + 1)
	mov	r4,a
	mov	r6,(_itoa_sloc0_1_0 + 2)
	mov	a,r7
	add	a,#_itoa_digits_65537_91
	mov	dpl,a
	mov	a,r5
	addc	a,#(_itoa_digits_65537_91 >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0x30
	mov	r3,a
	mov	dpl,r0
	mov	dph,r4
	mov	b,r6
	lcall	__gptrput
;	src/lcd.c:481: i++;
	inc	r1
;	src/lcd.c:478: for (int j = count - 1; j >= 0; j--)
	dec	r7
	cjne	r7,#0xff,00138$
	dec	r5
00138$:
	pop	ar6
	sjmp	00108$
00106$:
;	src/lcd.c:484: return count;
	mov	dpl,r6
;	src/lcd.c:485: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdUpdateSpo2'
;------------------------------------------------------------
;oxygen                    Allocated with name '_glcdUpdateSpo2_oxygen_65536_96'
;oxygenLevel               Allocated with name '_glcdUpdateSpo2_oxygenLevel_65536_97'
;size                      Allocated with name '_glcdUpdateSpo2_size_65536_97'
;------------------------------------------------------------
;	src/lcd.c:492: void glcdUpdateSpo2(uint8_t oxygen)
;	-----------------------------------------
;	 function glcdUpdateSpo2
;	-----------------------------------------
_glcdUpdateSpo2:
	mov	a,dpl
	mov	dptr,#_glcdUpdateSpo2_oxygen_65536_96
	movx	@dptr,a
;	src/lcd.c:495: uint8_t size = itoa(oxygen, oxygenLevel);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_itoa_PARM_2
	mov	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
	movx	@dptr,a
	mov	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_itoa
;	src/lcd.c:496: oxygenLevel[size] = '%';
	mov	a,dpl
	mov	r7,a
	add	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
	mov	dpl,a
	clr	a
	addc	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
	mov	dph,a
	mov	a,#0x25
	movx	@dptr,a
;	src/lcd.c:497: oxygenLevel[size + 1] = '\0';
	inc	r7
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
	mov	dpl,a
	mov	a,r6
	addc	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/lcd.c:498: gcldClearString(SPO2_X_LOC, 1, 5);
	mov	dptr,#_gcldClearString_PARM_2
	inc	a
	movx	@dptr,a
	mov	dptr,#_gcldClearString_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x46
	lcall	_gcldClearString
;	src/lcd.c:499: glcdWriteString(SPO2_X_LOC, 1, oxygenLevel);
	mov	dptr,#_glcdWriteString_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
	movx	@dptr,a
	mov	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x46
;	src/lcd.c:500: }
	ljmp	_glcdWriteString
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdUpdateBpm'
;------------------------------------------------------------
;bpm                       Allocated with name '_glcdUpdateBpm_bpm_65536_98'
;bpmString                 Allocated with name '_glcdUpdateBpm_bpmString_65536_99'
;size                      Allocated with name '_glcdUpdateBpm_size_65536_99'
;------------------------------------------------------------
;	src/lcd.c:507: void glcdUpdateBpm(uint8_t bpm)
;	-----------------------------------------
;	 function glcdUpdateBpm
;	-----------------------------------------
_glcdUpdateBpm:
	mov	a,dpl
	mov	dptr,#_glcdUpdateBpm_bpm_65536_98
	movx	@dptr,a
;	src/lcd.c:510: uint8_t size = itoa(bpm, bpmString);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_itoa_PARM_2
	mov	a,#_glcdUpdateBpm_bpmString_65536_99
	movx	@dptr,a
	mov	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_itoa
;	src/lcd.c:511: bpmString[size] = '\0';
	mov	a,dpl
	add	a,#_glcdUpdateBpm_bpmString_65536_99
	mov	dpl,a
	clr	a
	addc	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/lcd.c:512: gcldClearString(BPM_X_LOC, 1, 5);
	mov	dptr,#_gcldClearString_PARM_2
	inc	a
	movx	@dptr,a
	mov	dptr,#_gcldClearString_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x64
	lcall	_gcldClearString
;	src/lcd.c:513: glcdWriteString(BPM_X_LOC, 1, bpmString);
	mov	dptr,#_glcdWriteString_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#_glcdUpdateBpm_bpmString_65536_99
	movx	@dptr,a
	mov	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x64
;	src/lcd.c:514: }
	ljmp	_glcdWriteString
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdUpdateStatus'
;------------------------------------------------------------
;status                    Allocated with name '_glcdUpdateStatus_status_65536_100'
;------------------------------------------------------------
;	src/lcd.c:521: void glcdUpdateStatus(char* status)
;	-----------------------------------------
;	 function glcdUpdateStatus
;	-----------------------------------------
_glcdUpdateStatus:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_glcdUpdateStatus_status_65536_100
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:523: gcldClearString(STATUS_X_LOC, 1, 15);
	mov	dptr,#_gcldClearString_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_gcldClearString_PARM_3
	mov	a,#0x0f
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_gcldClearString
;	src/lcd.c:524: glcdWriteString(STATUS_X_LOC, 1, status);
	mov	dptr,#_glcdUpdateStatus_status_65536_100
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_glcdWriteString_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
;	src/lcd.c:525: }
	ljmp	_glcdWriteString
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdInit'
;------------------------------------------------------------
;	src/lcd.c:531: void glcdInit()
;	-----------------------------------------
;	 function glcdInit
;	-----------------------------------------
_glcdInit:
;	src/lcd.c:533: GLCD_RESET = 0;
;	assignBit
	clr	_P1_1
;	src/lcd.c:534: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	src/lcd.c:535: GLCD_RESET = 1;
;	assignBit
	setb	_P1_1
;	src/lcd.c:537: gLcdWriteToRegister(COMMAND_WRITE, 0xB8); // select first page 0
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	mov	a,#0xb8
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_gLcdWriteToRegister
;	src/lcd.c:538: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	src/lcd.c:540: gLcdWriteToRegister(COMMAND_WRITE, 0x40); // select row 0
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_gLcdWriteToRegister
;	src/lcd.c:541: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	src/lcd.c:543: gLcdWriteToRegister(COMMAND_WRITE, 0x3F); // display on
	mov	dptr,#_gLcdWriteToRegister_PARM_2
	mov	a,#0x3f
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_gLcdWriteToRegister
;	src/lcd.c:544: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	src/lcd.c:546: glcdClear();
	lcall	_glcdClear
;	src/lcd.c:548: glcdWriteString(STATUS_X_LOC, 0, "STATUS");
	mov	dptr,#_glcdWriteString_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_glcdWriteString
;	src/lcd.c:549: glcdWriteString(SPO2_X_LOC, 0, "SPO2");
	mov	dptr,#_glcdWriteString_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x46
	lcall	_glcdWriteString
;	src/lcd.c:550: glcdWriteString(BPM_X_LOC, 0, "BPM");
	mov	dptr,#_glcdWriteString_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x64
;	src/lcd.c:551: }
	ljmp	_glcdWriteString
;------------------------------------------------------------
;Allocation info for local variables in function 'glcdPlotIrValue'
;------------------------------------------------------------
;sloc0                     Allocated with name '_glcdPlotIrValue_sloc0_1_0'
;IrValue                   Allocated with name '_glcdPlotIrValue_IrValue_65536_103'
;y                         Allocated with name '_glcdPlotIrValue_y_65536_104'
;x                         Allocated with name '_glcdPlotIrValue_x_65536_104'
;page                      Allocated with name '_glcdPlotIrValue_page_131072_105'
;------------------------------------------------------------
;	src/lcd.c:562: void glcdPlotIrValue(uint8_t IrValue)
;	-----------------------------------------
;	 function glcdPlotIrValue
;	-----------------------------------------
_glcdPlotIrValue:
	mov	a,dpl
	mov	dptr,#_glcdPlotIrValue_IrValue_65536_103
	movx	@dptr,a
;	src/lcd.c:565: uint8_t y = IrValue >> 3;
	movx	a,@dptr
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	src/lcd.c:566: uint8_t x = previousReadingX + 2;
	mov	dptr,#_previousReadingX
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_glcdPlotIrValue_x_65536_104
	mov	a,#0x02
	add	a,r6
	movx	@dptr,a
;	src/lcd.c:569: for (uint8_t page = 2; page < 8; page++)
	mov	r6,#0x02
00106$:
	cjne	r6,#0x08,00123$
00123$:
	jnc	00101$
;	src/lcd.c:571: glcdWrite(previousReadingX + 1, page, 0x00);
	mov	dptr,#_previousReadingX
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dptr,#_glcdWrite_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_glcdWrite_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_glcdWrite
	pop	ar6
;	src/lcd.c:572: glcdWrite(previousReadingX + 2, page, 0x00);
	mov	dptr,#_previousReadingX
	movx	a,@dptr
	mov	r5,a
	inc	r5
	inc	r5
	mov	dptr,#_glcdWrite_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_glcdWrite_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	push	ar6
	lcall	_glcdWrite
	pop	ar6
	pop	ar7
;	src/lcd.c:569: for (uint8_t page = 2; page < 8; page++)
	inc	r6
	sjmp	00106$
00101$:
;	src/lcd.c:576: glcdDrawGraph(previousReadingX, previousReadingY, x, y);
	mov	dptr,#_previousReadingX
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_previousReadingY
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_glcdPlotIrValue_x_65536_104
	movx	a,@dptr
	mov	r2,a
	mov	_glcdPlotIrValue_sloc0_1_0,r2
;	1-genFromRTrack replaced	mov	(_glcdPlotIrValue_sloc0_1_0 + 1),#0x00
	mov	(_glcdPlotIrValue_sloc0_1_0 + 1),r5
	mov	ar0,r7
	mov	r1,#0x00
	mov	dptr,#_glcdDrawGraph_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_glcdDrawGraph_PARM_3
	mov	a,_glcdPlotIrValue_sloc0_1_0
	movx	@dptr,a
	mov	a,(_glcdPlotIrValue_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_glcdDrawGraph_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	push	ar2
	lcall	_glcdDrawGraph
	pop	ar2
	pop	ar7
;	src/lcd.c:578: if(previousReadingX == 126)
	mov	dptr,#_previousReadingX
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x7e,00103$
;	src/lcd.c:580: previousReadingX = 0;
	mov	dptr,#_previousReadingX
	clr	a
	movx	@dptr,a
;	src/lcd.c:581: previousReadingY = 0;
	mov	dptr,#_previousReadingY
	movx	@dptr,a
	ret
00103$:
;	src/lcd.c:585: previousReadingX = x;
	mov	dptr,#_previousReadingX
	mov	a,r2
	movx	@dptr,a
;	src/lcd.c:586: previousReadingY = y;
	mov	dptr,#_previousReadingY
	mov	a,r7
	movx	@dptr,a
;	src/lcd.c:588: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'generateRandom'
;------------------------------------------------------------
;max                       Allocated with name '_generateRandom_PARM_2'
;min                       Allocated with name '_generateRandom_min_65536_109'
;------------------------------------------------------------
;	src/lcd.c:596: int generateRandom(int min, int max)
;	-----------------------------------------
;	 function generateRandom
;	-----------------------------------------
_generateRandom:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_generateRandom_min_65536_109
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:598: return min + rand() % (max - min + 1);
	lcall	_rand
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_generateRandom_min_65536_109
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_generateRandom_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,r3
	subb	a,r5
	mov	r3,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
;	src/lcd.c:599: }
	mov	dpl,r4
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdTest'
;------------------------------------------------------------
;x1                        Allocated with name '_lcdTest_x1_65537_112'
;y1                        Allocated with name '_lcdTest_y1_65537_112'
;------------------------------------------------------------
;	src/lcd.c:605: void lcdTest()
;	-----------------------------------------
;	 function lcdTest
;	-----------------------------------------
_lcdTest:
;	src/lcd.c:607: INFO_LOG("LCD Testing");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/lcd.c:610: glcdWriteString(32, 0, "SPO2");
	mov	dptr,#_glcdWriteString_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x20
	lcall	_glcdWriteString
;	src/lcd.c:612: glcdWriteString(94, 0, "BPM");
	mov	dptr,#_glcdWriteString_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_glcdWriteString_PARM_3
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x5e
	lcall	_glcdWriteString
;	src/lcd.c:629: while(1)
00102$:
;	src/lcd.c:631: glcdPlotIrValue(generateRandom(40,160));
	mov	dptr,#_generateRandom_PARM_2
	mov	a,#0xa0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0028
	lcall	_generateRandom
	lcall	_glcdPlotIrValue
;	src/lcd.c:632: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	src/lcd.c:637: while (1)
;	src/lcd.c:639: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x90	; 144
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0xe8	; 232
	.db #0xa8	; 168
	.db #0xb8	; 184
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0xb8	; 184
	.db #0xa8	; 168
	.db #0xe8	; 232
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0xb8	; 184
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xa8	; 168
	.db #0xe8	; 232
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0x80	; 128
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x78	; 120	'x'
	.db #0x80	; 128
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xb8	; 184
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Unknown Memory Addr! = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: UNKNOWN CONTROLLER"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "STATUS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "SPO2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "BPM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mLCD Testing"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
