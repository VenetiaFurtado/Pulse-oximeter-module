;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module maxhub
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lastTest
	.globl _checkDeviceType
	.globl _setSampleRate
	.globl _setPulseWidth
	.globl _readSensorBpm
	.globl _readBpm
	.globl _numSamplesOutFifo
	.globl _configSensorBpm
	.globl _configBpm
	.globl _maximFastAlgoControl
	.globl _max30101Control
	.globl _agcAlgoControl
	.globl _setFifoThreshold
	.globl _setOutputMode
	.globl _readSensorHubStatus
	.globl _setBootloaderMode
	.globl _setApplicationMode
	.globl _readSensorHubMode
	.globl _readRegisterMAX30101
	.globl _writeRegisterMAX30101
	.globl _i2cMax32664SequentialReadByte
	.globl _i2cMax32664ReadByte
	.globl _i2cMax32664WriteByte
	.globl _i2cMax32664WriteBytes
	.globl _hubDelayMs
	.globl _printf_tiny
	.globl _printf
	.globl _i2cByteRead
	.globl _i2cByteWrite
	.globl _sendNAcknowledge
	.globl _sendAcknowledge
	.globl _sendControlByteNoAddr
	.globl _stop
	.globl _start
	.globl _checkAcknowledgement
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
	.globl _readSensorBpm_PARM_2
	.globl _readBpm_PARM_2
	.globl _writeRegisterMAX30101_PARM_2
	.globl _i2cMax32664SequentialReadByte_PARM_4
	.globl _i2cMax32664SequentialReadByte_PARM_3
	.globl _i2cMax32664SequentialReadByte_PARM_2
	.globl _i2cMax32664ReadByte_PARM_3
	.globl _i2cMax32664ReadByte_PARM_2
	.globl _i2cMax32664WriteByte_PARM_3
	.globl _i2cMax32664WriteByte_PARM_2
	.globl _i2cMax32664WriteBytes_PARM_4
	.globl _i2cMax32664WriteBytes_PARM_3
	.globl _i2cMax32664WriteBytes_PARM_2
	.globl _testMaxHub
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
_readBpm_sloc0_1_0:
	.ds 3
_readBpm_sloc1_1_0:
	.ds 1
_readSensorBpm_sloc0_1_0:
	.ds 4
_readSensorBpm_sloc1_1_0:
	.ds 1
_readSensorBpm_sloc2_1_0:
	.ds 2
_readSensorBpm_sloc3_1_0:
	.ds 3
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
_hubDelayMs_delayMs_65536_28:
	.ds 1
_i2cMax32664WriteBytes_PARM_2:
	.ds 1
_i2cMax32664WriteBytes_PARM_3:
	.ds 3
_i2cMax32664WriteBytes_PARM_4:
	.ds 1
_i2cMax32664WriteBytes_familyByte_65536_34:
	.ds 1
_i2cMax32664WriteByte_PARM_2:
	.ds 1
_i2cMax32664WriteByte_PARM_3:
	.ds 1
_i2cMax32664WriteByte_familyByte_65536_44:
	.ds 1
_i2cMax32664ReadByte_PARM_2:
	.ds 1
_i2cMax32664ReadByte_PARM_3:
	.ds 3
_i2cMax32664ReadByte_familyByte_65536_47:
	.ds 1
_i2cMax32664SequentialReadByte_PARM_2:
	.ds 1
_i2cMax32664SequentialReadByte_PARM_3:
	.ds 3
_i2cMax32664SequentialReadByte_PARM_4:
	.ds 1
_i2cMax32664SequentialReadByte_familyByte_65536_58:
	.ds 1
_writeRegisterMAX30101_PARM_2:
	.ds 1
_writeRegisterMAX30101_regAddr_65536_70:
	.ds 1
_writeRegisterMAX30101_dataArr_65536_71:
	.ds 2
_readRegisterMAX30101_regAddr_65536_72:
	.ds 1
_setOutputMode_outputType_65536_82:
	.ds 1
_setFifoThreshold_intThresh_65536_86:
	.ds 1
_agcAlgoControl_enable_65536_89:
	.ds 1
_max30101Control_senSwitch_65536_94:
	.ds 1
_maximFastAlgoControl_mode_65536_99:
	.ds 1
_configBpm_mode_65536_104:
	.ds 1
_configSensorBpm_mode_65536_112:
	.ds 1
_readBpm_PARM_2:
	.ds 3
_readBpm_mode_65536_122:
	.ds 1
_readBpm_statusByte_65538_127:
	.ds 2
_readBpm_dataArr_65538_127:
	.ds 11
_readSensorBpm_PARM_2:
	.ds 3
_readSensorBpm_mode_65536_140:
	.ds 1
_readSensorBpm_statusByte_65538_145:
	.ds 2
_readSensorBpm_sensorData_65538_145:
	.ds 23
_setPulseWidth_width_65536_158:
	.ds 2
_setPulseWidth_bits_65536_159:
	.ds 1
_setSampleRate_sampRate_65536_160:
	.ds 2
_setSampleRate_bits_65536_161:
	.ds 1
_testMaxHub_data_65538_169:
	.ds 21
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
;Allocation info for local variables in function 'hubDelayMs'
;------------------------------------------------------------
;delayMs                   Allocated with name '_hubDelayMs_delayMs_65536_28'
;i                         Allocated with name '_hubDelayMs_i_131072_30'
;j                         Allocated with name '_hubDelayMs_j_262144_32'
;------------------------------------------------------------
;	src/maxhub.c:44: void hubDelayMs(const uint8_t delayMs)
;	-----------------------------------------
;	 function hubDelayMs
;	-----------------------------------------
_hubDelayMs:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_hubDelayMs_delayMs_65536_28
	movx	@dptr,a
;	src/maxhub.c:46: for (uint8_t i = 0; i < delayMs; i++)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00109$
;	src/maxhub.c:49: for (uint16_t j = 0; j < 1000; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0xe8
	mov	a,r3
	subb	a,#0x03
	jnc	00108$
;	src/maxhub.c:51: __asm__("nop");
	nop
;	src/maxhub.c:49: for (uint16_t j = 0; j < 1000; j++)
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
;	src/maxhub.c:46: for (uint8_t i = 0; i < delayMs; i++)
	inc	r6
	sjmp	00107$
00109$:
;	src/maxhub.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cMax32664WriteBytes'
;------------------------------------------------------------
;indexByte                 Allocated with name '_i2cMax32664WriteBytes_PARM_2'
;dataArray                 Allocated with name '_i2cMax32664WriteBytes_PARM_3'
;size                      Allocated with name '_i2cMax32664WriteBytes_PARM_4'
;familyByte                Allocated with name '_i2cMax32664WriteBytes_familyByte_65536_34'
;i                         Allocated with name '_i2cMax32664WriteBytes_i_131072_39'
;dataByte                  Allocated with name '_i2cMax32664WriteBytes_dataByte_196608_40'
;statusByte                Allocated with name '_i2cMax32664WriteBytes_statusByte_65537_43'
;------------------------------------------------------------
;	src/maxhub.c:65: int i2cMax32664WriteBytes(uint8_t familyByte, uint8_t indexByte, uint8_t dataArray[], uint8_t size)
;	-----------------------------------------
;	 function i2cMax32664WriteBytes
;	-----------------------------------------
_i2cMax32664WriteBytes:
	mov	a,dpl
	mov	dptr,#_i2cMax32664WriteBytes_familyByte_65536_34
	movx	@dptr,a
;	src/maxhub.c:67: start();
	lcall	_start
;	src/maxhub.c:68: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:69: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxhub.c:71: ERROR_LOG("%s:%d Write address failed!", __func__, __LINE__);
	mov	a,#0x47
	push	acc
	clr	a
	push	acc
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
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:72: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:76: i2cByteWrite(familyByte);
	mov	dptr,#_i2cMax32664WriteBytes_familyByte_65536_34
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cByteWrite
;	src/maxhub.c:77: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00104$
	cjne	r7,#0xff,00104$
;	src/maxhub.c:79: ERROR_LOG("%s Family Byte Write address failed!", __func__);
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
;	src/maxhub.c:80: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxhub.c:84: i2cByteWrite(indexByte);
	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cByteWrite
;	src/maxhub.c:85: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00122$
	cjne	r7,#0xff,00122$
;	src/maxhub.c:87: ERROR_LOG("%s Index Byte Write address failed!", __func__);
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
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
;	src/maxhub.c:88: return FAIL;
	mov	dptr,#0xffff
	ret
;	src/maxhub.c:91: for (uint8_t i = 0; i < size; i++)
00122$:
	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
00113$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00109$
;	src/maxhub.c:93: uint8_t dataByte = dataArray[i];
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
;	src/maxhub.c:94: i2cByteWrite(dataByte);
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2cByteWrite
;	src/maxhub.c:95: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0xff,00114$
	cjne	r2,#0xff,00114$
;	src/maxhub.c:97: ERROR_LOG("%s Data Byte Write %d failed!", __func__, i);
	mov	ar1,r3
	mov	r2,#0x00
	push	ar1
	push	ar2
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:98: return FAIL;
	mov	dptr,#0xffff
	ret
00114$:
;	src/maxhub.c:91: for (uint8_t i = 0; i < size; i++)
	inc	r3
	sjmp	00113$
00109$:
;	src/maxhub.c:101: stop();
	lcall	_stop
;	src/maxhub.c:103: hubDelayMs(CMD_DELAY);
	mov	dpl,#0x14
	lcall	_hubDelayMs
;	src/maxhub.c:105: start();
	lcall	_start
;	src/maxhub.c:106: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:107: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00111$
	cjne	r7,#0xff,00111$
;	src/maxhub.c:109: ERROR_LOG("%s Read Byte failed!", __func__);
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
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
;	src/maxhub.c:110: return FAIL;
	mov	dptr,#0xffff
	ret
00111$:
;	src/maxhub.c:113: uint8_t statusByte = i2cByteRead();
	lcall	_i2cByteRead
	mov	r7,dpl
;	src/maxhub.c:114: sendNAcknowledge();
	push	ar7
	lcall	_sendNAcknowledge
;	src/maxhub.c:115: stop();
	lcall	_stop
	pop	ar7
;	src/maxhub.c:117: return statusByte;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	src/maxhub.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cMax32664WriteByte'
;------------------------------------------------------------
;indexByte                 Allocated with name '_i2cMax32664WriteByte_PARM_2'
;dataByte                  Allocated with name '_i2cMax32664WriteByte_PARM_3'
;familyByte                Allocated with name '_i2cMax32664WriteByte_familyByte_65536_44'
;status                    Allocated with name '_i2cMax32664WriteByte_status_65536_45'
;------------------------------------------------------------
;	src/maxhub.c:128: int i2cMax32664WriteByte(uint8_t familyByte, uint8_t indexByte, uint8_t dataByte)
;	-----------------------------------------
;	 function i2cMax32664WriteByte
;	-----------------------------------------
_i2cMax32664WriteByte:
	mov	a,dpl
	mov	dptr,#_i2cMax32664WriteByte_familyByte_65536_44
	movx	@dptr,a
;	src/maxhub.c:132: do
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	movx	a,@dptr
	mov	r6,a
00101$:
;	src/maxhub.c:134: status = i2cMax32664WriteBytes(familyByte, indexByte, &dataByte, 1);
	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
	mov	a,#_i2cMax32664WriteByte_PARM_3
	movx	@dptr,a
	mov	a,#(_i2cMax32664WriteByte_PARM_3 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2cMax32664WriteBytes
	mov	r4,dpl
	mov	r5,dph
;	src/maxhub.c:135: INFO_LOG("retrying write");
	push	ar5
	push	ar4
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxhub.c:136: } while (ERR_DEVICE_BUSY == status);
	cjne	r4,#0xfe,00114$
	cjne	r5,#0x00,00114$
	sjmp	00101$
00114$:
;	src/maxhub.c:138: return status;
	mov	dpl,r4
	mov	dph,r5
;	src/maxhub.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cMax32664ReadByte'
;------------------------------------------------------------
;indexByte                 Allocated with name '_i2cMax32664ReadByte_PARM_2'
;writeByte                 Allocated with name '_i2cMax32664ReadByte_PARM_3'
;familyByte                Allocated with name '_i2cMax32664ReadByte_familyByte_65536_47'
;statusByte                Allocated with name '_i2cMax32664ReadByte_statusByte_65537_55'
;readByte                  Allocated with name '_i2cMax32664ReadByte_readByte_65538_57'
;------------------------------------------------------------
;	src/maxhub.c:149: int i2cMax32664ReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t *writeByte)
;	-----------------------------------------
;	 function i2cMax32664ReadByte
;	-----------------------------------------
_i2cMax32664ReadByte:
	mov	a,dpl
	mov	dptr,#_i2cMax32664ReadByte_familyByte_65536_47
	movx	@dptr,a
;	src/maxhub.c:151: start();
	lcall	_start
;	src/maxhub.c:152: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:153: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxhub.c:155: ERROR_LOG("%s Write address failed!", __func__);
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
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
;	src/maxhub.c:156: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:160: i2cByteWrite(familyByte);
	mov	dptr,#_i2cMax32664ReadByte_familyByte_65536_47
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cByteWrite
;	src/maxhub.c:161: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00104$
	cjne	r7,#0xff,00104$
;	src/maxhub.c:163: ERROR_LOG("%s Family Byte Write address failed!", __func__);
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
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
;	src/maxhub.c:164: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxhub.c:168: i2cByteWrite(indexByte);
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cByteWrite
;	src/maxhub.c:169: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00106$
	cjne	r7,#0xff,00106$
;	src/maxhub.c:171: ERROR_LOG("%s Index Byte Write address failed!", __func__);
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
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
;	src/maxhub.c:172: return FAIL;
	mov	dptr,#0xffff
	ret
00106$:
;	src/maxhub.c:176: if (writeByte != NULL)
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00110$
;	src/maxhub.c:178: i2cByteWrite(*writeByte);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	lcall	_i2cByteWrite
;	src/maxhub.c:179: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00110$
	cjne	r7,#0xff,00110$
;	src/maxhub.c:181: ERROR_LOG("%s Write Byte Write address failed!", __func__);
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
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
;	src/maxhub.c:182: return FAIL;
	mov	dptr,#0xffff
	ret
00110$:
;	src/maxhub.c:186: stop();
	lcall	_stop
;	src/maxhub.c:188: hubDelayMs(CMD_DELAY);
	mov	dpl,#0x14
	lcall	_hubDelayMs
;	src/maxhub.c:190: start();
	lcall	_start
;	src/maxhub.c:191: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:192: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xff,00112$
	cjne	r7,#0xff,00112$
;	src/maxhub.c:194: ERROR_LOG("%s Read Byte failed!", __func__);
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
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
;	src/maxhub.c:195: return FAIL;
	mov	dptr,#0xffff
	ret
00112$:
;	src/maxhub.c:198: uint8_t statusByte = i2cByteRead();
	lcall	_i2cByteRead
	mov	r7,dpl
;	src/maxhub.c:199: sendAcknowledge();
	push	ar7
	lcall	_sendAcknowledge
	pop	ar7
;	src/maxhub.c:201: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,r7
	jz	00114$
;	src/maxhub.c:203: return statusByte;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
00114$:
;	src/maxhub.c:206: uint8_t readByte = i2cByteRead();
	lcall	_i2cByteRead
	mov	r7,dpl
;	src/maxhub.c:208: sendNAcknowledge();
	push	ar7
	lcall	_sendNAcknowledge
;	src/maxhub.c:210: stop();
	lcall	_stop
	pop	ar7
;	src/maxhub.c:212: return readByte;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	src/maxhub.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cMax32664SequentialReadByte'
;------------------------------------------------------------
;indexByte                 Allocated with name '_i2cMax32664SequentialReadByte_PARM_2'
;readArr                   Allocated with name '_i2cMax32664SequentialReadByte_PARM_3'
;size                      Allocated with name '_i2cMax32664SequentialReadByte_PARM_4'
;familyByte                Allocated with name '_i2cMax32664SequentialReadByte_familyByte_65536_58'
;i                         Allocated with name '_i2cMax32664SequentialReadByte_i_131072_60'
;statusByte                Allocated with name '_i2cMax32664SequentialReadByte_statusByte_65537_66'
;i                         Allocated with name '_i2cMax32664SequentialReadByte_i_131073_68'
;------------------------------------------------------------
;	src/maxhub.c:224: int i2cMax32664SequentialReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t readArr[], uint8_t size)
;	-----------------------------------------
;	 function i2cMax32664SequentialReadByte
;	-----------------------------------------
_i2cMax32664SequentialReadByte:
	mov	a,dpl
	mov	dptr,#_i2cMax32664SequentialReadByte_familyByte_65536_58
	movx	@dptr,a
;	src/maxhub.c:226: for (uint8_t i = 0; i < size; i++)
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
00114$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00101$
;	src/maxhub.c:228: readArr[i] = 0;
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
;	src/maxhub.c:226: for (uint8_t i = 0; i < size; i++)
	inc	r3
	sjmp	00114$
00101$:
;	src/maxhub.c:231: start();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_start
;	src/maxhub.c:232: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:233: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0xff,00103$
	cjne	r3,#0xff,00103$
;	src/maxhub.c:235: ERROR_LOG("%s Write address failed!", __func__);
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
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
;	src/maxhub.c:236: return FAIL;
	mov	dptr,#0xffff
	ret
00103$:
;	src/maxhub.c:240: i2cByteWrite(familyByte);
	mov	dptr,#_i2cMax32664SequentialReadByte_familyByte_65536_58
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2cByteWrite
;	src/maxhub.c:241: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0xff,00105$
	cjne	r3,#0xff,00105$
;	src/maxhub.c:243: ERROR_LOG("%s Family Byte Write address failed!", __func__);
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
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
;	src/maxhub.c:244: return FAIL;
	mov	dptr,#0xffff
	ret
00105$:
;	src/maxhub.c:248: i2cByteWrite(indexByte);
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2cByteWrite
;	src/maxhub.c:249: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0xff,00107$
	cjne	r3,#0xff,00107$
;	src/maxhub.c:251: ERROR_LOG("%s Index Byte Write address failed!", __func__);
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
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
;	src/maxhub.c:252: return FAIL;
	mov	dptr,#0xffff
	ret
00107$:
;	src/maxhub.c:255: stop();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_stop
;	src/maxhub.c:257: hubDelayMs(CMD_DELAY);
	mov	dpl,#0x14
	lcall	_hubDelayMs
;	src/maxhub.c:259: start();
	lcall	_start
;	src/maxhub.c:260: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
	mov	dptr,#_sendControlByteNoAddr_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendControlByteNoAddr
;	src/maxhub.c:261: if (checkAcknowledgement() == FAIL)
	lcall	_checkAcknowledgement
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0xff,00109$
	cjne	r3,#0xff,00109$
;	src/maxhub.c:263: ERROR_LOG("%s Read Byte failed!", __func__);
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
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
;	src/maxhub.c:264: return FAIL;
	mov	dptr,#0xffff
	ret
00109$:
;	src/maxhub.c:267: uint8_t statusByte = i2cByteRead();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2cByteRead
	mov	r3,dpl
;	src/maxhub.c:268: sendAcknowledge();
	push	ar3
	lcall	_sendAcknowledge
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxhub.c:270: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,r3
	jz	00129$
;	src/maxhub.c:272: ERROR_LOG("%s Status Byte = %d", __func__, statusByte);
	mov	r2,#0x00
	push	ar3
	push	ar2
	push	ar3
	push	ar2
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
;	src/maxhub.c:273: return statusByte;
	mov	dpl,r3
	mov	dph,r2
	ret
;	src/maxhub.c:276: for (uint8_t i = 0; i < size; i++)
00129$:
	mov	r3,#0x00
00117$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00112$
;	src/maxhub.c:278: readArr[i] = i2cByteRead();
	push	ar4
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_i2cByteRead
	mov	r4,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
;	src/maxhub.c:279: sendAcknowledge();
	push	ar4
	push	ar3
	lcall	_sendAcknowledge
;	src/maxhub.c:280: hubDelayMs(CMD_DELAY);
	mov	dpl,#0x14
	lcall	_hubDelayMs
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxhub.c:276: for (uint8_t i = 0; i < size; i++)
	inc	r3
	pop	ar4
	sjmp	00117$
00112$:
;	src/maxhub.c:294: stop();
	lcall	_stop
;	src/maxhub.c:295: return SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:296: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegisterMAX30101'
;------------------------------------------------------------
;regVal                    Allocated with name '_writeRegisterMAX30101_PARM_2'
;regAddr                   Allocated with name '_writeRegisterMAX30101_regAddr_65536_70'
;dataArr                   Allocated with name '_writeRegisterMAX30101_dataArr_65536_71'
;------------------------------------------------------------
;	src/maxhub.c:308: int writeRegisterMAX30101(uint8_t regAddr, uint8_t regVal)
;	-----------------------------------------
;	 function writeRegisterMAX30101
;	-----------------------------------------
_writeRegisterMAX30101:
	mov	a,dpl
	mov	dptr,#_writeRegisterMAX30101_regAddr_65536_70
	movx	@dptr,a
;	src/maxhub.c:312: dataArr[0] = regAddr;
	movx	a,@dptr
	mov	dptr,#_writeRegisterMAX30101_dataArr_65536_71
	movx	@dptr,a
;	src/maxhub.c:313: dataArr[1] = regVal;
	mov	dptr,#_writeRegisterMAX30101_PARM_2
	movx	a,@dptr
	mov	dptr,#(_writeRegisterMAX30101_dataArr_65536_71 + 0x0001)
	movx	@dptr,a
;	src/maxhub.c:315: return i2cMax32664WriteBytes(WRITE_REGISTER, WRITE_MAX30101, dataArr, 2);
	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
	mov	a,#_writeRegisterMAX30101_dataArr_65536_71
	movx	@dptr,a
	mov	a,#(_writeRegisterMAX30101_dataArr_65536_71 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x40
;	src/maxhub.c:316: }
	ljmp	_i2cMax32664WriteBytes
;------------------------------------------------------------
;Allocation info for local variables in function 'readRegisterMAX30101'
;------------------------------------------------------------
;regAddr                   Allocated with name '_readRegisterMAX30101_regAddr_65536_72'
;data                      Allocated with name '_readRegisterMAX30101_data_65536_73'
;------------------------------------------------------------
;	src/maxhub.c:326: uint8_t readRegisterMAX30101(uint8_t regAddr)
;	-----------------------------------------
;	 function readRegisterMAX30101
;	-----------------------------------------
_readRegisterMAX30101:
	mov	a,dpl
	mov	dptr,#_readRegisterMAX30101_regAddr_65536_72
	movx	@dptr,a
;	src/maxhub.c:329: uint8_t data = i2cMax32664ReadByte(READ_REGISTER, READ_MAX30101, &regAddr);
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	mov	a,#_readRegisterMAX30101_regAddr_65536_72
	movx	@dptr,a
	mov	a,#(_readRegisterMAX30101_regAddr_65536_72 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x41
;	src/maxhub.c:330: return data;
;	src/maxhub.c:331: }
	ljmp	_i2cMax32664ReadByte
;------------------------------------------------------------
;Allocation info for local variables in function 'readSensorHubMode'
;------------------------------------------------------------
;mode                      Allocated with name '_readSensorHubMode_mode_65536_74'
;------------------------------------------------------------
;	src/maxhub.c:338: uint8_t readSensorHubMode()
;	-----------------------------------------
;	 function readSensorHubMode
;	-----------------------------------------
_readSensorHubMode:
;	src/maxhub.c:340: int mode = i2cMax32664ReadByte(READ_DEVICE_MODE, 0x00, NULL); // family and index byte.
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_i2cMax32664ReadByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:341: if (mode == FAIL)
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxhub.c:343: ERROR_LOG("Error reading device mode!");
	push	ar7
	push	ar6
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
;	src/maxhub.c:345: return mode;                                                      // Will return 0x00
	mov	dpl,r6
;	src/maxhub.c:346: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setApplicationMode'
;------------------------------------------------------------
;i                         Allocated with name '_setApplicationMode_i_131072_77'
;------------------------------------------------------------
;	src/maxhub.c:352: void setApplicationMode()
;	-----------------------------------------
;	 function setApplicationMode
;	-----------------------------------------
_setApplicationMode:
;	src/maxhub.c:354: INFO_LOG("Setting to Application Mode...");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:356: RSTN = 0;
;	assignBit
	clr	_P3_4
;	src/maxhub.c:358: MFIO = 1;
;	assignBit
	setb	_P1_4
;	src/maxhub.c:359: hubDelayMs(10*2);
	mov	dpl,#0x14
	lcall	_hubDelayMs
;	src/maxhub.c:361: RSTN = 1;
;	assignBit
	setb	_P3_4
;	src/maxhub.c:362: hubDelayMs(50*2);
	mov	dpl,#0x64
	lcall	_hubDelayMs
;	src/maxhub.c:364: for (uint8_t i = 0; i < 5; i++)
	mov	r7,#0x00
00105$:
	cjne	r7,#0x05,00122$
00122$:
	jnc	00101$
;	src/maxhub.c:366: hubDelayMs(100);
	mov	dpl,#0x64
	push	ar7
	lcall	_hubDelayMs
	pop	ar7
;	src/maxhub.c:364: for (uint8_t i = 0; i < 5; i++)
	inc	r7
	sjmp	00105$
00101$:
;	src/maxhub.c:369: if (readSensorHubMode() != APPLICATION_MODE)
	lcall	_readSensorHubMode
	mov	a,dpl
	jz	00103$
;	src/maxhub.c:371: ERROR_LOG("Application Mode not set!!!");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:372: return;
	ret
00103$:
;	src/maxhub.c:374: INFO_LOG("Application Mode Set");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:375: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setBootloaderMode'
;------------------------------------------------------------
;	src/maxhub.c:381: void setBootloaderMode()
;	-----------------------------------------
;	 function setBootloaderMode
;	-----------------------------------------
_setBootloaderMode:
;	src/maxhub.c:384: RSTN = 0;
;	assignBit
	clr	_P3_4
;	src/maxhub.c:386: MFIO = 0;
;	assignBit
	clr	_P1_4
;	src/maxhub.c:387: hubDelayMs(10);
	mov	dpl,#0x0a
	lcall	_hubDelayMs
;	src/maxhub.c:389: RSTN = 1;
;	assignBit
	setb	_P3_4
;	src/maxhub.c:390: hubDelayMs(50);
	mov	dpl,#0x32
;	src/maxhub.c:391: }
	ljmp	_hubDelayMs
;------------------------------------------------------------
;Allocation info for local variables in function 'readSensorHubStatus'
;------------------------------------------------------------
;statusByte                Allocated with name '_readSensorHubStatus_statusByte_65536_81'
;------------------------------------------------------------
;	src/maxhub.c:398: uint8_t readSensorHubStatus()
;	-----------------------------------------
;	 function readSensorHubStatus
;	-----------------------------------------
_readSensorHubStatus:
;	src/maxhub.c:401: uint8_t statusByte = i2cMax32664ReadByte(0x00, 0x00, NULL); // family and index byte.
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
;	src/maxhub.c:402: return statusByte;                                          // Will return 0x00
;	src/maxhub.c:403: }
	ljmp	_i2cMax32664ReadByte
;------------------------------------------------------------
;Allocation info for local variables in function 'setOutputMode'
;------------------------------------------------------------
;outputType                Allocated with name '_setOutputMode_outputType_65536_82'
;statusByte                Allocated with name '_setOutputMode_statusByte_65537_84'
;------------------------------------------------------------
;	src/maxhub.c:412: uint8_t setOutputMode(uint8_t outputType)
;	-----------------------------------------
;	 function setOutputMode
;	-----------------------------------------
_setOutputMode:
	mov	a,dpl
	mov	dptr,#_setOutputMode_outputType_65536_82
	movx	@dptr,a
;	src/maxhub.c:415: if (outputType > SENSOR_ALGO_COUNTER) // Bytes between 0x00 and 0x07
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x07
	jnc	00102$
;	src/maxhub.c:416: return FAIL;
	mov	dpl,#0xff
	ret
00102$:
;	src/maxhub.c:420: int statusByte = i2cMax32664WriteByte(OUTPUT_MODE, SET_FORMAT, outputType);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_i2cMax32664WriteByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:421: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,r6
	orl	a,r7
	jz	00104$
;	src/maxhub.c:423: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/maxhub.c:424: return statusByte;
	mov	dpl,r6
	ret
00104$:
;	src/maxhub.c:426: return SFE_BIO_SUCCESS;
	mov	dpl,#0x00
;	src/maxhub.c:427: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setFifoThreshold'
;------------------------------------------------------------
;intThresh                 Allocated with name '_setFifoThreshold_intThresh_65536_86'
;statusByte                Allocated with name '_setFifoThreshold_statusByte_65536_87'
;------------------------------------------------------------
;	src/maxhub.c:438: uint8_t setFifoThreshold(uint8_t intThresh)
;	-----------------------------------------
;	 function setFifoThreshold
;	-----------------------------------------
_setFifoThreshold:
	mov	a,dpl
	mov	dptr,#_setFifoThreshold_intThresh_65536_86
	movx	@dptr,a
;	src/maxhub.c:443: uint8_t statusByte = i2cMax32664WriteByte(OUTPUT_MODE, WRITE_SET_THRESHOLD, intThresh);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:444: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,dpl
	mov	r6,a
	jz	00102$
;	src/maxhub.c:446: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	src/maxhub.c:447: return statusByte;
	mov	dpl,r6
	ret
00102$:
;	src/maxhub.c:449: return SFE_BIO_SUCCESS;
	mov	dpl,#0x00
;	src/maxhub.c:450: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'agcAlgoControl'
;------------------------------------------------------------
;enable                    Allocated with name '_agcAlgoControl_enable_65536_89'
;statusByte                Allocated with name '_agcAlgoControl_statusByte_65537_92'
;------------------------------------------------------------
;	src/maxhub.c:458: int agcAlgoControl(uint8_t enable)
;	-----------------------------------------
;	 function agcAlgoControl
;	-----------------------------------------
_agcAlgoControl:
	mov	a,dpl
	mov	dptr,#_agcAlgoControl_enable_65536_89
	movx	@dptr,a
;	src/maxhub.c:460: if (enable > 1)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x01
	jnc	00102$
;	src/maxhub.c:462: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:465: int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_AGC_ALGO, enable);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x52
	lcall	_i2cMax32664WriteByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:466: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,r6
	orl	a,r7
	jz	00104$
;	src/maxhub.c:468: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/maxhub.c:469: return statusByte;
	mov	dpl,r6
	mov	dph,r7
	ret
00104$:
;	src/maxhub.c:471: return SFE_BIO_SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:472: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max30101Control'
;------------------------------------------------------------
;senSwitch                 Allocated with name '_max30101Control_senSwitch_65536_94'
;statusByte                Allocated with name '_max30101Control_statusByte_65537_97'
;------------------------------------------------------------
;	src/maxhub.c:481: uint8_t max30101Control(uint8_t senSwitch)
;	-----------------------------------------
;	 function max30101Control
;	-----------------------------------------
_max30101Control:
	mov	a,dpl
	mov	dptr,#_max30101Control_senSwitch_65536_94
	movx	@dptr,a
;	src/maxhub.c:483: if (senSwitch > 1)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x01
	jnc	00102$
;	src/maxhub.c:485: return FAIL;
	mov	dpl,#0xff
	ret
00102$:
;	src/maxhub.c:489: uint8_t statusByte = i2cMax32664WriteByte(ENABLE_SENSOR, ENABLE_MAX30101, senSwitch);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x44
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:490: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,dpl
	mov	r6,a
	jz	00104$
;	src/maxhub.c:492: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	src/maxhub.c:493: return statusByte;
	mov	dpl,r6
	ret
00104$:
;	src/maxhub.c:495: return SFE_BIO_SUCCESS;
	mov	dpl,#0x00
;	src/maxhub.c:496: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'maximFastAlgoControl'
;------------------------------------------------------------
;mode                      Allocated with name '_maximFastAlgoControl_mode_65536_99'
;statusByte                Allocated with name '_maximFastAlgoControl_statusByte_65537_102'
;------------------------------------------------------------
;	src/maxhub.c:505: uint8_t maximFastAlgoControl(uint8_t mode)
;	-----------------------------------------
;	 function maximFastAlgoControl
;	-----------------------------------------
_maximFastAlgoControl:
	mov	a,dpl
	mov	dptr,#_maximFastAlgoControl_mode_65536_99
	movx	@dptr,a
;	src/maxhub.c:507: if (mode > 2)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x02
	jnc	00102$
;	src/maxhub.c:509: return FAIL;
	mov	dpl,#0xff
	ret
00102$:
;	src/maxhub.c:512: int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_WHRM_ALGO, mode);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x52
	lcall	_i2cMax32664WriteByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:513: if (statusByte != SFE_BIO_SUCCESS)
	mov	a,r6
	orl	a,r7
	jz	00104$
;	src/maxhub.c:515: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/maxhub.c:516: return statusByte;
	mov	dpl,r6
	ret
00104$:
;	src/maxhub.c:518: return SFE_BIO_SUCCESS;
	mov	dpl,#0x00
;	src/maxhub.c:519: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configBpm'
;------------------------------------------------------------
;mode                      Allocated with name '_configBpm_mode_65536_104'
;statusByte                Allocated with name '_configBpm_statusByte_65536_105'
;------------------------------------------------------------
;	src/maxhub.c:526: void configBpm(uint8_t mode)
;	-----------------------------------------
;	 function configBpm
;	-----------------------------------------
_configBpm:
	mov	a,dpl
	mov	dptr,#_configBpm_mode_65536_104
	movx	@dptr,a
;	src/maxhub.c:530: statusByte = setOutputMode(ALGO_DATA); // Just the data
	mov	dpl,#0x02
	lcall	_setOutputMode
	mov	r7,dpl
;	src/maxhub.c:531: INFO_LOG("setOutputMode Status = %d", statusByte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
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
;	src/maxhub.c:537: statusByte = setOutputMode(ALGO_DATA); // Just the data
	mov	dpl,#0x02
	lcall	_setOutputMode
	mov	r7,dpl
;	src/maxhub.c:538: INFO_LOG("setOutputMode Status 2 = %d", statusByte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
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
;	src/maxhub.c:544: statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
	mov	dpl,#0x01
	lcall	_setFifoThreshold
	mov	r7,dpl
;	src/maxhub.c:545: INFO_LOG("setFifoThreshold Status = %d", statusByte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
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
;	src/maxhub.c:551: statusByte = agcAlgoControl(ENABLE);
	mov	dpl,#0x01
	lcall	_agcAlgoControl
	mov	r6,dpl
;	src/maxhub.c:552: INFO_LOG("agcAlgoControl Status = %d", statusByte);
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
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
;	src/maxhub.c:558: statusByte = max30101Control(ENABLE);
	mov	dpl,#0x01
	lcall	_max30101Control
	mov	r7,dpl
;	src/maxhub.c:559: INFO_LOG("max30101Control Status = %d", statusByte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
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
;	src/maxhub.c:565: hubDelayMs(100);
	mov	dpl,#0x64
	lcall	_hubDelayMs
;	src/maxhub.c:567: statusByte = maximFastAlgoControl(mode);
	mov	dptr,#_configBpm_mode_65536_104
	movx	a,@dptr
	mov	dpl,a
	lcall	_maximFastAlgoControl
	mov	r7,dpl
;	src/maxhub.c:568: INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
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
;	src/maxhub.c:574: hubDelayMs(20);
	mov	dpl,#0x14
	lcall	_hubDelayMs
;	src/maxhub.c:575: INFO_LOG("%s: configuration success", __func__);
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:576: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configSensorBpm'
;------------------------------------------------------------
;mode                      Allocated with name '_configSensorBpm_mode_65536_112'
;statusByte                Allocated with name '_configSensorBpm_statusByte_65536_113'
;------------------------------------------------------------
;	src/maxhub.c:583: void configSensorBpm(uint8_t mode)
;	-----------------------------------------
;	 function configSensorBpm
;	-----------------------------------------
_configSensorBpm:
	mov	a,dpl
	mov	dptr,#_configSensorBpm_mode_65536_112
	movx	@dptr,a
;	src/maxhub.c:587: statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
	mov	dpl,#0x03
	lcall	_setOutputMode
	mov	r7,dpl
	mov	r6,#0x00
;	src/maxhub.c:588: INFO_LOG("setOutputMode Status = %d", statusByte);
	push	ar7
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
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
;	src/maxhub.c:594: statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
	mov	dpl,#0x03
	lcall	_setOutputMode
	mov	r7,dpl
	mov	r6,#0x00
;	src/maxhub.c:595: INFO_LOG("setOutputMode Status = %d", statusByte);
	push	ar7
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
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
;	src/maxhub.c:602: statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
	mov	dpl,#0x01
	lcall	_setFifoThreshold
	mov	r7,dpl
	mov	r6,#0x00
;	src/maxhub.c:603: INFO_LOG("setFifoThreshold Status = %d", statusByte);
	push	ar7
	push	ar6
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
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
;	src/maxhub.c:610: statusByte = agcAlgoControl(ENABLE);
	mov	dpl,#0x01
	lcall	_agcAlgoControl
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:611: INFO_LOG("agcAlgoControl Status = %d", statusByte);
	push	ar6
	push	ar7
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
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
;	src/maxhub.c:617: statusByte = max30101Control(ENABLE);
	mov	dpl,#0x01
	lcall	_max30101Control
	mov	r7,dpl
	mov	r6,#0x00
;	src/maxhub.c:618: INFO_LOG("max30101Control Status = %d", statusByte);
	push	ar7
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
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
;	src/maxhub.c:624: statusByte = maximFastAlgoControl(mode);
	mov	dptr,#_configSensorBpm_mode_65536_112
	movx	a,@dptr
	mov	dpl,a
	lcall	_maximFastAlgoControl
	mov	r7,dpl
	mov	r6,#0x00
;	src/maxhub.c:625: INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
	push	ar7
	push	ar6
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
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
;	src/maxhub.c:631: hubDelayMs(2000);
	mov	dpl,#0xd0
	lcall	_hubDelayMs
;	src/maxhub.c:632: INFO_LOG("%s: configuration success", __func__);
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:633: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'numSamplesOutFifo'
;------------------------------------------------------------
;sampAvail                 Allocated with name '_numSamplesOutFifo_sampAvail_65536_120'
;------------------------------------------------------------
;	src/maxhub.c:641: uint8_t numSamplesOutFifo()
;	-----------------------------------------
;	 function numSamplesOutFifo
;	-----------------------------------------
_numSamplesOutFifo:
;	src/maxhub.c:643: int sampAvail = i2cMax32664ReadByte(READ_DATA_OUTPUT, NUM_SAMPLES, NULL);
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_i2cMax32664ReadByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:644: if (sampAvail == FAIL)
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxhub.c:646: ERROR_LOG("Error reading numSamplesOutFifo");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:647: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	src/maxhub.c:649: return sampAvail;
	mov	dpl,r6
;	src/maxhub.c:650: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readBpm'
;------------------------------------------------------------
;sloc0                     Allocated with name '_readBpm_sloc0_1_0'
;sloc1                     Allocated with name '_readBpm_sloc1_1_0'
;data                      Allocated with name '_readBpm_PARM_2'
;mode                      Allocated with name '_readBpm_mode_65536_122'
;hubStatus                 Allocated with name '_readBpm_hubStatus_65536_123'
;numSamples                Allocated with name '_readBpm_numSamples_65537_125'
;statusByte                Allocated with name '_readBpm_statusByte_65538_127'
;dataArr                   Allocated with name '_readBpm_dataArr_65538_127'
;i                         Allocated with name '_readBpm_i_196610_129'
;heartRate                 Allocated with name '_readBpm_heartRate_65539_133'
;confidence                Allocated with name '_readBpm_confidence_65540_134'
;oxygen                    Allocated with name '_readBpm_oxygen_65540_134'
;status                    Allocated with name '_readBpm_status_65541_135'
;temp                      Allocated with name '_readBpm_temp_131077_136'
;rValue                    Allocated with name '_readBpm_rValue_131078_137'
;extStatus                 Allocated with name '_readBpm_extStatus_131079_138'
;------------------------------------------------------------
;	src/maxhub.c:660: int readBpm(uint8_t mode, BioData *data)
;	-----------------------------------------
;	 function readBpm
;	-----------------------------------------
_readBpm:
	mov	a,dpl
	mov	dptr,#_readBpm_mode_65536_122
	movx	@dptr,a
;	src/maxhub.c:662: uint8_t hubStatus = readSensorHubStatus();
	lcall	_readSensorHubStatus
	mov	r7,dpl
;	src/maxhub.c:663: if (hubStatus == 1)
	cjne	r7,#0x01,00102$
;	src/maxhub.c:665: ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:666: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:669: INFO_LOG("Status Byte = %d", hubStatus);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
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
;	src/maxhub.c:671: uint8_t numSamples = numSamplesOutFifo();
	lcall	_numSamplesOutFifo
	mov	r7,dpl
;	src/maxhub.c:672: INFO_LOG("numSamples = %d", numSamples);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
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
	pop	ar7
;	src/maxhub.c:673: if (numSamples == 0)
	mov	a,r7
	jnz	00104$
;	src/maxhub.c:675: INFO_LOG("%s: No samples to read", __func__);
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:676: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxhub.c:681: if (mode == 1)
	mov	dptr,#_readBpm_mode_65536_122
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00166$
	sjmp	00167$
00166$:
	sjmp	00109$
00167$:
;	src/maxhub.c:683: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE);
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
	mov	a,#_readBpm_dataArr_65538_127
	movx	@dptr,a
	mov	a,#(_readBpm_dataArr_65538_127 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_i2cMax32664SequentialReadByte
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_readBpm_statusByte_65538_127
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	src/maxhub.c:684: printf_tiny("\n\rData from Hub\n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:685: for (int i = 0; i < MAXFAST_ARRAY_SIZE; i++)
	mov	r5,#0x00
	mov	r6,#0x00
00122$:
	clr	c
	mov	a,r5
	subb	a,#0x06
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00110$
;	src/maxhub.c:687: printf_tiny("%d\n\r", dataArr[i]);
	mov	a,r5
	add	a,#_readBpm_dataArr_65538_127
	mov	dpl,a
	mov	a,r6
	addc	a,#(_readBpm_dataArr_65538_127 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	src/maxhub.c:685: for (int i = 0; i < MAXFAST_ARRAY_SIZE; i++)
	inc	r5
	cjne	r5,#0x00,00122$
	inc	r6
	sjmp	00122$
00109$:
;	src/maxhub.c:690: else if (mode == 2)
	cjne	r7,#0x02,00110$
;	src/maxhub.c:692: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE + MAXFAST_EXTENDED_DATA);
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
	mov	a,#_readBpm_dataArr_65538_127
	movx	@dptr,a
	mov	a,#(_readBpm_dataArr_65538_127 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
	mov	a,#0x0b
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_i2cMax32664SequentialReadByte
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_readBpm_statusByte_65538_127
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
00110$:
;	src/maxhub.c:695: if (statusByte != SFE_BIO_SUCCESS)
	mov	dptr,#_readBpm_statusByte_65538_127
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00112$
;	src/maxhub.c:697: ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
	mov	dptr,#_readBpm_statusByte_65538_127
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:698: return FAIL;
	mov	dptr,#0xffff
	ret
00112$:
;	src/maxhub.c:702: uint16_t heartRate = dataArr[0];
	mov	dptr,#_readBpm_dataArr_65538_127
	movx	a,@dptr
;	src/maxhub.c:703: heartRate = (heartRate << 8) | (dataArr[1]);
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0001)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	src/maxhub.c:704: heartRate /= 10;
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:707: uint8_t confidence = dataArr[2];
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0002)
	movx	a,@dptr
	mov	_readBpm_sloc1_1_0,a
;	src/maxhub.c:710: uint16_t oxygen = dataArr[3];
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0003)
	movx	a,@dptr
;	src/maxhub.c:711: oxygen = (oxygen << 8) | dataArr[4];
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0004)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
;	src/maxhub.c:712: oxygen /= 10;
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
;	src/maxhub.c:715: uint8_t status = dataArr[5];
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0005)
	movx	a,@dptr
	mov	r2,a
;	src/maxhub.c:717: data->heartRate = heartRate;
	mov	dptr,#_readBpm_PARM_2
	movx	a,@dptr
	mov	_readBpm_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_readBpm_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_readBpm_sloc0_1_0 + 2),a
	mov	a,#0x08
	add	a,_readBpm_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r1,a
	mov	r5,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	src/maxhub.c:718: data->confidence = confidence;
	mov	a,#0x0a
	add	a,_readBpm_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_readBpm_sloc1_1_0
	lcall	__gptrput
;	src/maxhub.c:719: data->oxygen = oxygen;
	mov	a,#0x0b
	add	a,_readBpm_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	src/maxhub.c:720: data->status = status;
	mov	a,#0x0d
	add	a,_readBpm_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	src/maxhub.c:722: if (mode == 2)
	mov	dptr,#_readBpm_mode_65536_122
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00173$
	sjmp	00174$
00173$:
	ljmp	00114$
00174$:
;	src/maxhub.c:725: uint16_t temp = dataArr[6];
	push	ar2
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0006)
	movx	a,@dptr
;	src/maxhub.c:726: temp = (temp << 8) | dataArr[7];
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0007)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	src/maxhub.c:727: float rValue = temp;
	mov	dpl,r7
	mov	dph,r6
	push	ar2
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/maxhub.c:728: rValue = rValue / 10.0;
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
;	src/maxhub.c:731: uint8_t extStatus = dataArr[8];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0008)
	movx	a,@dptr
	mov	r3,a
;	src/maxhub.c:733: data->rValue = rValue;
	mov	a,#0x0e
	add	a,_readBpm_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	src/maxhub.c:734: data->extStatus = extStatus;
	mov	a,#0x12
	add	a,_readBpm_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_readBpm_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_readBpm_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	src/maxhub.c:755: return SUCCESS;
	pop	ar2
;	src/maxhub.c:734: data->extStatus = extStatus;
00114$:
;	src/maxhub.c:737: switch (status)
	mov	a,r2
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00175$
	ljmp	00119$
00175$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00176$
	jmp	@a+dptr
00176$:
	ljmp	00115$
	ljmp	00116$
	ljmp	00117$
	ljmp	00118$
;	src/maxhub.c:739: case NO_READING:
00115$:
;	src/maxhub.c:740: INFO_LOG("%s: Finger Status = NO_READING", __func__);
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:741: break;
	ljmp	00120$
;	src/maxhub.c:742: case NOT_READY:
00116$:
;	src/maxhub.c:743: INFO_LOG("%s: Finger Status = NOT_READY", __func__);
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:744: break;
	ljmp	00120$
;	src/maxhub.c:745: case OBJECT_DETECTED:
00117$:
;	src/maxhub.c:746: INFO_LOG("%s: Finger Status = OBJECT_DETECTED", __func__);
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:747: break;
;	src/maxhub.c:748: case FINGER_DETECTED:
	sjmp	00120$
00118$:
;	src/maxhub.c:749: INFO_LOG("%s: Finger Status = FINGER_DETECTED", __func__);
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:750: break;
;	src/maxhub.c:751: default:
	sjmp	00120$
00119$:
;	src/maxhub.c:752: ERROR_LOG("Unknown case!");
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:753: }
00120$:
;	src/maxhub.c:755: return SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:756: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readSensorBpm'
;------------------------------------------------------------
;sloc0                     Allocated with name '_readSensorBpm_sloc0_1_0'
;sloc1                     Allocated with name '_readSensorBpm_sloc1_1_0'
;sloc2                     Allocated with name '_readSensorBpm_sloc2_1_0'
;sloc3                     Allocated with name '_readSensorBpm_sloc3_1_0'
;data                      Allocated with name '_readSensorBpm_PARM_2'
;mode                      Allocated with name '_readSensorBpm_mode_65536_140'
;hubStatus                 Allocated with name '_readSensorBpm_hubStatus_65536_141'
;numSamples                Allocated with name '_readSensorBpm_numSamples_65537_143'
;statusByte                Allocated with name '_readSensorBpm_statusByte_65538_145'
;sensorData                Allocated with name '_readSensorBpm_sensorData_65538_145'
;irLed                     Allocated with name '_readSensorBpm_irLed_65539_149'
;redLed                    Allocated with name '_readSensorBpm_redLed_65540_150'
;heartRate                 Allocated with name '_readSensorBpm_heartRate_65541_151'
;confidence                Allocated with name '_readSensorBpm_confidence_65542_152'
;oxygen                    Allocated with name '_readSensorBpm_oxygen_65542_152'
;status                    Allocated with name '_readSensorBpm_status_65543_153'
;temp                      Allocated with name '_readSensorBpm_temp_131079_154'
;rValue                    Allocated with name '_readSensorBpm_rValue_131080_155'
;extStatus                 Allocated with name '_readSensorBpm_extStatus_131081_156'
;------------------------------------------------------------
;	src/maxhub.c:765: int readSensorBpm(uint8_t mode, BioData *data)
;	-----------------------------------------
;	 function readSensorBpm
;	-----------------------------------------
_readSensorBpm:
	mov	a,dpl
	mov	dptr,#_readSensorBpm_mode_65536_140
	movx	@dptr,a
;	src/maxhub.c:767: uint8_t hubStatus = readSensorHubStatus();
	lcall	_readSensorHubStatus
	mov	r7,dpl
;	src/maxhub.c:768: if (hubStatus == 1)
	cjne	r7,#0x01,00102$
;	src/maxhub.c:770: ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:771: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:774: INFO_LOG("Hub Status = %d", hubStatus);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
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
;	src/maxhub.c:776: uint8_t numSamples = numSamplesOutFifo();
	lcall	_numSamplesOutFifo
	mov	r7,dpl
;	src/maxhub.c:777: if (numSamplesOutFifo() == 0)
	push	ar7
	lcall	_numSamplesOutFifo
	mov	a,dpl
	pop	ar7
	jnz	00104$
;	src/maxhub.c:779: INFO_LOG("%s: No samples to read", __func__);
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:780: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxhub.c:783: INFO_LOG("Num Samples = %d", numSamples);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
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
;	src/maxhub.c:787: if (mode == 1)
	mov	dptr,#_readSensorBpm_mode_65536_140
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00108$
;	src/maxhub.c:789: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY);
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
	mov	a,#_readSensorBpm_sensorData_65538_145
	movx	@dptr,a
	mov	a,#(_readSensorBpm_sensorData_65538_145 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
	mov	a,#0x12
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_i2cMax32664SequentialReadByte
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_readSensorBpm_statusByte_65538_145
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00108$:
;	src/maxhub.c:798: else if (mode == 2)
	cjne	r7,#0x02,00109$
;	src/maxhub.c:800: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA);
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
	mov	a,#_readSensorBpm_sensorData_65538_145
	movx	@dptr,a
	mov	a,#(_readSensorBpm_sensorData_65538_145 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
	mov	a,#0x17
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_i2cMax32664SequentialReadByte
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_readSensorBpm_statusByte_65538_145
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
00109$:
;	src/maxhub.c:803: if (statusByte != SFE_BIO_SUCCESS)
	mov	dptr,#_readSensorBpm_statusByte_65538_145
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00111$
;	src/maxhub.c:805: ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
	mov	dptr,#_readSensorBpm_statusByte_65538_145
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:806: return FAIL;
	mov	dptr,#0xffff
	ret
00111$:
;	src/maxhub.c:810: uint32_t irLed = sensorData[0];
	mov	dptr,#_readSensorBpm_sensorData_65538_145
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	src/maxhub.c:811: irLed = (irLed << 8) | sensorData[1];
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
	mov	r7,#0x00
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0001)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
;	src/maxhub.c:812: irLed = (irLed << 8) | sensorData[2];
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
	mov	r7,#0x00
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0002)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
;	src/maxhub.c:817: redLed = (irLed << 8) | sensorData[5];
	mov	(_readSensorBpm_sloc0_1_0 + 3),r5
	mov	(_readSensorBpm_sloc0_1_0 + 2),r6
	mov	(_readSensorBpm_sloc0_1_0 + 1),r7
	mov	_readSensorBpm_sloc0_1_0,#0x00
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	_readSensorBpm_sloc0_1_0,a
	mov	a,r1
	orl	(_readSensorBpm_sloc0_1_0 + 1),a
	mov	a,r2
	orl	(_readSensorBpm_sloc0_1_0 + 2),a
	mov	a,r3
	orl	(_readSensorBpm_sloc0_1_0 + 3),a
;	src/maxhub.c:825: uint16_t heartRate = sensorData[12];
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000c)
	movx	a,@dptr
;	src/maxhub.c:826: heartRate = (heartRate << 8) | (sensorData[13]);
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000d)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	src/maxhub.c:827: heartRate /= 10;
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
;	src/maxhub.c:830: uint8_t confidence = sensorData[14];
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000e)
	movx	a,@dptr
	mov	_readSensorBpm_sloc1_1_0,a
;	src/maxhub.c:833: uint16_t oxygen = sensorData[15];
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000f)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
;	src/maxhub.c:834: oxygen = (oxygen << 8) | sensorData[16];
	mov	(_readSensorBpm_sloc2_1_0 + 1),r0
;	1-genFromRTrack replaced	mov	_readSensorBpm_sloc2_1_0,#0x00
	mov	_readSensorBpm_sloc2_1_0,r1
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0010)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	a,_readSensorBpm_sloc2_1_0
	orl	ar0,a
	mov	a,(_readSensorBpm_sloc2_1_0 + 1)
	orl	ar1,a
;	src/maxhub.c:835: oxygen /= 10;
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar3
	push	ar2
	lcall	__divuint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/maxhub.c:838: uint8_t status = sensorData[17];
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0011)
	movx	a,@dptr
	mov	_readSensorBpm_sloc2_1_0,a
;	src/maxhub.c:840: data->irLed = irLed;
	mov	dptr,#_readSensorBpm_PARM_2
	movx	a,@dptr
	mov	_readSensorBpm_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_readSensorBpm_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_readSensorBpm_sloc3_1_0 + 2),a
	mov	dpl,_readSensorBpm_sloc3_1_0
	mov	dph,(_readSensorBpm_sloc3_1_0 + 1)
	mov	b,(_readSensorBpm_sloc3_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	src/maxhub.c:841: data->redLed = redLed;
	mov	a,#0x04
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_readSensorBpm_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_readSensorBpm_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_readSensorBpm_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_readSensorBpm_sloc0_1_0 + 3)
	lcall	__gptrput
;	src/maxhub.c:843: data->heartRate = heartRate;
	mov	a,#0x08
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	src/maxhub.c:844: data->confidence = confidence;
	mov	a,#0x0a
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_readSensorBpm_sloc1_1_0
	lcall	__gptrput
;	src/maxhub.c:845: data->oxygen = oxygen;
	mov	a,#0x0b
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	src/maxhub.c:846: data->status = status;
	mov	a,#0x0d
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_readSensorBpm_sloc2_1_0
	lcall	__gptrput
;	src/maxhub.c:848: if (mode == 2)
	mov	dptr,#_readSensorBpm_mode_65536_140
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00159$
	sjmp	00160$
00159$:
	ljmp	00113$
00160$:
;	src/maxhub.c:851: uint16_t temp = sensorData[18];
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0012)
	movx	a,@dptr
;	src/maxhub.c:852: temp = (temp << 8) | sensorData[19];
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0013)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	src/maxhub.c:853: float rValue = temp;
	mov	dpl,r7
	mov	dph,r6
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/maxhub.c:854: rValue = rValue / 10.0;
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
;	src/maxhub.c:857: uint8_t extStatus = sensorData[20];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0014)
	movx	a,@dptr
	mov	r3,a
;	src/maxhub.c:859: data->rValue = rValue;
	mov	a,#0x0e
	add	a,_readSensorBpm_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r1,a
	mov	r2,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	src/maxhub.c:860: data->extStatus = extStatus;
	mov	a,#0x12
	add	a,_readSensorBpm_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
00113$:
;	src/maxhub.c:863: switch (status)
	mov	a,_readSensorBpm_sloc2_1_0
	mov	r7,a
	add	a,#0xff - 0x04
	jnc	00161$
	ljmp	00119$
00161$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00162$
	jmp	@a+dptr
00162$:
	ljmp	00114$
	ljmp	00115$
	ljmp	00116$
	ljmp	00117$
	ljmp	00118$
;	src/maxhub.c:865: case NO_READING:
00114$:
;	src/maxhub.c:866: INFO_LOG("NO_READING");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:867: break;
	ljmp	00120$
;	src/maxhub.c:868: case NOT_READY:
00115$:
;	src/maxhub.c:869: INFO_LOG("NOT_READY");
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:870: break;
	ljmp	00120$
;	src/maxhub.c:871: case OBJECT_DETECTED:
00116$:
;	src/maxhub.c:872: INFO_LOG("OBJECT_DETECTED");
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:873: break;
;	src/maxhub.c:874: case FINGER_DETECTED:
	sjmp	00120$
00117$:
;	src/maxhub.c:875: INFO_LOG("FINGER_DETECTED");
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:876: break;
;	src/maxhub.c:877: case PRESSING_TOO_HARD:
	sjmp	00120$
00118$:
;	src/maxhub.c:878: INFO_LOG("PRESSING_TOO_HARD");
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:879: break;
;	src/maxhub.c:880: default:
	sjmp	00120$
00119$:
;	src/maxhub.c:881: ERROR_LOG("UNKNOWN ERROR: %d", status);
	mov	r6,_readSensorBpm_sloc2_1_0
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:882: }
00120$:
;	src/maxhub.c:884: return SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:885: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPulseWidth'
;------------------------------------------------------------
;width                     Allocated with name '_setPulseWidth_width_65536_158'
;bits                      Allocated with name '_setPulseWidth_bits_65536_159'
;regVal                    Allocated with name '_setPulseWidth_regVal_65536_159'
;------------------------------------------------------------
;	src/maxhub.c:901: int setPulseWidth(uint16_t width)
;	-----------------------------------------
;	 function setPulseWidth
;	-----------------------------------------
_setPulseWidth:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setPulseWidth_width_65536_158
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/maxhub.c:908: if (width == 69)
	mov	dptr,#_setPulseWidth_width_65536_158
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x45,00111$
	cjne	r7,#0x00,00111$
;	src/maxhub.c:909: bits = 0;
	mov	dptr,#_setPulseWidth_bits_65536_159
	clr	a
	movx	@dptr,a
	sjmp	00112$
00111$:
;	src/maxhub.c:910: else if (width == 118)
	cjne	r6,#0x76,00108$
	cjne	r7,#0x00,00108$
;	src/maxhub.c:911: bits = 1;
	mov	dptr,#_setPulseWidth_bits_65536_159
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00112$
00108$:
;	src/maxhub.c:912: else if (width == 215)
	cjne	r6,#0xd7,00105$
	cjne	r7,#0x00,00105$
;	src/maxhub.c:913: bits = 2;
	mov	dptr,#_setPulseWidth_bits_65536_159
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00112$
00105$:
;	src/maxhub.c:914: else if (width == 411)
	cjne	r6,#0x9b,00102$
	cjne	r7,#0x01,00102$
;	src/maxhub.c:915: bits = 3;
	mov	dptr,#_setPulseWidth_bits_65536_159
	mov	a,#0x03
	movx	@dptr,a
	sjmp	00112$
00102$:
;	src/maxhub.c:917: return FAIL;
	mov	dptr,#0xffff
	ret
00112$:
;	src/maxhub.c:920: regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
	mov	dpl,#0x0a
	lcall	_readRegisterMAX30101
	mov	a,dpl
;	src/maxhub.c:921: regVal &= PULSE_MASK;                                  // Mask bits to change.
	anl	a,#0xfc
	mov	r7,a
;	src/maxhub.c:922: regVal |= bits;                                        // Add bits
	mov	dptr,#_setPulseWidth_bits_65536_159
	movx	a,@dptr
	mov	dptr,#_writeRegisterMAX30101_PARM_2
	orl	a,r7
	movx	@dptr,a
;	src/maxhub.c:923: writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register
	mov	dpl,#0x0a
	lcall	_writeRegisterMAX30101
;	src/maxhub.c:925: return SFE_BIO_SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:926: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setSampleRate'
;------------------------------------------------------------
;sampRate                  Allocated with name '_setSampleRate_sampRate_65536_160'
;bits                      Allocated with name '_setSampleRate_bits_65536_161'
;regVal                    Allocated with name '_setSampleRate_regVal_65536_161'
;------------------------------------------------------------
;	src/maxhub.c:941: int setSampleRate(uint16_t sampRate)
;	-----------------------------------------
;	 function setSampleRate
;	-----------------------------------------
_setSampleRate:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setSampleRate_sampRate_65536_160
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/maxhub.c:948: if (sampRate == 50)
	mov	dptr,#_setSampleRate_sampRate_65536_160
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x32,00123$
	cjne	r7,#0x00,00123$
;	src/maxhub.c:949: bits = 0;
	mov	dptr,#_setSampleRate_bits_65536_161
	clr	a
	movx	@dptr,a
	sjmp	00124$
00123$:
;	src/maxhub.c:950: else if (sampRate == 100)
	cjne	r6,#0x64,00120$
	cjne	r7,#0x00,00120$
;	src/maxhub.c:951: bits = 1;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00124$
00120$:
;	src/maxhub.c:952: else if (sampRate == 200)
	cjne	r6,#0xc8,00117$
	cjne	r7,#0x00,00117$
;	src/maxhub.c:953: bits = 2;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00124$
00117$:
;	src/maxhub.c:954: else if (sampRate == 400)
	cjne	r6,#0x90,00114$
	cjne	r7,#0x01,00114$
;	src/maxhub.c:955: bits = 3;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x03
	movx	@dptr,a
	sjmp	00124$
00114$:
;	src/maxhub.c:956: else if (sampRate == 800)
	cjne	r6,#0x20,00111$
	cjne	r7,#0x03,00111$
;	src/maxhub.c:957: bits = 4;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x04
	movx	@dptr,a
	sjmp	00124$
00111$:
;	src/maxhub.c:958: else if (sampRate == 1000)
	cjne	r6,#0xe8,00108$
	cjne	r7,#0x03,00108$
;	src/maxhub.c:959: bits = 5;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x05
	movx	@dptr,a
	sjmp	00124$
00108$:
;	src/maxhub.c:960: else if (sampRate == 1600)
	cjne	r6,#0x40,00105$
	cjne	r7,#0x06,00105$
;	src/maxhub.c:961: bits = 6;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x06
	movx	@dptr,a
	sjmp	00124$
00105$:
;	src/maxhub.c:962: else if (sampRate == 3200)
	cjne	r6,#0x80,00102$
	cjne	r7,#0x0c,00102$
;	src/maxhub.c:963: bits = 7;
	mov	dptr,#_setSampleRate_bits_65536_161
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00124$
00102$:
;	src/maxhub.c:965: return FAIL;
	mov	dptr,#0xffff
	ret
00124$:
;	src/maxhub.c:968: regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
	mov	dpl,#0x0a
	lcall	_readRegisterMAX30101
	mov	a,dpl
;	src/maxhub.c:969: regVal &= SAMP_MASK;                                   // Mask bits to change.
	anl	a,#0xe3
	mov	r7,a
;	src/maxhub.c:970: regVal |= (bits << 2);                                 // Add bits but shift them first to correct position.
	mov	dptr,#_setSampleRate_bits_65536_161
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	dptr,#_writeRegisterMAX30101_PARM_2
	orl	a,r7
	movx	@dptr,a
;	src/maxhub.c:971: writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register
	mov	dpl,#0x0a
	lcall	_writeRegisterMAX30101
;	src/maxhub.c:973: return SFE_BIO_SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:974: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkDeviceType'
;------------------------------------------------------------
;returnByte                Allocated with name '_checkDeviceType_returnByte_65536_162'
;------------------------------------------------------------
;	src/maxhub.c:984: int checkDeviceType()
;	-----------------------------------------
;	 function checkDeviceType
;	-----------------------------------------
_checkDeviceType:
;	src/maxhub.c:986: int returnByte = i2cMax32664ReadByte(IDENTITY, READ_MCU_TYPE, NULL);
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0xff
	lcall	_i2cMax32664ReadByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:987: if (returnByte == FAIL)
	cjne	r6,#0xff,00102$
	cjne	r7,#0xff,00102$
;	src/maxhub.c:989: ERROR_LOG("Reaed Device Type failed");
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:990: return FAIL;
	mov	dptr,#0xffff
	ret
00102$:
;	src/maxhub.c:994: if (returnByte != 0x01)
	cjne	r6,#0x01,00117$
	cjne	r7,#0x00,00117$
	sjmp	00104$
00117$:
;	src/maxhub.c:996: ERROR_LOG("Device Type %d not expected", returnByte);
	push	ar6
	push	ar7
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:997: return FAIL;
	mov	dptr,#0xffff
	ret
00104$:
;	src/maxhub.c:1000: INFO_LOG("Device Type Check Success");
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:1001: return SUCCESS;
	mov	dptr,#0x0000
;	src/maxhub.c:1002: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lastTest'
;------------------------------------------------------------
;status                    Allocated with name '_lastTest_status_65536_165'
;readVal                   Allocated with name '_lastTest_readVal_131072_166'
;------------------------------------------------------------
;	src/maxhub.c:1010: void lastTest()
;	-----------------------------------------
;	 function lastTest
;	-----------------------------------------
_lastTest:
;	src/maxhub.c:1013: int status = i2cMax32664WriteByte(0x10, 0x00, 0x03);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:1016: status = i2cMax32664WriteByte(0x10, 0x01, 0x01);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:1019: status = i2cMax32664WriteByte(0x44, 0x03, 0x01);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x44
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:1022: status = i2cMax32664WriteByte(0x52, 0x02, 0x01);
	mov	dptr,#_i2cMax32664WriteByte_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_i2cMax32664WriteByte_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,#0x52
	lcall	_i2cMax32664WriteByte
;	src/maxhub.c:1025: while(1)
00102$:
;	src/maxhub.c:1027: int readVal = i2cMax32664ReadByte(0x00, 0x00, NULL);
	mov	dptr,#_i2cMax32664ReadByte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_i2cMax32664ReadByte_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_i2cMax32664ReadByte
	mov	r6,dpl
	mov	r7,dph
;	src/maxhub.c:1028: printf("hub status = %x\n\r", readVal);
	push	ar6
	push	ar7
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/maxhub.c:1029: hubDelayMs(100);
	mov	dpl,#0x64
	lcall	_hubDelayMs
;	src/maxhub.c:1032: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'testMaxHub'
;------------------------------------------------------------
;mode                      Allocated with name '_testMaxHub_mode_65537_168'
;data                      Allocated with name '_testMaxHub_data_65538_169'
;counter                   Allocated with name '_testMaxHub_counter_65538_169'
;status                    Allocated with name '_testMaxHub_status_131074_170'
;------------------------------------------------------------
;	src/maxhub.c:1038: void testMaxHub()
;	-----------------------------------------
;	 function testMaxHub
;	-----------------------------------------
_testMaxHub:
;	src/maxhub.c:1040: INFO_LOG("Entering Text Max HUB");
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:1041: setApplicationMode();
	lcall	_setApplicationMode
;	src/maxhub.c:1045: MFIO = 0;
;	assignBit
	clr	_P1_4
;	src/maxhub.c:1050: checkDeviceType();
	lcall	_checkDeviceType
;	src/maxhub.c:1058: configSensorBpm(mode);
	mov	dpl,#0x01
	lcall	_configSensorBpm
;	src/maxhub.c:1059: setPulseWidth(118);
	mov	dptr,#0x0076
	lcall	_setPulseWidth
;	src/maxhub.c:1060: setSampleRate(1600);
	mov	dptr,#0x0640
	lcall	_setSampleRate
;	src/maxhub.c:1077: while (1)
00108$:
;	src/maxhub.c:1100: int status = readSensorBpm(mode, &data);
	mov	dptr,#_readSensorBpm_PARM_2
	mov	a,#_testMaxHub_data_65538_169
	movx	@dptr,a
	mov	a,#(_testMaxHub_data_65538_169 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_readSensorBpm
	mov	a,dpl
	mov	b,dph
;	src/maxhub.c:1101: if (status == SUCCESS)
	orl	a,b
	jz	00125$
	ljmp	00106$
00125$:
;	src/maxhub.c:1103: INFO_LOG("CONFIDENCE = %u", data.confidence);
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
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
;	src/maxhub.c:1104: if (data.confidence > 50)
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x32
	jc	00126$
	ljmp	00106$
00126$:
;	src/maxhub.c:1110: INFO_LOG("IR LED = %lu", data.irLed);
	mov	dptr,#_testMaxHub_data_65538_169
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:1111: INFO_LOG("RED LED = %lu", data.redLed);
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/maxhub.c:1113: INFO_LOG("HEART-RATE = %u", data.heartRate);
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
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
;	src/maxhub.c:1114: INFO_LOG("OXYGEN = %u", data.oxygen);
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000b)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
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
;	src/maxhub.c:1122: data.confidence = 0;
	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
	clr	a
	movx	@dptr,a
00106$:
;	src/maxhub.c:1126: hubDelayMs(10);
	mov	dpl,#0x0a
	lcall	_hubDelayMs
;	src/maxhub.c:1130: MFIO = 1;
;	src/maxhub.c:1131: }
	ljmp	00108$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s:%d Write address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "i2cMax32664WriteBytes"
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
	.ascii "[1;31mERROR: %s Family Byte Write address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Index Byte Write address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Data Byte Write %d failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Read Byte failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mretrying write"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Write address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "i2cMax32664ReadByte"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Write Byte Write address failed!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "i2cMax32664SequentialReadByte"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s Status Byte = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Error reading device mode!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mSetting to Application Mode..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Application Mode not set!!!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mApplication Mode Set"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Recieved Error Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "setOutputMode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "setFifoThreshold"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "agcAlgoControl"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "max30101Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "maximFastAlgoControl"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214msetOutputMode Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214msetOutputMode Status 2 = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214msetFifoThreshold Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214magcAlgoControl Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mmax30101Control Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mmaximFastAlgoControl Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: configuration success"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "configBpm"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "configSensorBpm"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Error reading numSamplesOutFifo"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Hub Status Error : %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "readBpm"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mStatus Byte = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mnumSamples = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: No samples to read"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0d
	.ascii "Data from Hub"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: %s: Status Error : %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: Finger Status = NO_READING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: Finger Status = NOT_READY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: Finger Status = OBJECT_DETECTED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214m%s: Finger Status = FINGER_DETECTED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Unknown case!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "readSensorBpm"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mHub Status = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mNum Samples = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mNO_READING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mNOT_READY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mOBJECT_DETECTED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mFINGER_DETECTED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mPRESSING_TOO_HARD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: UNKNOWN ERROR: %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Reaed Device Type failed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;31mERROR: Device Type %d not expected"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mDevice Type Check Success"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "hub status = %x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mEntering Text Max HUB"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mCONFIDENCE = %u"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mIR LED = %lu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mRED LED = %lu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mHEART-RATE = %u"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mOXYGEN = %u"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mrValue = %f"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[38;5;214mExtended Status = %u"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
