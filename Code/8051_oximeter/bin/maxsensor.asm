;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module maxsensor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMaxWing
	.globl _getInterruptStatus
	.globl _readSensorFifo
	.globl _getBufferSizeInBytes
	.globl _sensorInit
	.globl _configureSensorRegister
	.globl _pmicInit
	.globl _sensor_delay
	.globl _printf_tiny
	.globl _printf
	.globl _writeRegisterMAXWing
	.globl _readBytesMAXWing
	.globl _readRegisterMAXWing
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
	.globl _getBufferSizeInBytes_PARM_2
	.globl _configureSensorRegister_PARM_3
	.globl _configureSensorRegister_PARM_2
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
_sensor_delay_val_65536_26:
	.ds 2
_configureSensorRegister_PARM_2:
	.ds 1
_configureSensorRegister_PARM_3:
	.ds 1
_configureSensorRegister_deviceId_65536_30:
	.ds 1
_getBufferSizeInBytes_PARM_2:
	.ds 1
_getBufferSizeInBytes_head_65536_50:
	.ds 1
_getBufferSizeInBytes_numBytes_65536_51:
	.ds 1
_readSensorFifo_fifoData_65536_55:
	.ds 3
_testMaxWing_fifo_65537_65:
	.ds 192
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
;Allocation info for local variables in function 'sensor_delay'
;------------------------------------------------------------
;val                       Allocated with name '_sensor_delay_val_65536_26'
;i                         Allocated with name '_sensor_delay_i_131072_28'
;------------------------------------------------------------
;	src/maxsensor.c:61: void sensor_delay(uint16_t val)
;	-----------------------------------------
;	 function sensor_delay
;	-----------------------------------------
_sensor_delay:
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
	mov	dptr,#_sensor_delay_val_65536_26
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/maxsensor.c:63: for (uint16_t i = 0; i < val; i++)
	mov	dptr,#_sensor_delay_val_65536_26
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
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	src/maxsensor.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pmicInit'
;------------------------------------------------------------
;	src/maxsensor.c:71: void pmicInit()
;	-----------------------------------------
;	 function pmicInit
;	-----------------------------------------
_pmicInit:
;	src/maxsensor.c:74: writeRegisterMAXWing(PMIC, BBB_EXTRA_ADRS, 0x40);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x1c
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x2a
	lcall	_writeRegisterMAXWing
;	src/maxsensor.c:77: PMIC_ENABLE = 0;
;	assignBit
	clr	_P1_5
;	src/maxsensor.c:78: writeRegisterMAXWing(PMIC, BOOST_VOLTAGE, 0x08);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	mov	dpl,#0x2a
	lcall	_writeRegisterMAXWing
;	src/maxsensor.c:79: PMIC_ENABLE = 1;
;	assignBit
	setb	_P1_5
;	src/maxsensor.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configureSensorRegister'
;------------------------------------------------------------
;regAddr                   Allocated with name '_configureSensorRegister_PARM_2'
;regVal                    Allocated with name '_configureSensorRegister_PARM_3'
;deviceId                  Allocated with name '_configureSensorRegister_deviceId_65536_30'
;status                    Allocated with name '_configureSensorRegister_status_65536_31'
;val                       Allocated with name '_configureSensorRegister_val_65537_33'
;------------------------------------------------------------
;	src/maxsensor.c:90: int configureSensorRegister(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
;	-----------------------------------------
;	 function configureSensorRegister
;	-----------------------------------------
_configureSensorRegister:
	mov	a,dpl
	mov	dptr,#_configureSensorRegister_deviceId_65536_30
	movx	@dptr,a
;	src/maxsensor.c:92: int status = writeRegisterMAXWing(deviceId, regAddr, regVal);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configureSensorRegister_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_configureSensorRegister_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_writeRegisterMAXWing
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxsensor.c:93: if (status != SUCCESS)
	orl	a,b
	jz	00102$
;	src/maxsensor.c:95: ERROR_LOG("Write to Register %u Failed", regAddr);
	mov	ar3,r6
	mov	r4,#0x00
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
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:96: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxsensor.c:99: sensor_delay(500);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	push	ar5
	lcall	_sensor_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxsensor.c:102: uint8_t val = readRegisterMAXWing(deviceId, regAddr);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar6
	push	ar5
	lcall	_readRegisterMAXWing
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
;	src/maxsensor.c:103: if (val != regVal)
	mov	a,r4
	cjne	a,ar5,00116$
	sjmp	00104$
00116$:
;	src/maxsensor.c:105: ERROR_LOG("Register %d Expected %d and actual %d config does not match!", regAddr, regVal, val);
	mov	r7,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	push	ar4
	push	ar7
	push	ar5
	push	ar3
	push	ar6
	push	ar2
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:106: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxsensor.c:109: return SUCCESS;
	mov	dptr,#0x0000
;	src/maxsensor.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensorInit'
;------------------------------------------------------------
;status                    Allocated with name '_sensorInit_status_65536_35'
;modeConfig                Allocated with name '_sensorInit_modeConfig_65536_35'
;interruptEnableRegister   Allocated with name '_sensorInit_interruptEnableRegister_65537_37'
;fifoConfig                Allocated with name '_sensorInit_fifoConfig_65538_39'
;spo2Config                Allocated with name '_sensorInit_spo2Config_65539_41'
;multiLedControlRegister1  Allocated with name '_sensorInit_multiLedControlRegister1_65540_45'
;------------------------------------------------------------
;	src/maxsensor.c:116: void sensorInit()
;	-----------------------------------------
;	 function sensorInit
;	-----------------------------------------
_sensorInit:
;	src/maxsensor.c:124: status = writeRegisterMAXWing(MAX30101, ModeConfiguration, modeConfig);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,#0x43
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_writeRegisterMAXWing
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:125: if (status != SUCCESS)
	orl	a,b
	jz	00102$
;	src/maxsensor.c:127: ERROR_LOG("1 Reset Conguration Failed");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
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
;	src/maxsensor.c:128: return;
	ret
00102$:
;	src/maxsensor.c:131: sensor_delay(500);
	mov	dptr,#0x01f4
	lcall	_sensor_delay
;	src/maxsensor.c:138: status = configureSensorRegister(MAX30101, InterruptEnable1, interruptEnableRegister);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0xc0
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:139: if (status != SUCCESS)
	orl	a,b
	jz	00104$
;	src/maxsensor.c:141: ERROR_LOG("2 Interrupt Enable Register Failed");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
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
00104$:
;	src/maxsensor.c:151: status = configureSensorRegister(MAX30101, FIFO_Configuration, fifoConfig);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:152: if (status != SUCCESS)
	orl	a,b
	jz	00106$
;	src/maxsensor.c:154: ERROR_LOG("3 FIFO Config Failed");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
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
;	src/maxsensor.c:163: status = configureSensorRegister(MAX30101, SpO2Configuration, spo2Config);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0x25
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:164: if (status != SUCCESS)
	orl	a,b
	jz	00108$
;	src/maxsensor.c:166: ERROR_LOG("4 SpO2 Config Failed");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
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
00108$:
;	src/maxsensor.c:183: status = configureSensorRegister(MAX30101, LED1_RED_PA, 0xFF);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:184: if (status != SUCCESS)
	orl	a,b
	jz	00110$
;	src/maxsensor.c:186: ERROR_LOG("6 Red LED Drive Current Conguration Failed");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
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
00110$:
;	src/maxsensor.c:191: status = configureSensorRegister(MAX30101, LED2_IR_PA, 0xFF);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:192: if (status != SUCCESS)
	mov	a,r6
	orl	a,r7
	jz	00112$
;	src/maxsensor.c:194: ERROR_LOG("7 IR LED Drive Current Conguration Failed");
	push	ar7
	push	ar6
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
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
	pop	ar6
	pop	ar7
00112$:
;	src/maxsensor.c:201: writeRegisterMAXWing(MAX30101, ModeControlReg1, multiLedControlRegister1);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	mov	a,#0x21
	movx	@dptr,a
	mov	dpl,#0x75
	push	ar7
	push	ar6
	lcall	_writeRegisterMAXWing
	pop	ar6
	pop	ar7
;	src/maxsensor.c:202: if (status != SUCCESS)
	mov	a,r6
	orl	a,r7
	jz	00114$
;	src/maxsensor.c:204: ERROR_LOG("5 Multi LED Control Failed");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
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
;	src/maxsensor.c:205: return;
	ret
00114$:
;	src/maxsensor.c:210: status = writeRegisterMAXWing(MAX30101, FIFO_WritePointer, 0);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_writeRegisterMAXWing
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:211: if (status != SUCCESS)
	orl	a,b
	jz	00116$
;	src/maxsensor.c:213: ERROR_LOG("8 Resetting Write Pointer Failed");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
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
;	src/maxsensor.c:214: return;
	ret
00116$:
;	src/maxsensor.c:217: status = writeRegisterMAXWing(MAX30101, FIFO_ReadPointer, 0);
	mov	dptr,#_writeRegisterMAXWing_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_writeRegisterMAXWing_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_writeRegisterMAXWing
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:218: if (status != SUCCESS)
	orl	a,b
	jz	00118$
;	src/maxsensor.c:220: ERROR_LOG("9 Resetting Read Failed");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
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
;	src/maxsensor.c:221: return;
	ret
00118$:
;	src/maxsensor.c:228: status = configureSensorRegister(MAX30101, ModeConfiguration, modeConfig);
	mov	dptr,#_configureSensorRegister_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_configureSensorRegister_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_configureSensorRegister
	mov	a,dpl
	mov	b,dph
;	src/maxsensor.c:229: if (status != SUCCESS)
	orl	a,b
	jz	00120$
;	src/maxsensor.c:231: ERROR_LOG("10 Setting operating mode Failed");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
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
00120$:
;	src/maxsensor.c:235: sensor_delay(500);
	mov	dptr,#0x01f4
;	src/maxsensor.c:236: }
	ljmp	_sensor_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'getBufferSizeInBytes'
;------------------------------------------------------------
;tail                      Allocated with name '_getBufferSizeInBytes_PARM_2'
;head                      Allocated with name '_getBufferSizeInBytes_head_65536_50'
;numBytes                  Allocated with name '_getBufferSizeInBytes_numBytes_65536_51'
;------------------------------------------------------------
;	src/maxsensor.c:245: uint8_t getBufferSizeInBytes(uint8_t head, uint8_t tail)
;	-----------------------------------------
;	 function getBufferSizeInBytes
;	-----------------------------------------
_getBufferSizeInBytes:
	mov	a,dpl
	mov	dptr,#_getBufferSizeInBytes_head_65536_50
	movx	@dptr,a
;	src/maxsensor.c:250: if (head > tail) // Head is greater than tail
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getBufferSizeInBytes_PARM_2
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jnc	00105$
;	src/maxsensor.c:252: numBytes = head - tail;
	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
	mov	a,r7
	clr	c
	subb	a,r6
	movx	@dptr,a
	sjmp	00106$
00105$:
;	src/maxsensor.c:255: else if (head < tail) // Tail is greater than head
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00102$
;	src/maxsensor.c:257: numBytes = (BUFFER_SIZE - tail) + head;
	mov	a,#0x20
	clr	c
	subb	a,r6
	mov	r6,a
	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
	mov	a,r7
	add	a,r6
	movx	@dptr,a
	sjmp	00106$
00102$:
;	src/maxsensor.c:261: numBytes = 0;
	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
	clr	a
	movx	@dptr,a
00106$:
;	src/maxsensor.c:264: numBytes = numBytes * SIZE_PER_CHANNEL * NUM_LEDS;
	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	movx	@dptr,a
;	src/maxsensor.c:266: return numBytes;
	movx	a,@dptr
;	src/maxsensor.c:267: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readSensorFifo'
;------------------------------------------------------------
;fifoData                  Allocated with name '_readSensorFifo_fifoData_65536_55'
;result                    Allocated with name '_readSensorFifo_result_65536_56'
;overflowCnt               Allocated with name '_readSensorFifo_overflowCnt_65536_56'
;writeIndex                Allocated with name '_readSensorFifo_writeIndex_65537_58'
;readIndex                 Allocated with name '_readSensorFifo_readIndex_65538_60'
;------------------------------------------------------------
;	src/maxsensor.c:275: int readSensorFifo(uint8_t fifoData[])
;	-----------------------------------------
;	 function readSensorFifo
;	-----------------------------------------
_readSensorFifo:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_readSensorFifo_fifoData_65536_55
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/maxsensor.c:280: int overflowCnt = readRegisterMAXWing(MAX30101, OverflowCounter);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:281: if (overflowCnt == FAIL)
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxsensor.c:283: ERROR_LOG("%s: Reading overflow counter fail", __func__);
	push	ar7
	push	ar6
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
;	src/maxsensor.c:286: INFO_LOG("Overflow Count = %d", overflowCnt);
	push	ar6
	push	ar7
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:287: sensor_delay(500);
	mov	dptr,#0x01f4
	lcall	_sensor_delay
;	src/maxsensor.c:290: int writeIndex = readRegisterMAXWing(MAX30101, FIFO_WritePointer);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:291: if (writeIndex == FAIL)
	cjne	r6,#0xff,00104$
	cjne	r7,#0xff,00104$
;	src/maxsensor.c:293: ERROR_LOG("%s: Reading Write Index fail", __func__);
	push	ar7
	push	ar6
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00104$:
;	src/maxsensor.c:296: INFO_LOG("Write ptr = %d", writeIndex);
	push	ar6
	push	ar7
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:297: sensor_delay(500);
	mov	dptr,#0x01f4
	lcall	_sensor_delay
;	src/maxsensor.c:300: int readIndex = readRegisterMAXWing(MAX30101, FIFO_ReadPointer);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:301: if (readIndex == FAIL)
	cjne	r6,#0xff,00106$
	cjne	r7,#0xff,00106$
;	src/maxsensor.c:303: ERROR_LOG("%s: Reading Read Index fail", __func__);
	push	ar7
	push	ar6
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00106$:
;	src/maxsensor.c:306: INFO_LOG("Read ptr = %d", readIndex);
	push	ar6
	push	ar7
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:307: sensor_delay(500);
	mov	dptr,#0x01f4
	lcall	_sensor_delay
;	src/maxsensor.c:320: result = readBytesMAXWing(MAX30101, FIFO_DataRegister, fifoData, 6);
	mov	dptr,#_readSensorFifo_fifoData_65536_55
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_readBytesMAXWing_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_readBytesMAXWing_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_readBytesMAXWing_PARM_4
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readBytesMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:321: if (result == FAIL)
	cjne	r6,#0xff,00108$
	cjne	r7,#0xff,00108$
;	src/maxsensor.c:323: ERROR_LOG("%s: Reading FIFO fail", __func__);
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:324: return FAIL;
	mov	dptr,#0xffff
	ret
00108$:
;	src/maxsensor.c:327: return 6;
	mov	dptr,#0x0006
;	src/maxsensor.c:328: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getInterruptStatus'
;------------------------------------------------------------
;status                    Allocated with name '_getInterruptStatus_status_65536_63'
;------------------------------------------------------------
;	src/maxsensor.c:334: void getInterruptStatus()
;	-----------------------------------------
;	 function getInterruptStatus
;	-----------------------------------------
_getInterruptStatus:
;	src/maxsensor.c:336: int status = readRegisterMAXWing(MAX30101, InterruptStatus1);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:337: INFO_LOG("Interrupt status1 = %d", status);
	push	ar6
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:338: status = readRegisterMAXWing(MAX30101, InterruptStatus2);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
	mov	r6,dpl
	mov	r7,dph
;	src/maxsensor.c:339: INFO_LOG("Interrupt status2 = %d", status);
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:340: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'testMaxWing'
;------------------------------------------------------------
;fifo                      Allocated with name '_testMaxWing_fifo_65537_65'
;counter                   Allocated with name '_testMaxWing_counter_65537_65'
;deviceID                  Allocated with name '_testMaxWing_deviceID_131074_67'
;nreadBytes                Allocated with name '_testMaxWing_nreadBytes_131075_68'
;ledRed                    Allocated with name '_testMaxWing_ledRed_196611_69'
;ledIr                     Allocated with name '_testMaxWing_ledIr_196612_70'
;i                         Allocated with name '_testMaxWing_i_196611_71'
;------------------------------------------------------------
;	src/maxsensor.c:346: void testMaxWing()
;	-----------------------------------------
;	 function testMaxWing
;	-----------------------------------------
_testMaxWing:
;	src/maxsensor.c:348: pmicInit();
	lcall	_pmicInit
;	src/maxsensor.c:349: sensorInit();
	lcall	_sensorInit
;	src/maxsensor.c:355: while (1)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	src/maxsensor.c:357: SECTION;
	push	ar7
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxsensor.c:358: uint8_t deviceID = readRegisterMAXWing(MAX30101, 0xFF);
	mov	dptr,#_readRegisterMAXWing_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl,#0x75
	lcall	_readRegisterMAXWing
;	src/maxsensor.c:361: getInterruptStatus();
	lcall	_getInterruptStatus
;	src/maxsensor.c:362: int nreadBytes = readSensorFifo(fifo);
	mov	dptr,#_testMaxWing_fifo_65537_65
	mov	b,#0x00
	lcall	_readSensorFifo
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/maxsensor.c:365: if (nreadBytes != FAIL && nreadBytes > 0)
	cjne	r4,#0xff,00133$
	cjne	r5,#0xff,00133$
	sjmp	00117$
00133$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00117$
;	src/maxsensor.c:367: uint16_t ledRed = fifo[2];
	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0002)
	movx	a,@dptr
;	src/maxsensor.c:368: ledRed = (ledRed << 8) | fifo[1];
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0001)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	src/maxsensor.c:370: uint16_t ledIr = fifo[5];
	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0005)
	movx	a,@dptr
;	src/maxsensor.c:371: ledIr = (ledIr << 8) | fifo[4];
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0004)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	src/maxsensor.c:378: INFO_LOG("%u,red = %u ir = %u", counter++,ledRed,ledIr);
	mov	ar0,r6
	mov	ar1,r7
	inc	r6
	cjne	r6,#0x00,00135$
	inc	r7
00135$:
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/maxsensor.c:387: for (uint16_t i = 0; i < 100; i++)
00117$:
	mov	r4,#0x00
	mov	r5,#0x00
00109$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0x64
	mov	a,r3
	subb	a,#0x00
	jc	00136$
	ljmp	00106$
00136$:
;	src/maxsensor.c:389: sensor_delay(500);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sensor_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxsensor.c:387: for (uint16_t i = 0; i < 100; i++)
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
;	src/maxsensor.c:393: }
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Write to Register %u Failed"
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
	.ascii "[1;31mERROR: Register %d Expected %d and actual %d config do"
	.ascii "es not match!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 1 Reset Conguration Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 2 Interrupt Enable Register Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 3 FIFO Config Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 4 SpO2 Config Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 6 Red LED Drive Current Conguration Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 7 IR LED Drive Current Conguration Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 5 Multi LED Control Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 8 Resetting Write Pointer Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 9 Resetting Read Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: 10 Setting operating mode Failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Reading overflow counter fail"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "readSensorFifo"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mOverflow Count = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Reading Write Index fail"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mWrite ptr = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Reading Read Index fail"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mRead ptr = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Reading FIFO fail"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mInterrupt status1 = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mInterrupt status2 = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "************************************************************"
	.ascii "**************"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%u,red = %u ir = %u"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
