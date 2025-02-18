;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _writeRegisterMAXWing_PARM_3
	.globl _writeRegisterMAXWing_PARM_2
	.globl _readBytesMAXWing_PARM_4
	.globl _readBytesMAXWing_PARM_3
	.globl _readBytesMAXWing_PARM_2
	.globl _readRegisterMAXWing_PARM_2
	.globl _sendControlByteNoAddr_PARM_2
	.globl _sendControlByte_PARM_3
	.globl _sendControlByte_PARM_2
	.globl _clock
	.globl _checkAcknowledgement
	.globl _start
	.globl _stop
	.globl _sendAcknowledge
	.globl _sendNAcknowledge
	.globl _reverse
	.globl _sendControlByte
	.globl _sendControlByteNoAddr
	.globl _i2cByteWrite
	.globl _i2cByteRead
	.globl _readRegisterMAXWing
	.globl _readBytesMAXWing
	.globl _writeRegisterMAXWing
	.globl _testI2c
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
_reverse_input_65536_36:
	.ds 1
_reverse_output_65536_37:
	.ds 1
_sendControlByte_PARM_2:
	.ds 1
_sendControlByte_PARM_3:
	.ds 2
_sendControlByte_op_65536_40:
	.ds 1
_sendControlByteNoAddr_PARM_2:
	.ds 1
_sendControlByteNoAddr_op_65536_46:
	.ds 1
_i2cByteWrite_dataByte_65536_50:
	.ds 1
_i2cByteWrite_databyteMsbFirst_65536_51:
	.ds 1
_i2cByteRead_dataByte_65536_54:
	.ds 1
_readRegisterMAXWing_PARM_2:
	.ds 1
_readRegisterMAXWing_deviceId_65536_57:
	.ds 1
_readRegisterMAXWing_regAddressMsbFirst_65537_60:
	.ds 1
_readRegisterMAXWing_dataByte_65538_65:
	.ds 1
_readBytesMAXWing_PARM_2:
	.ds 1
_readBytesMAXWing_PARM_3:
	.ds 3
_readBytesMAXWing_PARM_4:
	.ds 1
_readBytesMAXWing_deviceId_65536_68:
	.ds 1
_readBytesMAXWing_regAddressMsbFirst_65537_71:
	.ds 1
_readBytesMAXWing_dataByte_196609_77:
	.ds 1
_writeRegisterMAXWing_PARM_2:
	.ds 1
_writeRegisterMAXWing_PARM_3:
	.ds 1
_writeRegisterMAXWing_deviceId_65536_82:
	.ds 1
_writeRegisterMAXWing_regAddressMsbFirst_65537_85:
	.ds 1
_writeRegisterMAXWing_databyteMsbFirst_65538_89:
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
;Allocation info for local variables in function 'clock'
;------------------------------------------------------------
;	src/i2c.c:37: void clock()
;	-----------------------------------------
;	 function clock
;	-----------------------------------------
_clock:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/i2c.c:39: NOP;
	nop
;	src/i2c.c:40: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:41: NOP;
	nop
;	src/i2c.c:42: NOP;
	nop
;	src/i2c.c:43: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:44: NOP;
	nop
;	src/i2c.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkAcknowledgement'
;------------------------------------------------------------
;value                     Allocated with name '_checkAcknowledgement_value_65537_30'
;------------------------------------------------------------
;	src/i2c.c:52: int checkAcknowledgement()
;	-----------------------------------------
;	 function checkAcknowledgement
;	-----------------------------------------
_checkAcknowledgement:
;	src/i2c.c:55: SDA = 1;
;	assignBit
	setb	_P1_2
;	src/i2c.c:56: NOP;
	nop
;	src/i2c.c:57: NOP;
	nop
;	src/i2c.c:58: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:60: uint8_t value = SDA;
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	r7,a
;	src/i2c.c:61: NOP;
	nop
;	src/i2c.c:62: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:63: NOP;
	nop
;	src/i2c.c:64: if(value != 0)
	mov	a,r7
	jz	00102$
;	src/i2c.c:66: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/i2c.c:68: return SUCCESS;
	mov	dptr,#0x0000
;	src/i2c.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
;	src/i2c.c:75: void start()
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
;	src/i2c.c:77: SDA = 1;
;	assignBit
	setb	_P1_2
;	src/i2c.c:78: NOP;
	nop
;	src/i2c.c:79: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:80: NOP;
	nop
;	src/i2c.c:81: SDA = 0;
;	assignBit
	clr	_P1_2
;	src/i2c.c:82: NOP;
	nop
;	src/i2c.c:83: NOP;
	nop
;	src/i2c.c:84: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop'
;------------------------------------------------------------
;	src/i2c.c:91: void stop()
;	-----------------------------------------
;	 function stop
;	-----------------------------------------
_stop:
;	src/i2c.c:93: SDA = 0;
;	assignBit
	clr	_P1_2
;	src/i2c.c:94: NOP;
	nop
;	src/i2c.c:95: NOP;
	nop
;	src/i2c.c:96: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:97: NOP;
	nop
;	src/i2c.c:98: NOP;
	nop
;	src/i2c.c:99: SDA = 1;
;	assignBit
	setb	_P1_2
;	src/i2c.c:100: NOP;
	nop
;	src/i2c.c:101: NOP;
	nop
;	src/i2c.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendAcknowledge'
;------------------------------------------------------------
;	src/i2c.c:108: void sendAcknowledge()
;	-----------------------------------------
;	 function sendAcknowledge
;	-----------------------------------------
_sendAcknowledge:
;	src/i2c.c:110: SDA = 0;
;	assignBit
	clr	_P1_2
;	src/i2c.c:111: NOP;
	nop
;	src/i2c.c:112: NOP;
	nop
;	src/i2c.c:113: clock();
	lcall	_clock
;	src/i2c.c:114: SDA = 1;
;	assignBit
	setb	_P1_2
;	src/i2c.c:115: NOP;
	nop
;	src/i2c.c:116: NOP;
	nop
;	src/i2c.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendNAcknowledge'
;------------------------------------------------------------
;	src/i2c.c:123: void sendNAcknowledge()
;	-----------------------------------------
;	 function sendNAcknowledge
;	-----------------------------------------
_sendNAcknowledge:
;	src/i2c.c:125: SDA = 1;
;	assignBit
	setb	_P1_2
;	src/i2c.c:126: NOP;
	nop
;	src/i2c.c:127: NOP;
	nop
;	src/i2c.c:128: clock();
	lcall	_clock
;	src/i2c.c:129: NOP;
	nop
;	src/i2c.c:130: NOP;
	nop
;	src/i2c.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse'
;------------------------------------------------------------
;input                     Allocated with name '_reverse_input_65536_36'
;output                    Allocated with name '_reverse_output_65536_37'
;i                         Allocated with name '_reverse_i_131072_38'
;------------------------------------------------------------
;	src/i2c.c:138: uint8_t reverse(uint8_t input)
;	-----------------------------------------
;	 function reverse
;	-----------------------------------------
_reverse:
	mov	a,dpl
	mov	dptr,#_reverse_input_65536_36
	movx	@dptr,a
;	src/i2c.c:140: uint8_t output = 0;
	mov	dptr,#_reverse_output_65536_37
	clr	a
	movx	@dptr,a
;	src/i2c.c:142: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	src/i2c.c:144: output = output << 1;
	mov	dptr,#_reverse_output_65536_37
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	src/i2c.c:146: output = output | (input & 0x01);
	mov	dptr,#_reverse_input_65536_36
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r5
	mov	r4,a
	mov	dptr,#_reverse_output_65536_37
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	src/i2c.c:147: input = input >> 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	dptr,#_reverse_input_65536_36
	movx	@dptr,a
;	src/i2c.c:142: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	src/i2c.c:149: return output;
	mov	dptr,#_reverse_output_65536_37
	movx	a,@dptr
;	src/i2c.c:150: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendControlByte'
;------------------------------------------------------------
;deviceId                  Allocated with name '_sendControlByte_PARM_2'
;addr                      Allocated with name '_sendControlByte_PARM_3'
;op                        Allocated with name '_sendControlByte_op_65536_40'
;blockAddress              Allocated with name '_sendControlByte_blockAddress_65536_41'
;b0                        Allocated with name '_sendControlByte_b0_65536_41'
;b1                        Allocated with name '_sendControlByte_b1_65537_42'
;b2                        Allocated with name '_sendControlByte_b2_65538_43'
;i                         Allocated with name '_sendControlByte_i_131074_44'
;------------------------------------------------------------
;	src/i2c.c:159: void sendControlByte(const Operation op, uint8_t deviceId, uint16_t addr) 
;	-----------------------------------------
;	 function sendControlByte
;	-----------------------------------------
_sendControlByte:
	mov	a,dpl
	mov	dptr,#_sendControlByte_op_65536_40
	movx	@dptr,a
;	src/i2c.c:162: uint8_t blockAddress = (addr & 0x700) >> 8;
	mov	dptr,#_sendControlByte_PARM_3
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	mov	ar6,r7
;	src/i2c.c:164: uint8_t b0 = blockAddress & 0x01;
	mov	a,#0x01
	anl	a,r6
	mov	r7,a
;	src/i2c.c:165: blockAddress >>= 1; 
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	src/i2c.c:166: uint8_t b1 = blockAddress & 0x01;
	mov	a,#0x01
	anl	a,r6
	mov	r5,a
;	src/i2c.c:167: blockAddress >>= 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	src/i2c.c:168: uint8_t b2 = blockAddress & 0x01;
	anl	ar6,#0x01
;	src/i2c.c:174: for (int i = 0; i < 4; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,#0x04
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	src/i2c.c:176: SDA = deviceId & 0x01;
	mov	dptr,#_sendControlByte_PARM_2
	movx	a,@dptr
	mov	r2,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:177: clock();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_clock
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/i2c.c:178: deviceId = deviceId >> 1;
	mov	a,r2
	clr	c
	rrc	a
	mov	dptr,#_sendControlByte_PARM_2
	movx	@dptr,a
;	src/i2c.c:174: for (int i = 0; i < 4; i++)
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00101$:
;	src/i2c.c:182: SDA = b2;
;	assignBit
	mov	a,r6
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:183: clock();
	push	ar7
	push	ar5
	lcall	_clock
	pop	ar5
;	src/i2c.c:186: SDA = b1;
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:187: clock();
	lcall	_clock
	pop	ar7
;	src/i2c.c:190: SDA = b0;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:191: clock();
	lcall	_clock
;	src/i2c.c:194: SDA = op;
	mov	dptr,#_sendControlByte_op_65536_40
	movx	a,@dptr
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:195: clock();
;	src/i2c.c:196: }
	ljmp	_clock
;------------------------------------------------------------
;Allocation info for local variables in function 'sendControlByteNoAddr'
;------------------------------------------------------------
;deviceId                  Allocated with name '_sendControlByteNoAddr_PARM_2'
;op                        Allocated with name '_sendControlByteNoAddr_op_65536_46'
;i                         Allocated with name '_sendControlByteNoAddr_i_131072_48'
;------------------------------------------------------------
;	src/i2c.c:204: void sendControlByteNoAddr(const Operation op, uint8_t deviceId)
;	-----------------------------------------
;	 function sendControlByteNoAddr
;	-----------------------------------------
_sendControlByteNoAddr:
	mov	a,dpl
	mov	dptr,#_sendControlByteNoAddr_op_65536_46
	movx	@dptr,a
;	src/i2c.c:207: for (int i = 0; i < 7; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	src/i2c.c:209: SDA = deviceId & 0x01;
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:210: clock();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock
	pop	ar5
	pop	ar6
	pop	ar7
;	src/i2c.c:211: deviceId = deviceId >> 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	movx	@dptr,a
;	src/i2c.c:207: for (int i = 0; i < 7; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	src/i2c.c:214: SDA = op;
	mov	dptr,#_sendControlByteNoAddr_op_65536_46
	movx	a,@dptr
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:215: clock();
;	src/i2c.c:216: }
	ljmp	_clock
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cByteWrite'
;------------------------------------------------------------
;dataByte                  Allocated with name '_i2cByteWrite_dataByte_65536_50'
;databyteMsbFirst          Allocated with name '_i2cByteWrite_databyteMsbFirst_65536_51'
;i                         Allocated with name '_i2cByteWrite_i_131072_52'
;------------------------------------------------------------
;	src/i2c.c:218: void i2cByteWrite(uint8_t dataByte)
;	-----------------------------------------
;	 function i2cByteWrite
;	-----------------------------------------
_i2cByteWrite:
	mov	a,dpl
	mov	dptr,#_i2cByteWrite_dataByte_65536_50
	movx	@dptr,a
;	src/i2c.c:221: uint8_t databyteMsbFirst = reverse(dataByte);
	movx	a,@dptr
	mov	dpl,a
	lcall	_reverse
	mov	a,dpl
	mov	dptr,#_i2cByteWrite_databyteMsbFirst_65536_51
	movx	@dptr,a
;	src/i2c.c:222: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	src/i2c.c:224: SDA = databyteMsbFirst & 0x01;
	mov	dptr,#_i2cByteWrite_databyteMsbFirst_65536_51
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:225: databyteMsbFirst >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	movx	@dptr,a
;	src/i2c.c:226: clock();
	push	ar7
	push	ar6
	lcall	_clock
	pop	ar6
	pop	ar7
;	src/i2c.c:222: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	src/i2c.c:228: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cByteRead'
;------------------------------------------------------------
;dataByte                  Allocated with name '_i2cByteRead_dataByte_65536_54'
;i                         Allocated with name '_i2cByteRead_i_131072_55'
;------------------------------------------------------------
;	src/i2c.c:230: uint8_t i2cByteRead()
;	-----------------------------------------
;	 function i2cByteRead
;	-----------------------------------------
_i2cByteRead:
;	src/i2c.c:232: uint8_t dataByte = 0;
	mov	dptr,#_i2cByteRead_dataByte_65536_54
	clr	a
	movx	@dptr,a
;	src/i2c.c:233: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	src/i2c.c:235: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:237: dataByte = (dataByte << 1) | SDA;
	mov	dptr,#_i2cByteRead_dataByte_65536_54
	movx	a,@dptr
	add	a,acc
	mov	r5,a
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	r4,a
	mov	dptr,#_i2cByteRead_dataByte_65536_54
	orl	a,r5
	movx	@dptr,a
;	src/i2c.c:238: NOP;
	nop
;	src/i2c.c:239: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:240: NOP;
	nop
;	src/i2c.c:233: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	src/i2c.c:242: return dataByte;
	mov	dptr,#_i2cByteRead_dataByte_65536_54
	movx	a,@dptr
;	src/i2c.c:243: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readRegisterMAXWing'
;------------------------------------------------------------
;regAddr                   Allocated with name '_readRegisterMAXWing_PARM_2'
;deviceId                  Allocated with name '_readRegisterMAXWing_deviceId_65536_57'
;regAddressMsbFirst        Allocated with name '_readRegisterMAXWing_regAddressMsbFirst_65537_60'
;i                         Allocated with name '_readRegisterMAXWing_i_131073_61'
;dataByte                  Allocated with name '_readRegisterMAXWing_dataByte_65538_65'
;i                         Allocated with name '_readRegisterMAXWing_i_131074_66'
;------------------------------------------------------------
;	src/i2c.c:252: int readRegisterMAXWing(uint8_t deviceId, uint8_t regAddr)
;	-----------------------------------------
;	 function readRegisterMAXWing
;	-----------------------------------------
_readRegisterMAXWing:
	mov	a,dpl
	mov	dptr,#_readRegisterMAXWing_deviceId_65536_57
	movx	@dptr,a
;	src/i2c.c:254: start();
	lcall	_start
;	src/i2c.c:255: sendControlByteNoAddr(WRITE, deviceId);
	mov	dptr,#_readRegisterMAXWing_deviceId_65536_57
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_sendControlByteNoAddr
;	src/i2c.c:256: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	cjne	r5,#0xff,00102$
	cjne	r6,#0xff,00102$
;	src/i2c.c:258: ERROR_LOG("%s: Acknowledgement Failed", __func__);
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:259: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/i2c.c:262: uint8_t regAddressMsbFirst = reverse(regAddr);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_reverse
	mov	a,dpl
	pop	ar7
	mov	dptr,#_readRegisterMAXWing_regAddressMsbFirst_65537_60
	movx	@dptr,a
;	src/i2c.c:263: for (int i = 0; i < 8; i++)
	mov	r5,#0x00
	mov	r6,#0x00
00110$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/i2c.c:265: SDA = regAddressMsbFirst & 0x01;
	mov	dptr,#_readRegisterMAXWing_regAddressMsbFirst_65537_60
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:266: regAddressMsbFirst >>= 1;
	mov	a,r4
	clr	c
	rrc	a
	movx	@dptr,a
;	src/i2c.c:267: clock();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock
	pop	ar5
	pop	ar6
	pop	ar7
;	src/i2c.c:263: for (int i = 0; i < 8; i++)
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
	sjmp	00110$
00103$:
;	src/i2c.c:269: if (checkAcknowledgement() == FAIL)
	push	ar7
	lcall	_checkAcknowledgement
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	cjne	r5,#0xff,00105$
	cjne	r6,#0xff,00105$
;	src/i2c.c:271: ERROR_LOG("%s Read address failed!", __func__);
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:272: return FAIL;
	mov	dptr,#0xffff
	ret
00105$:
;	src/i2c.c:274: start();
	push	ar7
	lcall	_start
	pop	ar7
;	src/i2c.c:275: sendControlByteNoAddr(READ, deviceId);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendControlByteNoAddr
;	src/i2c.c:276: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00107$
	cjne	r7,#0xff,00107$
;	src/i2c.c:278: ERROR_LOG("%s: Acknowledgement Failed", __func__);
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:279: return FAIL;
	mov	dptr,#0xffff
	ret
00107$:
;	src/i2c.c:282: uint8_t dataByte = 0;
	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
	clr	a
	movx	@dptr,a
;	src/i2c.c:283: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
;	src/i2c.c:285: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/i2c.c:287: dataByte = (dataByte << 1) | SDA;
	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
	movx	a,@dptr
	add	a,acc
	mov	r5,a
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	r4,a
	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
	orl	a,r5
	movx	@dptr,a
;	src/i2c.c:288: NOP;
	nop
;	src/i2c.c:289: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:290: NOP;
	nop
;	src/i2c.c:283: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00108$:
;	src/i2c.c:292: sendNAcknowledge();
	lcall	_sendNAcknowledge
;	src/i2c.c:293: stop();
	lcall	_stop
;	src/i2c.c:295: return dataByte;
	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	src/i2c.c:296: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readBytesMAXWing'
;------------------------------------------------------------
;regAddr                   Allocated with name '_readBytesMAXWing_PARM_2'
;dataArray                 Allocated with name '_readBytesMAXWing_PARM_3'
;size                      Allocated with name '_readBytesMAXWing_PARM_4'
;deviceId                  Allocated with name '_readBytesMAXWing_deviceId_65536_68'
;regAddressMsbFirst        Allocated with name '_readBytesMAXWing_regAddressMsbFirst_65537_71'
;i                         Allocated with name '_readBytesMAXWing_i_131073_72'
;k                         Allocated with name '_readBytesMAXWing_k_131073_76'
;dataByte                  Allocated with name '_readBytesMAXWing_dataByte_196609_77'
;i                         Allocated with name '_readBytesMAXWing_i_262145_78'
;------------------------------------------------------------
;	src/i2c.c:308: int readBytesMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t dataArray[], uint8_t size)
;	-----------------------------------------
;	 function readBytesMAXWing
;	-----------------------------------------
_readBytesMAXWing:
	mov	a,dpl
	mov	dptr,#_readBytesMAXWing_deviceId_65536_68
	movx	@dptr,a
;	src/i2c.c:310: start();
	lcall	_start
;	src/i2c.c:311: sendControlByteNoAddr(WRITE, deviceId);
	mov	dptr,#_readBytesMAXWing_deviceId_65536_68
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_sendControlByteNoAddr
;	src/i2c.c:312: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	cjne	r5,#0xff,00102$
	cjne	r6,#0xff,00102$
;	src/i2c.c:314: ERROR_LOG("%s: Acknowledgement Failed", __func__);
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:315: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/i2c.c:318: uint8_t regAddressMsbFirst = reverse(regAddr);
	mov	dptr,#_readBytesMAXWing_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_reverse
	mov	a,dpl
	pop	ar7
	mov	dptr,#_readBytesMAXWing_regAddressMsbFirst_65537_71
	movx	@dptr,a
;	src/i2c.c:319: for (int i = 0; i < 8; i++)
	mov	r5,#0x00
	mov	r6,#0x00
00114$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/i2c.c:321: SDA = regAddressMsbFirst & 0x01;
	mov	dptr,#_readBytesMAXWing_regAddressMsbFirst_65537_71
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:322: regAddressMsbFirst >>= 1;
	mov	a,r4
	clr	c
	rrc	a
	movx	@dptr,a
;	src/i2c.c:323: clock();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock
	pop	ar5
	pop	ar6
	pop	ar7
;	src/i2c.c:319: for (int i = 0; i < 8; i++)
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
	sjmp	00114$
00103$:
;	src/i2c.c:325: if (checkAcknowledgement() == FAIL)
	push	ar7
	lcall	_checkAcknowledgement
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	cjne	r5,#0xff,00105$
	cjne	r6,#0xff,00105$
;	src/i2c.c:327: ERROR_LOG("%s Read address failed!", __func__);
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:328: return FAIL;
	mov	dptr,#0xffff
	ret
00105$:
;	src/i2c.c:331: start();
	push	ar7
	lcall	_start
	pop	ar7
;	src/i2c.c:332: sendControlByteNoAddr(READ, deviceId);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendControlByteNoAddr
;	src/i2c.c:333: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00133$
	cjne	r7,#0xff,00133$
;	src/i2c.c:335: ERROR_LOG("%s: Acknowledgement Failed", __func__);
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:336: return FAIL;
	mov	dptr,#0xffff
	ret
;	src/i2c.c:339: for (uint8_t k = 0; k < size; k++)
00133$:
	mov	dptr,#_readBytesMAXWing_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_readBytesMAXWing_PARM_4
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
00120$:
	clr	c
	mov	a,r3
	subb	a,r4
	jc	00175$
	ljmp	00112$
00175$:
;	src/i2c.c:341: uint8_t dataByte = 0;
	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
	clr	a
	movx	@dptr,a
;	src/i2c.c:342: for (int i = 0; i < 8; i++)
	mov	r1,#0x00
	mov	r2,#0x00
00117$:
	clr	c
	mov	a,r1
	subb	a,#0x08
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
;	src/i2c.c:344: SCL = 1;
	push	ar5
	push	ar6
	push	ar7
;	assignBit
	setb	_P1_3
;	src/i2c.c:346: dataByte = (dataByte << 1) | SDA;
	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
	movx	a,@dptr
	add	a,acc
	mov	r0,a
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
	orl	a,r0
	movx	@dptr,a
;	src/i2c.c:347: NOP;
	nop
;	src/i2c.c:348: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/i2c.c:349: NOP;
	nop
;	src/i2c.c:342: for (int i = 0; i < 8; i++)
	inc	r1
	cjne	r1,#0x00,00177$
	inc	r2
00177$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00117$
00108$:
;	src/i2c.c:352: dataArray[k] = dataByte;
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
;	src/i2c.c:355: if (k < size - 1)
	mov	ar6,r4
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00178$
	dec	r7
00178$:
	mov	ar2,r3
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00110$
;	src/i2c.c:357: sendAcknowledge();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_sendAcknowledge
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00121$
00110$:
;	src/i2c.c:361: sendNAcknowledge();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_sendNAcknowledge
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00121$:
;	src/i2c.c:339: for (uint8_t k = 0; k < size; k++)
	inc	r3
	ljmp	00120$
00112$:
;	src/i2c.c:364: stop();
	lcall	_stop
;	src/i2c.c:366: return SUCCESS;
	mov	dptr,#0x0000
;	src/i2c.c:367: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegisterMAXWing'
;------------------------------------------------------------
;regAddr                   Allocated with name '_writeRegisterMAXWing_PARM_2'
;regVal                    Allocated with name '_writeRegisterMAXWing_PARM_3'
;deviceId                  Allocated with name '_writeRegisterMAXWing_deviceId_65536_82'
;regAddressMsbFirst        Allocated with name '_writeRegisterMAXWing_regAddressMsbFirst_65537_85'
;i                         Allocated with name '_writeRegisterMAXWing_i_131073_86'
;databyteMsbFirst          Allocated with name '_writeRegisterMAXWing_databyteMsbFirst_65538_89'
;i                         Allocated with name '_writeRegisterMAXWing_i_131074_90'
;------------------------------------------------------------
;	src/i2c.c:377: int writeRegisterMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
;	-----------------------------------------
;	 function writeRegisterMAXWing
;	-----------------------------------------
_writeRegisterMAXWing:
	mov	a,dpl
	mov	dptr,#_writeRegisterMAXWing_deviceId_65536_82
	movx	@dptr,a
;	src/i2c.c:379: start();
	lcall	_start
;	src/i2c.c:380: sendControlByteNoAddr(WRITE, deviceId);
	mov	dptr,#_writeRegisterMAXWing_deviceId_65536_82
	movx	a,@dptr
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_sendControlByteNoAddr
;	src/i2c.c:381: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/i2c.c:383: ERROR_LOG("%s: Acknowledgement Failed", __func__);
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00102$:
;	src/i2c.c:385: uint8_t regAddressMsbFirst = reverse(regAddr);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_reverse
	mov	a,dpl
	mov	dptr,#_writeRegisterMAXWing_regAddressMsbFirst_65537_85
	movx	@dptr,a
;	src/i2c.c:386: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/i2c.c:388: SDA = regAddressMsbFirst & 0x01;
	mov	dptr,#_writeRegisterMAXWing_regAddressMsbFirst_65537_85
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:389: regAddressMsbFirst >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	movx	@dptr,a
;	src/i2c.c:390: clock();
	push	ar7
	push	ar6
	lcall	_clock
	pop	ar6
	pop	ar7
;	src/i2c.c:386: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
	sjmp	00110$
00103$:
;	src/i2c.c:392: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00105$
	cjne	r7,#0xff,00105$
;	src/i2c.c:394: ERROR_LOG("%s Read address failed!", __func__);
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:395: return FAIL;
	mov	dptr,#0xffff
	ret
00105$:
;	src/i2c.c:398: uint8_t databyteMsbFirst = reverse(regVal);
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_reverse
	mov	a,dpl
	mov	dptr,#_writeRegisterMAXWing_databyteMsbFirst_65538_89
	movx	@dptr,a
;	src/i2c.c:399: for (int i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00106$
;	src/i2c.c:401: SDA = databyteMsbFirst & 0x01;
	mov	dptr,#_writeRegisterMAXWing_databyteMsbFirst_65538_89
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_2,c
;	src/i2c.c:402: databyteMsbFirst >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	movx	@dptr,a
;	src/i2c.c:403: clock();
	push	ar7
	push	ar6
	lcall	_clock
	pop	ar6
	pop	ar7
;	src/i2c.c:399: for (int i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00106$:
;	src/i2c.c:405: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00108$
	cjne	r7,#0xff,00108$
;	src/i2c.c:407: ERROR_LOG("%s Write data failed!", __func__);
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:408: return FAIL;
	mov	dptr,#0xffff
	ret
00108$:
;	src/i2c.c:410: stop();
;	src/i2c.c:411: }
	ljmp	_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'testI2c'
;------------------------------------------------------------
;regVal                    Allocated with name '_testI2c_regVal_65536_93'
;------------------------------------------------------------
;	src/i2c.c:417: int testI2c()
;	-----------------------------------------
;	 function testI2c
;	-----------------------------------------
_testI2c:
;	src/i2c.c:422: regVal = readRegisterMAXWing(MAX30101, 0x0A);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
;	src/i2c.c:423: INFO_LOG("LOG 1: Value at location: %u", regVal);
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:424: writeRegisterMAXWing(MAX30101, 0x0A, 0x01); // Write Register
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_writeRegisterMAXWing
;	src/i2c.c:425: regVal = readRegisterMAXWing(MAX30101, 0x0A);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
;	src/i2c.c:426: INFO_LOG("LOG 2:Value at location: %u", regVal);
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/i2c.c:428: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Acknowledgement Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "readRegisterMAXWing"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Read address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "readBytesMAXWing"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "writeRegisterMAXWing"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Write data failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mLOG 1: Value at location: %u"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mLOG 2:Value at location: %u"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
