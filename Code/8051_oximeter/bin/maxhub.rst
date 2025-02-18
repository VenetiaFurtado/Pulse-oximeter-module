                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module maxhub
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lastTest
                                     12 	.globl _checkDeviceType
                                     13 	.globl _setSampleRate
                                     14 	.globl _setPulseWidth
                                     15 	.globl _readSensorBpm
                                     16 	.globl _readBpm
                                     17 	.globl _numSamplesOutFifo
                                     18 	.globl _configSensorBpm
                                     19 	.globl _configBpm
                                     20 	.globl _maximFastAlgoControl
                                     21 	.globl _max30101Control
                                     22 	.globl _agcAlgoControl
                                     23 	.globl _setFifoThreshold
                                     24 	.globl _setOutputMode
                                     25 	.globl _readSensorHubStatus
                                     26 	.globl _setBootloaderMode
                                     27 	.globl _setApplicationMode
                                     28 	.globl _readSensorHubMode
                                     29 	.globl _readRegisterMAX30101
                                     30 	.globl _writeRegisterMAX30101
                                     31 	.globl _i2cMax32664SequentialReadByte
                                     32 	.globl _i2cMax32664ReadByte
                                     33 	.globl _i2cMax32664WriteByte
                                     34 	.globl _i2cMax32664WriteBytes
                                     35 	.globl _hubDelayMs
                                     36 	.globl _printf_tiny
                                     37 	.globl _printf
                                     38 	.globl _i2cByteRead
                                     39 	.globl _i2cByteWrite
                                     40 	.globl _sendNAcknowledge
                                     41 	.globl _sendAcknowledge
                                     42 	.globl _sendControlByteNoAddr
                                     43 	.globl _stop
                                     44 	.globl _start
                                     45 	.globl _checkAcknowledgement
                                     46 	.globl _P5_7
                                     47 	.globl _P5_6
                                     48 	.globl _P5_5
                                     49 	.globl _P5_4
                                     50 	.globl _P5_3
                                     51 	.globl _P5_2
                                     52 	.globl _P5_1
                                     53 	.globl _P5_0
                                     54 	.globl _P4_7
                                     55 	.globl _P4_6
                                     56 	.globl _P4_5
                                     57 	.globl _P4_4
                                     58 	.globl _P4_3
                                     59 	.globl _P4_2
                                     60 	.globl _P4_1
                                     61 	.globl _P4_0
                                     62 	.globl _PX0L
                                     63 	.globl _PT0L
                                     64 	.globl _PX1L
                                     65 	.globl _PT1L
                                     66 	.globl _PSL
                                     67 	.globl _PT2L
                                     68 	.globl _PPCL
                                     69 	.globl _EC
                                     70 	.globl _CCF0
                                     71 	.globl _CCF1
                                     72 	.globl _CCF2
                                     73 	.globl _CCF3
                                     74 	.globl _CCF4
                                     75 	.globl _CR
                                     76 	.globl _CF
                                     77 	.globl _TF2
                                     78 	.globl _EXF2
                                     79 	.globl _RCLK
                                     80 	.globl _TCLK
                                     81 	.globl _EXEN2
                                     82 	.globl _TR2
                                     83 	.globl _C_T2
                                     84 	.globl _CP_RL2
                                     85 	.globl _T2CON_7
                                     86 	.globl _T2CON_6
                                     87 	.globl _T2CON_5
                                     88 	.globl _T2CON_4
                                     89 	.globl _T2CON_3
                                     90 	.globl _T2CON_2
                                     91 	.globl _T2CON_1
                                     92 	.globl _T2CON_0
                                     93 	.globl _PT2
                                     94 	.globl _ET2
                                     95 	.globl _CY
                                     96 	.globl _AC
                                     97 	.globl _F0
                                     98 	.globl _RS1
                                     99 	.globl _RS0
                                    100 	.globl _OV
                                    101 	.globl _F1
                                    102 	.globl _P
                                    103 	.globl _PS
                                    104 	.globl _PT1
                                    105 	.globl _PX1
                                    106 	.globl _PT0
                                    107 	.globl _PX0
                                    108 	.globl _RD
                                    109 	.globl _WR
                                    110 	.globl _T1
                                    111 	.globl _T0
                                    112 	.globl _INT1
                                    113 	.globl _INT0
                                    114 	.globl _TXD
                                    115 	.globl _RXD
                                    116 	.globl _P3_7
                                    117 	.globl _P3_6
                                    118 	.globl _P3_5
                                    119 	.globl _P3_4
                                    120 	.globl _P3_3
                                    121 	.globl _P3_2
                                    122 	.globl _P3_1
                                    123 	.globl _P3_0
                                    124 	.globl _EA
                                    125 	.globl _ES
                                    126 	.globl _ET1
                                    127 	.globl _EX1
                                    128 	.globl _ET0
                                    129 	.globl _EX0
                                    130 	.globl _P2_7
                                    131 	.globl _P2_6
                                    132 	.globl _P2_5
                                    133 	.globl _P2_4
                                    134 	.globl _P2_3
                                    135 	.globl _P2_2
                                    136 	.globl _P2_1
                                    137 	.globl _P2_0
                                    138 	.globl _SM0
                                    139 	.globl _SM1
                                    140 	.globl _SM2
                                    141 	.globl _REN
                                    142 	.globl _TB8
                                    143 	.globl _RB8
                                    144 	.globl _TI
                                    145 	.globl _RI
                                    146 	.globl _P1_7
                                    147 	.globl _P1_6
                                    148 	.globl _P1_5
                                    149 	.globl _P1_4
                                    150 	.globl _P1_3
                                    151 	.globl _P1_2
                                    152 	.globl _P1_1
                                    153 	.globl _P1_0
                                    154 	.globl _TF1
                                    155 	.globl _TR1
                                    156 	.globl _TF0
                                    157 	.globl _TR0
                                    158 	.globl _IE1
                                    159 	.globl _IT1
                                    160 	.globl _IE0
                                    161 	.globl _IT0
                                    162 	.globl _P0_7
                                    163 	.globl _P0_6
                                    164 	.globl _P0_5
                                    165 	.globl _P0_4
                                    166 	.globl _P0_3
                                    167 	.globl _P0_2
                                    168 	.globl _P0_1
                                    169 	.globl _P0_0
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _B
                                    222 	.globl _ACC
                                    223 	.globl _PSW
                                    224 	.globl _IP
                                    225 	.globl _P3
                                    226 	.globl _IE
                                    227 	.globl _P2
                                    228 	.globl _SBUF
                                    229 	.globl _SCON
                                    230 	.globl _P1
                                    231 	.globl _TH1
                                    232 	.globl _TH0
                                    233 	.globl _TL1
                                    234 	.globl _TL0
                                    235 	.globl _TMOD
                                    236 	.globl _TCON
                                    237 	.globl _PCON
                                    238 	.globl _DPH
                                    239 	.globl _DPL
                                    240 	.globl _SP
                                    241 	.globl _P0
                                    242 	.globl _readSensorBpm_PARM_2
                                    243 	.globl _readBpm_PARM_2
                                    244 	.globl _writeRegisterMAX30101_PARM_2
                                    245 	.globl _i2cMax32664SequentialReadByte_PARM_4
                                    246 	.globl _i2cMax32664SequentialReadByte_PARM_3
                                    247 	.globl _i2cMax32664SequentialReadByte_PARM_2
                                    248 	.globl _i2cMax32664ReadByte_PARM_3
                                    249 	.globl _i2cMax32664ReadByte_PARM_2
                                    250 	.globl _i2cMax32664WriteByte_PARM_3
                                    251 	.globl _i2cMax32664WriteByte_PARM_2
                                    252 	.globl _i2cMax32664WriteBytes_PARM_4
                                    253 	.globl _i2cMax32664WriteBytes_PARM_3
                                    254 	.globl _i2cMax32664WriteBytes_PARM_2
                                    255 	.globl _testMaxHub
                                    256 ;--------------------------------------------------------
                                    257 ; special function registers
                                    258 ;--------------------------------------------------------
                                    259 	.area RSEG    (ABS,DATA)
      000000                        260 	.org 0x0000
                           000080   261 _P0	=	0x0080
                           000081   262 _SP	=	0x0081
                           000082   263 _DPL	=	0x0082
                           000083   264 _DPH	=	0x0083
                           000087   265 _PCON	=	0x0087
                           000088   266 _TCON	=	0x0088
                           000089   267 _TMOD	=	0x0089
                           00008A   268 _TL0	=	0x008a
                           00008B   269 _TL1	=	0x008b
                           00008C   270 _TH0	=	0x008c
                           00008D   271 _TH1	=	0x008d
                           000090   272 _P1	=	0x0090
                           000098   273 _SCON	=	0x0098
                           000099   274 _SBUF	=	0x0099
                           0000A0   275 _P2	=	0x00a0
                           0000A8   276 _IE	=	0x00a8
                           0000B0   277 _P3	=	0x00b0
                           0000B8   278 _IP	=	0x00b8
                           0000D0   279 _PSW	=	0x00d0
                           0000E0   280 _ACC	=	0x00e0
                           0000F0   281 _B	=	0x00f0
                           0000C8   282 _T2CON	=	0x00c8
                           0000CA   283 _RCAP2L	=	0x00ca
                           0000CB   284 _RCAP2H	=	0x00cb
                           0000CC   285 _TL2	=	0x00cc
                           0000CD   286 _TH2	=	0x00cd
                           00008E   287 _AUXR	=	0x008e
                           0000A2   288 _AUXR1	=	0x00a2
                           000097   289 _CKRL	=	0x0097
                           00008F   290 _CKCON0	=	0x008f
                           0000AF   291 _CKCON1	=	0x00af
                           0000FA   292 _CCAP0H	=	0x00fa
                           0000FB   293 _CCAP1H	=	0x00fb
                           0000FC   294 _CCAP2H	=	0x00fc
                           0000FD   295 _CCAP3H	=	0x00fd
                           0000FE   296 _CCAP4H	=	0x00fe
                           0000EA   297 _CCAP0L	=	0x00ea
                           0000EB   298 _CCAP1L	=	0x00eb
                           0000EC   299 _CCAP2L	=	0x00ec
                           0000ED   300 _CCAP3L	=	0x00ed
                           0000EE   301 _CCAP4L	=	0x00ee
                           0000DA   302 _CCAPM0	=	0x00da
                           0000DB   303 _CCAPM1	=	0x00db
                           0000DC   304 _CCAPM2	=	0x00dc
                           0000DD   305 _CCAPM3	=	0x00dd
                           0000DE   306 _CCAPM4	=	0x00de
                           0000D8   307 _CCON	=	0x00d8
                           0000F9   308 _CH	=	0x00f9
                           0000E9   309 _CL	=	0x00e9
                           0000D9   310 _CMOD	=	0x00d9
                           0000A8   311 _IEN0	=	0x00a8
                           0000B1   312 _IEN1	=	0x00b1
                           0000B8   313 _IPL0	=	0x00b8
                           0000B7   314 _IPH0	=	0x00b7
                           0000B2   315 _IPL1	=	0x00b2
                           0000B3   316 _IPH1	=	0x00b3
                           0000C0   317 _P4	=	0x00c0
                           0000E8   318 _P5	=	0x00e8
                           0000A6   319 _WDTRST	=	0x00a6
                           0000A7   320 _WDTPRG	=	0x00a7
                           0000A9   321 _SADDR	=	0x00a9
                           0000B9   322 _SADEN	=	0x00b9
                           0000C3   323 _SPCON	=	0x00c3
                           0000C4   324 _SPSTA	=	0x00c4
                           0000C5   325 _SPDAT	=	0x00c5
                           0000C9   326 _T2MOD	=	0x00c9
                           00009B   327 _BDRCON	=	0x009b
                           00009A   328 _BRL	=	0x009a
                           00009C   329 _KBLS	=	0x009c
                           00009D   330 _KBE	=	0x009d
                           00009E   331 _KBF	=	0x009e
                           0000D2   332 _EECON	=	0x00d2
                                    333 ;--------------------------------------------------------
                                    334 ; special function bits
                                    335 ;--------------------------------------------------------
                                    336 	.area RSEG    (ABS,DATA)
      000000                        337 	.org 0x0000
                           000080   338 _P0_0	=	0x0080
                           000081   339 _P0_1	=	0x0081
                           000082   340 _P0_2	=	0x0082
                           000083   341 _P0_3	=	0x0083
                           000084   342 _P0_4	=	0x0084
                           000085   343 _P0_5	=	0x0085
                           000086   344 _P0_6	=	0x0086
                           000087   345 _P0_7	=	0x0087
                           000088   346 _IT0	=	0x0088
                           000089   347 _IE0	=	0x0089
                           00008A   348 _IT1	=	0x008a
                           00008B   349 _IE1	=	0x008b
                           00008C   350 _TR0	=	0x008c
                           00008D   351 _TF0	=	0x008d
                           00008E   352 _TR1	=	0x008e
                           00008F   353 _TF1	=	0x008f
                           000090   354 _P1_0	=	0x0090
                           000091   355 _P1_1	=	0x0091
                           000092   356 _P1_2	=	0x0092
                           000093   357 _P1_3	=	0x0093
                           000094   358 _P1_4	=	0x0094
                           000095   359 _P1_5	=	0x0095
                           000096   360 _P1_6	=	0x0096
                           000097   361 _P1_7	=	0x0097
                           000098   362 _RI	=	0x0098
                           000099   363 _TI	=	0x0099
                           00009A   364 _RB8	=	0x009a
                           00009B   365 _TB8	=	0x009b
                           00009C   366 _REN	=	0x009c
                           00009D   367 _SM2	=	0x009d
                           00009E   368 _SM1	=	0x009e
                           00009F   369 _SM0	=	0x009f
                           0000A0   370 _P2_0	=	0x00a0
                           0000A1   371 _P2_1	=	0x00a1
                           0000A2   372 _P2_2	=	0x00a2
                           0000A3   373 _P2_3	=	0x00a3
                           0000A4   374 _P2_4	=	0x00a4
                           0000A5   375 _P2_5	=	0x00a5
                           0000A6   376 _P2_6	=	0x00a6
                           0000A7   377 _P2_7	=	0x00a7
                           0000A8   378 _EX0	=	0x00a8
                           0000A9   379 _ET0	=	0x00a9
                           0000AA   380 _EX1	=	0x00aa
                           0000AB   381 _ET1	=	0x00ab
                           0000AC   382 _ES	=	0x00ac
                           0000AF   383 _EA	=	0x00af
                           0000B0   384 _P3_0	=	0x00b0
                           0000B1   385 _P3_1	=	0x00b1
                           0000B2   386 _P3_2	=	0x00b2
                           0000B3   387 _P3_3	=	0x00b3
                           0000B4   388 _P3_4	=	0x00b4
                           0000B5   389 _P3_5	=	0x00b5
                           0000B6   390 _P3_6	=	0x00b6
                           0000B7   391 _P3_7	=	0x00b7
                           0000B0   392 _RXD	=	0x00b0
                           0000B1   393 _TXD	=	0x00b1
                           0000B2   394 _INT0	=	0x00b2
                           0000B3   395 _INT1	=	0x00b3
                           0000B4   396 _T0	=	0x00b4
                           0000B5   397 _T1	=	0x00b5
                           0000B6   398 _WR	=	0x00b6
                           0000B7   399 _RD	=	0x00b7
                           0000B8   400 _PX0	=	0x00b8
                           0000B9   401 _PT0	=	0x00b9
                           0000BA   402 _PX1	=	0x00ba
                           0000BB   403 _PT1	=	0x00bb
                           0000BC   404 _PS	=	0x00bc
                           0000D0   405 _P	=	0x00d0
                           0000D1   406 _F1	=	0x00d1
                           0000D2   407 _OV	=	0x00d2
                           0000D3   408 _RS0	=	0x00d3
                           0000D4   409 _RS1	=	0x00d4
                           0000D5   410 _F0	=	0x00d5
                           0000D6   411 _AC	=	0x00d6
                           0000D7   412 _CY	=	0x00d7
                           0000AD   413 _ET2	=	0x00ad
                           0000BD   414 _PT2	=	0x00bd
                           0000C8   415 _T2CON_0	=	0x00c8
                           0000C9   416 _T2CON_1	=	0x00c9
                           0000CA   417 _T2CON_2	=	0x00ca
                           0000CB   418 _T2CON_3	=	0x00cb
                           0000CC   419 _T2CON_4	=	0x00cc
                           0000CD   420 _T2CON_5	=	0x00cd
                           0000CE   421 _T2CON_6	=	0x00ce
                           0000CF   422 _T2CON_7	=	0x00cf
                           0000C8   423 _CP_RL2	=	0x00c8
                           0000C9   424 _C_T2	=	0x00c9
                           0000CA   425 _TR2	=	0x00ca
                           0000CB   426 _EXEN2	=	0x00cb
                           0000CC   427 _TCLK	=	0x00cc
                           0000CD   428 _RCLK	=	0x00cd
                           0000CE   429 _EXF2	=	0x00ce
                           0000CF   430 _TF2	=	0x00cf
                           0000DF   431 _CF	=	0x00df
                           0000DE   432 _CR	=	0x00de
                           0000DC   433 _CCF4	=	0x00dc
                           0000DB   434 _CCF3	=	0x00db
                           0000DA   435 _CCF2	=	0x00da
                           0000D9   436 _CCF1	=	0x00d9
                           0000D8   437 _CCF0	=	0x00d8
                           0000AE   438 _EC	=	0x00ae
                           0000BE   439 _PPCL	=	0x00be
                           0000BD   440 _PT2L	=	0x00bd
                           0000BC   441 _PSL	=	0x00bc
                           0000BB   442 _PT1L	=	0x00bb
                           0000BA   443 _PX1L	=	0x00ba
                           0000B9   444 _PT0L	=	0x00b9
                           0000B8   445 _PX0L	=	0x00b8
                           0000C0   446 _P4_0	=	0x00c0
                           0000C1   447 _P4_1	=	0x00c1
                           0000C2   448 _P4_2	=	0x00c2
                           0000C3   449 _P4_3	=	0x00c3
                           0000C4   450 _P4_4	=	0x00c4
                           0000C5   451 _P4_5	=	0x00c5
                           0000C6   452 _P4_6	=	0x00c6
                           0000C7   453 _P4_7	=	0x00c7
                           0000E8   454 _P5_0	=	0x00e8
                           0000E9   455 _P5_1	=	0x00e9
                           0000EA   456 _P5_2	=	0x00ea
                           0000EB   457 _P5_3	=	0x00eb
                           0000EC   458 _P5_4	=	0x00ec
                           0000ED   459 _P5_5	=	0x00ed
                           0000EE   460 _P5_6	=	0x00ee
                           0000EF   461 _P5_7	=	0x00ef
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable register banks
                                    464 ;--------------------------------------------------------
                                    465 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        466 	.ds 8
                                    467 ;--------------------------------------------------------
                                    468 ; internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area DSEG    (DATA)
      000013                        471 _readBpm_sloc0_1_0:
      000013                        472 	.ds 3
      000016                        473 _readBpm_sloc1_1_0:
      000016                        474 	.ds 1
      000017                        475 _readSensorBpm_sloc0_1_0:
      000017                        476 	.ds 4
      00001B                        477 _readSensorBpm_sloc1_1_0:
      00001B                        478 	.ds 1
      00001C                        479 _readSensorBpm_sloc2_1_0:
      00001C                        480 	.ds 2
      00001E                        481 _readSensorBpm_sloc3_1_0:
      00001E                        482 	.ds 3
                                    483 ;--------------------------------------------------------
                                    484 ; overlayable items in internal ram
                                    485 ;--------------------------------------------------------
                                    486 ;--------------------------------------------------------
                                    487 ; indirectly addressable internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area ISEG    (DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; absolute internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area IABS    (ABS,DATA)
                                    494 	.area IABS    (ABS,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; bit data
                                    497 ;--------------------------------------------------------
                                    498 	.area BSEG    (BIT)
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
      0000A0                        507 _hubDelayMs_delayMs_65536_28:
      0000A0                        508 	.ds 1
      0000A1                        509 _i2cMax32664WriteBytes_PARM_2:
      0000A1                        510 	.ds 1
      0000A2                        511 _i2cMax32664WriteBytes_PARM_3:
      0000A2                        512 	.ds 3
      0000A5                        513 _i2cMax32664WriteBytes_PARM_4:
      0000A5                        514 	.ds 1
      0000A6                        515 _i2cMax32664WriteBytes_familyByte_65536_34:
      0000A6                        516 	.ds 1
      0000A7                        517 _i2cMax32664WriteByte_PARM_2:
      0000A7                        518 	.ds 1
      0000A8                        519 _i2cMax32664WriteByte_PARM_3:
      0000A8                        520 	.ds 1
      0000A9                        521 _i2cMax32664WriteByte_familyByte_65536_44:
      0000A9                        522 	.ds 1
      0000AA                        523 _i2cMax32664ReadByte_PARM_2:
      0000AA                        524 	.ds 1
      0000AB                        525 _i2cMax32664ReadByte_PARM_3:
      0000AB                        526 	.ds 3
      0000AE                        527 _i2cMax32664ReadByte_familyByte_65536_47:
      0000AE                        528 	.ds 1
      0000AF                        529 _i2cMax32664SequentialReadByte_PARM_2:
      0000AF                        530 	.ds 1
      0000B0                        531 _i2cMax32664SequentialReadByte_PARM_3:
      0000B0                        532 	.ds 3
      0000B3                        533 _i2cMax32664SequentialReadByte_PARM_4:
      0000B3                        534 	.ds 1
      0000B4                        535 _i2cMax32664SequentialReadByte_familyByte_65536_58:
      0000B4                        536 	.ds 1
      0000B5                        537 _writeRegisterMAX30101_PARM_2:
      0000B5                        538 	.ds 1
      0000B6                        539 _writeRegisterMAX30101_regAddr_65536_70:
      0000B6                        540 	.ds 1
      0000B7                        541 _writeRegisterMAX30101_dataArr_65536_71:
      0000B7                        542 	.ds 2
      0000B9                        543 _readRegisterMAX30101_regAddr_65536_72:
      0000B9                        544 	.ds 1
      0000BA                        545 _setOutputMode_outputType_65536_82:
      0000BA                        546 	.ds 1
      0000BB                        547 _setFifoThreshold_intThresh_65536_86:
      0000BB                        548 	.ds 1
      0000BC                        549 _agcAlgoControl_enable_65536_89:
      0000BC                        550 	.ds 1
      0000BD                        551 _max30101Control_senSwitch_65536_94:
      0000BD                        552 	.ds 1
      0000BE                        553 _maximFastAlgoControl_mode_65536_99:
      0000BE                        554 	.ds 1
      0000BF                        555 _configBpm_mode_65536_104:
      0000BF                        556 	.ds 1
      0000C0                        557 _configSensorBpm_mode_65536_112:
      0000C0                        558 	.ds 1
      0000C1                        559 _readBpm_PARM_2:
      0000C1                        560 	.ds 3
      0000C4                        561 _readBpm_mode_65536_122:
      0000C4                        562 	.ds 1
      0000C5                        563 _readBpm_statusByte_65538_127:
      0000C5                        564 	.ds 2
      0000C7                        565 _readBpm_dataArr_65538_127:
      0000C7                        566 	.ds 11
      0000D2                        567 _readSensorBpm_PARM_2:
      0000D2                        568 	.ds 3
      0000D5                        569 _readSensorBpm_mode_65536_140:
      0000D5                        570 	.ds 1
      0000D6                        571 _readSensorBpm_statusByte_65538_145:
      0000D6                        572 	.ds 2
      0000D8                        573 _readSensorBpm_sensorData_65538_145:
      0000D8                        574 	.ds 23
      0000EF                        575 _setPulseWidth_width_65536_158:
      0000EF                        576 	.ds 2
      0000F1                        577 _setPulseWidth_bits_65536_159:
      0000F1                        578 	.ds 1
      0000F2                        579 _setSampleRate_sampRate_65536_160:
      0000F2                        580 	.ds 2
      0000F4                        581 _setSampleRate_bits_65536_161:
      0000F4                        582 	.ds 1
      0000F5                        583 _testMaxHub_data_65538_169:
      0000F5                        584 	.ds 21
                                    585 ;--------------------------------------------------------
                                    586 ; absolute external ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area XABS    (ABS,XDATA)
                                    589 ;--------------------------------------------------------
                                    590 ; external initialized ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area XISEG   (XDATA)
                                    593 	.area HOME    (CODE)
                                    594 	.area GSINIT0 (CODE)
                                    595 	.area GSINIT1 (CODE)
                                    596 	.area GSINIT2 (CODE)
                                    597 	.area GSINIT3 (CODE)
                                    598 	.area GSINIT4 (CODE)
                                    599 	.area GSINIT5 (CODE)
                                    600 	.area GSINIT  (CODE)
                                    601 	.area GSFINAL (CODE)
                                    602 	.area CSEG    (CODE)
                                    603 ;--------------------------------------------------------
                                    604 ; global & static initialisations
                                    605 ;--------------------------------------------------------
                                    606 	.area HOME    (CODE)
                                    607 	.area GSINIT  (CODE)
                                    608 	.area GSFINAL (CODE)
                                    609 	.area GSINIT  (CODE)
                                    610 ;--------------------------------------------------------
                                    611 ; Home
                                    612 ;--------------------------------------------------------
                                    613 	.area HOME    (CODE)
                                    614 	.area HOME    (CODE)
                                    615 ;--------------------------------------------------------
                                    616 ; code
                                    617 ;--------------------------------------------------------
                                    618 	.area CSEG    (CODE)
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'hubDelayMs'
                                    621 ;------------------------------------------------------------
                                    622 ;delayMs                   Allocated with name '_hubDelayMs_delayMs_65536_28'
                                    623 ;i                         Allocated with name '_hubDelayMs_i_131072_30'
                                    624 ;j                         Allocated with name '_hubDelayMs_j_262144_32'
                                    625 ;------------------------------------------------------------
                                    626 ;	src/maxhub.c:44: void hubDelayMs(const uint8_t delayMs)
                                    627 ;	-----------------------------------------
                                    628 ;	 function hubDelayMs
                                    629 ;	-----------------------------------------
      001A05                        630 _hubDelayMs:
                           000007   631 	ar7 = 0x07
                           000006   632 	ar6 = 0x06
                           000005   633 	ar5 = 0x05
                           000004   634 	ar4 = 0x04
                           000003   635 	ar3 = 0x03
                           000002   636 	ar2 = 0x02
                           000001   637 	ar1 = 0x01
                           000000   638 	ar0 = 0x00
      001A05 E5 82            [12]  639 	mov	a,dpl
      001A07 90 00 A0         [24]  640 	mov	dptr,#_hubDelayMs_delayMs_65536_28
      001A0A F0               [24]  641 	movx	@dptr,a
                                    642 ;	src/maxhub.c:46: for (uint8_t i = 0; i < delayMs; i++)
      001A0B E0               [24]  643 	movx	a,@dptr
      001A0C FF               [12]  644 	mov	r7,a
      001A0D 7E 00            [12]  645 	mov	r6,#0x00
      001A0F                        646 00107$:
      001A0F C3               [12]  647 	clr	c
      001A10 EE               [12]  648 	mov	a,r6
      001A11 9F               [12]  649 	subb	a,r7
      001A12 50 1C            [24]  650 	jnc	00109$
                                    651 ;	src/maxhub.c:49: for (uint16_t j = 0; j < 1000; j++)
      001A14 7C 00            [12]  652 	mov	r4,#0x00
      001A16 7D 00            [12]  653 	mov	r5,#0x00
      001A18                        654 00104$:
      001A18 8C 02            [24]  655 	mov	ar2,r4
      001A1A 8D 03            [24]  656 	mov	ar3,r5
      001A1C C3               [12]  657 	clr	c
      001A1D EA               [12]  658 	mov	a,r2
      001A1E 94 E8            [12]  659 	subb	a,#0xe8
      001A20 EB               [12]  660 	mov	a,r3
      001A21 94 03            [12]  661 	subb	a,#0x03
      001A23 50 08            [24]  662 	jnc	00108$
                                    663 ;	src/maxhub.c:51: __asm__("nop");
      001A25 00               [12]  664 	nop
                                    665 ;	src/maxhub.c:49: for (uint16_t j = 0; j < 1000; j++)
      001A26 0C               [12]  666 	inc	r4
      001A27 BC 00 EE         [24]  667 	cjne	r4,#0x00,00104$
      001A2A 0D               [12]  668 	inc	r5
      001A2B 80 EB            [24]  669 	sjmp	00104$
      001A2D                        670 00108$:
                                    671 ;	src/maxhub.c:46: for (uint8_t i = 0; i < delayMs; i++)
      001A2D 0E               [12]  672 	inc	r6
      001A2E 80 DF            [24]  673 	sjmp	00107$
      001A30                        674 00109$:
                                    675 ;	src/maxhub.c:54: }
      001A30 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'i2cMax32664WriteBytes'
                                    679 ;------------------------------------------------------------
                                    680 ;indexByte                 Allocated with name '_i2cMax32664WriteBytes_PARM_2'
                                    681 ;dataArray                 Allocated with name '_i2cMax32664WriteBytes_PARM_3'
                                    682 ;size                      Allocated with name '_i2cMax32664WriteBytes_PARM_4'
                                    683 ;familyByte                Allocated with name '_i2cMax32664WriteBytes_familyByte_65536_34'
                                    684 ;i                         Allocated with name '_i2cMax32664WriteBytes_i_131072_39'
                                    685 ;dataByte                  Allocated with name '_i2cMax32664WriteBytes_dataByte_196608_40'
                                    686 ;statusByte                Allocated with name '_i2cMax32664WriteBytes_statusByte_65537_43'
                                    687 ;------------------------------------------------------------
                                    688 ;	src/maxhub.c:65: int i2cMax32664WriteBytes(uint8_t familyByte, uint8_t indexByte, uint8_t dataArray[], uint8_t size)
                                    689 ;	-----------------------------------------
                                    690 ;	 function i2cMax32664WriteBytes
                                    691 ;	-----------------------------------------
      001A31                        692 _i2cMax32664WriteBytes:
      001A31 E5 82            [12]  693 	mov	a,dpl
      001A33 90 00 A6         [24]  694 	mov	dptr,#_i2cMax32664WriteBytes_familyByte_65536_34
      001A36 F0               [24]  695 	movx	@dptr,a
                                    696 ;	src/maxhub.c:67: start();
      001A37 12 04 28         [24]  697 	lcall	_start
                                    698 ;	src/maxhub.c:68: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
      001A3A 90 00 29         [24]  699 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001A3D 74 55            [12]  700 	mov	a,#0x55
      001A3F F0               [24]  701 	movx	@dptr,a
      001A40 75 82 00         [24]  702 	mov	dpl,#0x00
      001A43 12 05 30         [24]  703 	lcall	_sendControlByteNoAddr
                                    704 ;	src/maxhub.c:69: if (checkAcknowledgement() == FAIL)
      001A46 12 04 0E         [24]  705 	lcall	_checkAcknowledgement
      001A49 AE 82            [24]  706 	mov	r6,dpl
      001A4B AF 83            [24]  707 	mov	r7,dph
      001A4D BE FF 3A         [24]  708 	cjne	r6,#0xff,00102$
      001A50 BF FF 37         [24]  709 	cjne	r7,#0xff,00102$
                                    710 ;	src/maxhub.c:71: ERROR_LOG("%s:%d Write address failed!", __func__, __LINE__);
      001A53 74 47            [12]  711 	mov	a,#0x47
      001A55 C0 E0            [24]  712 	push	acc
      001A57 E4               [12]  713 	clr	a
      001A58 C0 E0            [24]  714 	push	acc
      001A5A 74 22            [12]  715 	mov	a,#___str_1
      001A5C C0 E0            [24]  716 	push	acc
      001A5E 74 50            [12]  717 	mov	a,#(___str_1 >> 8)
      001A60 C0 E0            [24]  718 	push	acc
      001A62 74 80            [12]  719 	mov	a,#0x80
      001A64 C0 E0            [24]  720 	push	acc
      001A66 74 F6            [12]  721 	mov	a,#___str_0
      001A68 C0 E0            [24]  722 	push	acc
      001A6A 74 4F            [12]  723 	mov	a,#(___str_0 >> 8)
      001A6C C0 E0            [24]  724 	push	acc
      001A6E 12 3B B6         [24]  725 	lcall	_printf_tiny
      001A71 E5 81            [12]  726 	mov	a,sp
      001A73 24 F9            [12]  727 	add	a,#0xf9
      001A75 F5 81            [12]  728 	mov	sp,a
      001A77 74 38            [12]  729 	mov	a,#___str_2
      001A79 C0 E0            [24]  730 	push	acc
      001A7B 74 50            [12]  731 	mov	a,#(___str_2 >> 8)
      001A7D C0 E0            [24]  732 	push	acc
      001A7F 12 3B B6         [24]  733 	lcall	_printf_tiny
      001A82 15 81            [12]  734 	dec	sp
      001A84 15 81            [12]  735 	dec	sp
                                    736 ;	src/maxhub.c:72: return FAIL;
      001A86 90 FF FF         [24]  737 	mov	dptr,#0xffff
      001A89 22               [24]  738 	ret
      001A8A                        739 00102$:
                                    740 ;	src/maxhub.c:76: i2cByteWrite(familyByte);
      001A8A 90 00 A6         [24]  741 	mov	dptr,#_i2cMax32664WriteBytes_familyByte_65536_34
      001A8D E0               [24]  742 	movx	a,@dptr
      001A8E F5 82            [12]  743 	mov	dpl,a
      001A90 12 05 78         [24]  744 	lcall	_i2cByteWrite
                                    745 ;	src/maxhub.c:77: if (checkAcknowledgement() == FAIL)
      001A93 12 04 0E         [24]  746 	lcall	_checkAcknowledgement
      001A96 AE 82            [24]  747 	mov	r6,dpl
      001A98 AF 83            [24]  748 	mov	r7,dph
      001A9A BE FF 33         [24]  749 	cjne	r6,#0xff,00104$
      001A9D BF FF 30         [24]  750 	cjne	r7,#0xff,00104$
                                    751 ;	src/maxhub.c:79: ERROR_LOG("%s Family Byte Write address failed!", __func__);
      001AA0 74 22            [12]  752 	mov	a,#___str_1
      001AA2 C0 E0            [24]  753 	push	acc
      001AA4 74 50            [12]  754 	mov	a,#(___str_1 >> 8)
      001AA6 C0 E0            [24]  755 	push	acc
      001AA8 74 80            [12]  756 	mov	a,#0x80
      001AAA C0 E0            [24]  757 	push	acc
      001AAC 74 3D            [12]  758 	mov	a,#___str_3
      001AAE C0 E0            [24]  759 	push	acc
      001AB0 74 50            [12]  760 	mov	a,#(___str_3 >> 8)
      001AB2 C0 E0            [24]  761 	push	acc
      001AB4 12 3B B6         [24]  762 	lcall	_printf_tiny
      001AB7 E5 81            [12]  763 	mov	a,sp
      001AB9 24 FB            [12]  764 	add	a,#0xfb
      001ABB F5 81            [12]  765 	mov	sp,a
      001ABD 74 38            [12]  766 	mov	a,#___str_2
      001ABF C0 E0            [24]  767 	push	acc
      001AC1 74 50            [12]  768 	mov	a,#(___str_2 >> 8)
      001AC3 C0 E0            [24]  769 	push	acc
      001AC5 12 3B B6         [24]  770 	lcall	_printf_tiny
      001AC8 15 81            [12]  771 	dec	sp
      001ACA 15 81            [12]  772 	dec	sp
                                    773 ;	src/maxhub.c:80: return FAIL;
      001ACC 90 FF FF         [24]  774 	mov	dptr,#0xffff
      001ACF 22               [24]  775 	ret
      001AD0                        776 00104$:
                                    777 ;	src/maxhub.c:84: i2cByteWrite(indexByte);
      001AD0 90 00 A1         [24]  778 	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
      001AD3 E0               [24]  779 	movx	a,@dptr
      001AD4 F5 82            [12]  780 	mov	dpl,a
      001AD6 12 05 78         [24]  781 	lcall	_i2cByteWrite
                                    782 ;	src/maxhub.c:85: if (checkAcknowledgement() == FAIL)
      001AD9 12 04 0E         [24]  783 	lcall	_checkAcknowledgement
      001ADC AE 82            [24]  784 	mov	r6,dpl
      001ADE AF 83            [24]  785 	mov	r7,dph
      001AE0 BE FF 33         [24]  786 	cjne	r6,#0xff,00122$
      001AE3 BF FF 30         [24]  787 	cjne	r7,#0xff,00122$
                                    788 ;	src/maxhub.c:87: ERROR_LOG("%s Index Byte Write address failed!", __func__);
      001AE6 74 22            [12]  789 	mov	a,#___str_1
      001AE8 C0 E0            [24]  790 	push	acc
      001AEA 74 50            [12]  791 	mov	a,#(___str_1 >> 8)
      001AEC C0 E0            [24]  792 	push	acc
      001AEE 74 80            [12]  793 	mov	a,#0x80
      001AF0 C0 E0            [24]  794 	push	acc
      001AF2 74 72            [12]  795 	mov	a,#___str_4
      001AF4 C0 E0            [24]  796 	push	acc
      001AF6 74 50            [12]  797 	mov	a,#(___str_4 >> 8)
      001AF8 C0 E0            [24]  798 	push	acc
      001AFA 12 3B B6         [24]  799 	lcall	_printf_tiny
      001AFD E5 81            [12]  800 	mov	a,sp
      001AFF 24 FB            [12]  801 	add	a,#0xfb
      001B01 F5 81            [12]  802 	mov	sp,a
      001B03 74 38            [12]  803 	mov	a,#___str_2
      001B05 C0 E0            [24]  804 	push	acc
      001B07 74 50            [12]  805 	mov	a,#(___str_2 >> 8)
      001B09 C0 E0            [24]  806 	push	acc
      001B0B 12 3B B6         [24]  807 	lcall	_printf_tiny
      001B0E 15 81            [12]  808 	dec	sp
      001B10 15 81            [12]  809 	dec	sp
                                    810 ;	src/maxhub.c:88: return FAIL;
      001B12 90 FF FF         [24]  811 	mov	dptr,#0xffff
      001B15 22               [24]  812 	ret
                                    813 ;	src/maxhub.c:91: for (uint8_t i = 0; i < size; i++)
      001B16                        814 00122$:
      001B16 90 00 A2         [24]  815 	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
      001B19 E0               [24]  816 	movx	a,@dptr
      001B1A FD               [12]  817 	mov	r5,a
      001B1B A3               [24]  818 	inc	dptr
      001B1C E0               [24]  819 	movx	a,@dptr
      001B1D FE               [12]  820 	mov	r6,a
      001B1E A3               [24]  821 	inc	dptr
      001B1F E0               [24]  822 	movx	a,@dptr
      001B20 FF               [12]  823 	mov	r7,a
      001B21 90 00 A5         [24]  824 	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
      001B24 E0               [24]  825 	movx	a,@dptr
      001B25 FC               [12]  826 	mov	r4,a
      001B26 7B 00            [12]  827 	mov	r3,#0x00
      001B28                        828 00113$:
      001B28 C3               [12]  829 	clr	c
      001B29 EB               [12]  830 	mov	a,r3
      001B2A 9C               [12]  831 	subb	a,r4
      001B2B 50 72            [24]  832 	jnc	00109$
                                    833 ;	src/maxhub.c:93: uint8_t dataByte = dataArray[i];
      001B2D EB               [12]  834 	mov	a,r3
      001B2E 2D               [12]  835 	add	a,r5
      001B2F F8               [12]  836 	mov	r0,a
      001B30 E4               [12]  837 	clr	a
      001B31 3E               [12]  838 	addc	a,r6
      001B32 F9               [12]  839 	mov	r1,a
      001B33 8F 02            [24]  840 	mov	ar2,r7
      001B35 88 82            [24]  841 	mov	dpl,r0
      001B37 89 83            [24]  842 	mov	dph,r1
      001B39 8A F0            [24]  843 	mov	b,r2
      001B3B 12 49 AE         [24]  844 	lcall	__gptrget
                                    845 ;	src/maxhub.c:94: i2cByteWrite(dataByte);
      001B3E F5 82            [12]  846 	mov	dpl,a
      001B40 C0 07            [24]  847 	push	ar7
      001B42 C0 06            [24]  848 	push	ar6
      001B44 C0 05            [24]  849 	push	ar5
      001B46 C0 04            [24]  850 	push	ar4
      001B48 C0 03            [24]  851 	push	ar3
      001B4A 12 05 78         [24]  852 	lcall	_i2cByteWrite
                                    853 ;	src/maxhub.c:95: if (checkAcknowledgement() == FAIL)
      001B4D 12 04 0E         [24]  854 	lcall	_checkAcknowledgement
      001B50 A9 82            [24]  855 	mov	r1,dpl
      001B52 AA 83            [24]  856 	mov	r2,dph
      001B54 D0 03            [24]  857 	pop	ar3
      001B56 D0 04            [24]  858 	pop	ar4
      001B58 D0 05            [24]  859 	pop	ar5
      001B5A D0 06            [24]  860 	pop	ar6
      001B5C D0 07            [24]  861 	pop	ar7
      001B5E B9 FF 3B         [24]  862 	cjne	r1,#0xff,00114$
      001B61 BA FF 38         [24]  863 	cjne	r2,#0xff,00114$
                                    864 ;	src/maxhub.c:97: ERROR_LOG("%s Data Byte Write %d failed!", __func__, i);
      001B64 8B 01            [24]  865 	mov	ar1,r3
      001B66 7A 00            [12]  866 	mov	r2,#0x00
      001B68 C0 01            [24]  867 	push	ar1
      001B6A C0 02            [24]  868 	push	ar2
      001B6C 74 22            [12]  869 	mov	a,#___str_1
      001B6E C0 E0            [24]  870 	push	acc
      001B70 74 50            [12]  871 	mov	a,#(___str_1 >> 8)
      001B72 C0 E0            [24]  872 	push	acc
      001B74 74 80            [12]  873 	mov	a,#0x80
      001B76 C0 E0            [24]  874 	push	acc
      001B78 74 A6            [12]  875 	mov	a,#___str_5
      001B7A C0 E0            [24]  876 	push	acc
      001B7C 74 50            [12]  877 	mov	a,#(___str_5 >> 8)
      001B7E C0 E0            [24]  878 	push	acc
      001B80 12 3B B6         [24]  879 	lcall	_printf_tiny
      001B83 E5 81            [12]  880 	mov	a,sp
      001B85 24 F9            [12]  881 	add	a,#0xf9
      001B87 F5 81            [12]  882 	mov	sp,a
      001B89 74 38            [12]  883 	mov	a,#___str_2
      001B8B C0 E0            [24]  884 	push	acc
      001B8D 74 50            [12]  885 	mov	a,#(___str_2 >> 8)
      001B8F C0 E0            [24]  886 	push	acc
      001B91 12 3B B6         [24]  887 	lcall	_printf_tiny
      001B94 15 81            [12]  888 	dec	sp
      001B96 15 81            [12]  889 	dec	sp
                                    890 ;	src/maxhub.c:98: return FAIL;
      001B98 90 FF FF         [24]  891 	mov	dptr,#0xffff
      001B9B 22               [24]  892 	ret
      001B9C                        893 00114$:
                                    894 ;	src/maxhub.c:91: for (uint8_t i = 0; i < size; i++)
      001B9C 0B               [12]  895 	inc	r3
      001B9D 80 89            [24]  896 	sjmp	00113$
      001B9F                        897 00109$:
                                    898 ;	src/maxhub.c:101: stop();
      001B9F 12 04 35         [24]  899 	lcall	_stop
                                    900 ;	src/maxhub.c:103: hubDelayMs(CMD_DELAY);
      001BA2 75 82 14         [24]  901 	mov	dpl,#0x14
      001BA5 12 1A 05         [24]  902 	lcall	_hubDelayMs
                                    903 ;	src/maxhub.c:105: start();
      001BA8 12 04 28         [24]  904 	lcall	_start
                                    905 ;	src/maxhub.c:106: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
      001BAB 90 00 29         [24]  906 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001BAE 74 55            [12]  907 	mov	a,#0x55
      001BB0 F0               [24]  908 	movx	@dptr,a
      001BB1 75 82 01         [24]  909 	mov	dpl,#0x01
      001BB4 12 05 30         [24]  910 	lcall	_sendControlByteNoAddr
                                    911 ;	src/maxhub.c:107: if (checkAcknowledgement() == FAIL)
      001BB7 12 04 0E         [24]  912 	lcall	_checkAcknowledgement
      001BBA AE 82            [24]  913 	mov	r6,dpl
      001BBC AF 83            [24]  914 	mov	r7,dph
      001BBE BE FF 33         [24]  915 	cjne	r6,#0xff,00111$
      001BC1 BF FF 30         [24]  916 	cjne	r7,#0xff,00111$
                                    917 ;	src/maxhub.c:109: ERROR_LOG("%s Read Byte failed!", __func__);
      001BC4 74 22            [12]  918 	mov	a,#___str_1
      001BC6 C0 E0            [24]  919 	push	acc
      001BC8 74 50            [12]  920 	mov	a,#(___str_1 >> 8)
      001BCA C0 E0            [24]  921 	push	acc
      001BCC 74 80            [12]  922 	mov	a,#0x80
      001BCE C0 E0            [24]  923 	push	acc
      001BD0 74 D4            [12]  924 	mov	a,#___str_6
      001BD2 C0 E0            [24]  925 	push	acc
      001BD4 74 50            [12]  926 	mov	a,#(___str_6 >> 8)
      001BD6 C0 E0            [24]  927 	push	acc
      001BD8 12 3B B6         [24]  928 	lcall	_printf_tiny
      001BDB E5 81            [12]  929 	mov	a,sp
      001BDD 24 FB            [12]  930 	add	a,#0xfb
      001BDF F5 81            [12]  931 	mov	sp,a
      001BE1 74 38            [12]  932 	mov	a,#___str_2
      001BE3 C0 E0            [24]  933 	push	acc
      001BE5 74 50            [12]  934 	mov	a,#(___str_2 >> 8)
      001BE7 C0 E0            [24]  935 	push	acc
      001BE9 12 3B B6         [24]  936 	lcall	_printf_tiny
      001BEC 15 81            [12]  937 	dec	sp
      001BEE 15 81            [12]  938 	dec	sp
                                    939 ;	src/maxhub.c:110: return FAIL;
      001BF0 90 FF FF         [24]  940 	mov	dptr,#0xffff
      001BF3 22               [24]  941 	ret
      001BF4                        942 00111$:
                                    943 ;	src/maxhub.c:113: uint8_t statusByte = i2cByteRead();
      001BF4 12 05 BB         [24]  944 	lcall	_i2cByteRead
      001BF7 AF 82            [24]  945 	mov	r7,dpl
                                    946 ;	src/maxhub.c:114: sendNAcknowledge();
      001BF9 C0 07            [24]  947 	push	ar7
      001BFB 12 04 4E         [24]  948 	lcall	_sendNAcknowledge
                                    949 ;	src/maxhub.c:115: stop();
      001BFE 12 04 35         [24]  950 	lcall	_stop
      001C01 D0 07            [24]  951 	pop	ar7
                                    952 ;	src/maxhub.c:117: return statusByte;
      001C03 7E 00            [12]  953 	mov	r6,#0x00
      001C05 8F 82            [24]  954 	mov	dpl,r7
      001C07 8E 83            [24]  955 	mov	dph,r6
                                    956 ;	src/maxhub.c:118: }
      001C09 22               [24]  957 	ret
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'i2cMax32664WriteByte'
                                    960 ;------------------------------------------------------------
                                    961 ;indexByte                 Allocated with name '_i2cMax32664WriteByte_PARM_2'
                                    962 ;dataByte                  Allocated with name '_i2cMax32664WriteByte_PARM_3'
                                    963 ;familyByte                Allocated with name '_i2cMax32664WriteByte_familyByte_65536_44'
                                    964 ;status                    Allocated with name '_i2cMax32664WriteByte_status_65536_45'
                                    965 ;------------------------------------------------------------
                                    966 ;	src/maxhub.c:128: int i2cMax32664WriteByte(uint8_t familyByte, uint8_t indexByte, uint8_t dataByte)
                                    967 ;	-----------------------------------------
                                    968 ;	 function i2cMax32664WriteByte
                                    969 ;	-----------------------------------------
      001C0A                        970 _i2cMax32664WriteByte:
      001C0A E5 82            [12]  971 	mov	a,dpl
      001C0C 90 00 A9         [24]  972 	mov	dptr,#_i2cMax32664WriteByte_familyByte_65536_44
      001C0F F0               [24]  973 	movx	@dptr,a
                                    974 ;	src/maxhub.c:132: do
      001C10 E0               [24]  975 	movx	a,@dptr
      001C11 FF               [12]  976 	mov	r7,a
      001C12 90 00 A7         [24]  977 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      001C15 E0               [24]  978 	movx	a,@dptr
      001C16 FE               [12]  979 	mov	r6,a
      001C17                        980 00101$:
                                    981 ;	src/maxhub.c:134: status = i2cMax32664WriteBytes(familyByte, indexByte, &dataByte, 1);
      001C17 90 00 A1         [24]  982 	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
      001C1A EE               [12]  983 	mov	a,r6
      001C1B F0               [24]  984 	movx	@dptr,a
      001C1C 90 00 A2         [24]  985 	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
      001C1F 74 A8            [12]  986 	mov	a,#_i2cMax32664WriteByte_PARM_3
      001C21 F0               [24]  987 	movx	@dptr,a
      001C22 74 00            [12]  988 	mov	a,#(_i2cMax32664WriteByte_PARM_3 >> 8)
      001C24 A3               [24]  989 	inc	dptr
      001C25 F0               [24]  990 	movx	@dptr,a
      001C26 E4               [12]  991 	clr	a
      001C27 A3               [24]  992 	inc	dptr
      001C28 F0               [24]  993 	movx	@dptr,a
      001C29 90 00 A5         [24]  994 	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
      001C2C 04               [12]  995 	inc	a
      001C2D F0               [24]  996 	movx	@dptr,a
      001C2E 8F 82            [24]  997 	mov	dpl,r7
      001C30 C0 07            [24]  998 	push	ar7
      001C32 C0 06            [24]  999 	push	ar6
      001C34 12 1A 31         [24] 1000 	lcall	_i2cMax32664WriteBytes
      001C37 AC 82            [24] 1001 	mov	r4,dpl
      001C39 AD 83            [24] 1002 	mov	r5,dph
                                   1003 ;	src/maxhub.c:135: INFO_LOG("retrying write");
      001C3B C0 05            [24] 1004 	push	ar5
      001C3D C0 04            [24] 1005 	push	ar4
      001C3F 74 F9            [12] 1006 	mov	a,#___str_7
      001C41 C0 E0            [24] 1007 	push	acc
      001C43 74 50            [12] 1008 	mov	a,#(___str_7 >> 8)
      001C45 C0 E0            [24] 1009 	push	acc
      001C47 74 80            [12] 1010 	mov	a,#0x80
      001C49 C0 E0            [24] 1011 	push	acc
      001C4B 12 3E BF         [24] 1012 	lcall	_printf
      001C4E 15 81            [12] 1013 	dec	sp
      001C50 15 81            [12] 1014 	dec	sp
      001C52 15 81            [12] 1015 	dec	sp
      001C54 74 38            [12] 1016 	mov	a,#___str_2
      001C56 C0 E0            [24] 1017 	push	acc
      001C58 74 50            [12] 1018 	mov	a,#(___str_2 >> 8)
      001C5A C0 E0            [24] 1019 	push	acc
      001C5C 12 3B B6         [24] 1020 	lcall	_printf_tiny
      001C5F 15 81            [12] 1021 	dec	sp
      001C61 15 81            [12] 1022 	dec	sp
      001C63 D0 04            [24] 1023 	pop	ar4
      001C65 D0 05            [24] 1024 	pop	ar5
      001C67 D0 06            [24] 1025 	pop	ar6
      001C69 D0 07            [24] 1026 	pop	ar7
                                   1027 ;	src/maxhub.c:136: } while (ERR_DEVICE_BUSY == status);
      001C6B BC FE 05         [24] 1028 	cjne	r4,#0xfe,00114$
      001C6E BD 00 02         [24] 1029 	cjne	r5,#0x00,00114$
      001C71 80 A4            [24] 1030 	sjmp	00101$
      001C73                       1031 00114$:
                                   1032 ;	src/maxhub.c:138: return status;
      001C73 8C 82            [24] 1033 	mov	dpl,r4
      001C75 8D 83            [24] 1034 	mov	dph,r5
                                   1035 ;	src/maxhub.c:139: }
      001C77 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'i2cMax32664ReadByte'
                                   1039 ;------------------------------------------------------------
                                   1040 ;indexByte                 Allocated with name '_i2cMax32664ReadByte_PARM_2'
                                   1041 ;writeByte                 Allocated with name '_i2cMax32664ReadByte_PARM_3'
                                   1042 ;familyByte                Allocated with name '_i2cMax32664ReadByte_familyByte_65536_47'
                                   1043 ;statusByte                Allocated with name '_i2cMax32664ReadByte_statusByte_65537_55'
                                   1044 ;readByte                  Allocated with name '_i2cMax32664ReadByte_readByte_65538_57'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	src/maxhub.c:149: int i2cMax32664ReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t *writeByte)
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function i2cMax32664ReadByte
                                   1049 ;	-----------------------------------------
      001C78                       1050 _i2cMax32664ReadByte:
      001C78 E5 82            [12] 1051 	mov	a,dpl
      001C7A 90 00 AE         [24] 1052 	mov	dptr,#_i2cMax32664ReadByte_familyByte_65536_47
      001C7D F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	src/maxhub.c:151: start();
      001C7E 12 04 28         [24] 1055 	lcall	_start
                                   1056 ;	src/maxhub.c:152: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
      001C81 90 00 29         [24] 1057 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001C84 74 55            [12] 1058 	mov	a,#0x55
      001C86 F0               [24] 1059 	movx	@dptr,a
      001C87 75 82 00         [24] 1060 	mov	dpl,#0x00
      001C8A 12 05 30         [24] 1061 	lcall	_sendControlByteNoAddr
                                   1062 ;	src/maxhub.c:153: if (checkAcknowledgement() == FAIL)
      001C8D 12 04 0E         [24] 1063 	lcall	_checkAcknowledgement
      001C90 AE 82            [24] 1064 	mov	r6,dpl
      001C92 AF 83            [24] 1065 	mov	r7,dph
      001C94 BE FF 33         [24] 1066 	cjne	r6,#0xff,00102$
      001C97 BF FF 30         [24] 1067 	cjne	r7,#0xff,00102$
                                   1068 ;	src/maxhub.c:155: ERROR_LOG("%s Write address failed!", __func__);
      001C9A 74 3E            [12] 1069 	mov	a,#___str_9
      001C9C C0 E0            [24] 1070 	push	acc
      001C9E 74 51            [12] 1071 	mov	a,#(___str_9 >> 8)
      001CA0 C0 E0            [24] 1072 	push	acc
      001CA2 74 80            [12] 1073 	mov	a,#0x80
      001CA4 C0 E0            [24] 1074 	push	acc
      001CA6 74 15            [12] 1075 	mov	a,#___str_8
      001CA8 C0 E0            [24] 1076 	push	acc
      001CAA 74 51            [12] 1077 	mov	a,#(___str_8 >> 8)
      001CAC C0 E0            [24] 1078 	push	acc
      001CAE 12 3B B6         [24] 1079 	lcall	_printf_tiny
      001CB1 E5 81            [12] 1080 	mov	a,sp
      001CB3 24 FB            [12] 1081 	add	a,#0xfb
      001CB5 F5 81            [12] 1082 	mov	sp,a
      001CB7 74 38            [12] 1083 	mov	a,#___str_2
      001CB9 C0 E0            [24] 1084 	push	acc
      001CBB 74 50            [12] 1085 	mov	a,#(___str_2 >> 8)
      001CBD C0 E0            [24] 1086 	push	acc
      001CBF 12 3B B6         [24] 1087 	lcall	_printf_tiny
      001CC2 15 81            [12] 1088 	dec	sp
      001CC4 15 81            [12] 1089 	dec	sp
                                   1090 ;	src/maxhub.c:156: return FAIL;
      001CC6 90 FF FF         [24] 1091 	mov	dptr,#0xffff
      001CC9 22               [24] 1092 	ret
      001CCA                       1093 00102$:
                                   1094 ;	src/maxhub.c:160: i2cByteWrite(familyByte);
      001CCA 90 00 AE         [24] 1095 	mov	dptr,#_i2cMax32664ReadByte_familyByte_65536_47
      001CCD E0               [24] 1096 	movx	a,@dptr
      001CCE F5 82            [12] 1097 	mov	dpl,a
      001CD0 12 05 78         [24] 1098 	lcall	_i2cByteWrite
                                   1099 ;	src/maxhub.c:161: if (checkAcknowledgement() == FAIL)
      001CD3 12 04 0E         [24] 1100 	lcall	_checkAcknowledgement
      001CD6 AE 82            [24] 1101 	mov	r6,dpl
      001CD8 AF 83            [24] 1102 	mov	r7,dph
      001CDA BE FF 33         [24] 1103 	cjne	r6,#0xff,00104$
      001CDD BF FF 30         [24] 1104 	cjne	r7,#0xff,00104$
                                   1105 ;	src/maxhub.c:163: ERROR_LOG("%s Family Byte Write address failed!", __func__);
      001CE0 74 3E            [12] 1106 	mov	a,#___str_9
      001CE2 C0 E0            [24] 1107 	push	acc
      001CE4 74 51            [12] 1108 	mov	a,#(___str_9 >> 8)
      001CE6 C0 E0            [24] 1109 	push	acc
      001CE8 74 80            [12] 1110 	mov	a,#0x80
      001CEA C0 E0            [24] 1111 	push	acc
      001CEC 74 3D            [12] 1112 	mov	a,#___str_3
      001CEE C0 E0            [24] 1113 	push	acc
      001CF0 74 50            [12] 1114 	mov	a,#(___str_3 >> 8)
      001CF2 C0 E0            [24] 1115 	push	acc
      001CF4 12 3B B6         [24] 1116 	lcall	_printf_tiny
      001CF7 E5 81            [12] 1117 	mov	a,sp
      001CF9 24 FB            [12] 1118 	add	a,#0xfb
      001CFB F5 81            [12] 1119 	mov	sp,a
      001CFD 74 38            [12] 1120 	mov	a,#___str_2
      001CFF C0 E0            [24] 1121 	push	acc
      001D01 74 50            [12] 1122 	mov	a,#(___str_2 >> 8)
      001D03 C0 E0            [24] 1123 	push	acc
      001D05 12 3B B6         [24] 1124 	lcall	_printf_tiny
      001D08 15 81            [12] 1125 	dec	sp
      001D0A 15 81            [12] 1126 	dec	sp
                                   1127 ;	src/maxhub.c:164: return FAIL;
      001D0C 90 FF FF         [24] 1128 	mov	dptr,#0xffff
      001D0F 22               [24] 1129 	ret
      001D10                       1130 00104$:
                                   1131 ;	src/maxhub.c:168: i2cByteWrite(indexByte);
      001D10 90 00 AA         [24] 1132 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      001D13 E0               [24] 1133 	movx	a,@dptr
      001D14 F5 82            [12] 1134 	mov	dpl,a
      001D16 12 05 78         [24] 1135 	lcall	_i2cByteWrite
                                   1136 ;	src/maxhub.c:169: if (checkAcknowledgement() == FAIL)
      001D19 12 04 0E         [24] 1137 	lcall	_checkAcknowledgement
      001D1C AE 82            [24] 1138 	mov	r6,dpl
      001D1E AF 83            [24] 1139 	mov	r7,dph
      001D20 BE FF 33         [24] 1140 	cjne	r6,#0xff,00106$
      001D23 BF FF 30         [24] 1141 	cjne	r7,#0xff,00106$
                                   1142 ;	src/maxhub.c:171: ERROR_LOG("%s Index Byte Write address failed!", __func__);
      001D26 74 3E            [12] 1143 	mov	a,#___str_9
      001D28 C0 E0            [24] 1144 	push	acc
      001D2A 74 51            [12] 1145 	mov	a,#(___str_9 >> 8)
      001D2C C0 E0            [24] 1146 	push	acc
      001D2E 74 80            [12] 1147 	mov	a,#0x80
      001D30 C0 E0            [24] 1148 	push	acc
      001D32 74 72            [12] 1149 	mov	a,#___str_4
      001D34 C0 E0            [24] 1150 	push	acc
      001D36 74 50            [12] 1151 	mov	a,#(___str_4 >> 8)
      001D38 C0 E0            [24] 1152 	push	acc
      001D3A 12 3B B6         [24] 1153 	lcall	_printf_tiny
      001D3D E5 81            [12] 1154 	mov	a,sp
      001D3F 24 FB            [12] 1155 	add	a,#0xfb
      001D41 F5 81            [12] 1156 	mov	sp,a
      001D43 74 38            [12] 1157 	mov	a,#___str_2
      001D45 C0 E0            [24] 1158 	push	acc
      001D47 74 50            [12] 1159 	mov	a,#(___str_2 >> 8)
      001D49 C0 E0            [24] 1160 	push	acc
      001D4B 12 3B B6         [24] 1161 	lcall	_printf_tiny
      001D4E 15 81            [12] 1162 	dec	sp
      001D50 15 81            [12] 1163 	dec	sp
                                   1164 ;	src/maxhub.c:172: return FAIL;
      001D52 90 FF FF         [24] 1165 	mov	dptr,#0xffff
      001D55 22               [24] 1166 	ret
      001D56                       1167 00106$:
                                   1168 ;	src/maxhub.c:176: if (writeByte != NULL)
      001D56 90 00 AB         [24] 1169 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      001D59 E0               [24] 1170 	movx	a,@dptr
      001D5A FD               [12] 1171 	mov	r5,a
      001D5B A3               [24] 1172 	inc	dptr
      001D5C E0               [24] 1173 	movx	a,@dptr
      001D5D FE               [12] 1174 	mov	r6,a
      001D5E A3               [24] 1175 	inc	dptr
      001D5F E0               [24] 1176 	movx	a,@dptr
      001D60 FF               [12] 1177 	mov	r7,a
      001D61 90 00 AB         [24] 1178 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      001D64 E0               [24] 1179 	movx	a,@dptr
      001D65 F5 F0            [12] 1180 	mov	b,a
      001D67 A3               [24] 1181 	inc	dptr
      001D68 E0               [24] 1182 	movx	a,@dptr
      001D69 45 F0            [12] 1183 	orl	a,b
      001D6B 60 4B            [24] 1184 	jz	00110$
                                   1185 ;	src/maxhub.c:178: i2cByteWrite(*writeByte);
      001D6D 8D 82            [24] 1186 	mov	dpl,r5
      001D6F 8E 83            [24] 1187 	mov	dph,r6
      001D71 8F F0            [24] 1188 	mov	b,r7
      001D73 12 49 AE         [24] 1189 	lcall	__gptrget
      001D76 F5 82            [12] 1190 	mov	dpl,a
      001D78 12 05 78         [24] 1191 	lcall	_i2cByteWrite
                                   1192 ;	src/maxhub.c:179: if (checkAcknowledgement() == FAIL)
      001D7B 12 04 0E         [24] 1193 	lcall	_checkAcknowledgement
      001D7E AE 82            [24] 1194 	mov	r6,dpl
      001D80 AF 83            [24] 1195 	mov	r7,dph
      001D82 BE FF 33         [24] 1196 	cjne	r6,#0xff,00110$
      001D85 BF FF 30         [24] 1197 	cjne	r7,#0xff,00110$
                                   1198 ;	src/maxhub.c:181: ERROR_LOG("%s Write Byte Write address failed!", __func__);
      001D88 74 3E            [12] 1199 	mov	a,#___str_9
      001D8A C0 E0            [24] 1200 	push	acc
      001D8C 74 51            [12] 1201 	mov	a,#(___str_9 >> 8)
      001D8E C0 E0            [24] 1202 	push	acc
      001D90 74 80            [12] 1203 	mov	a,#0x80
      001D92 C0 E0            [24] 1204 	push	acc
      001D94 74 52            [12] 1205 	mov	a,#___str_10
      001D96 C0 E0            [24] 1206 	push	acc
      001D98 74 51            [12] 1207 	mov	a,#(___str_10 >> 8)
      001D9A C0 E0            [24] 1208 	push	acc
      001D9C 12 3B B6         [24] 1209 	lcall	_printf_tiny
      001D9F E5 81            [12] 1210 	mov	a,sp
      001DA1 24 FB            [12] 1211 	add	a,#0xfb
      001DA3 F5 81            [12] 1212 	mov	sp,a
      001DA5 74 38            [12] 1213 	mov	a,#___str_2
      001DA7 C0 E0            [24] 1214 	push	acc
      001DA9 74 50            [12] 1215 	mov	a,#(___str_2 >> 8)
      001DAB C0 E0            [24] 1216 	push	acc
      001DAD 12 3B B6         [24] 1217 	lcall	_printf_tiny
      001DB0 15 81            [12] 1218 	dec	sp
      001DB2 15 81            [12] 1219 	dec	sp
                                   1220 ;	src/maxhub.c:182: return FAIL;
      001DB4 90 FF FF         [24] 1221 	mov	dptr,#0xffff
      001DB7 22               [24] 1222 	ret
      001DB8                       1223 00110$:
                                   1224 ;	src/maxhub.c:186: stop();
      001DB8 12 04 35         [24] 1225 	lcall	_stop
                                   1226 ;	src/maxhub.c:188: hubDelayMs(CMD_DELAY);
      001DBB 75 82 14         [24] 1227 	mov	dpl,#0x14
      001DBE 12 1A 05         [24] 1228 	lcall	_hubDelayMs
                                   1229 ;	src/maxhub.c:190: start();
      001DC1 12 04 28         [24] 1230 	lcall	_start
                                   1231 ;	src/maxhub.c:191: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
      001DC4 90 00 29         [24] 1232 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001DC7 74 55            [12] 1233 	mov	a,#0x55
      001DC9 F0               [24] 1234 	movx	@dptr,a
      001DCA 75 82 01         [24] 1235 	mov	dpl,#0x01
      001DCD 12 05 30         [24] 1236 	lcall	_sendControlByteNoAddr
                                   1237 ;	src/maxhub.c:192: if (checkAcknowledgement() == FAIL)
      001DD0 12 04 0E         [24] 1238 	lcall	_checkAcknowledgement
      001DD3 AE 82            [24] 1239 	mov	r6,dpl
      001DD5 AF 83            [24] 1240 	mov	r7,dph
      001DD7 BE FF 33         [24] 1241 	cjne	r6,#0xff,00112$
      001DDA BF FF 30         [24] 1242 	cjne	r7,#0xff,00112$
                                   1243 ;	src/maxhub.c:194: ERROR_LOG("%s Read Byte failed!", __func__);
      001DDD 74 3E            [12] 1244 	mov	a,#___str_9
      001DDF C0 E0            [24] 1245 	push	acc
      001DE1 74 51            [12] 1246 	mov	a,#(___str_9 >> 8)
      001DE3 C0 E0            [24] 1247 	push	acc
      001DE5 74 80            [12] 1248 	mov	a,#0x80
      001DE7 C0 E0            [24] 1249 	push	acc
      001DE9 74 D4            [12] 1250 	mov	a,#___str_6
      001DEB C0 E0            [24] 1251 	push	acc
      001DED 74 50            [12] 1252 	mov	a,#(___str_6 >> 8)
      001DEF C0 E0            [24] 1253 	push	acc
      001DF1 12 3B B6         [24] 1254 	lcall	_printf_tiny
      001DF4 E5 81            [12] 1255 	mov	a,sp
      001DF6 24 FB            [12] 1256 	add	a,#0xfb
      001DF8 F5 81            [12] 1257 	mov	sp,a
      001DFA 74 38            [12] 1258 	mov	a,#___str_2
      001DFC C0 E0            [24] 1259 	push	acc
      001DFE 74 50            [12] 1260 	mov	a,#(___str_2 >> 8)
      001E00 C0 E0            [24] 1261 	push	acc
      001E02 12 3B B6         [24] 1262 	lcall	_printf_tiny
      001E05 15 81            [12] 1263 	dec	sp
      001E07 15 81            [12] 1264 	dec	sp
                                   1265 ;	src/maxhub.c:195: return FAIL;
      001E09 90 FF FF         [24] 1266 	mov	dptr,#0xffff
      001E0C 22               [24] 1267 	ret
      001E0D                       1268 00112$:
                                   1269 ;	src/maxhub.c:198: uint8_t statusByte = i2cByteRead();
      001E0D 12 05 BB         [24] 1270 	lcall	_i2cByteRead
      001E10 AF 82            [24] 1271 	mov	r7,dpl
                                   1272 ;	src/maxhub.c:199: sendAcknowledge();
      001E12 C0 07            [24] 1273 	push	ar7
      001E14 12 04 42         [24] 1274 	lcall	_sendAcknowledge
      001E17 D0 07            [24] 1275 	pop	ar7
                                   1276 ;	src/maxhub.c:201: if (statusByte != SFE_BIO_SUCCESS)
      001E19 EF               [12] 1277 	mov	a,r7
      001E1A 60 07            [24] 1278 	jz	00114$
                                   1279 ;	src/maxhub.c:203: return statusByte;
      001E1C 7E 00            [12] 1280 	mov	r6,#0x00
      001E1E 8F 82            [24] 1281 	mov	dpl,r7
      001E20 8E 83            [24] 1282 	mov	dph,r6
      001E22 22               [24] 1283 	ret
      001E23                       1284 00114$:
                                   1285 ;	src/maxhub.c:206: uint8_t readByte = i2cByteRead();
      001E23 12 05 BB         [24] 1286 	lcall	_i2cByteRead
      001E26 AF 82            [24] 1287 	mov	r7,dpl
                                   1288 ;	src/maxhub.c:208: sendNAcknowledge();
      001E28 C0 07            [24] 1289 	push	ar7
      001E2A 12 04 4E         [24] 1290 	lcall	_sendNAcknowledge
                                   1291 ;	src/maxhub.c:210: stop();
      001E2D 12 04 35         [24] 1292 	lcall	_stop
      001E30 D0 07            [24] 1293 	pop	ar7
                                   1294 ;	src/maxhub.c:212: return readByte;
      001E32 7E 00            [12] 1295 	mov	r6,#0x00
      001E34 8F 82            [24] 1296 	mov	dpl,r7
      001E36 8E 83            [24] 1297 	mov	dph,r6
                                   1298 ;	src/maxhub.c:213: }
      001E38 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'i2cMax32664SequentialReadByte'
                                   1302 ;------------------------------------------------------------
                                   1303 ;indexByte                 Allocated with name '_i2cMax32664SequentialReadByte_PARM_2'
                                   1304 ;readArr                   Allocated with name '_i2cMax32664SequentialReadByte_PARM_3'
                                   1305 ;size                      Allocated with name '_i2cMax32664SequentialReadByte_PARM_4'
                                   1306 ;familyByte                Allocated with name '_i2cMax32664SequentialReadByte_familyByte_65536_58'
                                   1307 ;i                         Allocated with name '_i2cMax32664SequentialReadByte_i_131072_60'
                                   1308 ;statusByte                Allocated with name '_i2cMax32664SequentialReadByte_statusByte_65537_66'
                                   1309 ;i                         Allocated with name '_i2cMax32664SequentialReadByte_i_131073_68'
                                   1310 ;------------------------------------------------------------
                                   1311 ;	src/maxhub.c:224: int i2cMax32664SequentialReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t readArr[], uint8_t size)
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function i2cMax32664SequentialReadByte
                                   1314 ;	-----------------------------------------
      001E39                       1315 _i2cMax32664SequentialReadByte:
      001E39 E5 82            [12] 1316 	mov	a,dpl
      001E3B 90 00 B4         [24] 1317 	mov	dptr,#_i2cMax32664SequentialReadByte_familyByte_65536_58
      001E3E F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	src/maxhub.c:226: for (uint8_t i = 0; i < size; i++)
      001E3F 90 00 B0         [24] 1320 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
      001E42 E0               [24] 1321 	movx	a,@dptr
      001E43 FD               [12] 1322 	mov	r5,a
      001E44 A3               [24] 1323 	inc	dptr
      001E45 E0               [24] 1324 	movx	a,@dptr
      001E46 FE               [12] 1325 	mov	r6,a
      001E47 A3               [24] 1326 	inc	dptr
      001E48 E0               [24] 1327 	movx	a,@dptr
      001E49 FF               [12] 1328 	mov	r7,a
      001E4A 90 00 B3         [24] 1329 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
      001E4D E0               [24] 1330 	movx	a,@dptr
      001E4E FC               [12] 1331 	mov	r4,a
      001E4F 7B 00            [12] 1332 	mov	r3,#0x00
      001E51                       1333 00114$:
      001E51 C3               [12] 1334 	clr	c
      001E52 EB               [12] 1335 	mov	a,r3
      001E53 9C               [12] 1336 	subb	a,r4
      001E54 50 15            [24] 1337 	jnc	00101$
                                   1338 ;	src/maxhub.c:228: readArr[i] = 0;
      001E56 EB               [12] 1339 	mov	a,r3
      001E57 2D               [12] 1340 	add	a,r5
      001E58 F8               [12] 1341 	mov	r0,a
      001E59 E4               [12] 1342 	clr	a
      001E5A 3E               [12] 1343 	addc	a,r6
      001E5B F9               [12] 1344 	mov	r1,a
      001E5C 8F 02            [24] 1345 	mov	ar2,r7
      001E5E 88 82            [24] 1346 	mov	dpl,r0
      001E60 89 83            [24] 1347 	mov	dph,r1
      001E62 8A F0            [24] 1348 	mov	b,r2
      001E64 E4               [12] 1349 	clr	a
      001E65 12 3B 9B         [24] 1350 	lcall	__gptrput
                                   1351 ;	src/maxhub.c:226: for (uint8_t i = 0; i < size; i++)
      001E68 0B               [12] 1352 	inc	r3
      001E69 80 E6            [24] 1353 	sjmp	00114$
      001E6B                       1354 00101$:
                                   1355 ;	src/maxhub.c:231: start();
      001E6B C0 07            [24] 1356 	push	ar7
      001E6D C0 06            [24] 1357 	push	ar6
      001E6F C0 05            [24] 1358 	push	ar5
      001E71 C0 04            [24] 1359 	push	ar4
      001E73 12 04 28         [24] 1360 	lcall	_start
                                   1361 ;	src/maxhub.c:232: sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
      001E76 90 00 29         [24] 1362 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001E79 74 55            [12] 1363 	mov	a,#0x55
      001E7B F0               [24] 1364 	movx	@dptr,a
      001E7C 75 82 00         [24] 1365 	mov	dpl,#0x00
      001E7F 12 05 30         [24] 1366 	lcall	_sendControlByteNoAddr
                                   1367 ;	src/maxhub.c:233: if (checkAcknowledgement() == FAIL)
      001E82 12 04 0E         [24] 1368 	lcall	_checkAcknowledgement
      001E85 AA 82            [24] 1369 	mov	r2,dpl
      001E87 AB 83            [24] 1370 	mov	r3,dph
      001E89 D0 04            [24] 1371 	pop	ar4
      001E8B D0 05            [24] 1372 	pop	ar5
      001E8D D0 06            [24] 1373 	pop	ar6
      001E8F D0 07            [24] 1374 	pop	ar7
      001E91 BA FF 33         [24] 1375 	cjne	r2,#0xff,00103$
      001E94 BB FF 30         [24] 1376 	cjne	r3,#0xff,00103$
                                   1377 ;	src/maxhub.c:235: ERROR_LOG("%s Write address failed!", __func__);
      001E97 74 86            [12] 1378 	mov	a,#___str_11
      001E99 C0 E0            [24] 1379 	push	acc
      001E9B 74 51            [12] 1380 	mov	a,#(___str_11 >> 8)
      001E9D C0 E0            [24] 1381 	push	acc
      001E9F 74 80            [12] 1382 	mov	a,#0x80
      001EA1 C0 E0            [24] 1383 	push	acc
      001EA3 74 15            [12] 1384 	mov	a,#___str_8
      001EA5 C0 E0            [24] 1385 	push	acc
      001EA7 74 51            [12] 1386 	mov	a,#(___str_8 >> 8)
      001EA9 C0 E0            [24] 1387 	push	acc
      001EAB 12 3B B6         [24] 1388 	lcall	_printf_tiny
      001EAE E5 81            [12] 1389 	mov	a,sp
      001EB0 24 FB            [12] 1390 	add	a,#0xfb
      001EB2 F5 81            [12] 1391 	mov	sp,a
      001EB4 74 38            [12] 1392 	mov	a,#___str_2
      001EB6 C0 E0            [24] 1393 	push	acc
      001EB8 74 50            [12] 1394 	mov	a,#(___str_2 >> 8)
      001EBA C0 E0            [24] 1395 	push	acc
      001EBC 12 3B B6         [24] 1396 	lcall	_printf_tiny
      001EBF 15 81            [12] 1397 	dec	sp
      001EC1 15 81            [12] 1398 	dec	sp
                                   1399 ;	src/maxhub.c:236: return FAIL;
      001EC3 90 FF FF         [24] 1400 	mov	dptr,#0xffff
      001EC6 22               [24] 1401 	ret
      001EC7                       1402 00103$:
                                   1403 ;	src/maxhub.c:240: i2cByteWrite(familyByte);
      001EC7 90 00 B4         [24] 1404 	mov	dptr,#_i2cMax32664SequentialReadByte_familyByte_65536_58
      001ECA E0               [24] 1405 	movx	a,@dptr
      001ECB F5 82            [12] 1406 	mov	dpl,a
      001ECD C0 07            [24] 1407 	push	ar7
      001ECF C0 06            [24] 1408 	push	ar6
      001ED1 C0 05            [24] 1409 	push	ar5
      001ED3 C0 04            [24] 1410 	push	ar4
      001ED5 12 05 78         [24] 1411 	lcall	_i2cByteWrite
                                   1412 ;	src/maxhub.c:241: if (checkAcknowledgement() == FAIL)
      001ED8 12 04 0E         [24] 1413 	lcall	_checkAcknowledgement
      001EDB AA 82            [24] 1414 	mov	r2,dpl
      001EDD AB 83            [24] 1415 	mov	r3,dph
      001EDF D0 04            [24] 1416 	pop	ar4
      001EE1 D0 05            [24] 1417 	pop	ar5
      001EE3 D0 06            [24] 1418 	pop	ar6
      001EE5 D0 07            [24] 1419 	pop	ar7
      001EE7 BA FF 33         [24] 1420 	cjne	r2,#0xff,00105$
      001EEA BB FF 30         [24] 1421 	cjne	r3,#0xff,00105$
                                   1422 ;	src/maxhub.c:243: ERROR_LOG("%s Family Byte Write address failed!", __func__);
      001EED 74 86            [12] 1423 	mov	a,#___str_11
      001EEF C0 E0            [24] 1424 	push	acc
      001EF1 74 51            [12] 1425 	mov	a,#(___str_11 >> 8)
      001EF3 C0 E0            [24] 1426 	push	acc
      001EF5 74 80            [12] 1427 	mov	a,#0x80
      001EF7 C0 E0            [24] 1428 	push	acc
      001EF9 74 3D            [12] 1429 	mov	a,#___str_3
      001EFB C0 E0            [24] 1430 	push	acc
      001EFD 74 50            [12] 1431 	mov	a,#(___str_3 >> 8)
      001EFF C0 E0            [24] 1432 	push	acc
      001F01 12 3B B6         [24] 1433 	lcall	_printf_tiny
      001F04 E5 81            [12] 1434 	mov	a,sp
      001F06 24 FB            [12] 1435 	add	a,#0xfb
      001F08 F5 81            [12] 1436 	mov	sp,a
      001F0A 74 38            [12] 1437 	mov	a,#___str_2
      001F0C C0 E0            [24] 1438 	push	acc
      001F0E 74 50            [12] 1439 	mov	a,#(___str_2 >> 8)
      001F10 C0 E0            [24] 1440 	push	acc
      001F12 12 3B B6         [24] 1441 	lcall	_printf_tiny
      001F15 15 81            [12] 1442 	dec	sp
      001F17 15 81            [12] 1443 	dec	sp
                                   1444 ;	src/maxhub.c:244: return FAIL;
      001F19 90 FF FF         [24] 1445 	mov	dptr,#0xffff
      001F1C 22               [24] 1446 	ret
      001F1D                       1447 00105$:
                                   1448 ;	src/maxhub.c:248: i2cByteWrite(indexByte);
      001F1D 90 00 AF         [24] 1449 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
      001F20 E0               [24] 1450 	movx	a,@dptr
      001F21 F5 82            [12] 1451 	mov	dpl,a
      001F23 C0 07            [24] 1452 	push	ar7
      001F25 C0 06            [24] 1453 	push	ar6
      001F27 C0 05            [24] 1454 	push	ar5
      001F29 C0 04            [24] 1455 	push	ar4
      001F2B 12 05 78         [24] 1456 	lcall	_i2cByteWrite
                                   1457 ;	src/maxhub.c:249: if (checkAcknowledgement() == FAIL)
      001F2E 12 04 0E         [24] 1458 	lcall	_checkAcknowledgement
      001F31 AA 82            [24] 1459 	mov	r2,dpl
      001F33 AB 83            [24] 1460 	mov	r3,dph
      001F35 D0 04            [24] 1461 	pop	ar4
      001F37 D0 05            [24] 1462 	pop	ar5
      001F39 D0 06            [24] 1463 	pop	ar6
      001F3B D0 07            [24] 1464 	pop	ar7
      001F3D BA FF 33         [24] 1465 	cjne	r2,#0xff,00107$
      001F40 BB FF 30         [24] 1466 	cjne	r3,#0xff,00107$
                                   1467 ;	src/maxhub.c:251: ERROR_LOG("%s Index Byte Write address failed!", __func__);
      001F43 74 86            [12] 1468 	mov	a,#___str_11
      001F45 C0 E0            [24] 1469 	push	acc
      001F47 74 51            [12] 1470 	mov	a,#(___str_11 >> 8)
      001F49 C0 E0            [24] 1471 	push	acc
      001F4B 74 80            [12] 1472 	mov	a,#0x80
      001F4D C0 E0            [24] 1473 	push	acc
      001F4F 74 72            [12] 1474 	mov	a,#___str_4
      001F51 C0 E0            [24] 1475 	push	acc
      001F53 74 50            [12] 1476 	mov	a,#(___str_4 >> 8)
      001F55 C0 E0            [24] 1477 	push	acc
      001F57 12 3B B6         [24] 1478 	lcall	_printf_tiny
      001F5A E5 81            [12] 1479 	mov	a,sp
      001F5C 24 FB            [12] 1480 	add	a,#0xfb
      001F5E F5 81            [12] 1481 	mov	sp,a
      001F60 74 38            [12] 1482 	mov	a,#___str_2
      001F62 C0 E0            [24] 1483 	push	acc
      001F64 74 50            [12] 1484 	mov	a,#(___str_2 >> 8)
      001F66 C0 E0            [24] 1485 	push	acc
      001F68 12 3B B6         [24] 1486 	lcall	_printf_tiny
      001F6B 15 81            [12] 1487 	dec	sp
      001F6D 15 81            [12] 1488 	dec	sp
                                   1489 ;	src/maxhub.c:252: return FAIL;
      001F6F 90 FF FF         [24] 1490 	mov	dptr,#0xffff
      001F72 22               [24] 1491 	ret
      001F73                       1492 00107$:
                                   1493 ;	src/maxhub.c:255: stop();
      001F73 C0 07            [24] 1494 	push	ar7
      001F75 C0 06            [24] 1495 	push	ar6
      001F77 C0 05            [24] 1496 	push	ar5
      001F79 C0 04            [24] 1497 	push	ar4
      001F7B 12 04 35         [24] 1498 	lcall	_stop
                                   1499 ;	src/maxhub.c:257: hubDelayMs(CMD_DELAY);
      001F7E 75 82 14         [24] 1500 	mov	dpl,#0x14
      001F81 12 1A 05         [24] 1501 	lcall	_hubDelayMs
                                   1502 ;	src/maxhub.c:259: start();
      001F84 12 04 28         [24] 1503 	lcall	_start
                                   1504 ;	src/maxhub.c:260: sendControlByteNoAddr(READ, MAX32664_ADDRESS);
      001F87 90 00 29         [24] 1505 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      001F8A 74 55            [12] 1506 	mov	a,#0x55
      001F8C F0               [24] 1507 	movx	@dptr,a
      001F8D 75 82 01         [24] 1508 	mov	dpl,#0x01
      001F90 12 05 30         [24] 1509 	lcall	_sendControlByteNoAddr
                                   1510 ;	src/maxhub.c:261: if (checkAcknowledgement() == FAIL)
      001F93 12 04 0E         [24] 1511 	lcall	_checkAcknowledgement
      001F96 AA 82            [24] 1512 	mov	r2,dpl
      001F98 AB 83            [24] 1513 	mov	r3,dph
      001F9A D0 04            [24] 1514 	pop	ar4
      001F9C D0 05            [24] 1515 	pop	ar5
      001F9E D0 06            [24] 1516 	pop	ar6
      001FA0 D0 07            [24] 1517 	pop	ar7
      001FA2 BA FF 33         [24] 1518 	cjne	r2,#0xff,00109$
      001FA5 BB FF 30         [24] 1519 	cjne	r3,#0xff,00109$
                                   1520 ;	src/maxhub.c:263: ERROR_LOG("%s Read Byte failed!", __func__);
      001FA8 74 86            [12] 1521 	mov	a,#___str_11
      001FAA C0 E0            [24] 1522 	push	acc
      001FAC 74 51            [12] 1523 	mov	a,#(___str_11 >> 8)
      001FAE C0 E0            [24] 1524 	push	acc
      001FB0 74 80            [12] 1525 	mov	a,#0x80
      001FB2 C0 E0            [24] 1526 	push	acc
      001FB4 74 D4            [12] 1527 	mov	a,#___str_6
      001FB6 C0 E0            [24] 1528 	push	acc
      001FB8 74 50            [12] 1529 	mov	a,#(___str_6 >> 8)
      001FBA C0 E0            [24] 1530 	push	acc
      001FBC 12 3B B6         [24] 1531 	lcall	_printf_tiny
      001FBF E5 81            [12] 1532 	mov	a,sp
      001FC1 24 FB            [12] 1533 	add	a,#0xfb
      001FC3 F5 81            [12] 1534 	mov	sp,a
      001FC5 74 38            [12] 1535 	mov	a,#___str_2
      001FC7 C0 E0            [24] 1536 	push	acc
      001FC9 74 50            [12] 1537 	mov	a,#(___str_2 >> 8)
      001FCB C0 E0            [24] 1538 	push	acc
      001FCD 12 3B B6         [24] 1539 	lcall	_printf_tiny
      001FD0 15 81            [12] 1540 	dec	sp
      001FD2 15 81            [12] 1541 	dec	sp
                                   1542 ;	src/maxhub.c:264: return FAIL;
      001FD4 90 FF FF         [24] 1543 	mov	dptr,#0xffff
      001FD7 22               [24] 1544 	ret
      001FD8                       1545 00109$:
                                   1546 ;	src/maxhub.c:267: uint8_t statusByte = i2cByteRead();
      001FD8 C0 07            [24] 1547 	push	ar7
      001FDA C0 06            [24] 1548 	push	ar6
      001FDC C0 05            [24] 1549 	push	ar5
      001FDE C0 04            [24] 1550 	push	ar4
      001FE0 12 05 BB         [24] 1551 	lcall	_i2cByteRead
      001FE3 AB 82            [24] 1552 	mov	r3,dpl
                                   1553 ;	src/maxhub.c:268: sendAcknowledge();
      001FE5 C0 03            [24] 1554 	push	ar3
      001FE7 12 04 42         [24] 1555 	lcall	_sendAcknowledge
      001FEA D0 03            [24] 1556 	pop	ar3
      001FEC D0 04            [24] 1557 	pop	ar4
      001FEE D0 05            [24] 1558 	pop	ar5
      001FF0 D0 06            [24] 1559 	pop	ar6
      001FF2 D0 07            [24] 1560 	pop	ar7
                                   1561 ;	src/maxhub.c:270: if (statusByte != SFE_BIO_SUCCESS)
      001FF4 EB               [12] 1562 	mov	a,r3
      001FF5 60 3F            [24] 1563 	jz	00129$
                                   1564 ;	src/maxhub.c:272: ERROR_LOG("%s Status Byte = %d", __func__, statusByte);
      001FF7 7A 00            [12] 1565 	mov	r2,#0x00
      001FF9 C0 03            [24] 1566 	push	ar3
      001FFB C0 02            [24] 1567 	push	ar2
      001FFD C0 03            [24] 1568 	push	ar3
      001FFF C0 02            [24] 1569 	push	ar2
      002001 74 86            [12] 1570 	mov	a,#___str_11
      002003 C0 E0            [24] 1571 	push	acc
      002005 74 51            [12] 1572 	mov	a,#(___str_11 >> 8)
      002007 C0 E0            [24] 1573 	push	acc
      002009 74 80            [12] 1574 	mov	a,#0x80
      00200B C0 E0            [24] 1575 	push	acc
      00200D 74 A4            [12] 1576 	mov	a,#___str_12
      00200F C0 E0            [24] 1577 	push	acc
      002011 74 51            [12] 1578 	mov	a,#(___str_12 >> 8)
      002013 C0 E0            [24] 1579 	push	acc
      002015 12 3B B6         [24] 1580 	lcall	_printf_tiny
      002018 E5 81            [12] 1581 	mov	a,sp
      00201A 24 F9            [12] 1582 	add	a,#0xf9
      00201C F5 81            [12] 1583 	mov	sp,a
      00201E 74 38            [12] 1584 	mov	a,#___str_2
      002020 C0 E0            [24] 1585 	push	acc
      002022 74 50            [12] 1586 	mov	a,#(___str_2 >> 8)
      002024 C0 E0            [24] 1587 	push	acc
      002026 12 3B B6         [24] 1588 	lcall	_printf_tiny
      002029 15 81            [12] 1589 	dec	sp
      00202B 15 81            [12] 1590 	dec	sp
      00202D D0 02            [24] 1591 	pop	ar2
      00202F D0 03            [24] 1592 	pop	ar3
                                   1593 ;	src/maxhub.c:273: return statusByte;
      002031 8B 82            [24] 1594 	mov	dpl,r3
      002033 8A 83            [24] 1595 	mov	dph,r2
      002035 22               [24] 1596 	ret
                                   1597 ;	src/maxhub.c:276: for (uint8_t i = 0; i < size; i++)
      002036                       1598 00129$:
      002036 7B 00            [12] 1599 	mov	r3,#0x00
      002038                       1600 00117$:
      002038 C3               [12] 1601 	clr	c
      002039 EB               [12] 1602 	mov	a,r3
      00203A 9C               [12] 1603 	subb	a,r4
      00203B 50 4B            [24] 1604 	jnc	00112$
                                   1605 ;	src/maxhub.c:278: readArr[i] = i2cByteRead();
      00203D C0 04            [24] 1606 	push	ar4
      00203F EB               [12] 1607 	mov	a,r3
      002040 2D               [12] 1608 	add	a,r5
      002041 F8               [12] 1609 	mov	r0,a
      002042 E4               [12] 1610 	clr	a
      002043 3E               [12] 1611 	addc	a,r6
      002044 F9               [12] 1612 	mov	r1,a
      002045 8F 02            [24] 1613 	mov	ar2,r7
      002047 C0 07            [24] 1614 	push	ar7
      002049 C0 06            [24] 1615 	push	ar6
      00204B C0 05            [24] 1616 	push	ar5
      00204D C0 03            [24] 1617 	push	ar3
      00204F C0 02            [24] 1618 	push	ar2
      002051 C0 01            [24] 1619 	push	ar1
      002053 C0 00            [24] 1620 	push	ar0
      002055 12 05 BB         [24] 1621 	lcall	_i2cByteRead
      002058 AC 82            [24] 1622 	mov	r4,dpl
      00205A D0 00            [24] 1623 	pop	ar0
      00205C D0 01            [24] 1624 	pop	ar1
      00205E D0 02            [24] 1625 	pop	ar2
      002060 D0 03            [24] 1626 	pop	ar3
      002062 88 82            [24] 1627 	mov	dpl,r0
      002064 89 83            [24] 1628 	mov	dph,r1
      002066 8A F0            [24] 1629 	mov	b,r2
      002068 EC               [12] 1630 	mov	a,r4
      002069 12 3B 9B         [24] 1631 	lcall	__gptrput
                                   1632 ;	src/maxhub.c:279: sendAcknowledge();
      00206C C0 04            [24] 1633 	push	ar4
      00206E C0 03            [24] 1634 	push	ar3
      002070 12 04 42         [24] 1635 	lcall	_sendAcknowledge
                                   1636 ;	src/maxhub.c:280: hubDelayMs(CMD_DELAY);
      002073 75 82 14         [24] 1637 	mov	dpl,#0x14
      002076 12 1A 05         [24] 1638 	lcall	_hubDelayMs
      002079 D0 03            [24] 1639 	pop	ar3
      00207B D0 04            [24] 1640 	pop	ar4
      00207D D0 05            [24] 1641 	pop	ar5
      00207F D0 06            [24] 1642 	pop	ar6
      002081 D0 07            [24] 1643 	pop	ar7
                                   1644 ;	src/maxhub.c:276: for (uint8_t i = 0; i < size; i++)
      002083 0B               [12] 1645 	inc	r3
      002084 D0 04            [24] 1646 	pop	ar4
      002086 80 B0            [24] 1647 	sjmp	00117$
      002088                       1648 00112$:
                                   1649 ;	src/maxhub.c:294: stop();
      002088 12 04 35         [24] 1650 	lcall	_stop
                                   1651 ;	src/maxhub.c:295: return SUCCESS;
      00208B 90 00 00         [24] 1652 	mov	dptr,#0x0000
                                   1653 ;	src/maxhub.c:296: }
      00208E 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'writeRegisterMAX30101'
                                   1657 ;------------------------------------------------------------
                                   1658 ;regVal                    Allocated with name '_writeRegisterMAX30101_PARM_2'
                                   1659 ;regAddr                   Allocated with name '_writeRegisterMAX30101_regAddr_65536_70'
                                   1660 ;dataArr                   Allocated with name '_writeRegisterMAX30101_dataArr_65536_71'
                                   1661 ;------------------------------------------------------------
                                   1662 ;	src/maxhub.c:308: int writeRegisterMAX30101(uint8_t regAddr, uint8_t regVal)
                                   1663 ;	-----------------------------------------
                                   1664 ;	 function writeRegisterMAX30101
                                   1665 ;	-----------------------------------------
      00208F                       1666 _writeRegisterMAX30101:
      00208F E5 82            [12] 1667 	mov	a,dpl
      002091 90 00 B6         [24] 1668 	mov	dptr,#_writeRegisterMAX30101_regAddr_65536_70
      002094 F0               [24] 1669 	movx	@dptr,a
                                   1670 ;	src/maxhub.c:312: dataArr[0] = regAddr;
      002095 E0               [24] 1671 	movx	a,@dptr
      002096 90 00 B7         [24] 1672 	mov	dptr,#_writeRegisterMAX30101_dataArr_65536_71
      002099 F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	src/maxhub.c:313: dataArr[1] = regVal;
      00209A 90 00 B5         [24] 1675 	mov	dptr,#_writeRegisterMAX30101_PARM_2
      00209D E0               [24] 1676 	movx	a,@dptr
      00209E 90 00 B8         [24] 1677 	mov	dptr,#(_writeRegisterMAX30101_dataArr_65536_71 + 0x0001)
      0020A1 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	src/maxhub.c:315: return i2cMax32664WriteBytes(WRITE_REGISTER, WRITE_MAX30101, dataArr, 2);
      0020A2 90 00 A1         [24] 1680 	mov	dptr,#_i2cMax32664WriteBytes_PARM_2
      0020A5 74 03            [12] 1681 	mov	a,#0x03
      0020A7 F0               [24] 1682 	movx	@dptr,a
      0020A8 90 00 A2         [24] 1683 	mov	dptr,#_i2cMax32664WriteBytes_PARM_3
      0020AB 74 B7            [12] 1684 	mov	a,#_writeRegisterMAX30101_dataArr_65536_71
      0020AD F0               [24] 1685 	movx	@dptr,a
      0020AE 74 00            [12] 1686 	mov	a,#(_writeRegisterMAX30101_dataArr_65536_71 >> 8)
      0020B0 A3               [24] 1687 	inc	dptr
      0020B1 F0               [24] 1688 	movx	@dptr,a
      0020B2 E4               [12] 1689 	clr	a
      0020B3 A3               [24] 1690 	inc	dptr
      0020B4 F0               [24] 1691 	movx	@dptr,a
      0020B5 90 00 A5         [24] 1692 	mov	dptr,#_i2cMax32664WriteBytes_PARM_4
      0020B8 74 02            [12] 1693 	mov	a,#0x02
      0020BA F0               [24] 1694 	movx	@dptr,a
      0020BB 75 82 40         [24] 1695 	mov	dpl,#0x40
                                   1696 ;	src/maxhub.c:316: }
      0020BE 02 1A 31         [24] 1697 	ljmp	_i2cMax32664WriteBytes
                                   1698 ;------------------------------------------------------------
                                   1699 ;Allocation info for local variables in function 'readRegisterMAX30101'
                                   1700 ;------------------------------------------------------------
                                   1701 ;regAddr                   Allocated with name '_readRegisterMAX30101_regAddr_65536_72'
                                   1702 ;data                      Allocated with name '_readRegisterMAX30101_data_65536_73'
                                   1703 ;------------------------------------------------------------
                                   1704 ;	src/maxhub.c:326: uint8_t readRegisterMAX30101(uint8_t regAddr)
                                   1705 ;	-----------------------------------------
                                   1706 ;	 function readRegisterMAX30101
                                   1707 ;	-----------------------------------------
      0020C1                       1708 _readRegisterMAX30101:
      0020C1 E5 82            [12] 1709 	mov	a,dpl
      0020C3 90 00 B9         [24] 1710 	mov	dptr,#_readRegisterMAX30101_regAddr_65536_72
      0020C6 F0               [24] 1711 	movx	@dptr,a
                                   1712 ;	src/maxhub.c:329: uint8_t data = i2cMax32664ReadByte(READ_REGISTER, READ_MAX30101, &regAddr);
      0020C7 90 00 AA         [24] 1713 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      0020CA 74 03            [12] 1714 	mov	a,#0x03
      0020CC F0               [24] 1715 	movx	@dptr,a
      0020CD 90 00 AB         [24] 1716 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      0020D0 74 B9            [12] 1717 	mov	a,#_readRegisterMAX30101_regAddr_65536_72
      0020D2 F0               [24] 1718 	movx	@dptr,a
      0020D3 74 00            [12] 1719 	mov	a,#(_readRegisterMAX30101_regAddr_65536_72 >> 8)
      0020D5 A3               [24] 1720 	inc	dptr
      0020D6 F0               [24] 1721 	movx	@dptr,a
      0020D7 E4               [12] 1722 	clr	a
      0020D8 A3               [24] 1723 	inc	dptr
      0020D9 F0               [24] 1724 	movx	@dptr,a
      0020DA 75 82 41         [24] 1725 	mov	dpl,#0x41
                                   1726 ;	src/maxhub.c:330: return data;
                                   1727 ;	src/maxhub.c:331: }
      0020DD 02 1C 78         [24] 1728 	ljmp	_i2cMax32664ReadByte
                                   1729 ;------------------------------------------------------------
                                   1730 ;Allocation info for local variables in function 'readSensorHubMode'
                                   1731 ;------------------------------------------------------------
                                   1732 ;mode                      Allocated with name '_readSensorHubMode_mode_65536_74'
                                   1733 ;------------------------------------------------------------
                                   1734 ;	src/maxhub.c:338: uint8_t readSensorHubMode()
                                   1735 ;	-----------------------------------------
                                   1736 ;	 function readSensorHubMode
                                   1737 ;	-----------------------------------------
      0020E0                       1738 _readSensorHubMode:
                                   1739 ;	src/maxhub.c:340: int mode = i2cMax32664ReadByte(READ_DEVICE_MODE, 0x00, NULL); // family and index byte.
      0020E0 90 00 AA         [24] 1740 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      0020E3 E4               [12] 1741 	clr	a
      0020E4 F0               [24] 1742 	movx	@dptr,a
      0020E5 90 00 AB         [24] 1743 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      0020E8 F0               [24] 1744 	movx	@dptr,a
      0020E9 A3               [24] 1745 	inc	dptr
      0020EA F0               [24] 1746 	movx	@dptr,a
      0020EB A3               [24] 1747 	inc	dptr
      0020EC F0               [24] 1748 	movx	@dptr,a
      0020ED 75 82 02         [24] 1749 	mov	dpl,#0x02
      0020F0 12 1C 78         [24] 1750 	lcall	_i2cMax32664ReadByte
      0020F3 AE 82            [24] 1751 	mov	r6,dpl
      0020F5 AF 83            [24] 1752 	mov	r7,dph
                                   1753 ;	src/maxhub.c:341: if (mode == FAIL)
      0020F7 BE FF 29         [24] 1754 	cjne	r6,#0xff,00102$
      0020FA BF FF 26         [24] 1755 	cjne	r7,#0xff,00102$
                                   1756 ;	src/maxhub.c:343: ERROR_LOG("Error reading device mode!");
      0020FD C0 07            [24] 1757 	push	ar7
      0020FF C0 06            [24] 1758 	push	ar6
      002101 74 C8            [12] 1759 	mov	a,#___str_13
      002103 C0 E0            [24] 1760 	push	acc
      002105 74 51            [12] 1761 	mov	a,#(___str_13 >> 8)
      002107 C0 E0            [24] 1762 	push	acc
      002109 12 3B B6         [24] 1763 	lcall	_printf_tiny
      00210C 15 81            [12] 1764 	dec	sp
      00210E 15 81            [12] 1765 	dec	sp
      002110 74 38            [12] 1766 	mov	a,#___str_2
      002112 C0 E0            [24] 1767 	push	acc
      002114 74 50            [12] 1768 	mov	a,#(___str_2 >> 8)
      002116 C0 E0            [24] 1769 	push	acc
      002118 12 3B B6         [24] 1770 	lcall	_printf_tiny
      00211B 15 81            [12] 1771 	dec	sp
      00211D 15 81            [12] 1772 	dec	sp
      00211F D0 06            [24] 1773 	pop	ar6
      002121 D0 07            [24] 1774 	pop	ar7
      002123                       1775 00102$:
                                   1776 ;	src/maxhub.c:345: return mode;                                                      // Will return 0x00
      002123 8E 82            [24] 1777 	mov	dpl,r6
                                   1778 ;	src/maxhub.c:346: }
      002125 22               [24] 1779 	ret
                                   1780 ;------------------------------------------------------------
                                   1781 ;Allocation info for local variables in function 'setApplicationMode'
                                   1782 ;------------------------------------------------------------
                                   1783 ;i                         Allocated with name '_setApplicationMode_i_131072_77'
                                   1784 ;------------------------------------------------------------
                                   1785 ;	src/maxhub.c:352: void setApplicationMode()
                                   1786 ;	-----------------------------------------
                                   1787 ;	 function setApplicationMode
                                   1788 ;	-----------------------------------------
      002126                       1789 _setApplicationMode:
                                   1790 ;	src/maxhub.c:354: INFO_LOG("Setting to Application Mode...");
      002126 74 F3            [12] 1791 	mov	a,#___str_14
      002128 C0 E0            [24] 1792 	push	acc
      00212A 74 51            [12] 1793 	mov	a,#(___str_14 >> 8)
      00212C C0 E0            [24] 1794 	push	acc
      00212E 74 80            [12] 1795 	mov	a,#0x80
      002130 C0 E0            [24] 1796 	push	acc
      002132 12 3E BF         [24] 1797 	lcall	_printf
      002135 15 81            [12] 1798 	dec	sp
      002137 15 81            [12] 1799 	dec	sp
      002139 15 81            [12] 1800 	dec	sp
      00213B 74 38            [12] 1801 	mov	a,#___str_2
      00213D C0 E0            [24] 1802 	push	acc
      00213F 74 50            [12] 1803 	mov	a,#(___str_2 >> 8)
      002141 C0 E0            [24] 1804 	push	acc
      002143 12 3B B6         [24] 1805 	lcall	_printf_tiny
      002146 15 81            [12] 1806 	dec	sp
      002148 15 81            [12] 1807 	dec	sp
                                   1808 ;	src/maxhub.c:356: RSTN = 0;
                                   1809 ;	assignBit
      00214A C2 B4            [12] 1810 	clr	_P3_4
                                   1811 ;	src/maxhub.c:358: MFIO = 1;
                                   1812 ;	assignBit
      00214C D2 94            [12] 1813 	setb	_P1_4
                                   1814 ;	src/maxhub.c:359: hubDelayMs(10*2);
      00214E 75 82 14         [24] 1815 	mov	dpl,#0x14
      002151 12 1A 05         [24] 1816 	lcall	_hubDelayMs
                                   1817 ;	src/maxhub.c:361: RSTN = 1;
                                   1818 ;	assignBit
      002154 D2 B4            [12] 1819 	setb	_P3_4
                                   1820 ;	src/maxhub.c:362: hubDelayMs(50*2);
      002156 75 82 64         [24] 1821 	mov	dpl,#0x64
      002159 12 1A 05         [24] 1822 	lcall	_hubDelayMs
                                   1823 ;	src/maxhub.c:364: for (uint8_t i = 0; i < 5; i++)
      00215C 7F 00            [12] 1824 	mov	r7,#0x00
      00215E                       1825 00105$:
      00215E BF 05 00         [24] 1826 	cjne	r7,#0x05,00122$
      002161                       1827 00122$:
      002161 50 0D            [24] 1828 	jnc	00101$
                                   1829 ;	src/maxhub.c:366: hubDelayMs(100);
      002163 75 82 64         [24] 1830 	mov	dpl,#0x64
      002166 C0 07            [24] 1831 	push	ar7
      002168 12 1A 05         [24] 1832 	lcall	_hubDelayMs
      00216B D0 07            [24] 1833 	pop	ar7
                                   1834 ;	src/maxhub.c:364: for (uint8_t i = 0; i < 5; i++)
      00216D 0F               [12] 1835 	inc	r7
      00216E 80 EE            [24] 1836 	sjmp	00105$
      002170                       1837 00101$:
                                   1838 ;	src/maxhub.c:369: if (readSensorHubMode() != APPLICATION_MODE)
      002170 12 20 E0         [24] 1839 	lcall	_readSensorHubMode
      002173 E5 82            [12] 1840 	mov	a,dpl
      002175 60 1F            [24] 1841 	jz	00103$
                                   1842 ;	src/maxhub.c:371: ERROR_LOG("Application Mode not set!!!");
      002177 74 1F            [12] 1843 	mov	a,#___str_15
      002179 C0 E0            [24] 1844 	push	acc
      00217B 74 52            [12] 1845 	mov	a,#(___str_15 >> 8)
      00217D C0 E0            [24] 1846 	push	acc
      00217F 12 3B B6         [24] 1847 	lcall	_printf_tiny
      002182 15 81            [12] 1848 	dec	sp
      002184 15 81            [12] 1849 	dec	sp
      002186 74 38            [12] 1850 	mov	a,#___str_2
      002188 C0 E0            [24] 1851 	push	acc
      00218A 74 50            [12] 1852 	mov	a,#(___str_2 >> 8)
      00218C C0 E0            [24] 1853 	push	acc
      00218E 12 3B B6         [24] 1854 	lcall	_printf_tiny
      002191 15 81            [12] 1855 	dec	sp
      002193 15 81            [12] 1856 	dec	sp
                                   1857 ;	src/maxhub.c:372: return;
      002195 22               [24] 1858 	ret
      002196                       1859 00103$:
                                   1860 ;	src/maxhub.c:374: INFO_LOG("Application Mode Set");
      002196 74 4B            [12] 1861 	mov	a,#___str_16
      002198 C0 E0            [24] 1862 	push	acc
      00219A 74 52            [12] 1863 	mov	a,#(___str_16 >> 8)
      00219C C0 E0            [24] 1864 	push	acc
      00219E 74 80            [12] 1865 	mov	a,#0x80
      0021A0 C0 E0            [24] 1866 	push	acc
      0021A2 12 3E BF         [24] 1867 	lcall	_printf
      0021A5 15 81            [12] 1868 	dec	sp
      0021A7 15 81            [12] 1869 	dec	sp
      0021A9 15 81            [12] 1870 	dec	sp
      0021AB 74 38            [12] 1871 	mov	a,#___str_2
      0021AD C0 E0            [24] 1872 	push	acc
      0021AF 74 50            [12] 1873 	mov	a,#(___str_2 >> 8)
      0021B1 C0 E0            [24] 1874 	push	acc
      0021B3 12 3B B6         [24] 1875 	lcall	_printf_tiny
      0021B6 15 81            [12] 1876 	dec	sp
      0021B8 15 81            [12] 1877 	dec	sp
                                   1878 ;	src/maxhub.c:375: }
      0021BA 22               [24] 1879 	ret
                                   1880 ;------------------------------------------------------------
                                   1881 ;Allocation info for local variables in function 'setBootloaderMode'
                                   1882 ;------------------------------------------------------------
                                   1883 ;	src/maxhub.c:381: void setBootloaderMode()
                                   1884 ;	-----------------------------------------
                                   1885 ;	 function setBootloaderMode
                                   1886 ;	-----------------------------------------
      0021BB                       1887 _setBootloaderMode:
                                   1888 ;	src/maxhub.c:384: RSTN = 0;
                                   1889 ;	assignBit
      0021BB C2 B4            [12] 1890 	clr	_P3_4
                                   1891 ;	src/maxhub.c:386: MFIO = 0;
                                   1892 ;	assignBit
      0021BD C2 94            [12] 1893 	clr	_P1_4
                                   1894 ;	src/maxhub.c:387: hubDelayMs(10);
      0021BF 75 82 0A         [24] 1895 	mov	dpl,#0x0a
      0021C2 12 1A 05         [24] 1896 	lcall	_hubDelayMs
                                   1897 ;	src/maxhub.c:389: RSTN = 1;
                                   1898 ;	assignBit
      0021C5 D2 B4            [12] 1899 	setb	_P3_4
                                   1900 ;	src/maxhub.c:390: hubDelayMs(50);
      0021C7 75 82 32         [24] 1901 	mov	dpl,#0x32
                                   1902 ;	src/maxhub.c:391: }
      0021CA 02 1A 05         [24] 1903 	ljmp	_hubDelayMs
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'readSensorHubStatus'
                                   1906 ;------------------------------------------------------------
                                   1907 ;statusByte                Allocated with name '_readSensorHubStatus_statusByte_65536_81'
                                   1908 ;------------------------------------------------------------
                                   1909 ;	src/maxhub.c:398: uint8_t readSensorHubStatus()
                                   1910 ;	-----------------------------------------
                                   1911 ;	 function readSensorHubStatus
                                   1912 ;	-----------------------------------------
      0021CD                       1913 _readSensorHubStatus:
                                   1914 ;	src/maxhub.c:401: uint8_t statusByte = i2cMax32664ReadByte(0x00, 0x00, NULL); // family and index byte.
      0021CD 90 00 AA         [24] 1915 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      0021D0 E4               [12] 1916 	clr	a
      0021D1 F0               [24] 1917 	movx	@dptr,a
      0021D2 90 00 AB         [24] 1918 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      0021D5 F0               [24] 1919 	movx	@dptr,a
      0021D6 A3               [24] 1920 	inc	dptr
      0021D7 F0               [24] 1921 	movx	@dptr,a
      0021D8 A3               [24] 1922 	inc	dptr
      0021D9 F0               [24] 1923 	movx	@dptr,a
      0021DA 75 82 00         [24] 1924 	mov	dpl,#0x00
                                   1925 ;	src/maxhub.c:402: return statusByte;                                          // Will return 0x00
                                   1926 ;	src/maxhub.c:403: }
      0021DD 02 1C 78         [24] 1927 	ljmp	_i2cMax32664ReadByte
                                   1928 ;------------------------------------------------------------
                                   1929 ;Allocation info for local variables in function 'setOutputMode'
                                   1930 ;------------------------------------------------------------
                                   1931 ;outputType                Allocated with name '_setOutputMode_outputType_65536_82'
                                   1932 ;statusByte                Allocated with name '_setOutputMode_statusByte_65537_84'
                                   1933 ;------------------------------------------------------------
                                   1934 ;	src/maxhub.c:412: uint8_t setOutputMode(uint8_t outputType)
                                   1935 ;	-----------------------------------------
                                   1936 ;	 function setOutputMode
                                   1937 ;	-----------------------------------------
      0021E0                       1938 _setOutputMode:
      0021E0 E5 82            [12] 1939 	mov	a,dpl
      0021E2 90 00 BA         [24] 1940 	mov	dptr,#_setOutputMode_outputType_65536_82
      0021E5 F0               [24] 1941 	movx	@dptr,a
                                   1942 ;	src/maxhub.c:415: if (outputType > SENSOR_ALGO_COUNTER) // Bytes between 0x00 and 0x07
      0021E6 E0               [24] 1943 	movx	a,@dptr
      0021E7 FF               [12] 1944 	mov  r7,a
      0021E8 24 F8            [12] 1945 	add	a,#0xff - 0x07
      0021EA 50 04            [24] 1946 	jnc	00102$
                                   1947 ;	src/maxhub.c:416: return FAIL;
      0021EC 75 82 FF         [24] 1948 	mov	dpl,#0xff
      0021EF 22               [24] 1949 	ret
      0021F0                       1950 00102$:
                                   1951 ;	src/maxhub.c:420: int statusByte = i2cMax32664WriteByte(OUTPUT_MODE, SET_FORMAT, outputType);
      0021F0 90 00 A7         [24] 1952 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      0021F3 E4               [12] 1953 	clr	a
      0021F4 F0               [24] 1954 	movx	@dptr,a
      0021F5 90 00 A8         [24] 1955 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0021F8 EF               [12] 1956 	mov	a,r7
      0021F9 F0               [24] 1957 	movx	@dptr,a
      0021FA 75 82 10         [24] 1958 	mov	dpl,#0x10
      0021FD 12 1C 0A         [24] 1959 	lcall	_i2cMax32664WriteByte
      002200 AE 82            [24] 1960 	mov	r6,dpl
      002202 AF 83            [24] 1961 	mov	r7,dph
                                   1962 ;	src/maxhub.c:421: if (statusByte != SFE_BIO_SUCCESS)
      002204 EE               [12] 1963 	mov	a,r6
      002205 4F               [12] 1964 	orl	a,r7
      002206 60 3B            [24] 1965 	jz	00104$
                                   1966 ;	src/maxhub.c:423: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      002208 C0 07            [24] 1967 	push	ar7
      00220A C0 06            [24] 1968 	push	ar6
      00220C C0 06            [24] 1969 	push	ar6
      00220E C0 07            [24] 1970 	push	ar7
      002210 74 9C            [12] 1971 	mov	a,#___str_18
      002212 C0 E0            [24] 1972 	push	acc
      002214 74 52            [12] 1973 	mov	a,#(___str_18 >> 8)
      002216 C0 E0            [24] 1974 	push	acc
      002218 74 80            [12] 1975 	mov	a,#0x80
      00221A C0 E0            [24] 1976 	push	acc
      00221C 74 6D            [12] 1977 	mov	a,#___str_17
      00221E C0 E0            [24] 1978 	push	acc
      002220 74 52            [12] 1979 	mov	a,#(___str_17 >> 8)
      002222 C0 E0            [24] 1980 	push	acc
      002224 12 3B B6         [24] 1981 	lcall	_printf_tiny
      002227 E5 81            [12] 1982 	mov	a,sp
      002229 24 F9            [12] 1983 	add	a,#0xf9
      00222B F5 81            [12] 1984 	mov	sp,a
      00222D 74 38            [12] 1985 	mov	a,#___str_2
      00222F C0 E0            [24] 1986 	push	acc
      002231 74 50            [12] 1987 	mov	a,#(___str_2 >> 8)
      002233 C0 E0            [24] 1988 	push	acc
      002235 12 3B B6         [24] 1989 	lcall	_printf_tiny
      002238 15 81            [12] 1990 	dec	sp
      00223A 15 81            [12] 1991 	dec	sp
      00223C D0 06            [24] 1992 	pop	ar6
      00223E D0 07            [24] 1993 	pop	ar7
                                   1994 ;	src/maxhub.c:424: return statusByte;
      002240 8E 82            [24] 1995 	mov	dpl,r6
      002242 22               [24] 1996 	ret
      002243                       1997 00104$:
                                   1998 ;	src/maxhub.c:426: return SFE_BIO_SUCCESS;
      002243 75 82 00         [24] 1999 	mov	dpl,#0x00
                                   2000 ;	src/maxhub.c:427: }
      002246 22               [24] 2001 	ret
                                   2002 ;------------------------------------------------------------
                                   2003 ;Allocation info for local variables in function 'setFifoThreshold'
                                   2004 ;------------------------------------------------------------
                                   2005 ;intThresh                 Allocated with name '_setFifoThreshold_intThresh_65536_86'
                                   2006 ;statusByte                Allocated with name '_setFifoThreshold_statusByte_65536_87'
                                   2007 ;------------------------------------------------------------
                                   2008 ;	src/maxhub.c:438: uint8_t setFifoThreshold(uint8_t intThresh)
                                   2009 ;	-----------------------------------------
                                   2010 ;	 function setFifoThreshold
                                   2011 ;	-----------------------------------------
      002247                       2012 _setFifoThreshold:
      002247 E5 82            [12] 2013 	mov	a,dpl
      002249 90 00 BB         [24] 2014 	mov	dptr,#_setFifoThreshold_intThresh_65536_86
      00224C F0               [24] 2015 	movx	@dptr,a
                                   2016 ;	src/maxhub.c:443: uint8_t statusByte = i2cMax32664WriteByte(OUTPUT_MODE, WRITE_SET_THRESHOLD, intThresh);
      00224D E0               [24] 2017 	movx	a,@dptr
      00224E FF               [12] 2018 	mov	r7,a
      00224F 90 00 A7         [24] 2019 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      002252 74 01            [12] 2020 	mov	a,#0x01
      002254 F0               [24] 2021 	movx	@dptr,a
      002255 90 00 A8         [24] 2022 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      002258 EF               [12] 2023 	mov	a,r7
      002259 F0               [24] 2024 	movx	@dptr,a
      00225A 75 82 10         [24] 2025 	mov	dpl,#0x10
      00225D 12 1C 0A         [24] 2026 	lcall	_i2cMax32664WriteByte
                                   2027 ;	src/maxhub.c:444: if (statusByte != SFE_BIO_SUCCESS)
      002260 E5 82            [12] 2028 	mov	a,dpl
      002262 FE               [12] 2029 	mov	r6,a
      002263 60 3B            [24] 2030 	jz	00102$
                                   2031 ;	src/maxhub.c:446: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      002265 8E 05            [24] 2032 	mov	ar5,r6
      002267 7F 00            [12] 2033 	mov	r7,#0x00
      002269 C0 06            [24] 2034 	push	ar6
      00226B C0 05            [24] 2035 	push	ar5
      00226D C0 07            [24] 2036 	push	ar7
      00226F 74 AA            [12] 2037 	mov	a,#___str_19
      002271 C0 E0            [24] 2038 	push	acc
      002273 74 52            [12] 2039 	mov	a,#(___str_19 >> 8)
      002275 C0 E0            [24] 2040 	push	acc
      002277 74 80            [12] 2041 	mov	a,#0x80
      002279 C0 E0            [24] 2042 	push	acc
      00227B 74 6D            [12] 2043 	mov	a,#___str_17
      00227D C0 E0            [24] 2044 	push	acc
      00227F 74 52            [12] 2045 	mov	a,#(___str_17 >> 8)
      002281 C0 E0            [24] 2046 	push	acc
      002283 12 3B B6         [24] 2047 	lcall	_printf_tiny
      002286 E5 81            [12] 2048 	mov	a,sp
      002288 24 F9            [12] 2049 	add	a,#0xf9
      00228A F5 81            [12] 2050 	mov	sp,a
      00228C 74 38            [12] 2051 	mov	a,#___str_2
      00228E C0 E0            [24] 2052 	push	acc
      002290 74 50            [12] 2053 	mov	a,#(___str_2 >> 8)
      002292 C0 E0            [24] 2054 	push	acc
      002294 12 3B B6         [24] 2055 	lcall	_printf_tiny
      002297 15 81            [12] 2056 	dec	sp
      002299 15 81            [12] 2057 	dec	sp
      00229B D0 06            [24] 2058 	pop	ar6
                                   2059 ;	src/maxhub.c:447: return statusByte;
      00229D 8E 82            [24] 2060 	mov	dpl,r6
      00229F 22               [24] 2061 	ret
      0022A0                       2062 00102$:
                                   2063 ;	src/maxhub.c:449: return SFE_BIO_SUCCESS;
      0022A0 75 82 00         [24] 2064 	mov	dpl,#0x00
                                   2065 ;	src/maxhub.c:450: }
      0022A3 22               [24] 2066 	ret
                                   2067 ;------------------------------------------------------------
                                   2068 ;Allocation info for local variables in function 'agcAlgoControl'
                                   2069 ;------------------------------------------------------------
                                   2070 ;enable                    Allocated with name '_agcAlgoControl_enable_65536_89'
                                   2071 ;statusByte                Allocated with name '_agcAlgoControl_statusByte_65537_92'
                                   2072 ;------------------------------------------------------------
                                   2073 ;	src/maxhub.c:458: int agcAlgoControl(uint8_t enable)
                                   2074 ;	-----------------------------------------
                                   2075 ;	 function agcAlgoControl
                                   2076 ;	-----------------------------------------
      0022A4                       2077 _agcAlgoControl:
      0022A4 E5 82            [12] 2078 	mov	a,dpl
      0022A6 90 00 BC         [24] 2079 	mov	dptr,#_agcAlgoControl_enable_65536_89
      0022A9 F0               [24] 2080 	movx	@dptr,a
                                   2081 ;	src/maxhub.c:460: if (enable > 1)
      0022AA E0               [24] 2082 	movx	a,@dptr
      0022AB FF               [12] 2083 	mov  r7,a
      0022AC 24 FE            [12] 2084 	add	a,#0xff - 0x01
      0022AE 50 04            [24] 2085 	jnc	00102$
                                   2086 ;	src/maxhub.c:462: return FAIL;
      0022B0 90 FF FF         [24] 2087 	mov	dptr,#0xffff
      0022B3 22               [24] 2088 	ret
      0022B4                       2089 00102$:
                                   2090 ;	src/maxhub.c:465: int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_AGC_ALGO, enable);
      0022B4 90 00 A7         [24] 2091 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      0022B7 E4               [12] 2092 	clr	a
      0022B8 F0               [24] 2093 	movx	@dptr,a
      0022B9 90 00 A8         [24] 2094 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0022BC EF               [12] 2095 	mov	a,r7
      0022BD F0               [24] 2096 	movx	@dptr,a
      0022BE 75 82 52         [24] 2097 	mov	dpl,#0x52
      0022C1 12 1C 0A         [24] 2098 	lcall	_i2cMax32664WriteByte
      0022C4 AE 82            [24] 2099 	mov	r6,dpl
      0022C6 AF 83            [24] 2100 	mov	r7,dph
                                   2101 ;	src/maxhub.c:466: if (statusByte != SFE_BIO_SUCCESS)
      0022C8 EE               [12] 2102 	mov	a,r6
      0022C9 4F               [12] 2103 	orl	a,r7
      0022CA 60 3D            [24] 2104 	jz	00104$
                                   2105 ;	src/maxhub.c:468: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      0022CC C0 07            [24] 2106 	push	ar7
      0022CE C0 06            [24] 2107 	push	ar6
      0022D0 C0 06            [24] 2108 	push	ar6
      0022D2 C0 07            [24] 2109 	push	ar7
      0022D4 74 BB            [12] 2110 	mov	a,#___str_20
      0022D6 C0 E0            [24] 2111 	push	acc
      0022D8 74 52            [12] 2112 	mov	a,#(___str_20 >> 8)
      0022DA C0 E0            [24] 2113 	push	acc
      0022DC 74 80            [12] 2114 	mov	a,#0x80
      0022DE C0 E0            [24] 2115 	push	acc
      0022E0 74 6D            [12] 2116 	mov	a,#___str_17
      0022E2 C0 E0            [24] 2117 	push	acc
      0022E4 74 52            [12] 2118 	mov	a,#(___str_17 >> 8)
      0022E6 C0 E0            [24] 2119 	push	acc
      0022E8 12 3B B6         [24] 2120 	lcall	_printf_tiny
      0022EB E5 81            [12] 2121 	mov	a,sp
      0022ED 24 F9            [12] 2122 	add	a,#0xf9
      0022EF F5 81            [12] 2123 	mov	sp,a
      0022F1 74 38            [12] 2124 	mov	a,#___str_2
      0022F3 C0 E0            [24] 2125 	push	acc
      0022F5 74 50            [12] 2126 	mov	a,#(___str_2 >> 8)
      0022F7 C0 E0            [24] 2127 	push	acc
      0022F9 12 3B B6         [24] 2128 	lcall	_printf_tiny
      0022FC 15 81            [12] 2129 	dec	sp
      0022FE 15 81            [12] 2130 	dec	sp
      002300 D0 06            [24] 2131 	pop	ar6
      002302 D0 07            [24] 2132 	pop	ar7
                                   2133 ;	src/maxhub.c:469: return statusByte;
      002304 8E 82            [24] 2134 	mov	dpl,r6
      002306 8F 83            [24] 2135 	mov	dph,r7
      002308 22               [24] 2136 	ret
      002309                       2137 00104$:
                                   2138 ;	src/maxhub.c:471: return SFE_BIO_SUCCESS;
      002309 90 00 00         [24] 2139 	mov	dptr,#0x0000
                                   2140 ;	src/maxhub.c:472: }
      00230C 22               [24] 2141 	ret
                                   2142 ;------------------------------------------------------------
                                   2143 ;Allocation info for local variables in function 'max30101Control'
                                   2144 ;------------------------------------------------------------
                                   2145 ;senSwitch                 Allocated with name '_max30101Control_senSwitch_65536_94'
                                   2146 ;statusByte                Allocated with name '_max30101Control_statusByte_65537_97'
                                   2147 ;------------------------------------------------------------
                                   2148 ;	src/maxhub.c:481: uint8_t max30101Control(uint8_t senSwitch)
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function max30101Control
                                   2151 ;	-----------------------------------------
      00230D                       2152 _max30101Control:
      00230D E5 82            [12] 2153 	mov	a,dpl
      00230F 90 00 BD         [24] 2154 	mov	dptr,#_max30101Control_senSwitch_65536_94
      002312 F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	src/maxhub.c:483: if (senSwitch > 1)
      002313 E0               [24] 2157 	movx	a,@dptr
      002314 FF               [12] 2158 	mov  r7,a
      002315 24 FE            [12] 2159 	add	a,#0xff - 0x01
      002317 50 04            [24] 2160 	jnc	00102$
                                   2161 ;	src/maxhub.c:485: return FAIL;
      002319 75 82 FF         [24] 2162 	mov	dpl,#0xff
      00231C 22               [24] 2163 	ret
      00231D                       2164 00102$:
                                   2165 ;	src/maxhub.c:489: uint8_t statusByte = i2cMax32664WriteByte(ENABLE_SENSOR, ENABLE_MAX30101, senSwitch);
      00231D 90 00 A7         [24] 2166 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      002320 74 03            [12] 2167 	mov	a,#0x03
      002322 F0               [24] 2168 	movx	@dptr,a
      002323 90 00 A8         [24] 2169 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      002326 EF               [12] 2170 	mov	a,r7
      002327 F0               [24] 2171 	movx	@dptr,a
      002328 75 82 44         [24] 2172 	mov	dpl,#0x44
      00232B 12 1C 0A         [24] 2173 	lcall	_i2cMax32664WriteByte
                                   2174 ;	src/maxhub.c:490: if (statusByte != SFE_BIO_SUCCESS)
      00232E E5 82            [12] 2175 	mov	a,dpl
      002330 FE               [12] 2176 	mov	r6,a
      002331 60 3B            [24] 2177 	jz	00104$
                                   2178 ;	src/maxhub.c:492: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      002333 8E 05            [24] 2179 	mov	ar5,r6
      002335 7F 00            [12] 2180 	mov	r7,#0x00
      002337 C0 06            [24] 2181 	push	ar6
      002339 C0 05            [24] 2182 	push	ar5
      00233B C0 07            [24] 2183 	push	ar7
      00233D 74 CA            [12] 2184 	mov	a,#___str_21
      00233F C0 E0            [24] 2185 	push	acc
      002341 74 52            [12] 2186 	mov	a,#(___str_21 >> 8)
      002343 C0 E0            [24] 2187 	push	acc
      002345 74 80            [12] 2188 	mov	a,#0x80
      002347 C0 E0            [24] 2189 	push	acc
      002349 74 6D            [12] 2190 	mov	a,#___str_17
      00234B C0 E0            [24] 2191 	push	acc
      00234D 74 52            [12] 2192 	mov	a,#(___str_17 >> 8)
      00234F C0 E0            [24] 2193 	push	acc
      002351 12 3B B6         [24] 2194 	lcall	_printf_tiny
      002354 E5 81            [12] 2195 	mov	a,sp
      002356 24 F9            [12] 2196 	add	a,#0xf9
      002358 F5 81            [12] 2197 	mov	sp,a
      00235A 74 38            [12] 2198 	mov	a,#___str_2
      00235C C0 E0            [24] 2199 	push	acc
      00235E 74 50            [12] 2200 	mov	a,#(___str_2 >> 8)
      002360 C0 E0            [24] 2201 	push	acc
      002362 12 3B B6         [24] 2202 	lcall	_printf_tiny
      002365 15 81            [12] 2203 	dec	sp
      002367 15 81            [12] 2204 	dec	sp
      002369 D0 06            [24] 2205 	pop	ar6
                                   2206 ;	src/maxhub.c:493: return statusByte;
      00236B 8E 82            [24] 2207 	mov	dpl,r6
      00236D 22               [24] 2208 	ret
      00236E                       2209 00104$:
                                   2210 ;	src/maxhub.c:495: return SFE_BIO_SUCCESS;
      00236E 75 82 00         [24] 2211 	mov	dpl,#0x00
                                   2212 ;	src/maxhub.c:496: }
      002371 22               [24] 2213 	ret
                                   2214 ;------------------------------------------------------------
                                   2215 ;Allocation info for local variables in function 'maximFastAlgoControl'
                                   2216 ;------------------------------------------------------------
                                   2217 ;mode                      Allocated with name '_maximFastAlgoControl_mode_65536_99'
                                   2218 ;statusByte                Allocated with name '_maximFastAlgoControl_statusByte_65537_102'
                                   2219 ;------------------------------------------------------------
                                   2220 ;	src/maxhub.c:505: uint8_t maximFastAlgoControl(uint8_t mode)
                                   2221 ;	-----------------------------------------
                                   2222 ;	 function maximFastAlgoControl
                                   2223 ;	-----------------------------------------
      002372                       2224 _maximFastAlgoControl:
      002372 E5 82            [12] 2225 	mov	a,dpl
      002374 90 00 BE         [24] 2226 	mov	dptr,#_maximFastAlgoControl_mode_65536_99
      002377 F0               [24] 2227 	movx	@dptr,a
                                   2228 ;	src/maxhub.c:507: if (mode > 2)
      002378 E0               [24] 2229 	movx	a,@dptr
      002379 FF               [12] 2230 	mov  r7,a
      00237A 24 FD            [12] 2231 	add	a,#0xff - 0x02
      00237C 50 04            [24] 2232 	jnc	00102$
                                   2233 ;	src/maxhub.c:509: return FAIL;
      00237E 75 82 FF         [24] 2234 	mov	dpl,#0xff
      002381 22               [24] 2235 	ret
      002382                       2236 00102$:
                                   2237 ;	src/maxhub.c:512: int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_WHRM_ALGO, mode);
      002382 90 00 A7         [24] 2238 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      002385 74 02            [12] 2239 	mov	a,#0x02
      002387 F0               [24] 2240 	movx	@dptr,a
      002388 90 00 A8         [24] 2241 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      00238B EF               [12] 2242 	mov	a,r7
      00238C F0               [24] 2243 	movx	@dptr,a
      00238D 75 82 52         [24] 2244 	mov	dpl,#0x52
      002390 12 1C 0A         [24] 2245 	lcall	_i2cMax32664WriteByte
      002393 AE 82            [24] 2246 	mov	r6,dpl
      002395 AF 83            [24] 2247 	mov	r7,dph
                                   2248 ;	src/maxhub.c:513: if (statusByte != SFE_BIO_SUCCESS)
      002397 EE               [12] 2249 	mov	a,r6
      002398 4F               [12] 2250 	orl	a,r7
      002399 60 3B            [24] 2251 	jz	00104$
                                   2252 ;	src/maxhub.c:515: ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      00239B C0 07            [24] 2253 	push	ar7
      00239D C0 06            [24] 2254 	push	ar6
      00239F C0 06            [24] 2255 	push	ar6
      0023A1 C0 07            [24] 2256 	push	ar7
      0023A3 74 DA            [12] 2257 	mov	a,#___str_22
      0023A5 C0 E0            [24] 2258 	push	acc
      0023A7 74 52            [12] 2259 	mov	a,#(___str_22 >> 8)
      0023A9 C0 E0            [24] 2260 	push	acc
      0023AB 74 80            [12] 2261 	mov	a,#0x80
      0023AD C0 E0            [24] 2262 	push	acc
      0023AF 74 6D            [12] 2263 	mov	a,#___str_17
      0023B1 C0 E0            [24] 2264 	push	acc
      0023B3 74 52            [12] 2265 	mov	a,#(___str_17 >> 8)
      0023B5 C0 E0            [24] 2266 	push	acc
      0023B7 12 3B B6         [24] 2267 	lcall	_printf_tiny
      0023BA E5 81            [12] 2268 	mov	a,sp
      0023BC 24 F9            [12] 2269 	add	a,#0xf9
      0023BE F5 81            [12] 2270 	mov	sp,a
      0023C0 74 38            [12] 2271 	mov	a,#___str_2
      0023C2 C0 E0            [24] 2272 	push	acc
      0023C4 74 50            [12] 2273 	mov	a,#(___str_2 >> 8)
      0023C6 C0 E0            [24] 2274 	push	acc
      0023C8 12 3B B6         [24] 2275 	lcall	_printf_tiny
      0023CB 15 81            [12] 2276 	dec	sp
      0023CD 15 81            [12] 2277 	dec	sp
      0023CF D0 06            [24] 2278 	pop	ar6
      0023D1 D0 07            [24] 2279 	pop	ar7
                                   2280 ;	src/maxhub.c:516: return statusByte;
      0023D3 8E 82            [24] 2281 	mov	dpl,r6
      0023D5 22               [24] 2282 	ret
      0023D6                       2283 00104$:
                                   2284 ;	src/maxhub.c:518: return SFE_BIO_SUCCESS;
      0023D6 75 82 00         [24] 2285 	mov	dpl,#0x00
                                   2286 ;	src/maxhub.c:519: }
      0023D9 22               [24] 2287 	ret
                                   2288 ;------------------------------------------------------------
                                   2289 ;Allocation info for local variables in function 'configBpm'
                                   2290 ;------------------------------------------------------------
                                   2291 ;mode                      Allocated with name '_configBpm_mode_65536_104'
                                   2292 ;statusByte                Allocated with name '_configBpm_statusByte_65536_105'
                                   2293 ;------------------------------------------------------------
                                   2294 ;	src/maxhub.c:526: void configBpm(uint8_t mode)
                                   2295 ;	-----------------------------------------
                                   2296 ;	 function configBpm
                                   2297 ;	-----------------------------------------
      0023DA                       2298 _configBpm:
      0023DA E5 82            [12] 2299 	mov	a,dpl
      0023DC 90 00 BF         [24] 2300 	mov	dptr,#_configBpm_mode_65536_104
      0023DF F0               [24] 2301 	movx	@dptr,a
                                   2302 ;	src/maxhub.c:530: statusByte = setOutputMode(ALGO_DATA); // Just the data
      0023E0 75 82 02         [24] 2303 	mov	dpl,#0x02
      0023E3 12 21 E0         [24] 2304 	lcall	_setOutputMode
      0023E6 AF 82            [24] 2305 	mov	r7,dpl
                                   2306 ;	src/maxhub.c:531: INFO_LOG("setOutputMode Status = %d", statusByte);
      0023E8 7E 00            [12] 2307 	mov	r6,#0x00
      0023EA C0 07            [24] 2308 	push	ar7
      0023EC C0 06            [24] 2309 	push	ar6
      0023EE 74 EF            [12] 2310 	mov	a,#___str_23
      0023F0 C0 E0            [24] 2311 	push	acc
      0023F2 74 52            [12] 2312 	mov	a,#(___str_23 >> 8)
      0023F4 C0 E0            [24] 2313 	push	acc
      0023F6 74 80            [12] 2314 	mov	a,#0x80
      0023F8 C0 E0            [24] 2315 	push	acc
      0023FA 12 3E BF         [24] 2316 	lcall	_printf
      0023FD E5 81            [12] 2317 	mov	a,sp
      0023FF 24 FB            [12] 2318 	add	a,#0xfb
      002401 F5 81            [12] 2319 	mov	sp,a
      002403 74 38            [12] 2320 	mov	a,#___str_2
      002405 C0 E0            [24] 2321 	push	acc
      002407 74 50            [12] 2322 	mov	a,#(___str_2 >> 8)
      002409 C0 E0            [24] 2323 	push	acc
      00240B 12 3B B6         [24] 2324 	lcall	_printf_tiny
      00240E 15 81            [12] 2325 	dec	sp
      002410 15 81            [12] 2326 	dec	sp
                                   2327 ;	src/maxhub.c:537: statusByte = setOutputMode(ALGO_DATA); // Just the data
      002412 75 82 02         [24] 2328 	mov	dpl,#0x02
      002415 12 21 E0         [24] 2329 	lcall	_setOutputMode
      002418 AF 82            [24] 2330 	mov	r7,dpl
                                   2331 ;	src/maxhub.c:538: INFO_LOG("setOutputMode Status 2 = %d", statusByte);
      00241A 7E 00            [12] 2332 	mov	r6,#0x00
      00241C C0 07            [24] 2333 	push	ar7
      00241E C0 06            [24] 2334 	push	ar6
      002420 74 16            [12] 2335 	mov	a,#___str_24
      002422 C0 E0            [24] 2336 	push	acc
      002424 74 53            [12] 2337 	mov	a,#(___str_24 >> 8)
      002426 C0 E0            [24] 2338 	push	acc
      002428 74 80            [12] 2339 	mov	a,#0x80
      00242A C0 E0            [24] 2340 	push	acc
      00242C 12 3E BF         [24] 2341 	lcall	_printf
      00242F E5 81            [12] 2342 	mov	a,sp
      002431 24 FB            [12] 2343 	add	a,#0xfb
      002433 F5 81            [12] 2344 	mov	sp,a
      002435 74 38            [12] 2345 	mov	a,#___str_2
      002437 C0 E0            [24] 2346 	push	acc
      002439 74 50            [12] 2347 	mov	a,#(___str_2 >> 8)
      00243B C0 E0            [24] 2348 	push	acc
      00243D 12 3B B6         [24] 2349 	lcall	_printf_tiny
      002440 15 81            [12] 2350 	dec	sp
      002442 15 81            [12] 2351 	dec	sp
                                   2352 ;	src/maxhub.c:544: statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
      002444 75 82 01         [24] 2353 	mov	dpl,#0x01
      002447 12 22 47         [24] 2354 	lcall	_setFifoThreshold
      00244A AF 82            [24] 2355 	mov	r7,dpl
                                   2356 ;	src/maxhub.c:545: INFO_LOG("setFifoThreshold Status = %d", statusByte);
      00244C 7E 00            [12] 2357 	mov	r6,#0x00
      00244E C0 07            [24] 2358 	push	ar7
      002450 C0 06            [24] 2359 	push	ar6
      002452 74 3F            [12] 2360 	mov	a,#___str_25
      002454 C0 E0            [24] 2361 	push	acc
      002456 74 53            [12] 2362 	mov	a,#(___str_25 >> 8)
      002458 C0 E0            [24] 2363 	push	acc
      00245A 74 80            [12] 2364 	mov	a,#0x80
      00245C C0 E0            [24] 2365 	push	acc
      00245E 12 3E BF         [24] 2366 	lcall	_printf
      002461 E5 81            [12] 2367 	mov	a,sp
      002463 24 FB            [12] 2368 	add	a,#0xfb
      002465 F5 81            [12] 2369 	mov	sp,a
      002467 74 38            [12] 2370 	mov	a,#___str_2
      002469 C0 E0            [24] 2371 	push	acc
      00246B 74 50            [12] 2372 	mov	a,#(___str_2 >> 8)
      00246D C0 E0            [24] 2373 	push	acc
      00246F 12 3B B6         [24] 2374 	lcall	_printf_tiny
      002472 15 81            [12] 2375 	dec	sp
      002474 15 81            [12] 2376 	dec	sp
                                   2377 ;	src/maxhub.c:551: statusByte = agcAlgoControl(ENABLE);
      002476 75 82 01         [24] 2378 	mov	dpl,#0x01
      002479 12 22 A4         [24] 2379 	lcall	_agcAlgoControl
      00247C AE 82            [24] 2380 	mov	r6,dpl
                                   2381 ;	src/maxhub.c:552: INFO_LOG("agcAlgoControl Status = %d", statusByte);
      00247E 7F 00            [12] 2382 	mov	r7,#0x00
      002480 C0 06            [24] 2383 	push	ar6
      002482 C0 07            [24] 2384 	push	ar7
      002484 74 69            [12] 2385 	mov	a,#___str_26
      002486 C0 E0            [24] 2386 	push	acc
      002488 74 53            [12] 2387 	mov	a,#(___str_26 >> 8)
      00248A C0 E0            [24] 2388 	push	acc
      00248C 74 80            [12] 2389 	mov	a,#0x80
      00248E C0 E0            [24] 2390 	push	acc
      002490 12 3E BF         [24] 2391 	lcall	_printf
      002493 E5 81            [12] 2392 	mov	a,sp
      002495 24 FB            [12] 2393 	add	a,#0xfb
      002497 F5 81            [12] 2394 	mov	sp,a
      002499 74 38            [12] 2395 	mov	a,#___str_2
      00249B C0 E0            [24] 2396 	push	acc
      00249D 74 50            [12] 2397 	mov	a,#(___str_2 >> 8)
      00249F C0 E0            [24] 2398 	push	acc
      0024A1 12 3B B6         [24] 2399 	lcall	_printf_tiny
      0024A4 15 81            [12] 2400 	dec	sp
      0024A6 15 81            [12] 2401 	dec	sp
                                   2402 ;	src/maxhub.c:558: statusByte = max30101Control(ENABLE);
      0024A8 75 82 01         [24] 2403 	mov	dpl,#0x01
      0024AB 12 23 0D         [24] 2404 	lcall	_max30101Control
      0024AE AF 82            [24] 2405 	mov	r7,dpl
                                   2406 ;	src/maxhub.c:559: INFO_LOG("max30101Control Status = %d", statusByte);
      0024B0 7E 00            [12] 2407 	mov	r6,#0x00
      0024B2 C0 07            [24] 2408 	push	ar7
      0024B4 C0 06            [24] 2409 	push	ar6
      0024B6 74 91            [12] 2410 	mov	a,#___str_27
      0024B8 C0 E0            [24] 2411 	push	acc
      0024BA 74 53            [12] 2412 	mov	a,#(___str_27 >> 8)
      0024BC C0 E0            [24] 2413 	push	acc
      0024BE 74 80            [12] 2414 	mov	a,#0x80
      0024C0 C0 E0            [24] 2415 	push	acc
      0024C2 12 3E BF         [24] 2416 	lcall	_printf
      0024C5 E5 81            [12] 2417 	mov	a,sp
      0024C7 24 FB            [12] 2418 	add	a,#0xfb
      0024C9 F5 81            [12] 2419 	mov	sp,a
      0024CB 74 38            [12] 2420 	mov	a,#___str_2
      0024CD C0 E0            [24] 2421 	push	acc
      0024CF 74 50            [12] 2422 	mov	a,#(___str_2 >> 8)
      0024D1 C0 E0            [24] 2423 	push	acc
      0024D3 12 3B B6         [24] 2424 	lcall	_printf_tiny
      0024D6 15 81            [12] 2425 	dec	sp
      0024D8 15 81            [12] 2426 	dec	sp
                                   2427 ;	src/maxhub.c:565: hubDelayMs(100);
      0024DA 75 82 64         [24] 2428 	mov	dpl,#0x64
      0024DD 12 1A 05         [24] 2429 	lcall	_hubDelayMs
                                   2430 ;	src/maxhub.c:567: statusByte = maximFastAlgoControl(mode);
      0024E0 90 00 BF         [24] 2431 	mov	dptr,#_configBpm_mode_65536_104
      0024E3 E0               [24] 2432 	movx	a,@dptr
      0024E4 F5 82            [12] 2433 	mov	dpl,a
      0024E6 12 23 72         [24] 2434 	lcall	_maximFastAlgoControl
      0024E9 AF 82            [24] 2435 	mov	r7,dpl
                                   2436 ;	src/maxhub.c:568: INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
      0024EB 7E 00            [12] 2437 	mov	r6,#0x00
      0024ED C0 07            [24] 2438 	push	ar7
      0024EF C0 06            [24] 2439 	push	ar6
      0024F1 74 BA            [12] 2440 	mov	a,#___str_28
      0024F3 C0 E0            [24] 2441 	push	acc
      0024F5 74 53            [12] 2442 	mov	a,#(___str_28 >> 8)
      0024F7 C0 E0            [24] 2443 	push	acc
      0024F9 74 80            [12] 2444 	mov	a,#0x80
      0024FB C0 E0            [24] 2445 	push	acc
      0024FD 12 3E BF         [24] 2446 	lcall	_printf
      002500 E5 81            [12] 2447 	mov	a,sp
      002502 24 FB            [12] 2448 	add	a,#0xfb
      002504 F5 81            [12] 2449 	mov	sp,a
      002506 74 38            [12] 2450 	mov	a,#___str_2
      002508 C0 E0            [24] 2451 	push	acc
      00250A 74 50            [12] 2452 	mov	a,#(___str_2 >> 8)
      00250C C0 E0            [24] 2453 	push	acc
      00250E 12 3B B6         [24] 2454 	lcall	_printf_tiny
      002511 15 81            [12] 2455 	dec	sp
      002513 15 81            [12] 2456 	dec	sp
                                   2457 ;	src/maxhub.c:574: hubDelayMs(20);
      002515 75 82 14         [24] 2458 	mov	dpl,#0x14
      002518 12 1A 05         [24] 2459 	lcall	_hubDelayMs
                                   2460 ;	src/maxhub.c:575: INFO_LOG("%s: configuration success", __func__);
      00251B 74 0F            [12] 2461 	mov	a,#___str_30
      00251D C0 E0            [24] 2462 	push	acc
      00251F 74 54            [12] 2463 	mov	a,#(___str_30 >> 8)
      002521 C0 E0            [24] 2464 	push	acc
      002523 74 80            [12] 2465 	mov	a,#0x80
      002525 C0 E0            [24] 2466 	push	acc
      002527 74 E8            [12] 2467 	mov	a,#___str_29
      002529 C0 E0            [24] 2468 	push	acc
      00252B 74 53            [12] 2469 	mov	a,#(___str_29 >> 8)
      00252D C0 E0            [24] 2470 	push	acc
      00252F 74 80            [12] 2471 	mov	a,#0x80
      002531 C0 E0            [24] 2472 	push	acc
      002533 12 3E BF         [24] 2473 	lcall	_printf
      002536 E5 81            [12] 2474 	mov	a,sp
      002538 24 FA            [12] 2475 	add	a,#0xfa
      00253A F5 81            [12] 2476 	mov	sp,a
      00253C 74 38            [12] 2477 	mov	a,#___str_2
      00253E C0 E0            [24] 2478 	push	acc
      002540 74 50            [12] 2479 	mov	a,#(___str_2 >> 8)
      002542 C0 E0            [24] 2480 	push	acc
      002544 12 3B B6         [24] 2481 	lcall	_printf_tiny
      002547 15 81            [12] 2482 	dec	sp
      002549 15 81            [12] 2483 	dec	sp
                                   2484 ;	src/maxhub.c:576: }
      00254B 22               [24] 2485 	ret
                                   2486 ;------------------------------------------------------------
                                   2487 ;Allocation info for local variables in function 'configSensorBpm'
                                   2488 ;------------------------------------------------------------
                                   2489 ;mode                      Allocated with name '_configSensorBpm_mode_65536_112'
                                   2490 ;statusByte                Allocated with name '_configSensorBpm_statusByte_65536_113'
                                   2491 ;------------------------------------------------------------
                                   2492 ;	src/maxhub.c:583: void configSensorBpm(uint8_t mode)
                                   2493 ;	-----------------------------------------
                                   2494 ;	 function configSensorBpm
                                   2495 ;	-----------------------------------------
      00254C                       2496 _configSensorBpm:
      00254C E5 82            [12] 2497 	mov	a,dpl
      00254E 90 00 C0         [24] 2498 	mov	dptr,#_configSensorBpm_mode_65536_112
      002551 F0               [24] 2499 	movx	@dptr,a
                                   2500 ;	src/maxhub.c:587: statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
      002552 75 82 03         [24] 2501 	mov	dpl,#0x03
      002555 12 21 E0         [24] 2502 	lcall	_setOutputMode
      002558 AF 82            [24] 2503 	mov	r7,dpl
      00255A 7E 00            [12] 2504 	mov	r6,#0x00
                                   2505 ;	src/maxhub.c:588: INFO_LOG("setOutputMode Status = %d", statusByte);
      00255C C0 07            [24] 2506 	push	ar7
      00255E C0 06            [24] 2507 	push	ar6
      002560 74 EF            [12] 2508 	mov	a,#___str_23
      002562 C0 E0            [24] 2509 	push	acc
      002564 74 52            [12] 2510 	mov	a,#(___str_23 >> 8)
      002566 C0 E0            [24] 2511 	push	acc
      002568 74 80            [12] 2512 	mov	a,#0x80
      00256A C0 E0            [24] 2513 	push	acc
      00256C 12 3E BF         [24] 2514 	lcall	_printf
      00256F E5 81            [12] 2515 	mov	a,sp
      002571 24 FB            [12] 2516 	add	a,#0xfb
      002573 F5 81            [12] 2517 	mov	sp,a
      002575 74 38            [12] 2518 	mov	a,#___str_2
      002577 C0 E0            [24] 2519 	push	acc
      002579 74 50            [12] 2520 	mov	a,#(___str_2 >> 8)
      00257B C0 E0            [24] 2521 	push	acc
      00257D 12 3B B6         [24] 2522 	lcall	_printf_tiny
      002580 15 81            [12] 2523 	dec	sp
      002582 15 81            [12] 2524 	dec	sp
                                   2525 ;	src/maxhub.c:594: statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
      002584 75 82 03         [24] 2526 	mov	dpl,#0x03
      002587 12 21 E0         [24] 2527 	lcall	_setOutputMode
      00258A AF 82            [24] 2528 	mov	r7,dpl
      00258C 7E 00            [12] 2529 	mov	r6,#0x00
                                   2530 ;	src/maxhub.c:595: INFO_LOG("setOutputMode Status = %d", statusByte);
      00258E C0 07            [24] 2531 	push	ar7
      002590 C0 06            [24] 2532 	push	ar6
      002592 74 EF            [12] 2533 	mov	a,#___str_23
      002594 C0 E0            [24] 2534 	push	acc
      002596 74 52            [12] 2535 	mov	a,#(___str_23 >> 8)
      002598 C0 E0            [24] 2536 	push	acc
      00259A 74 80            [12] 2537 	mov	a,#0x80
      00259C C0 E0            [24] 2538 	push	acc
      00259E 12 3E BF         [24] 2539 	lcall	_printf
      0025A1 E5 81            [12] 2540 	mov	a,sp
      0025A3 24 FB            [12] 2541 	add	a,#0xfb
      0025A5 F5 81            [12] 2542 	mov	sp,a
      0025A7 74 38            [12] 2543 	mov	a,#___str_2
      0025A9 C0 E0            [24] 2544 	push	acc
      0025AB 74 50            [12] 2545 	mov	a,#(___str_2 >> 8)
      0025AD C0 E0            [24] 2546 	push	acc
      0025AF 12 3B B6         [24] 2547 	lcall	_printf_tiny
      0025B2 15 81            [12] 2548 	dec	sp
      0025B4 15 81            [12] 2549 	dec	sp
                                   2550 ;	src/maxhub.c:602: statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
      0025B6 75 82 01         [24] 2551 	mov	dpl,#0x01
      0025B9 12 22 47         [24] 2552 	lcall	_setFifoThreshold
      0025BC AF 82            [24] 2553 	mov	r7,dpl
      0025BE 7E 00            [12] 2554 	mov	r6,#0x00
                                   2555 ;	src/maxhub.c:603: INFO_LOG("setFifoThreshold Status = %d", statusByte);
      0025C0 C0 07            [24] 2556 	push	ar7
      0025C2 C0 06            [24] 2557 	push	ar6
      0025C4 74 3F            [12] 2558 	mov	a,#___str_25
      0025C6 C0 E0            [24] 2559 	push	acc
      0025C8 74 53            [12] 2560 	mov	a,#(___str_25 >> 8)
      0025CA C0 E0            [24] 2561 	push	acc
      0025CC 74 80            [12] 2562 	mov	a,#0x80
      0025CE C0 E0            [24] 2563 	push	acc
      0025D0 12 3E BF         [24] 2564 	lcall	_printf
      0025D3 E5 81            [12] 2565 	mov	a,sp
      0025D5 24 FB            [12] 2566 	add	a,#0xfb
      0025D7 F5 81            [12] 2567 	mov	sp,a
      0025D9 74 38            [12] 2568 	mov	a,#___str_2
      0025DB C0 E0            [24] 2569 	push	acc
      0025DD 74 50            [12] 2570 	mov	a,#(___str_2 >> 8)
      0025DF C0 E0            [24] 2571 	push	acc
      0025E1 12 3B B6         [24] 2572 	lcall	_printf_tiny
      0025E4 15 81            [12] 2573 	dec	sp
      0025E6 15 81            [12] 2574 	dec	sp
                                   2575 ;	src/maxhub.c:610: statusByte = agcAlgoControl(ENABLE);
      0025E8 75 82 01         [24] 2576 	mov	dpl,#0x01
      0025EB 12 22 A4         [24] 2577 	lcall	_agcAlgoControl
      0025EE AE 82            [24] 2578 	mov	r6,dpl
      0025F0 AF 83            [24] 2579 	mov	r7,dph
                                   2580 ;	src/maxhub.c:611: INFO_LOG("agcAlgoControl Status = %d", statusByte);
      0025F2 C0 06            [24] 2581 	push	ar6
      0025F4 C0 07            [24] 2582 	push	ar7
      0025F6 74 69            [12] 2583 	mov	a,#___str_26
      0025F8 C0 E0            [24] 2584 	push	acc
      0025FA 74 53            [12] 2585 	mov	a,#(___str_26 >> 8)
      0025FC C0 E0            [24] 2586 	push	acc
      0025FE 74 80            [12] 2587 	mov	a,#0x80
      002600 C0 E0            [24] 2588 	push	acc
      002602 12 3E BF         [24] 2589 	lcall	_printf
      002605 E5 81            [12] 2590 	mov	a,sp
      002607 24 FB            [12] 2591 	add	a,#0xfb
      002609 F5 81            [12] 2592 	mov	sp,a
      00260B 74 38            [12] 2593 	mov	a,#___str_2
      00260D C0 E0            [24] 2594 	push	acc
      00260F 74 50            [12] 2595 	mov	a,#(___str_2 >> 8)
      002611 C0 E0            [24] 2596 	push	acc
      002613 12 3B B6         [24] 2597 	lcall	_printf_tiny
      002616 15 81            [12] 2598 	dec	sp
      002618 15 81            [12] 2599 	dec	sp
                                   2600 ;	src/maxhub.c:617: statusByte = max30101Control(ENABLE);
      00261A 75 82 01         [24] 2601 	mov	dpl,#0x01
      00261D 12 23 0D         [24] 2602 	lcall	_max30101Control
      002620 AF 82            [24] 2603 	mov	r7,dpl
      002622 7E 00            [12] 2604 	mov	r6,#0x00
                                   2605 ;	src/maxhub.c:618: INFO_LOG("max30101Control Status = %d", statusByte);
      002624 C0 07            [24] 2606 	push	ar7
      002626 C0 06            [24] 2607 	push	ar6
      002628 74 91            [12] 2608 	mov	a,#___str_27
      00262A C0 E0            [24] 2609 	push	acc
      00262C 74 53            [12] 2610 	mov	a,#(___str_27 >> 8)
      00262E C0 E0            [24] 2611 	push	acc
      002630 74 80            [12] 2612 	mov	a,#0x80
      002632 C0 E0            [24] 2613 	push	acc
      002634 12 3E BF         [24] 2614 	lcall	_printf
      002637 E5 81            [12] 2615 	mov	a,sp
      002639 24 FB            [12] 2616 	add	a,#0xfb
      00263B F5 81            [12] 2617 	mov	sp,a
      00263D 74 38            [12] 2618 	mov	a,#___str_2
      00263F C0 E0            [24] 2619 	push	acc
      002641 74 50            [12] 2620 	mov	a,#(___str_2 >> 8)
      002643 C0 E0            [24] 2621 	push	acc
      002645 12 3B B6         [24] 2622 	lcall	_printf_tiny
      002648 15 81            [12] 2623 	dec	sp
      00264A 15 81            [12] 2624 	dec	sp
                                   2625 ;	src/maxhub.c:624: statusByte = maximFastAlgoControl(mode);
      00264C 90 00 C0         [24] 2626 	mov	dptr,#_configSensorBpm_mode_65536_112
      00264F E0               [24] 2627 	movx	a,@dptr
      002650 F5 82            [12] 2628 	mov	dpl,a
      002652 12 23 72         [24] 2629 	lcall	_maximFastAlgoControl
      002655 AF 82            [24] 2630 	mov	r7,dpl
      002657 7E 00            [12] 2631 	mov	r6,#0x00
                                   2632 ;	src/maxhub.c:625: INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
      002659 C0 07            [24] 2633 	push	ar7
      00265B C0 06            [24] 2634 	push	ar6
      00265D 74 BA            [12] 2635 	mov	a,#___str_28
      00265F C0 E0            [24] 2636 	push	acc
      002661 74 53            [12] 2637 	mov	a,#(___str_28 >> 8)
      002663 C0 E0            [24] 2638 	push	acc
      002665 74 80            [12] 2639 	mov	a,#0x80
      002667 C0 E0            [24] 2640 	push	acc
      002669 12 3E BF         [24] 2641 	lcall	_printf
      00266C E5 81            [12] 2642 	mov	a,sp
      00266E 24 FB            [12] 2643 	add	a,#0xfb
      002670 F5 81            [12] 2644 	mov	sp,a
      002672 74 38            [12] 2645 	mov	a,#___str_2
      002674 C0 E0            [24] 2646 	push	acc
      002676 74 50            [12] 2647 	mov	a,#(___str_2 >> 8)
      002678 C0 E0            [24] 2648 	push	acc
      00267A 12 3B B6         [24] 2649 	lcall	_printf_tiny
      00267D 15 81            [12] 2650 	dec	sp
      00267F 15 81            [12] 2651 	dec	sp
                                   2652 ;	src/maxhub.c:631: hubDelayMs(2000);
      002681 75 82 D0         [24] 2653 	mov	dpl,#0xd0
      002684 12 1A 05         [24] 2654 	lcall	_hubDelayMs
                                   2655 ;	src/maxhub.c:632: INFO_LOG("%s: configuration success", __func__);
      002687 74 19            [12] 2656 	mov	a,#___str_31
      002689 C0 E0            [24] 2657 	push	acc
      00268B 74 54            [12] 2658 	mov	a,#(___str_31 >> 8)
      00268D C0 E0            [24] 2659 	push	acc
      00268F 74 80            [12] 2660 	mov	a,#0x80
      002691 C0 E0            [24] 2661 	push	acc
      002693 74 E8            [12] 2662 	mov	a,#___str_29
      002695 C0 E0            [24] 2663 	push	acc
      002697 74 53            [12] 2664 	mov	a,#(___str_29 >> 8)
      002699 C0 E0            [24] 2665 	push	acc
      00269B 74 80            [12] 2666 	mov	a,#0x80
      00269D C0 E0            [24] 2667 	push	acc
      00269F 12 3E BF         [24] 2668 	lcall	_printf
      0026A2 E5 81            [12] 2669 	mov	a,sp
      0026A4 24 FA            [12] 2670 	add	a,#0xfa
      0026A6 F5 81            [12] 2671 	mov	sp,a
      0026A8 74 38            [12] 2672 	mov	a,#___str_2
      0026AA C0 E0            [24] 2673 	push	acc
      0026AC 74 50            [12] 2674 	mov	a,#(___str_2 >> 8)
      0026AE C0 E0            [24] 2675 	push	acc
      0026B0 12 3B B6         [24] 2676 	lcall	_printf_tiny
      0026B3 15 81            [12] 2677 	dec	sp
      0026B5 15 81            [12] 2678 	dec	sp
                                   2679 ;	src/maxhub.c:633: }
      0026B7 22               [24] 2680 	ret
                                   2681 ;------------------------------------------------------------
                                   2682 ;Allocation info for local variables in function 'numSamplesOutFifo'
                                   2683 ;------------------------------------------------------------
                                   2684 ;sampAvail                 Allocated with name '_numSamplesOutFifo_sampAvail_65536_120'
                                   2685 ;------------------------------------------------------------
                                   2686 ;	src/maxhub.c:641: uint8_t numSamplesOutFifo()
                                   2687 ;	-----------------------------------------
                                   2688 ;	 function numSamplesOutFifo
                                   2689 ;	-----------------------------------------
      0026B8                       2690 _numSamplesOutFifo:
                                   2691 ;	src/maxhub.c:643: int sampAvail = i2cMax32664ReadByte(READ_DATA_OUTPUT, NUM_SAMPLES, NULL);
      0026B8 90 00 AA         [24] 2692 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      0026BB E4               [12] 2693 	clr	a
      0026BC F0               [24] 2694 	movx	@dptr,a
      0026BD 90 00 AB         [24] 2695 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      0026C0 F0               [24] 2696 	movx	@dptr,a
      0026C1 A3               [24] 2697 	inc	dptr
      0026C2 F0               [24] 2698 	movx	@dptr,a
      0026C3 A3               [24] 2699 	inc	dptr
      0026C4 F0               [24] 2700 	movx	@dptr,a
      0026C5 75 82 12         [24] 2701 	mov	dpl,#0x12
      0026C8 12 1C 78         [24] 2702 	lcall	_i2cMax32664ReadByte
      0026CB AE 82            [24] 2703 	mov	r6,dpl
      0026CD AF 83            [24] 2704 	mov	r7,dph
                                   2705 ;	src/maxhub.c:644: if (sampAvail == FAIL)
      0026CF BE FF 25         [24] 2706 	cjne	r6,#0xff,00102$
      0026D2 BF FF 22         [24] 2707 	cjne	r7,#0xff,00102$
                                   2708 ;	src/maxhub.c:646: ERROR_LOG("Error reading numSamplesOutFifo");
      0026D5 74 29            [12] 2709 	mov	a,#___str_32
      0026D7 C0 E0            [24] 2710 	push	acc
      0026D9 74 54            [12] 2711 	mov	a,#(___str_32 >> 8)
      0026DB C0 E0            [24] 2712 	push	acc
      0026DD 12 3B B6         [24] 2713 	lcall	_printf_tiny
      0026E0 15 81            [12] 2714 	dec	sp
      0026E2 15 81            [12] 2715 	dec	sp
      0026E4 74 38            [12] 2716 	mov	a,#___str_2
      0026E6 C0 E0            [24] 2717 	push	acc
      0026E8 74 50            [12] 2718 	mov	a,#(___str_2 >> 8)
      0026EA C0 E0            [24] 2719 	push	acc
      0026EC 12 3B B6         [24] 2720 	lcall	_printf_tiny
      0026EF 15 81            [12] 2721 	dec	sp
      0026F1 15 81            [12] 2722 	dec	sp
                                   2723 ;	src/maxhub.c:647: return 0;
      0026F3 75 82 00         [24] 2724 	mov	dpl,#0x00
      0026F6 22               [24] 2725 	ret
      0026F7                       2726 00102$:
                                   2727 ;	src/maxhub.c:649: return sampAvail;
      0026F7 8E 82            [24] 2728 	mov	dpl,r6
                                   2729 ;	src/maxhub.c:650: }
      0026F9 22               [24] 2730 	ret
                                   2731 ;------------------------------------------------------------
                                   2732 ;Allocation info for local variables in function 'readBpm'
                                   2733 ;------------------------------------------------------------
                                   2734 ;sloc0                     Allocated with name '_readBpm_sloc0_1_0'
                                   2735 ;sloc1                     Allocated with name '_readBpm_sloc1_1_0'
                                   2736 ;data                      Allocated with name '_readBpm_PARM_2'
                                   2737 ;mode                      Allocated with name '_readBpm_mode_65536_122'
                                   2738 ;hubStatus                 Allocated with name '_readBpm_hubStatus_65536_123'
                                   2739 ;numSamples                Allocated with name '_readBpm_numSamples_65537_125'
                                   2740 ;statusByte                Allocated with name '_readBpm_statusByte_65538_127'
                                   2741 ;dataArr                   Allocated with name '_readBpm_dataArr_65538_127'
                                   2742 ;i                         Allocated with name '_readBpm_i_196610_129'
                                   2743 ;heartRate                 Allocated with name '_readBpm_heartRate_65539_133'
                                   2744 ;confidence                Allocated with name '_readBpm_confidence_65540_134'
                                   2745 ;oxygen                    Allocated with name '_readBpm_oxygen_65540_134'
                                   2746 ;status                    Allocated with name '_readBpm_status_65541_135'
                                   2747 ;temp                      Allocated with name '_readBpm_temp_131077_136'
                                   2748 ;rValue                    Allocated with name '_readBpm_rValue_131078_137'
                                   2749 ;extStatus                 Allocated with name '_readBpm_extStatus_131079_138'
                                   2750 ;------------------------------------------------------------
                                   2751 ;	src/maxhub.c:660: int readBpm(uint8_t mode, BioData *data)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function readBpm
                                   2754 ;	-----------------------------------------
      0026FA                       2755 _readBpm:
      0026FA E5 82            [12] 2756 	mov	a,dpl
      0026FC 90 00 C4         [24] 2757 	mov	dptr,#_readBpm_mode_65536_122
      0026FF F0               [24] 2758 	movx	@dptr,a
                                   2759 ;	src/maxhub.c:662: uint8_t hubStatus = readSensorHubStatus();
      002700 12 21 CD         [24] 2760 	lcall	_readSensorHubStatus
      002703 AF 82            [24] 2761 	mov	r7,dpl
                                   2762 ;	src/maxhub.c:663: if (hubStatus == 1)
      002705 BF 01 38         [24] 2763 	cjne	r7,#0x01,00102$
                                   2764 ;	src/maxhub.c:665: ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
      002708 8F 05            [24] 2765 	mov	ar5,r7
      00270A 7E 00            [12] 2766 	mov	r6,#0x00
      00270C C0 05            [24] 2767 	push	ar5
      00270E C0 06            [24] 2768 	push	ar6
      002710 74 83            [12] 2769 	mov	a,#___str_34
      002712 C0 E0            [24] 2770 	push	acc
      002714 74 54            [12] 2771 	mov	a,#(___str_34 >> 8)
      002716 C0 E0            [24] 2772 	push	acc
      002718 74 80            [12] 2773 	mov	a,#0x80
      00271A C0 E0            [24] 2774 	push	acc
      00271C 74 59            [12] 2775 	mov	a,#___str_33
      00271E C0 E0            [24] 2776 	push	acc
      002720 74 54            [12] 2777 	mov	a,#(___str_33 >> 8)
      002722 C0 E0            [24] 2778 	push	acc
      002724 12 3B B6         [24] 2779 	lcall	_printf_tiny
      002727 E5 81            [12] 2780 	mov	a,sp
      002729 24 F9            [12] 2781 	add	a,#0xf9
      00272B F5 81            [12] 2782 	mov	sp,a
      00272D 74 38            [12] 2783 	mov	a,#___str_2
      00272F C0 E0            [24] 2784 	push	acc
      002731 74 50            [12] 2785 	mov	a,#(___str_2 >> 8)
      002733 C0 E0            [24] 2786 	push	acc
      002735 12 3B B6         [24] 2787 	lcall	_printf_tiny
      002738 15 81            [12] 2788 	dec	sp
      00273A 15 81            [12] 2789 	dec	sp
                                   2790 ;	src/maxhub.c:666: return FAIL;
      00273C 90 FF FF         [24] 2791 	mov	dptr,#0xffff
      00273F 22               [24] 2792 	ret
      002740                       2793 00102$:
                                   2794 ;	src/maxhub.c:669: INFO_LOG("Status Byte = %d", hubStatus);
      002740 7E 00            [12] 2795 	mov	r6,#0x00
      002742 C0 07            [24] 2796 	push	ar7
      002744 C0 06            [24] 2797 	push	ar6
      002746 74 8B            [12] 2798 	mov	a,#___str_35
      002748 C0 E0            [24] 2799 	push	acc
      00274A 74 54            [12] 2800 	mov	a,#(___str_35 >> 8)
      00274C C0 E0            [24] 2801 	push	acc
      00274E 74 80            [12] 2802 	mov	a,#0x80
      002750 C0 E0            [24] 2803 	push	acc
      002752 12 3E BF         [24] 2804 	lcall	_printf
      002755 E5 81            [12] 2805 	mov	a,sp
      002757 24 FB            [12] 2806 	add	a,#0xfb
      002759 F5 81            [12] 2807 	mov	sp,a
      00275B 74 38            [12] 2808 	mov	a,#___str_2
      00275D C0 E0            [24] 2809 	push	acc
      00275F 74 50            [12] 2810 	mov	a,#(___str_2 >> 8)
      002761 C0 E0            [24] 2811 	push	acc
      002763 12 3B B6         [24] 2812 	lcall	_printf_tiny
      002766 15 81            [12] 2813 	dec	sp
      002768 15 81            [12] 2814 	dec	sp
                                   2815 ;	src/maxhub.c:671: uint8_t numSamples = numSamplesOutFifo();
      00276A 12 26 B8         [24] 2816 	lcall	_numSamplesOutFifo
      00276D AF 82            [24] 2817 	mov	r7,dpl
                                   2818 ;	src/maxhub.c:672: INFO_LOG("numSamples = %d", numSamples);
      00276F 8F 05            [24] 2819 	mov	ar5,r7
      002771 7E 00            [12] 2820 	mov	r6,#0x00
      002773 C0 07            [24] 2821 	push	ar7
      002775 C0 05            [24] 2822 	push	ar5
      002777 C0 06            [24] 2823 	push	ar6
      002779 74 A9            [12] 2824 	mov	a,#___str_36
      00277B C0 E0            [24] 2825 	push	acc
      00277D 74 54            [12] 2826 	mov	a,#(___str_36 >> 8)
      00277F C0 E0            [24] 2827 	push	acc
      002781 74 80            [12] 2828 	mov	a,#0x80
      002783 C0 E0            [24] 2829 	push	acc
      002785 12 3E BF         [24] 2830 	lcall	_printf
      002788 E5 81            [12] 2831 	mov	a,sp
      00278A 24 FB            [12] 2832 	add	a,#0xfb
      00278C F5 81            [12] 2833 	mov	sp,a
      00278E 74 38            [12] 2834 	mov	a,#___str_2
      002790 C0 E0            [24] 2835 	push	acc
      002792 74 50            [12] 2836 	mov	a,#(___str_2 >> 8)
      002794 C0 E0            [24] 2837 	push	acc
      002796 12 3B B6         [24] 2838 	lcall	_printf_tiny
      002799 15 81            [12] 2839 	dec	sp
      00279B 15 81            [12] 2840 	dec	sp
      00279D D0 07            [24] 2841 	pop	ar7
                                   2842 ;	src/maxhub.c:673: if (numSamples == 0)
      00279F EF               [12] 2843 	mov	a,r7
      0027A0 70 34            [24] 2844 	jnz	00104$
                                   2845 ;	src/maxhub.c:675: INFO_LOG("%s: No samples to read", __func__);
      0027A2 74 83            [12] 2846 	mov	a,#___str_34
      0027A4 C0 E0            [24] 2847 	push	acc
      0027A6 74 54            [12] 2848 	mov	a,#(___str_34 >> 8)
      0027A8 C0 E0            [24] 2849 	push	acc
      0027AA 74 80            [12] 2850 	mov	a,#0x80
      0027AC C0 E0            [24] 2851 	push	acc
      0027AE 74 C6            [12] 2852 	mov	a,#___str_37
      0027B0 C0 E0            [24] 2853 	push	acc
      0027B2 74 54            [12] 2854 	mov	a,#(___str_37 >> 8)
      0027B4 C0 E0            [24] 2855 	push	acc
      0027B6 74 80            [12] 2856 	mov	a,#0x80
      0027B8 C0 E0            [24] 2857 	push	acc
      0027BA 12 3E BF         [24] 2858 	lcall	_printf
      0027BD E5 81            [12] 2859 	mov	a,sp
      0027BF 24 FA            [12] 2860 	add	a,#0xfa
      0027C1 F5 81            [12] 2861 	mov	sp,a
      0027C3 74 38            [12] 2862 	mov	a,#___str_2
      0027C5 C0 E0            [24] 2863 	push	acc
      0027C7 74 50            [12] 2864 	mov	a,#(___str_2 >> 8)
      0027C9 C0 E0            [24] 2865 	push	acc
      0027CB 12 3B B6         [24] 2866 	lcall	_printf_tiny
      0027CE 15 81            [12] 2867 	dec	sp
      0027D0 15 81            [12] 2868 	dec	sp
                                   2869 ;	src/maxhub.c:676: return FAIL;
      0027D2 90 FF FF         [24] 2870 	mov	dptr,#0xffff
      0027D5 22               [24] 2871 	ret
      0027D6                       2872 00104$:
                                   2873 ;	src/maxhub.c:681: if (mode == 1)
      0027D6 90 00 C4         [24] 2874 	mov	dptr,#_readBpm_mode_65536_122
      0027D9 E0               [24] 2875 	movx	a,@dptr
      0027DA FF               [12] 2876 	mov	r7,a
      0027DB BF 01 02         [24] 2877 	cjne	r7,#0x01,00166$
      0027DE 80 02            [24] 2878 	sjmp	00167$
      0027E0                       2879 00166$:
      0027E0 80 7C            [24] 2880 	sjmp	00109$
      0027E2                       2881 00167$:
                                   2882 ;	src/maxhub.c:683: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE);
      0027E2 90 00 AF         [24] 2883 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
      0027E5 74 01            [12] 2884 	mov	a,#0x01
      0027E7 F0               [24] 2885 	movx	@dptr,a
      0027E8 90 00 B0         [24] 2886 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
      0027EB 74 C7            [12] 2887 	mov	a,#_readBpm_dataArr_65538_127
      0027ED F0               [24] 2888 	movx	@dptr,a
      0027EE 74 00            [12] 2889 	mov	a,#(_readBpm_dataArr_65538_127 >> 8)
      0027F0 A3               [24] 2890 	inc	dptr
      0027F1 F0               [24] 2891 	movx	@dptr,a
      0027F2 E4               [12] 2892 	clr	a
      0027F3 A3               [24] 2893 	inc	dptr
      0027F4 F0               [24] 2894 	movx	@dptr,a
      0027F5 90 00 B3         [24] 2895 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
      0027F8 74 06            [12] 2896 	mov	a,#0x06
      0027FA F0               [24] 2897 	movx	@dptr,a
      0027FB 75 82 12         [24] 2898 	mov	dpl,#0x12
      0027FE 12 1E 39         [24] 2899 	lcall	_i2cMax32664SequentialReadByte
      002801 E5 82            [12] 2900 	mov	a,dpl
      002803 85 83 F0         [24] 2901 	mov	b,dph
      002806 90 00 C5         [24] 2902 	mov	dptr,#_readBpm_statusByte_65538_127
      002809 F0               [24] 2903 	movx	@dptr,a
      00280A E5 F0            [12] 2904 	mov	a,b
      00280C A3               [24] 2905 	inc	dptr
      00280D F0               [24] 2906 	movx	@dptr,a
                                   2907 ;	src/maxhub.c:684: printf_tiny("\n\rData from Hub\n\r");
      00280E 74 EA            [12] 2908 	mov	a,#___str_38
      002810 C0 E0            [24] 2909 	push	acc
      002812 74 54            [12] 2910 	mov	a,#(___str_38 >> 8)
      002814 C0 E0            [24] 2911 	push	acc
      002816 12 3B B6         [24] 2912 	lcall	_printf_tiny
      002819 15 81            [12] 2913 	dec	sp
      00281B 15 81            [12] 2914 	dec	sp
                                   2915 ;	src/maxhub.c:685: for (int i = 0; i < MAXFAST_ARRAY_SIZE; i++)
      00281D 7D 00            [12] 2916 	mov	r5,#0x00
      00281F 7E 00            [12] 2917 	mov	r6,#0x00
      002821                       2918 00122$:
      002821 C3               [12] 2919 	clr	c
      002822 ED               [12] 2920 	mov	a,r5
      002823 94 06            [12] 2921 	subb	a,#0x06
      002825 EE               [12] 2922 	mov	a,r6
      002826 64 80            [12] 2923 	xrl	a,#0x80
      002828 94 80            [12] 2924 	subb	a,#0x80
      00282A 50 61            [24] 2925 	jnc	00110$
                                   2926 ;	src/maxhub.c:687: printf_tiny("%d\n\r", dataArr[i]);
      00282C ED               [12] 2927 	mov	a,r5
      00282D 24 C7            [12] 2928 	add	a,#_readBpm_dataArr_65538_127
      00282F F5 82            [12] 2929 	mov	dpl,a
      002831 EE               [12] 2930 	mov	a,r6
      002832 34 00            [12] 2931 	addc	a,#(_readBpm_dataArr_65538_127 >> 8)
      002834 F5 83            [12] 2932 	mov	dph,a
      002836 E0               [24] 2933 	movx	a,@dptr
      002837 FC               [12] 2934 	mov	r4,a
      002838 7B 00            [12] 2935 	mov	r3,#0x00
      00283A C0 06            [24] 2936 	push	ar6
      00283C C0 05            [24] 2937 	push	ar5
      00283E C0 04            [24] 2938 	push	ar4
      002840 C0 03            [24] 2939 	push	ar3
      002842 74 FC            [12] 2940 	mov	a,#___str_39
      002844 C0 E0            [24] 2941 	push	acc
      002846 74 54            [12] 2942 	mov	a,#(___str_39 >> 8)
      002848 C0 E0            [24] 2943 	push	acc
      00284A 12 3B B6         [24] 2944 	lcall	_printf_tiny
      00284D E5 81            [12] 2945 	mov	a,sp
      00284F 24 FC            [12] 2946 	add	a,#0xfc
      002851 F5 81            [12] 2947 	mov	sp,a
      002853 D0 05            [24] 2948 	pop	ar5
      002855 D0 06            [24] 2949 	pop	ar6
                                   2950 ;	src/maxhub.c:685: for (int i = 0; i < MAXFAST_ARRAY_SIZE; i++)
      002857 0D               [12] 2951 	inc	r5
      002858 BD 00 C6         [24] 2952 	cjne	r5,#0x00,00122$
      00285B 0E               [12] 2953 	inc	r6
      00285C 80 C3            [24] 2954 	sjmp	00122$
      00285E                       2955 00109$:
                                   2956 ;	src/maxhub.c:690: else if (mode == 2)
      00285E BF 02 2C         [24] 2957 	cjne	r7,#0x02,00110$
                                   2958 ;	src/maxhub.c:692: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE + MAXFAST_EXTENDED_DATA);
      002861 90 00 AF         [24] 2959 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
      002864 74 01            [12] 2960 	mov	a,#0x01
      002866 F0               [24] 2961 	movx	@dptr,a
      002867 90 00 B0         [24] 2962 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
      00286A 74 C7            [12] 2963 	mov	a,#_readBpm_dataArr_65538_127
      00286C F0               [24] 2964 	movx	@dptr,a
      00286D 74 00            [12] 2965 	mov	a,#(_readBpm_dataArr_65538_127 >> 8)
      00286F A3               [24] 2966 	inc	dptr
      002870 F0               [24] 2967 	movx	@dptr,a
      002871 E4               [12] 2968 	clr	a
      002872 A3               [24] 2969 	inc	dptr
      002873 F0               [24] 2970 	movx	@dptr,a
      002874 90 00 B3         [24] 2971 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
      002877 74 0B            [12] 2972 	mov	a,#0x0b
      002879 F0               [24] 2973 	movx	@dptr,a
      00287A 75 82 12         [24] 2974 	mov	dpl,#0x12
      00287D 12 1E 39         [24] 2975 	lcall	_i2cMax32664SequentialReadByte
      002880 E5 82            [12] 2976 	mov	a,dpl
      002882 85 83 F0         [24] 2977 	mov	b,dph
      002885 90 00 C5         [24] 2978 	mov	dptr,#_readBpm_statusByte_65538_127
      002888 F0               [24] 2979 	movx	@dptr,a
      002889 E5 F0            [12] 2980 	mov	a,b
      00288B A3               [24] 2981 	inc	dptr
      00288C F0               [24] 2982 	movx	@dptr,a
      00288D                       2983 00110$:
                                   2984 ;	src/maxhub.c:695: if (statusByte != SFE_BIO_SUCCESS)
      00288D 90 00 C5         [24] 2985 	mov	dptr,#_readBpm_statusByte_65538_127
      002890 E0               [24] 2986 	movx	a,@dptr
      002891 F5 F0            [12] 2987 	mov	b,a
      002893 A3               [24] 2988 	inc	dptr
      002894 E0               [24] 2989 	movx	a,@dptr
      002895 45 F0            [12] 2990 	orl	a,b
      002897 60 3A            [24] 2991 	jz	00112$
                                   2992 ;	src/maxhub.c:697: ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
      002899 90 00 C5         [24] 2993 	mov	dptr,#_readBpm_statusByte_65538_127
      00289C E0               [24] 2994 	movx	a,@dptr
      00289D C0 E0            [24] 2995 	push	acc
      00289F A3               [24] 2996 	inc	dptr
      0028A0 E0               [24] 2997 	movx	a,@dptr
      0028A1 C0 E0            [24] 2998 	push	acc
      0028A3 74 83            [12] 2999 	mov	a,#___str_34
      0028A5 C0 E0            [24] 3000 	push	acc
      0028A7 74 54            [12] 3001 	mov	a,#(___str_34 >> 8)
      0028A9 C0 E0            [24] 3002 	push	acc
      0028AB 74 80            [12] 3003 	mov	a,#0x80
      0028AD C0 E0            [24] 3004 	push	acc
      0028AF 74 01            [12] 3005 	mov	a,#___str_40
      0028B1 C0 E0            [24] 3006 	push	acc
      0028B3 74 55            [12] 3007 	mov	a,#(___str_40 >> 8)
      0028B5 C0 E0            [24] 3008 	push	acc
      0028B7 12 3B B6         [24] 3009 	lcall	_printf_tiny
      0028BA E5 81            [12] 3010 	mov	a,sp
      0028BC 24 F9            [12] 3011 	add	a,#0xf9
      0028BE F5 81            [12] 3012 	mov	sp,a
      0028C0 74 38            [12] 3013 	mov	a,#___str_2
      0028C2 C0 E0            [24] 3014 	push	acc
      0028C4 74 50            [12] 3015 	mov	a,#(___str_2 >> 8)
      0028C6 C0 E0            [24] 3016 	push	acc
      0028C8 12 3B B6         [24] 3017 	lcall	_printf_tiny
      0028CB 15 81            [12] 3018 	dec	sp
      0028CD 15 81            [12] 3019 	dec	sp
                                   3020 ;	src/maxhub.c:698: return FAIL;
      0028CF 90 FF FF         [24] 3021 	mov	dptr,#0xffff
      0028D2 22               [24] 3022 	ret
      0028D3                       3023 00112$:
                                   3024 ;	src/maxhub.c:702: uint16_t heartRate = dataArr[0];
      0028D3 90 00 C7         [24] 3025 	mov	dptr,#_readBpm_dataArr_65538_127
      0028D6 E0               [24] 3026 	movx	a,@dptr
                                   3027 ;	src/maxhub.c:703: heartRate = (heartRate << 8) | (dataArr[1]);
      0028D7 FE               [12] 3028 	mov	r6,a
      0028D8 7F 00            [12] 3029 	mov	r7,#0x00
      0028DA 90 00 C8         [24] 3030 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0001)
      0028DD E0               [24] 3031 	movx	a,@dptr
      0028DE 7C 00            [12] 3032 	mov	r4,#0x00
      0028E0 42 07            [12] 3033 	orl	ar7,a
      0028E2 EC               [12] 3034 	mov	a,r4
      0028E3 42 06            [12] 3035 	orl	ar6,a
                                   3036 ;	src/maxhub.c:704: heartRate /= 10;
      0028E5 90 01 D5         [24] 3037 	mov	dptr,#__divuint_PARM_2
      0028E8 74 0A            [12] 3038 	mov	a,#0x0a
      0028EA F0               [24] 3039 	movx	@dptr,a
      0028EB E4               [12] 3040 	clr	a
      0028EC A3               [24] 3041 	inc	dptr
      0028ED F0               [24] 3042 	movx	@dptr,a
      0028EE 8F 82            [24] 3043 	mov	dpl,r7
      0028F0 8E 83            [24] 3044 	mov	dph,r6
      0028F2 12 3A 6E         [24] 3045 	lcall	__divuint
      0028F5 AE 82            [24] 3046 	mov	r6,dpl
      0028F7 AF 83            [24] 3047 	mov	r7,dph
                                   3048 ;	src/maxhub.c:707: uint8_t confidence = dataArr[2];
      0028F9 90 00 C9         [24] 3049 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0002)
      0028FC E0               [24] 3050 	movx	a,@dptr
      0028FD F5 16            [12] 3051 	mov	_readBpm_sloc1_1_0,a
                                   3052 ;	src/maxhub.c:710: uint16_t oxygen = dataArr[3];
      0028FF 90 00 CA         [24] 3053 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0003)
      002902 E0               [24] 3054 	movx	a,@dptr
                                   3055 ;	src/maxhub.c:711: oxygen = (oxygen << 8) | dataArr[4];
      002903 FB               [12] 3056 	mov	r3,a
      002904 7C 00            [12] 3057 	mov	r4,#0x00
      002906 90 00 CB         [24] 3058 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0004)
      002909 E0               [24] 3059 	movx	a,@dptr
      00290A 7A 00            [12] 3060 	mov	r2,#0x00
      00290C 42 04            [12] 3061 	orl	ar4,a
      00290E EA               [12] 3062 	mov	a,r2
      00290F 42 03            [12] 3063 	orl	ar3,a
                                   3064 ;	src/maxhub.c:712: oxygen /= 10;
      002911 90 01 D5         [24] 3065 	mov	dptr,#__divuint_PARM_2
      002914 74 0A            [12] 3066 	mov	a,#0x0a
      002916 F0               [24] 3067 	movx	@dptr,a
      002917 E4               [12] 3068 	clr	a
      002918 A3               [24] 3069 	inc	dptr
      002919 F0               [24] 3070 	movx	@dptr,a
      00291A 8C 82            [24] 3071 	mov	dpl,r4
      00291C 8B 83            [24] 3072 	mov	dph,r3
      00291E C0 07            [24] 3073 	push	ar7
      002920 C0 06            [24] 3074 	push	ar6
      002922 12 3A 6E         [24] 3075 	lcall	__divuint
      002925 AB 82            [24] 3076 	mov	r3,dpl
      002927 AC 83            [24] 3077 	mov	r4,dph
      002929 D0 06            [24] 3078 	pop	ar6
      00292B D0 07            [24] 3079 	pop	ar7
                                   3080 ;	src/maxhub.c:715: uint8_t status = dataArr[5];
      00292D 90 00 CC         [24] 3081 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0005)
      002930 E0               [24] 3082 	movx	a,@dptr
      002931 FA               [12] 3083 	mov	r2,a
                                   3084 ;	src/maxhub.c:717: data->heartRate = heartRate;
      002932 90 00 C1         [24] 3085 	mov	dptr,#_readBpm_PARM_2
      002935 E0               [24] 3086 	movx	a,@dptr
      002936 F5 13            [12] 3087 	mov	_readBpm_sloc0_1_0,a
      002938 A3               [24] 3088 	inc	dptr
      002939 E0               [24] 3089 	movx	a,@dptr
      00293A F5 14            [12] 3090 	mov	(_readBpm_sloc0_1_0 + 1),a
      00293C A3               [24] 3091 	inc	dptr
      00293D E0               [24] 3092 	movx	a,@dptr
      00293E F5 15            [12] 3093 	mov	(_readBpm_sloc0_1_0 + 2),a
      002940 74 08            [12] 3094 	mov	a,#0x08
      002942 25 13            [12] 3095 	add	a,_readBpm_sloc0_1_0
      002944 F8               [12] 3096 	mov	r0,a
      002945 E4               [12] 3097 	clr	a
      002946 35 14            [12] 3098 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002948 F9               [12] 3099 	mov	r1,a
      002949 AD 15            [24] 3100 	mov	r5,(_readBpm_sloc0_1_0 + 2)
      00294B 88 82            [24] 3101 	mov	dpl,r0
      00294D 89 83            [24] 3102 	mov	dph,r1
      00294F 8D F0            [24] 3103 	mov	b,r5
      002951 EE               [12] 3104 	mov	a,r6
      002952 12 3B 9B         [24] 3105 	lcall	__gptrput
      002955 A3               [24] 3106 	inc	dptr
      002956 EF               [12] 3107 	mov	a,r7
      002957 12 3B 9B         [24] 3108 	lcall	__gptrput
                                   3109 ;	src/maxhub.c:718: data->confidence = confidence;
      00295A 74 0A            [12] 3110 	mov	a,#0x0a
      00295C 25 13            [12] 3111 	add	a,_readBpm_sloc0_1_0
      00295E FD               [12] 3112 	mov	r5,a
      00295F E4               [12] 3113 	clr	a
      002960 35 14            [12] 3114 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002962 FE               [12] 3115 	mov	r6,a
      002963 AF 15            [24] 3116 	mov	r7,(_readBpm_sloc0_1_0 + 2)
      002965 8D 82            [24] 3117 	mov	dpl,r5
      002967 8E 83            [24] 3118 	mov	dph,r6
      002969 8F F0            [24] 3119 	mov	b,r7
      00296B E5 16            [12] 3120 	mov	a,_readBpm_sloc1_1_0
      00296D 12 3B 9B         [24] 3121 	lcall	__gptrput
                                   3122 ;	src/maxhub.c:719: data->oxygen = oxygen;
      002970 74 0B            [12] 3123 	mov	a,#0x0b
      002972 25 13            [12] 3124 	add	a,_readBpm_sloc0_1_0
      002974 FD               [12] 3125 	mov	r5,a
      002975 E4               [12] 3126 	clr	a
      002976 35 14            [12] 3127 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002978 FE               [12] 3128 	mov	r6,a
      002979 AF 15            [24] 3129 	mov	r7,(_readBpm_sloc0_1_0 + 2)
      00297B 8D 82            [24] 3130 	mov	dpl,r5
      00297D 8E 83            [24] 3131 	mov	dph,r6
      00297F 8F F0            [24] 3132 	mov	b,r7
      002981 EB               [12] 3133 	mov	a,r3
      002982 12 3B 9B         [24] 3134 	lcall	__gptrput
      002985 A3               [24] 3135 	inc	dptr
      002986 EC               [12] 3136 	mov	a,r4
      002987 12 3B 9B         [24] 3137 	lcall	__gptrput
                                   3138 ;	src/maxhub.c:720: data->status = status;
      00298A 74 0D            [12] 3139 	mov	a,#0x0d
      00298C 25 13            [12] 3140 	add	a,_readBpm_sloc0_1_0
      00298E FD               [12] 3141 	mov	r5,a
      00298F E4               [12] 3142 	clr	a
      002990 35 14            [12] 3143 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002992 FE               [12] 3144 	mov	r6,a
      002993 AF 15            [24] 3145 	mov	r7,(_readBpm_sloc0_1_0 + 2)
      002995 8D 82            [24] 3146 	mov	dpl,r5
      002997 8E 83            [24] 3147 	mov	dph,r6
      002999 8F F0            [24] 3148 	mov	b,r7
      00299B EA               [12] 3149 	mov	a,r2
      00299C 12 3B 9B         [24] 3150 	lcall	__gptrput
                                   3151 ;	src/maxhub.c:722: if (mode == 2)
      00299F 90 00 C4         [24] 3152 	mov	dptr,#_readBpm_mode_65536_122
      0029A2 E0               [24] 3153 	movx	a,@dptr
      0029A3 FF               [12] 3154 	mov	r7,a
      0029A4 BF 02 02         [24] 3155 	cjne	r7,#0x02,00173$
      0029A7 80 03            [24] 3156 	sjmp	00174$
      0029A9                       3157 00173$:
      0029A9 02 2A 36         [24] 3158 	ljmp	00114$
      0029AC                       3159 00174$:
                                   3160 ;	src/maxhub.c:725: uint16_t temp = dataArr[6];
      0029AC C0 02            [24] 3161 	push	ar2
      0029AE 90 00 CD         [24] 3162 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0006)
      0029B1 E0               [24] 3163 	movx	a,@dptr
                                   3164 ;	src/maxhub.c:726: temp = (temp << 8) | dataArr[7];
      0029B2 FE               [12] 3165 	mov	r6,a
      0029B3 7F 00            [12] 3166 	mov	r7,#0x00
      0029B5 90 00 CE         [24] 3167 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0007)
      0029B8 E0               [24] 3168 	movx	a,@dptr
      0029B9 7C 00            [12] 3169 	mov	r4,#0x00
      0029BB 42 07            [12] 3170 	orl	ar7,a
      0029BD EC               [12] 3171 	mov	a,r4
      0029BE 42 06            [12] 3172 	orl	ar6,a
                                   3173 ;	src/maxhub.c:727: float rValue = temp;
      0029C0 8F 82            [24] 3174 	mov	dpl,r7
      0029C2 8E 83            [24] 3175 	mov	dph,r6
      0029C4 C0 02            [24] 3176 	push	ar2
      0029C6 12 3E 65         [24] 3177 	lcall	___uint2fs
      0029C9 AC 82            [24] 3178 	mov	r4,dpl
      0029CB AD 83            [24] 3179 	mov	r5,dph
      0029CD AE F0            [24] 3180 	mov	r6,b
      0029CF FF               [12] 3181 	mov	r7,a
                                   3182 ;	src/maxhub.c:728: rValue = rValue / 10.0;
      0029D0 E4               [12] 3183 	clr	a
      0029D1 C0 E0            [24] 3184 	push	acc
      0029D3 C0 E0            [24] 3185 	push	acc
      0029D5 74 20            [12] 3186 	mov	a,#0x20
      0029D7 C0 E0            [24] 3187 	push	acc
      0029D9 74 41            [12] 3188 	mov	a,#0x41
      0029DB C0 E0            [24] 3189 	push	acc
                                   3190 ;	src/maxhub.c:731: uint8_t extStatus = dataArr[8];
      0029DD 8C 82            [24] 3191 	mov	dpl,r4
      0029DF 8D 83            [24] 3192 	mov	dph,r5
      0029E1 8E F0            [24] 3193 	mov	b,r6
      0029E3 EF               [12] 3194 	mov	a,r7
      0029E4 12 48 EB         [24] 3195 	lcall	___fsdiv
      0029E7 AC 82            [24] 3196 	mov	r4,dpl
      0029E9 AD 83            [24] 3197 	mov	r5,dph
      0029EB AE F0            [24] 3198 	mov	r6,b
      0029ED FF               [12] 3199 	mov	r7,a
      0029EE E5 81            [12] 3200 	mov	a,sp
      0029F0 24 FC            [12] 3201 	add	a,#0xfc
      0029F2 F5 81            [12] 3202 	mov	sp,a
      0029F4 D0 02            [24] 3203 	pop	ar2
      0029F6 90 00 CF         [24] 3204 	mov	dptr,#(_readBpm_dataArr_65538_127 + 0x0008)
      0029F9 E0               [24] 3205 	movx	a,@dptr
      0029FA FB               [12] 3206 	mov	r3,a
                                   3207 ;	src/maxhub.c:733: data->rValue = rValue;
      0029FB 74 0E            [12] 3208 	mov	a,#0x0e
      0029FD 25 13            [12] 3209 	add	a,_readBpm_sloc0_1_0
      0029FF F8               [12] 3210 	mov	r0,a
      002A00 E4               [12] 3211 	clr	a
      002A01 35 14            [12] 3212 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002A03 F9               [12] 3213 	mov	r1,a
      002A04 AA 15            [24] 3214 	mov	r2,(_readBpm_sloc0_1_0 + 2)
      002A06 88 82            [24] 3215 	mov	dpl,r0
      002A08 89 83            [24] 3216 	mov	dph,r1
      002A0A 8A F0            [24] 3217 	mov	b,r2
      002A0C EC               [12] 3218 	mov	a,r4
      002A0D 12 3B 9B         [24] 3219 	lcall	__gptrput
      002A10 A3               [24] 3220 	inc	dptr
      002A11 ED               [12] 3221 	mov	a,r5
      002A12 12 3B 9B         [24] 3222 	lcall	__gptrput
      002A15 A3               [24] 3223 	inc	dptr
      002A16 EE               [12] 3224 	mov	a,r6
      002A17 12 3B 9B         [24] 3225 	lcall	__gptrput
      002A1A A3               [24] 3226 	inc	dptr
      002A1B EF               [12] 3227 	mov	a,r7
      002A1C 12 3B 9B         [24] 3228 	lcall	__gptrput
                                   3229 ;	src/maxhub.c:734: data->extStatus = extStatus;
      002A1F 74 12            [12] 3230 	mov	a,#0x12
      002A21 25 13            [12] 3231 	add	a,_readBpm_sloc0_1_0
      002A23 FD               [12] 3232 	mov	r5,a
      002A24 E4               [12] 3233 	clr	a
      002A25 35 14            [12] 3234 	addc	a,(_readBpm_sloc0_1_0 + 1)
      002A27 FE               [12] 3235 	mov	r6,a
      002A28 AF 15            [24] 3236 	mov	r7,(_readBpm_sloc0_1_0 + 2)
      002A2A 8D 82            [24] 3237 	mov	dpl,r5
      002A2C 8E 83            [24] 3238 	mov	dph,r6
      002A2E 8F F0            [24] 3239 	mov	b,r7
      002A30 EB               [12] 3240 	mov	a,r3
      002A31 12 3B 9B         [24] 3241 	lcall	__gptrput
                                   3242 ;	src/maxhub.c:755: return SUCCESS;
      002A34 D0 02            [24] 3243 	pop	ar2
                                   3244 ;	src/maxhub.c:734: data->extStatus = extStatus;
      002A36                       3245 00114$:
                                   3246 ;	src/maxhub.c:737: switch (status)
      002A36 EA               [12] 3247 	mov	a,r2
      002A37 FF               [12] 3248 	mov	r7,a
      002A38 24 FC            [12] 3249 	add	a,#0xff - 0x03
      002A3A 50 03            [24] 3250 	jnc	00175$
      002A3C 02 2B 1C         [24] 3251 	ljmp	00119$
      002A3F                       3252 00175$:
      002A3F EF               [12] 3253 	mov	a,r7
      002A40 2F               [12] 3254 	add	a,r7
      002A41 2F               [12] 3255 	add	a,r7
      002A42 90 2A 46         [24] 3256 	mov	dptr,#00176$
      002A45 73               [24] 3257 	jmp	@a+dptr
      002A46                       3258 00176$:
      002A46 02 2A 52         [24] 3259 	ljmp	00115$
      002A49 02 2A 85         [24] 3260 	ljmp	00116$
      002A4C 02 2A B8         [24] 3261 	ljmp	00117$
      002A4F 02 2A EA         [24] 3262 	ljmp	00118$
                                   3263 ;	src/maxhub.c:739: case NO_READING:
      002A52                       3264 00115$:
                                   3265 ;	src/maxhub.c:740: INFO_LOG("%s: Finger Status = NO_READING", __func__);
      002A52 74 83            [12] 3266 	mov	a,#___str_34
      002A54 C0 E0            [24] 3267 	push	acc
      002A56 74 54            [12] 3268 	mov	a,#(___str_34 >> 8)
      002A58 C0 E0            [24] 3269 	push	acc
      002A5A 74 80            [12] 3270 	mov	a,#0x80
      002A5C C0 E0            [24] 3271 	push	acc
      002A5E 74 27            [12] 3272 	mov	a,#___str_41
      002A60 C0 E0            [24] 3273 	push	acc
      002A62 74 55            [12] 3274 	mov	a,#(___str_41 >> 8)
      002A64 C0 E0            [24] 3275 	push	acc
      002A66 74 80            [12] 3276 	mov	a,#0x80
      002A68 C0 E0            [24] 3277 	push	acc
      002A6A 12 3E BF         [24] 3278 	lcall	_printf
      002A6D E5 81            [12] 3279 	mov	a,sp
      002A6F 24 FA            [12] 3280 	add	a,#0xfa
      002A71 F5 81            [12] 3281 	mov	sp,a
      002A73 74 38            [12] 3282 	mov	a,#___str_2
      002A75 C0 E0            [24] 3283 	push	acc
      002A77 74 50            [12] 3284 	mov	a,#(___str_2 >> 8)
      002A79 C0 E0            [24] 3285 	push	acc
      002A7B 12 3B B6         [24] 3286 	lcall	_printf_tiny
      002A7E 15 81            [12] 3287 	dec	sp
      002A80 15 81            [12] 3288 	dec	sp
                                   3289 ;	src/maxhub.c:741: break;
      002A82 02 2B 3A         [24] 3290 	ljmp	00120$
                                   3291 ;	src/maxhub.c:742: case NOT_READY:
      002A85                       3292 00116$:
                                   3293 ;	src/maxhub.c:743: INFO_LOG("%s: Finger Status = NOT_READY", __func__);
      002A85 74 83            [12] 3294 	mov	a,#___str_34
      002A87 C0 E0            [24] 3295 	push	acc
      002A89 74 54            [12] 3296 	mov	a,#(___str_34 >> 8)
      002A8B C0 E0            [24] 3297 	push	acc
      002A8D 74 80            [12] 3298 	mov	a,#0x80
      002A8F C0 E0            [24] 3299 	push	acc
      002A91 74 53            [12] 3300 	mov	a,#___str_42
      002A93 C0 E0            [24] 3301 	push	acc
      002A95 74 55            [12] 3302 	mov	a,#(___str_42 >> 8)
      002A97 C0 E0            [24] 3303 	push	acc
      002A99 74 80            [12] 3304 	mov	a,#0x80
      002A9B C0 E0            [24] 3305 	push	acc
      002A9D 12 3E BF         [24] 3306 	lcall	_printf
      002AA0 E5 81            [12] 3307 	mov	a,sp
      002AA2 24 FA            [12] 3308 	add	a,#0xfa
      002AA4 F5 81            [12] 3309 	mov	sp,a
      002AA6 74 38            [12] 3310 	mov	a,#___str_2
      002AA8 C0 E0            [24] 3311 	push	acc
      002AAA 74 50            [12] 3312 	mov	a,#(___str_2 >> 8)
      002AAC C0 E0            [24] 3313 	push	acc
      002AAE 12 3B B6         [24] 3314 	lcall	_printf_tiny
      002AB1 15 81            [12] 3315 	dec	sp
      002AB3 15 81            [12] 3316 	dec	sp
                                   3317 ;	src/maxhub.c:744: break;
      002AB5 02 2B 3A         [24] 3318 	ljmp	00120$
                                   3319 ;	src/maxhub.c:745: case OBJECT_DETECTED:
      002AB8                       3320 00117$:
                                   3321 ;	src/maxhub.c:746: INFO_LOG("%s: Finger Status = OBJECT_DETECTED", __func__);
      002AB8 74 83            [12] 3322 	mov	a,#___str_34
      002ABA C0 E0            [24] 3323 	push	acc
      002ABC 74 54            [12] 3324 	mov	a,#(___str_34 >> 8)
      002ABE C0 E0            [24] 3325 	push	acc
      002AC0 74 80            [12] 3326 	mov	a,#0x80
      002AC2 C0 E0            [24] 3327 	push	acc
      002AC4 74 7E            [12] 3328 	mov	a,#___str_43
      002AC6 C0 E0            [24] 3329 	push	acc
      002AC8 74 55            [12] 3330 	mov	a,#(___str_43 >> 8)
      002ACA C0 E0            [24] 3331 	push	acc
      002ACC 74 80            [12] 3332 	mov	a,#0x80
      002ACE C0 E0            [24] 3333 	push	acc
      002AD0 12 3E BF         [24] 3334 	lcall	_printf
      002AD3 E5 81            [12] 3335 	mov	a,sp
      002AD5 24 FA            [12] 3336 	add	a,#0xfa
      002AD7 F5 81            [12] 3337 	mov	sp,a
      002AD9 74 38            [12] 3338 	mov	a,#___str_2
      002ADB C0 E0            [24] 3339 	push	acc
      002ADD 74 50            [12] 3340 	mov	a,#(___str_2 >> 8)
      002ADF C0 E0            [24] 3341 	push	acc
      002AE1 12 3B B6         [24] 3342 	lcall	_printf_tiny
      002AE4 15 81            [12] 3343 	dec	sp
      002AE6 15 81            [12] 3344 	dec	sp
                                   3345 ;	src/maxhub.c:747: break;
                                   3346 ;	src/maxhub.c:748: case FINGER_DETECTED:
      002AE8 80 50            [24] 3347 	sjmp	00120$
      002AEA                       3348 00118$:
                                   3349 ;	src/maxhub.c:749: INFO_LOG("%s: Finger Status = FINGER_DETECTED", __func__);
      002AEA 74 83            [12] 3350 	mov	a,#___str_34
      002AEC C0 E0            [24] 3351 	push	acc
      002AEE 74 54            [12] 3352 	mov	a,#(___str_34 >> 8)
      002AF0 C0 E0            [24] 3353 	push	acc
      002AF2 74 80            [12] 3354 	mov	a,#0x80
      002AF4 C0 E0            [24] 3355 	push	acc
      002AF6 74 AF            [12] 3356 	mov	a,#___str_44
      002AF8 C0 E0            [24] 3357 	push	acc
      002AFA 74 55            [12] 3358 	mov	a,#(___str_44 >> 8)
      002AFC C0 E0            [24] 3359 	push	acc
      002AFE 74 80            [12] 3360 	mov	a,#0x80
      002B00 C0 E0            [24] 3361 	push	acc
      002B02 12 3E BF         [24] 3362 	lcall	_printf
      002B05 E5 81            [12] 3363 	mov	a,sp
      002B07 24 FA            [12] 3364 	add	a,#0xfa
      002B09 F5 81            [12] 3365 	mov	sp,a
      002B0B 74 38            [12] 3366 	mov	a,#___str_2
      002B0D C0 E0            [24] 3367 	push	acc
      002B0F 74 50            [12] 3368 	mov	a,#(___str_2 >> 8)
      002B11 C0 E0            [24] 3369 	push	acc
      002B13 12 3B B6         [24] 3370 	lcall	_printf_tiny
      002B16 15 81            [12] 3371 	dec	sp
      002B18 15 81            [12] 3372 	dec	sp
                                   3373 ;	src/maxhub.c:750: break;
                                   3374 ;	src/maxhub.c:751: default:
      002B1A 80 1E            [24] 3375 	sjmp	00120$
      002B1C                       3376 00119$:
                                   3377 ;	src/maxhub.c:752: ERROR_LOG("Unknown case!");
      002B1C 74 E0            [12] 3378 	mov	a,#___str_45
      002B1E C0 E0            [24] 3379 	push	acc
      002B20 74 55            [12] 3380 	mov	a,#(___str_45 >> 8)
      002B22 C0 E0            [24] 3381 	push	acc
      002B24 12 3B B6         [24] 3382 	lcall	_printf_tiny
      002B27 15 81            [12] 3383 	dec	sp
      002B29 15 81            [12] 3384 	dec	sp
      002B2B 74 38            [12] 3385 	mov	a,#___str_2
      002B2D C0 E0            [24] 3386 	push	acc
      002B2F 74 50            [12] 3387 	mov	a,#(___str_2 >> 8)
      002B31 C0 E0            [24] 3388 	push	acc
      002B33 12 3B B6         [24] 3389 	lcall	_printf_tiny
      002B36 15 81            [12] 3390 	dec	sp
      002B38 15 81            [12] 3391 	dec	sp
                                   3392 ;	src/maxhub.c:753: }
      002B3A                       3393 00120$:
                                   3394 ;	src/maxhub.c:755: return SUCCESS;
      002B3A 90 00 00         [24] 3395 	mov	dptr,#0x0000
                                   3396 ;	src/maxhub.c:756: }
      002B3D 22               [24] 3397 	ret
                                   3398 ;------------------------------------------------------------
                                   3399 ;Allocation info for local variables in function 'readSensorBpm'
                                   3400 ;------------------------------------------------------------
                                   3401 ;sloc0                     Allocated with name '_readSensorBpm_sloc0_1_0'
                                   3402 ;sloc1                     Allocated with name '_readSensorBpm_sloc1_1_0'
                                   3403 ;sloc2                     Allocated with name '_readSensorBpm_sloc2_1_0'
                                   3404 ;sloc3                     Allocated with name '_readSensorBpm_sloc3_1_0'
                                   3405 ;data                      Allocated with name '_readSensorBpm_PARM_2'
                                   3406 ;mode                      Allocated with name '_readSensorBpm_mode_65536_140'
                                   3407 ;hubStatus                 Allocated with name '_readSensorBpm_hubStatus_65536_141'
                                   3408 ;numSamples                Allocated with name '_readSensorBpm_numSamples_65537_143'
                                   3409 ;statusByte                Allocated with name '_readSensorBpm_statusByte_65538_145'
                                   3410 ;sensorData                Allocated with name '_readSensorBpm_sensorData_65538_145'
                                   3411 ;irLed                     Allocated with name '_readSensorBpm_irLed_65539_149'
                                   3412 ;redLed                    Allocated with name '_readSensorBpm_redLed_65540_150'
                                   3413 ;heartRate                 Allocated with name '_readSensorBpm_heartRate_65541_151'
                                   3414 ;confidence                Allocated with name '_readSensorBpm_confidence_65542_152'
                                   3415 ;oxygen                    Allocated with name '_readSensorBpm_oxygen_65542_152'
                                   3416 ;status                    Allocated with name '_readSensorBpm_status_65543_153'
                                   3417 ;temp                      Allocated with name '_readSensorBpm_temp_131079_154'
                                   3418 ;rValue                    Allocated with name '_readSensorBpm_rValue_131080_155'
                                   3419 ;extStatus                 Allocated with name '_readSensorBpm_extStatus_131081_156'
                                   3420 ;------------------------------------------------------------
                                   3421 ;	src/maxhub.c:765: int readSensorBpm(uint8_t mode, BioData *data)
                                   3422 ;	-----------------------------------------
                                   3423 ;	 function readSensorBpm
                                   3424 ;	-----------------------------------------
      002B3E                       3425 _readSensorBpm:
      002B3E E5 82            [12] 3426 	mov	a,dpl
      002B40 90 00 D5         [24] 3427 	mov	dptr,#_readSensorBpm_mode_65536_140
      002B43 F0               [24] 3428 	movx	@dptr,a
                                   3429 ;	src/maxhub.c:767: uint8_t hubStatus = readSensorHubStatus();
      002B44 12 21 CD         [24] 3430 	lcall	_readSensorHubStatus
      002B47 AF 82            [24] 3431 	mov	r7,dpl
                                   3432 ;	src/maxhub.c:768: if (hubStatus == 1)
      002B49 BF 01 38         [24] 3433 	cjne	r7,#0x01,00102$
                                   3434 ;	src/maxhub.c:770: ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
      002B4C 8F 05            [24] 3435 	mov	ar5,r7
      002B4E 7E 00            [12] 3436 	mov	r6,#0x00
      002B50 C0 05            [24] 3437 	push	ar5
      002B52 C0 06            [24] 3438 	push	ar6
      002B54 74 FE            [12] 3439 	mov	a,#___str_46
      002B56 C0 E0            [24] 3440 	push	acc
      002B58 74 55            [12] 3441 	mov	a,#(___str_46 >> 8)
      002B5A C0 E0            [24] 3442 	push	acc
      002B5C 74 80            [12] 3443 	mov	a,#0x80
      002B5E C0 E0            [24] 3444 	push	acc
      002B60 74 59            [12] 3445 	mov	a,#___str_33
      002B62 C0 E0            [24] 3446 	push	acc
      002B64 74 54            [12] 3447 	mov	a,#(___str_33 >> 8)
      002B66 C0 E0            [24] 3448 	push	acc
      002B68 12 3B B6         [24] 3449 	lcall	_printf_tiny
      002B6B E5 81            [12] 3450 	mov	a,sp
      002B6D 24 F9            [12] 3451 	add	a,#0xf9
      002B6F F5 81            [12] 3452 	mov	sp,a
      002B71 74 38            [12] 3453 	mov	a,#___str_2
      002B73 C0 E0            [24] 3454 	push	acc
      002B75 74 50            [12] 3455 	mov	a,#(___str_2 >> 8)
      002B77 C0 E0            [24] 3456 	push	acc
      002B79 12 3B B6         [24] 3457 	lcall	_printf_tiny
      002B7C 15 81            [12] 3458 	dec	sp
      002B7E 15 81            [12] 3459 	dec	sp
                                   3460 ;	src/maxhub.c:771: return FAIL;
      002B80 90 FF FF         [24] 3461 	mov	dptr,#0xffff
      002B83 22               [24] 3462 	ret
      002B84                       3463 00102$:
                                   3464 ;	src/maxhub.c:774: INFO_LOG("Hub Status = %d", hubStatus);
      002B84 7E 00            [12] 3465 	mov	r6,#0x00
      002B86 C0 07            [24] 3466 	push	ar7
      002B88 C0 06            [24] 3467 	push	ar6
      002B8A 74 0C            [12] 3468 	mov	a,#___str_47
      002B8C C0 E0            [24] 3469 	push	acc
      002B8E 74 56            [12] 3470 	mov	a,#(___str_47 >> 8)
      002B90 C0 E0            [24] 3471 	push	acc
      002B92 74 80            [12] 3472 	mov	a,#0x80
      002B94 C0 E0            [24] 3473 	push	acc
      002B96 12 3E BF         [24] 3474 	lcall	_printf
      002B99 E5 81            [12] 3475 	mov	a,sp
      002B9B 24 FB            [12] 3476 	add	a,#0xfb
      002B9D F5 81            [12] 3477 	mov	sp,a
      002B9F 74 38            [12] 3478 	mov	a,#___str_2
      002BA1 C0 E0            [24] 3479 	push	acc
      002BA3 74 50            [12] 3480 	mov	a,#(___str_2 >> 8)
      002BA5 C0 E0            [24] 3481 	push	acc
      002BA7 12 3B B6         [24] 3482 	lcall	_printf_tiny
      002BAA 15 81            [12] 3483 	dec	sp
      002BAC 15 81            [12] 3484 	dec	sp
                                   3485 ;	src/maxhub.c:776: uint8_t numSamples = numSamplesOutFifo();
      002BAE 12 26 B8         [24] 3486 	lcall	_numSamplesOutFifo
      002BB1 AF 82            [24] 3487 	mov	r7,dpl
                                   3488 ;	src/maxhub.c:777: if (numSamplesOutFifo() == 0)
      002BB3 C0 07            [24] 3489 	push	ar7
      002BB5 12 26 B8         [24] 3490 	lcall	_numSamplesOutFifo
      002BB8 E5 82            [12] 3491 	mov	a,dpl
      002BBA D0 07            [24] 3492 	pop	ar7
      002BBC 70 34            [24] 3493 	jnz	00104$
                                   3494 ;	src/maxhub.c:779: INFO_LOG("%s: No samples to read", __func__);
      002BBE 74 FE            [12] 3495 	mov	a,#___str_46
      002BC0 C0 E0            [24] 3496 	push	acc
      002BC2 74 55            [12] 3497 	mov	a,#(___str_46 >> 8)
      002BC4 C0 E0            [24] 3498 	push	acc
      002BC6 74 80            [12] 3499 	mov	a,#0x80
      002BC8 C0 E0            [24] 3500 	push	acc
      002BCA 74 C6            [12] 3501 	mov	a,#___str_37
      002BCC C0 E0            [24] 3502 	push	acc
      002BCE 74 54            [12] 3503 	mov	a,#(___str_37 >> 8)
      002BD0 C0 E0            [24] 3504 	push	acc
      002BD2 74 80            [12] 3505 	mov	a,#0x80
      002BD4 C0 E0            [24] 3506 	push	acc
      002BD6 12 3E BF         [24] 3507 	lcall	_printf
      002BD9 E5 81            [12] 3508 	mov	a,sp
      002BDB 24 FA            [12] 3509 	add	a,#0xfa
      002BDD F5 81            [12] 3510 	mov	sp,a
      002BDF 74 38            [12] 3511 	mov	a,#___str_2
      002BE1 C0 E0            [24] 3512 	push	acc
      002BE3 74 50            [12] 3513 	mov	a,#(___str_2 >> 8)
      002BE5 C0 E0            [24] 3514 	push	acc
      002BE7 12 3B B6         [24] 3515 	lcall	_printf_tiny
      002BEA 15 81            [12] 3516 	dec	sp
      002BEC 15 81            [12] 3517 	dec	sp
                                   3518 ;	src/maxhub.c:780: return FAIL;
      002BEE 90 FF FF         [24] 3519 	mov	dptr,#0xffff
      002BF1 22               [24] 3520 	ret
      002BF2                       3521 00104$:
                                   3522 ;	src/maxhub.c:783: INFO_LOG("Num Samples = %d", numSamples);
      002BF2 7E 00            [12] 3523 	mov	r6,#0x00
      002BF4 C0 07            [24] 3524 	push	ar7
      002BF6 C0 06            [24] 3525 	push	ar6
      002BF8 74 29            [12] 3526 	mov	a,#___str_48
      002BFA C0 E0            [24] 3527 	push	acc
      002BFC 74 56            [12] 3528 	mov	a,#(___str_48 >> 8)
      002BFE C0 E0            [24] 3529 	push	acc
      002C00 74 80            [12] 3530 	mov	a,#0x80
      002C02 C0 E0            [24] 3531 	push	acc
      002C04 12 3E BF         [24] 3532 	lcall	_printf
      002C07 E5 81            [12] 3533 	mov	a,sp
      002C09 24 FB            [12] 3534 	add	a,#0xfb
      002C0B F5 81            [12] 3535 	mov	sp,a
      002C0D 74 38            [12] 3536 	mov	a,#___str_2
      002C0F C0 E0            [24] 3537 	push	acc
      002C11 74 50            [12] 3538 	mov	a,#(___str_2 >> 8)
      002C13 C0 E0            [24] 3539 	push	acc
      002C15 12 3B B6         [24] 3540 	lcall	_printf_tiny
      002C18 15 81            [12] 3541 	dec	sp
      002C1A 15 81            [12] 3542 	dec	sp
                                   3543 ;	src/maxhub.c:787: if (mode == 1)
      002C1C 90 00 D5         [24] 3544 	mov	dptr,#_readSensorBpm_mode_65536_140
      002C1F E0               [24] 3545 	movx	a,@dptr
      002C20 FF               [12] 3546 	mov	r7,a
      002C21 BF 01 2E         [24] 3547 	cjne	r7,#0x01,00108$
                                   3548 ;	src/maxhub.c:789: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY);
      002C24 90 00 AF         [24] 3549 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
      002C27 74 01            [12] 3550 	mov	a,#0x01
      002C29 F0               [24] 3551 	movx	@dptr,a
      002C2A 90 00 B0         [24] 3552 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
      002C2D 74 D8            [12] 3553 	mov	a,#_readSensorBpm_sensorData_65538_145
      002C2F F0               [24] 3554 	movx	@dptr,a
      002C30 74 00            [12] 3555 	mov	a,#(_readSensorBpm_sensorData_65538_145 >> 8)
      002C32 A3               [24] 3556 	inc	dptr
      002C33 F0               [24] 3557 	movx	@dptr,a
      002C34 E4               [12] 3558 	clr	a
      002C35 A3               [24] 3559 	inc	dptr
      002C36 F0               [24] 3560 	movx	@dptr,a
      002C37 90 00 B3         [24] 3561 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
      002C3A 74 12            [12] 3562 	mov	a,#0x12
      002C3C F0               [24] 3563 	movx	@dptr,a
      002C3D 75 82 12         [24] 3564 	mov	dpl,#0x12
      002C40 12 1E 39         [24] 3565 	lcall	_i2cMax32664SequentialReadByte
      002C43 E5 82            [12] 3566 	mov	a,dpl
      002C45 85 83 F0         [24] 3567 	mov	b,dph
      002C48 90 00 D6         [24] 3568 	mov	dptr,#_readSensorBpm_statusByte_65538_145
      002C4B F0               [24] 3569 	movx	@dptr,a
      002C4C E5 F0            [12] 3570 	mov	a,b
      002C4E A3               [24] 3571 	inc	dptr
      002C4F F0               [24] 3572 	movx	@dptr,a
      002C50 80 2F            [24] 3573 	sjmp	00109$
      002C52                       3574 00108$:
                                   3575 ;	src/maxhub.c:798: else if (mode == 2)
      002C52 BF 02 2C         [24] 3576 	cjne	r7,#0x02,00109$
                                   3577 ;	src/maxhub.c:800: statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA);
      002C55 90 00 AF         [24] 3578 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_2
      002C58 74 01            [12] 3579 	mov	a,#0x01
      002C5A F0               [24] 3580 	movx	@dptr,a
      002C5B 90 00 B0         [24] 3581 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_3
      002C5E 74 D8            [12] 3582 	mov	a,#_readSensorBpm_sensorData_65538_145
      002C60 F0               [24] 3583 	movx	@dptr,a
      002C61 74 00            [12] 3584 	mov	a,#(_readSensorBpm_sensorData_65538_145 >> 8)
      002C63 A3               [24] 3585 	inc	dptr
      002C64 F0               [24] 3586 	movx	@dptr,a
      002C65 E4               [12] 3587 	clr	a
      002C66 A3               [24] 3588 	inc	dptr
      002C67 F0               [24] 3589 	movx	@dptr,a
      002C68 90 00 B3         [24] 3590 	mov	dptr,#_i2cMax32664SequentialReadByte_PARM_4
      002C6B 74 17            [12] 3591 	mov	a,#0x17
      002C6D F0               [24] 3592 	movx	@dptr,a
      002C6E 75 82 12         [24] 3593 	mov	dpl,#0x12
      002C71 12 1E 39         [24] 3594 	lcall	_i2cMax32664SequentialReadByte
      002C74 E5 82            [12] 3595 	mov	a,dpl
      002C76 85 83 F0         [24] 3596 	mov	b,dph
      002C79 90 00 D6         [24] 3597 	mov	dptr,#_readSensorBpm_statusByte_65538_145
      002C7C F0               [24] 3598 	movx	@dptr,a
      002C7D E5 F0            [12] 3599 	mov	a,b
      002C7F A3               [24] 3600 	inc	dptr
      002C80 F0               [24] 3601 	movx	@dptr,a
      002C81                       3602 00109$:
                                   3603 ;	src/maxhub.c:803: if (statusByte != SFE_BIO_SUCCESS)
      002C81 90 00 D6         [24] 3604 	mov	dptr,#_readSensorBpm_statusByte_65538_145
      002C84 E0               [24] 3605 	movx	a,@dptr
      002C85 F5 F0            [12] 3606 	mov	b,a
      002C87 A3               [24] 3607 	inc	dptr
      002C88 E0               [24] 3608 	movx	a,@dptr
      002C89 45 F0            [12] 3609 	orl	a,b
      002C8B 60 3A            [24] 3610 	jz	00111$
                                   3611 ;	src/maxhub.c:805: ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
      002C8D 90 00 D6         [24] 3612 	mov	dptr,#_readSensorBpm_statusByte_65538_145
      002C90 E0               [24] 3613 	movx	a,@dptr
      002C91 C0 E0            [24] 3614 	push	acc
      002C93 A3               [24] 3615 	inc	dptr
      002C94 E0               [24] 3616 	movx	a,@dptr
      002C95 C0 E0            [24] 3617 	push	acc
      002C97 74 FE            [12] 3618 	mov	a,#___str_46
      002C99 C0 E0            [24] 3619 	push	acc
      002C9B 74 55            [12] 3620 	mov	a,#(___str_46 >> 8)
      002C9D C0 E0            [24] 3621 	push	acc
      002C9F 74 80            [12] 3622 	mov	a,#0x80
      002CA1 C0 E0            [24] 3623 	push	acc
      002CA3 74 01            [12] 3624 	mov	a,#___str_40
      002CA5 C0 E0            [24] 3625 	push	acc
      002CA7 74 55            [12] 3626 	mov	a,#(___str_40 >> 8)
      002CA9 C0 E0            [24] 3627 	push	acc
      002CAB 12 3B B6         [24] 3628 	lcall	_printf_tiny
      002CAE E5 81            [12] 3629 	mov	a,sp
      002CB0 24 F9            [12] 3630 	add	a,#0xf9
      002CB2 F5 81            [12] 3631 	mov	sp,a
      002CB4 74 38            [12] 3632 	mov	a,#___str_2
      002CB6 C0 E0            [24] 3633 	push	acc
      002CB8 74 50            [12] 3634 	mov	a,#(___str_2 >> 8)
      002CBA C0 E0            [24] 3635 	push	acc
      002CBC 12 3B B6         [24] 3636 	lcall	_printf_tiny
      002CBF 15 81            [12] 3637 	dec	sp
      002CC1 15 81            [12] 3638 	dec	sp
                                   3639 ;	src/maxhub.c:806: return FAIL;
      002CC3 90 FF FF         [24] 3640 	mov	dptr,#0xffff
      002CC6 22               [24] 3641 	ret
      002CC7                       3642 00111$:
                                   3643 ;	src/maxhub.c:810: uint32_t irLed = sensorData[0];
      002CC7 90 00 D8         [24] 3644 	mov	dptr,#_readSensorBpm_sensorData_65538_145
      002CCA E0               [24] 3645 	movx	a,@dptr
      002CCB FF               [12] 3646 	mov	r7,a
      002CCC 7E 00            [12] 3647 	mov	r6,#0x00
      002CCE 7D 00            [12] 3648 	mov	r5,#0x00
                                   3649 ;	src/maxhub.c:811: irLed = (irLed << 8) | sensorData[1];
      002CD0 8D 04            [24] 3650 	mov	ar4,r5
      002CD2 8E 05            [24] 3651 	mov	ar5,r6
      002CD4 8F 06            [24] 3652 	mov	ar6,r7
      002CD6 7F 00            [12] 3653 	mov	r7,#0x00
      002CD8 90 00 D9         [24] 3654 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0001)
      002CDB E0               [24] 3655 	movx	a,@dptr
      002CDC F8               [12] 3656 	mov	r0,a
      002CDD E4               [12] 3657 	clr	a
      002CDE F9               [12] 3658 	mov	r1,a
      002CDF FA               [12] 3659 	mov	r2,a
      002CE0 FB               [12] 3660 	mov	r3,a
      002CE1 E8               [12] 3661 	mov	a,r0
      002CE2 42 07            [12] 3662 	orl	ar7,a
      002CE4 E9               [12] 3663 	mov	a,r1
      002CE5 42 06            [12] 3664 	orl	ar6,a
      002CE7 EA               [12] 3665 	mov	a,r2
      002CE8 42 05            [12] 3666 	orl	ar5,a
      002CEA EB               [12] 3667 	mov	a,r3
      002CEB 42 04            [12] 3668 	orl	ar4,a
                                   3669 ;	src/maxhub.c:812: irLed = (irLed << 8) | sensorData[2];
      002CED 8D 04            [24] 3670 	mov	ar4,r5
      002CEF 8E 05            [24] 3671 	mov	ar5,r6
      002CF1 8F 06            [24] 3672 	mov	ar6,r7
      002CF3 7F 00            [12] 3673 	mov	r7,#0x00
      002CF5 90 00 DA         [24] 3674 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0002)
      002CF8 E0               [24] 3675 	movx	a,@dptr
      002CF9 F8               [12] 3676 	mov	r0,a
      002CFA E4               [12] 3677 	clr	a
      002CFB F9               [12] 3678 	mov	r1,a
      002CFC FA               [12] 3679 	mov	r2,a
      002CFD FB               [12] 3680 	mov	r3,a
      002CFE E8               [12] 3681 	mov	a,r0
      002CFF 42 07            [12] 3682 	orl	ar7,a
      002D01 E9               [12] 3683 	mov	a,r1
      002D02 42 06            [12] 3684 	orl	ar6,a
      002D04 EA               [12] 3685 	mov	a,r2
      002D05 42 05            [12] 3686 	orl	ar5,a
      002D07 EB               [12] 3687 	mov	a,r3
      002D08 42 04            [12] 3688 	orl	ar4,a
                                   3689 ;	src/maxhub.c:817: redLed = (irLed << 8) | sensorData[5];
      002D0A 8D 1A            [24] 3690 	mov	(_readSensorBpm_sloc0_1_0 + 3),r5
      002D0C 8E 19            [24] 3691 	mov	(_readSensorBpm_sloc0_1_0 + 2),r6
      002D0E 8F 18            [24] 3692 	mov	(_readSensorBpm_sloc0_1_0 + 1),r7
      002D10 75 17 00         [24] 3693 	mov	_readSensorBpm_sloc0_1_0,#0x00
      002D13 90 00 DD         [24] 3694 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0005)
      002D16 E0               [24] 3695 	movx	a,@dptr
      002D17 F8               [12] 3696 	mov	r0,a
      002D18 E4               [12] 3697 	clr	a
      002D19 F9               [12] 3698 	mov	r1,a
      002D1A FA               [12] 3699 	mov	r2,a
      002D1B FB               [12] 3700 	mov	r3,a
      002D1C E8               [12] 3701 	mov	a,r0
      002D1D 42 17            [12] 3702 	orl	_readSensorBpm_sloc0_1_0,a
      002D1F E9               [12] 3703 	mov	a,r1
      002D20 42 18            [12] 3704 	orl	(_readSensorBpm_sloc0_1_0 + 1),a
      002D22 EA               [12] 3705 	mov	a,r2
      002D23 42 19            [12] 3706 	orl	(_readSensorBpm_sloc0_1_0 + 2),a
      002D25 EB               [12] 3707 	mov	a,r3
      002D26 42 1A            [12] 3708 	orl	(_readSensorBpm_sloc0_1_0 + 3),a
                                   3709 ;	src/maxhub.c:825: uint16_t heartRate = sensorData[12];
      002D28 90 00 E4         [24] 3710 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000c)
      002D2B E0               [24] 3711 	movx	a,@dptr
                                   3712 ;	src/maxhub.c:826: heartRate = (heartRate << 8) | (sensorData[13]);
      002D2C FA               [12] 3713 	mov	r2,a
      002D2D 7B 00            [12] 3714 	mov	r3,#0x00
      002D2F 90 00 E5         [24] 3715 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000d)
      002D32 E0               [24] 3716 	movx	a,@dptr
      002D33 79 00            [12] 3717 	mov	r1,#0x00
      002D35 42 03            [12] 3718 	orl	ar3,a
      002D37 E9               [12] 3719 	mov	a,r1
      002D38 42 02            [12] 3720 	orl	ar2,a
                                   3721 ;	src/maxhub.c:827: heartRate /= 10;
      002D3A 90 01 D5         [24] 3722 	mov	dptr,#__divuint_PARM_2
      002D3D 74 0A            [12] 3723 	mov	a,#0x0a
      002D3F F0               [24] 3724 	movx	@dptr,a
      002D40 E4               [12] 3725 	clr	a
      002D41 A3               [24] 3726 	inc	dptr
      002D42 F0               [24] 3727 	movx	@dptr,a
      002D43 8B 82            [24] 3728 	mov	dpl,r3
      002D45 8A 83            [24] 3729 	mov	dph,r2
      002D47 C0 07            [24] 3730 	push	ar7
      002D49 C0 06            [24] 3731 	push	ar6
      002D4B C0 05            [24] 3732 	push	ar5
      002D4D C0 04            [24] 3733 	push	ar4
      002D4F 12 3A 6E         [24] 3734 	lcall	__divuint
      002D52 AA 82            [24] 3735 	mov	r2,dpl
      002D54 AB 83            [24] 3736 	mov	r3,dph
                                   3737 ;	src/maxhub.c:830: uint8_t confidence = sensorData[14];
      002D56 90 00 E6         [24] 3738 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000e)
      002D59 E0               [24] 3739 	movx	a,@dptr
      002D5A F5 1B            [12] 3740 	mov	_readSensorBpm_sloc1_1_0,a
                                   3741 ;	src/maxhub.c:833: uint16_t oxygen = sensorData[15];
      002D5C 90 00 E7         [24] 3742 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x000f)
      002D5F E0               [24] 3743 	movx	a,@dptr
      002D60 F8               [12] 3744 	mov	r0,a
      002D61 79 00            [12] 3745 	mov	r1,#0x00
                                   3746 ;	src/maxhub.c:834: oxygen = (oxygen << 8) | sensorData[16];
      002D63 88 1D            [24] 3747 	mov	(_readSensorBpm_sloc2_1_0 + 1),r0
                                   3748 ;	1-genFromRTrack replaced	mov	_readSensorBpm_sloc2_1_0,#0x00
      002D65 89 1C            [24] 3749 	mov	_readSensorBpm_sloc2_1_0,r1
      002D67 90 00 E8         [24] 3750 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0010)
      002D6A E0               [24] 3751 	movx	a,@dptr
      002D6B F8               [12] 3752 	mov	r0,a
      002D6C 79 00            [12] 3753 	mov	r1,#0x00
      002D6E E5 1C            [12] 3754 	mov	a,_readSensorBpm_sloc2_1_0
      002D70 42 00            [12] 3755 	orl	ar0,a
      002D72 E5 1D            [12] 3756 	mov	a,(_readSensorBpm_sloc2_1_0 + 1)
      002D74 42 01            [12] 3757 	orl	ar1,a
                                   3758 ;	src/maxhub.c:835: oxygen /= 10;
      002D76 90 01 D5         [24] 3759 	mov	dptr,#__divuint_PARM_2
      002D79 74 0A            [12] 3760 	mov	a,#0x0a
      002D7B F0               [24] 3761 	movx	@dptr,a
      002D7C E4               [12] 3762 	clr	a
      002D7D A3               [24] 3763 	inc	dptr
      002D7E F0               [24] 3764 	movx	@dptr,a
      002D7F 88 82            [24] 3765 	mov	dpl,r0
      002D81 89 83            [24] 3766 	mov	dph,r1
      002D83 C0 03            [24] 3767 	push	ar3
      002D85 C0 02            [24] 3768 	push	ar2
      002D87 12 3A 6E         [24] 3769 	lcall	__divuint
      002D8A A8 82            [24] 3770 	mov	r0,dpl
      002D8C A9 83            [24] 3771 	mov	r1,dph
      002D8E D0 02            [24] 3772 	pop	ar2
      002D90 D0 03            [24] 3773 	pop	ar3
      002D92 D0 04            [24] 3774 	pop	ar4
      002D94 D0 05            [24] 3775 	pop	ar5
      002D96 D0 06            [24] 3776 	pop	ar6
      002D98 D0 07            [24] 3777 	pop	ar7
                                   3778 ;	src/maxhub.c:838: uint8_t status = sensorData[17];
      002D9A 90 00 E9         [24] 3779 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0011)
      002D9D E0               [24] 3780 	movx	a,@dptr
      002D9E F5 1C            [12] 3781 	mov	_readSensorBpm_sloc2_1_0,a
                                   3782 ;	src/maxhub.c:840: data->irLed = irLed;
      002DA0 90 00 D2         [24] 3783 	mov	dptr,#_readSensorBpm_PARM_2
      002DA3 E0               [24] 3784 	movx	a,@dptr
      002DA4 F5 1E            [12] 3785 	mov	_readSensorBpm_sloc3_1_0,a
      002DA6 A3               [24] 3786 	inc	dptr
      002DA7 E0               [24] 3787 	movx	a,@dptr
      002DA8 F5 1F            [12] 3788 	mov	(_readSensorBpm_sloc3_1_0 + 1),a
      002DAA A3               [24] 3789 	inc	dptr
      002DAB E0               [24] 3790 	movx	a,@dptr
      002DAC F5 20            [12] 3791 	mov	(_readSensorBpm_sloc3_1_0 + 2),a
      002DAE 85 1E 82         [24] 3792 	mov	dpl,_readSensorBpm_sloc3_1_0
      002DB1 85 1F 83         [24] 3793 	mov	dph,(_readSensorBpm_sloc3_1_0 + 1)
      002DB4 85 20 F0         [24] 3794 	mov	b,(_readSensorBpm_sloc3_1_0 + 2)
      002DB7 EF               [12] 3795 	mov	a,r7
      002DB8 12 3B 9B         [24] 3796 	lcall	__gptrput
      002DBB A3               [24] 3797 	inc	dptr
      002DBC EE               [12] 3798 	mov	a,r6
      002DBD 12 3B 9B         [24] 3799 	lcall	__gptrput
      002DC0 A3               [24] 3800 	inc	dptr
      002DC1 ED               [12] 3801 	mov	a,r5
      002DC2 12 3B 9B         [24] 3802 	lcall	__gptrput
      002DC5 A3               [24] 3803 	inc	dptr
      002DC6 EC               [12] 3804 	mov	a,r4
      002DC7 12 3B 9B         [24] 3805 	lcall	__gptrput
                                   3806 ;	src/maxhub.c:841: data->redLed = redLed;
      002DCA 74 04            [12] 3807 	mov	a,#0x04
      002DCC 25 1E            [12] 3808 	add	a,_readSensorBpm_sloc3_1_0
      002DCE FD               [12] 3809 	mov	r5,a
      002DCF E4               [12] 3810 	clr	a
      002DD0 35 1F            [12] 3811 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002DD2 FE               [12] 3812 	mov	r6,a
      002DD3 AF 20            [24] 3813 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002DD5 8D 82            [24] 3814 	mov	dpl,r5
      002DD7 8E 83            [24] 3815 	mov	dph,r6
      002DD9 8F F0            [24] 3816 	mov	b,r7
      002DDB E5 17            [12] 3817 	mov	a,_readSensorBpm_sloc0_1_0
      002DDD 12 3B 9B         [24] 3818 	lcall	__gptrput
      002DE0 A3               [24] 3819 	inc	dptr
      002DE1 E5 18            [12] 3820 	mov	a,(_readSensorBpm_sloc0_1_0 + 1)
      002DE3 12 3B 9B         [24] 3821 	lcall	__gptrput
      002DE6 A3               [24] 3822 	inc	dptr
      002DE7 E5 19            [12] 3823 	mov	a,(_readSensorBpm_sloc0_1_0 + 2)
      002DE9 12 3B 9B         [24] 3824 	lcall	__gptrput
      002DEC A3               [24] 3825 	inc	dptr
      002DED E5 1A            [12] 3826 	mov	a,(_readSensorBpm_sloc0_1_0 + 3)
      002DEF 12 3B 9B         [24] 3827 	lcall	__gptrput
                                   3828 ;	src/maxhub.c:843: data->heartRate = heartRate;
      002DF2 74 08            [12] 3829 	mov	a,#0x08
      002DF4 25 1E            [12] 3830 	add	a,_readSensorBpm_sloc3_1_0
      002DF6 FD               [12] 3831 	mov	r5,a
      002DF7 E4               [12] 3832 	clr	a
      002DF8 35 1F            [12] 3833 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002DFA FE               [12] 3834 	mov	r6,a
      002DFB AF 20            [24] 3835 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002DFD 8D 82            [24] 3836 	mov	dpl,r5
      002DFF 8E 83            [24] 3837 	mov	dph,r6
      002E01 8F F0            [24] 3838 	mov	b,r7
      002E03 EA               [12] 3839 	mov	a,r2
      002E04 12 3B 9B         [24] 3840 	lcall	__gptrput
      002E07 A3               [24] 3841 	inc	dptr
      002E08 EB               [12] 3842 	mov	a,r3
      002E09 12 3B 9B         [24] 3843 	lcall	__gptrput
                                   3844 ;	src/maxhub.c:844: data->confidence = confidence;
      002E0C 74 0A            [12] 3845 	mov	a,#0x0a
      002E0E 25 1E            [12] 3846 	add	a,_readSensorBpm_sloc3_1_0
      002E10 FD               [12] 3847 	mov	r5,a
      002E11 E4               [12] 3848 	clr	a
      002E12 35 1F            [12] 3849 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002E14 FE               [12] 3850 	mov	r6,a
      002E15 AF 20            [24] 3851 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002E17 8D 82            [24] 3852 	mov	dpl,r5
      002E19 8E 83            [24] 3853 	mov	dph,r6
      002E1B 8F F0            [24] 3854 	mov	b,r7
      002E1D E5 1B            [12] 3855 	mov	a,_readSensorBpm_sloc1_1_0
      002E1F 12 3B 9B         [24] 3856 	lcall	__gptrput
                                   3857 ;	src/maxhub.c:845: data->oxygen = oxygen;
      002E22 74 0B            [12] 3858 	mov	a,#0x0b
      002E24 25 1E            [12] 3859 	add	a,_readSensorBpm_sloc3_1_0
      002E26 FD               [12] 3860 	mov	r5,a
      002E27 E4               [12] 3861 	clr	a
      002E28 35 1F            [12] 3862 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002E2A FE               [12] 3863 	mov	r6,a
      002E2B AF 20            [24] 3864 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002E2D 8D 82            [24] 3865 	mov	dpl,r5
      002E2F 8E 83            [24] 3866 	mov	dph,r6
      002E31 8F F0            [24] 3867 	mov	b,r7
      002E33 E8               [12] 3868 	mov	a,r0
      002E34 12 3B 9B         [24] 3869 	lcall	__gptrput
      002E37 A3               [24] 3870 	inc	dptr
      002E38 E9               [12] 3871 	mov	a,r1
      002E39 12 3B 9B         [24] 3872 	lcall	__gptrput
                                   3873 ;	src/maxhub.c:846: data->status = status;
      002E3C 74 0D            [12] 3874 	mov	a,#0x0d
      002E3E 25 1E            [12] 3875 	add	a,_readSensorBpm_sloc3_1_0
      002E40 FD               [12] 3876 	mov	r5,a
      002E41 E4               [12] 3877 	clr	a
      002E42 35 1F            [12] 3878 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002E44 FE               [12] 3879 	mov	r6,a
      002E45 AF 20            [24] 3880 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002E47 8D 82            [24] 3881 	mov	dpl,r5
      002E49 8E 83            [24] 3882 	mov	dph,r6
      002E4B 8F F0            [24] 3883 	mov	b,r7
      002E4D E5 1C            [12] 3884 	mov	a,_readSensorBpm_sloc2_1_0
      002E4F 12 3B 9B         [24] 3885 	lcall	__gptrput
                                   3886 ;	src/maxhub.c:848: if (mode == 2)
      002E52 90 00 D5         [24] 3887 	mov	dptr,#_readSensorBpm_mode_65536_140
      002E55 E0               [24] 3888 	movx	a,@dptr
      002E56 FF               [12] 3889 	mov	r7,a
      002E57 BF 02 02         [24] 3890 	cjne	r7,#0x02,00159$
      002E5A 80 03            [24] 3891 	sjmp	00160$
      002E5C                       3892 00159$:
      002E5C 02 2E E1         [24] 3893 	ljmp	00113$
      002E5F                       3894 00160$:
                                   3895 ;	src/maxhub.c:851: uint16_t temp = sensorData[18];
      002E5F 90 00 EA         [24] 3896 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0012)
      002E62 E0               [24] 3897 	movx	a,@dptr
                                   3898 ;	src/maxhub.c:852: temp = (temp << 8) | sensorData[19];
      002E63 FE               [12] 3899 	mov	r6,a
      002E64 7F 00            [12] 3900 	mov	r7,#0x00
      002E66 90 00 EB         [24] 3901 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0013)
      002E69 E0               [24] 3902 	movx	a,@dptr
      002E6A 7C 00            [12] 3903 	mov	r4,#0x00
      002E6C 42 07            [12] 3904 	orl	ar7,a
      002E6E EC               [12] 3905 	mov	a,r4
      002E6F 42 06            [12] 3906 	orl	ar6,a
                                   3907 ;	src/maxhub.c:853: float rValue = temp;
      002E71 8F 82            [24] 3908 	mov	dpl,r7
      002E73 8E 83            [24] 3909 	mov	dph,r6
      002E75 12 3E 65         [24] 3910 	lcall	___uint2fs
      002E78 AC 82            [24] 3911 	mov	r4,dpl
      002E7A AD 83            [24] 3912 	mov	r5,dph
      002E7C AE F0            [24] 3913 	mov	r6,b
      002E7E FF               [12] 3914 	mov	r7,a
                                   3915 ;	src/maxhub.c:854: rValue = rValue / 10.0;
      002E7F E4               [12] 3916 	clr	a
      002E80 C0 E0            [24] 3917 	push	acc
      002E82 C0 E0            [24] 3918 	push	acc
      002E84 74 20            [12] 3919 	mov	a,#0x20
      002E86 C0 E0            [24] 3920 	push	acc
      002E88 74 41            [12] 3921 	mov	a,#0x41
      002E8A C0 E0            [24] 3922 	push	acc
                                   3923 ;	src/maxhub.c:857: uint8_t extStatus = sensorData[20];
      002E8C 8C 82            [24] 3924 	mov	dpl,r4
      002E8E 8D 83            [24] 3925 	mov	dph,r5
      002E90 8E F0            [24] 3926 	mov	b,r6
      002E92 EF               [12] 3927 	mov	a,r7
      002E93 12 48 EB         [24] 3928 	lcall	___fsdiv
      002E96 AC 82            [24] 3929 	mov	r4,dpl
      002E98 AD 83            [24] 3930 	mov	r5,dph
      002E9A AE F0            [24] 3931 	mov	r6,b
      002E9C FF               [12] 3932 	mov	r7,a
      002E9D E5 81            [12] 3933 	mov	a,sp
      002E9F 24 FC            [12] 3934 	add	a,#0xfc
      002EA1 F5 81            [12] 3935 	mov	sp,a
      002EA3 90 00 EC         [24] 3936 	mov	dptr,#(_readSensorBpm_sensorData_65538_145 + 0x0014)
      002EA6 E0               [24] 3937 	movx	a,@dptr
      002EA7 FB               [12] 3938 	mov	r3,a
                                   3939 ;	src/maxhub.c:859: data->rValue = rValue;
      002EA8 74 0E            [12] 3940 	mov	a,#0x0e
      002EAA 25 1E            [12] 3941 	add	a,_readSensorBpm_sloc3_1_0
      002EAC F8               [12] 3942 	mov	r0,a
      002EAD E4               [12] 3943 	clr	a
      002EAE 35 1F            [12] 3944 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002EB0 F9               [12] 3945 	mov	r1,a
      002EB1 AA 20            [24] 3946 	mov	r2,(_readSensorBpm_sloc3_1_0 + 2)
      002EB3 88 82            [24] 3947 	mov	dpl,r0
      002EB5 89 83            [24] 3948 	mov	dph,r1
      002EB7 8A F0            [24] 3949 	mov	b,r2
      002EB9 EC               [12] 3950 	mov	a,r4
      002EBA 12 3B 9B         [24] 3951 	lcall	__gptrput
      002EBD A3               [24] 3952 	inc	dptr
      002EBE ED               [12] 3953 	mov	a,r5
      002EBF 12 3B 9B         [24] 3954 	lcall	__gptrput
      002EC2 A3               [24] 3955 	inc	dptr
      002EC3 EE               [12] 3956 	mov	a,r6
      002EC4 12 3B 9B         [24] 3957 	lcall	__gptrput
      002EC7 A3               [24] 3958 	inc	dptr
      002EC8 EF               [12] 3959 	mov	a,r7
      002EC9 12 3B 9B         [24] 3960 	lcall	__gptrput
                                   3961 ;	src/maxhub.c:860: data->extStatus = extStatus;
      002ECC 74 12            [12] 3962 	mov	a,#0x12
      002ECE 25 1E            [12] 3963 	add	a,_readSensorBpm_sloc3_1_0
      002ED0 FD               [12] 3964 	mov	r5,a
      002ED1 E4               [12] 3965 	clr	a
      002ED2 35 1F            [12] 3966 	addc	a,(_readSensorBpm_sloc3_1_0 + 1)
      002ED4 FE               [12] 3967 	mov	r6,a
      002ED5 AF 20            [24] 3968 	mov	r7,(_readSensorBpm_sloc3_1_0 + 2)
      002ED7 8D 82            [24] 3969 	mov	dpl,r5
      002ED9 8E 83            [24] 3970 	mov	dph,r6
      002EDB 8F F0            [24] 3971 	mov	b,r7
      002EDD EB               [12] 3972 	mov	a,r3
      002EDE 12 3B 9B         [24] 3973 	lcall	__gptrput
      002EE1                       3974 00113$:
                                   3975 ;	src/maxhub.c:863: switch (status)
      002EE1 E5 1C            [12] 3976 	mov	a,_readSensorBpm_sloc2_1_0
      002EE3 FF               [12] 3977 	mov	r7,a
      002EE4 24 FB            [12] 3978 	add	a,#0xff - 0x04
      002EE6 50 03            [24] 3979 	jnc	00161$
      002EE8 02 2F C1         [24] 3980 	ljmp	00119$
      002EEB                       3981 00161$:
      002EEB EF               [12] 3982 	mov	a,r7
      002EEC 2F               [12] 3983 	add	a,r7
      002EED 2F               [12] 3984 	add	a,r7
      002EEE 90 2E F2         [24] 3985 	mov	dptr,#00162$
      002EF1 73               [24] 3986 	jmp	@a+dptr
      002EF2                       3987 00162$:
      002EF2 02 2F 01         [24] 3988 	ljmp	00114$
      002EF5 02 2F 28         [24] 3989 	ljmp	00115$
      002EF8 02 2F 4F         [24] 3990 	ljmp	00116$
      002EFB 02 2F 75         [24] 3991 	ljmp	00117$
      002EFE 02 2F 9B         [24] 3992 	ljmp	00118$
                                   3993 ;	src/maxhub.c:865: case NO_READING:
      002F01                       3994 00114$:
                                   3995 ;	src/maxhub.c:866: INFO_LOG("NO_READING");
      002F01 74 47            [12] 3996 	mov	a,#___str_49
      002F03 C0 E0            [24] 3997 	push	acc
      002F05 74 56            [12] 3998 	mov	a,#(___str_49 >> 8)
      002F07 C0 E0            [24] 3999 	push	acc
      002F09 74 80            [12] 4000 	mov	a,#0x80
      002F0B C0 E0            [24] 4001 	push	acc
      002F0D 12 3E BF         [24] 4002 	lcall	_printf
      002F10 15 81            [12] 4003 	dec	sp
      002F12 15 81            [12] 4004 	dec	sp
      002F14 15 81            [12] 4005 	dec	sp
      002F16 74 38            [12] 4006 	mov	a,#___str_2
      002F18 C0 E0            [24] 4007 	push	acc
      002F1A 74 50            [12] 4008 	mov	a,#(___str_2 >> 8)
      002F1C C0 E0            [24] 4009 	push	acc
      002F1E 12 3B B6         [24] 4010 	lcall	_printf_tiny
      002F21 15 81            [12] 4011 	dec	sp
      002F23 15 81            [12] 4012 	dec	sp
                                   4013 ;	src/maxhub.c:867: break;
      002F25 02 2F E9         [24] 4014 	ljmp	00120$
                                   4015 ;	src/maxhub.c:868: case NOT_READY:
      002F28                       4016 00115$:
                                   4017 ;	src/maxhub.c:869: INFO_LOG("NOT_READY");
      002F28 74 5F            [12] 4018 	mov	a,#___str_50
      002F2A C0 E0            [24] 4019 	push	acc
      002F2C 74 56            [12] 4020 	mov	a,#(___str_50 >> 8)
      002F2E C0 E0            [24] 4021 	push	acc
      002F30 74 80            [12] 4022 	mov	a,#0x80
      002F32 C0 E0            [24] 4023 	push	acc
      002F34 12 3E BF         [24] 4024 	lcall	_printf
      002F37 15 81            [12] 4025 	dec	sp
      002F39 15 81            [12] 4026 	dec	sp
      002F3B 15 81            [12] 4027 	dec	sp
      002F3D 74 38            [12] 4028 	mov	a,#___str_2
      002F3F C0 E0            [24] 4029 	push	acc
      002F41 74 50            [12] 4030 	mov	a,#(___str_2 >> 8)
      002F43 C0 E0            [24] 4031 	push	acc
      002F45 12 3B B6         [24] 4032 	lcall	_printf_tiny
      002F48 15 81            [12] 4033 	dec	sp
      002F4A 15 81            [12] 4034 	dec	sp
                                   4035 ;	src/maxhub.c:870: break;
      002F4C 02 2F E9         [24] 4036 	ljmp	00120$
                                   4037 ;	src/maxhub.c:871: case OBJECT_DETECTED:
      002F4F                       4038 00116$:
                                   4039 ;	src/maxhub.c:872: INFO_LOG("OBJECT_DETECTED");
      002F4F 74 76            [12] 4040 	mov	a,#___str_51
      002F51 C0 E0            [24] 4041 	push	acc
      002F53 74 56            [12] 4042 	mov	a,#(___str_51 >> 8)
      002F55 C0 E0            [24] 4043 	push	acc
      002F57 74 80            [12] 4044 	mov	a,#0x80
      002F59 C0 E0            [24] 4045 	push	acc
      002F5B 12 3E BF         [24] 4046 	lcall	_printf
      002F5E 15 81            [12] 4047 	dec	sp
      002F60 15 81            [12] 4048 	dec	sp
      002F62 15 81            [12] 4049 	dec	sp
      002F64 74 38            [12] 4050 	mov	a,#___str_2
      002F66 C0 E0            [24] 4051 	push	acc
      002F68 74 50            [12] 4052 	mov	a,#(___str_2 >> 8)
      002F6A C0 E0            [24] 4053 	push	acc
      002F6C 12 3B B6         [24] 4054 	lcall	_printf_tiny
      002F6F 15 81            [12] 4055 	dec	sp
      002F71 15 81            [12] 4056 	dec	sp
                                   4057 ;	src/maxhub.c:873: break;
                                   4058 ;	src/maxhub.c:874: case FINGER_DETECTED:
      002F73 80 74            [24] 4059 	sjmp	00120$
      002F75                       4060 00117$:
                                   4061 ;	src/maxhub.c:875: INFO_LOG("FINGER_DETECTED");
      002F75 74 93            [12] 4062 	mov	a,#___str_52
      002F77 C0 E0            [24] 4063 	push	acc
      002F79 74 56            [12] 4064 	mov	a,#(___str_52 >> 8)
      002F7B C0 E0            [24] 4065 	push	acc
      002F7D 74 80            [12] 4066 	mov	a,#0x80
      002F7F C0 E0            [24] 4067 	push	acc
      002F81 12 3E BF         [24] 4068 	lcall	_printf
      002F84 15 81            [12] 4069 	dec	sp
      002F86 15 81            [12] 4070 	dec	sp
      002F88 15 81            [12] 4071 	dec	sp
      002F8A 74 38            [12] 4072 	mov	a,#___str_2
      002F8C C0 E0            [24] 4073 	push	acc
      002F8E 74 50            [12] 4074 	mov	a,#(___str_2 >> 8)
      002F90 C0 E0            [24] 4075 	push	acc
      002F92 12 3B B6         [24] 4076 	lcall	_printf_tiny
      002F95 15 81            [12] 4077 	dec	sp
      002F97 15 81            [12] 4078 	dec	sp
                                   4079 ;	src/maxhub.c:876: break;
                                   4080 ;	src/maxhub.c:877: case PRESSING_TOO_HARD:
      002F99 80 4E            [24] 4081 	sjmp	00120$
      002F9B                       4082 00118$:
                                   4083 ;	src/maxhub.c:878: INFO_LOG("PRESSING_TOO_HARD");
      002F9B 74 B0            [12] 4084 	mov	a,#___str_53
      002F9D C0 E0            [24] 4085 	push	acc
      002F9F 74 56            [12] 4086 	mov	a,#(___str_53 >> 8)
      002FA1 C0 E0            [24] 4087 	push	acc
      002FA3 74 80            [12] 4088 	mov	a,#0x80
      002FA5 C0 E0            [24] 4089 	push	acc
      002FA7 12 3E BF         [24] 4090 	lcall	_printf
      002FAA 15 81            [12] 4091 	dec	sp
      002FAC 15 81            [12] 4092 	dec	sp
      002FAE 15 81            [12] 4093 	dec	sp
      002FB0 74 38            [12] 4094 	mov	a,#___str_2
      002FB2 C0 E0            [24] 4095 	push	acc
      002FB4 74 50            [12] 4096 	mov	a,#(___str_2 >> 8)
      002FB6 C0 E0            [24] 4097 	push	acc
      002FB8 12 3B B6         [24] 4098 	lcall	_printf_tiny
      002FBB 15 81            [12] 4099 	dec	sp
      002FBD 15 81            [12] 4100 	dec	sp
                                   4101 ;	src/maxhub.c:879: break;
                                   4102 ;	src/maxhub.c:880: default:
      002FBF 80 28            [24] 4103 	sjmp	00120$
      002FC1                       4104 00119$:
                                   4105 ;	src/maxhub.c:881: ERROR_LOG("UNKNOWN ERROR: %d", status);
      002FC1 AE 1C            [24] 4106 	mov	r6,_readSensorBpm_sloc2_1_0
      002FC3 7F 00            [12] 4107 	mov	r7,#0x00
      002FC5 C0 06            [24] 4108 	push	ar6
      002FC7 C0 07            [24] 4109 	push	ar7
      002FC9 74 CF            [12] 4110 	mov	a,#___str_54
      002FCB C0 E0            [24] 4111 	push	acc
      002FCD 74 56            [12] 4112 	mov	a,#(___str_54 >> 8)
      002FCF C0 E0            [24] 4113 	push	acc
      002FD1 12 3B B6         [24] 4114 	lcall	_printf_tiny
      002FD4 E5 81            [12] 4115 	mov	a,sp
      002FD6 24 FC            [12] 4116 	add	a,#0xfc
      002FD8 F5 81            [12] 4117 	mov	sp,a
      002FDA 74 38            [12] 4118 	mov	a,#___str_2
      002FDC C0 E0            [24] 4119 	push	acc
      002FDE 74 50            [12] 4120 	mov	a,#(___str_2 >> 8)
      002FE0 C0 E0            [24] 4121 	push	acc
      002FE2 12 3B B6         [24] 4122 	lcall	_printf_tiny
      002FE5 15 81            [12] 4123 	dec	sp
      002FE7 15 81            [12] 4124 	dec	sp
                                   4125 ;	src/maxhub.c:882: }
      002FE9                       4126 00120$:
                                   4127 ;	src/maxhub.c:884: return SUCCESS;
      002FE9 90 00 00         [24] 4128 	mov	dptr,#0x0000
                                   4129 ;	src/maxhub.c:885: }
      002FEC 22               [24] 4130 	ret
                                   4131 ;------------------------------------------------------------
                                   4132 ;Allocation info for local variables in function 'setPulseWidth'
                                   4133 ;------------------------------------------------------------
                                   4134 ;width                     Allocated with name '_setPulseWidth_width_65536_158'
                                   4135 ;bits                      Allocated with name '_setPulseWidth_bits_65536_159'
                                   4136 ;regVal                    Allocated with name '_setPulseWidth_regVal_65536_159'
                                   4137 ;------------------------------------------------------------
                                   4138 ;	src/maxhub.c:901: int setPulseWidth(uint16_t width)
                                   4139 ;	-----------------------------------------
                                   4140 ;	 function setPulseWidth
                                   4141 ;	-----------------------------------------
      002FED                       4142 _setPulseWidth:
      002FED AF 83            [24] 4143 	mov	r7,dph
      002FEF E5 82            [12] 4144 	mov	a,dpl
      002FF1 90 00 EF         [24] 4145 	mov	dptr,#_setPulseWidth_width_65536_158
      002FF4 F0               [24] 4146 	movx	@dptr,a
      002FF5 EF               [12] 4147 	mov	a,r7
      002FF6 A3               [24] 4148 	inc	dptr
      002FF7 F0               [24] 4149 	movx	@dptr,a
                                   4150 ;	src/maxhub.c:908: if (width == 69)
      002FF8 90 00 EF         [24] 4151 	mov	dptr,#_setPulseWidth_width_65536_158
      002FFB E0               [24] 4152 	movx	a,@dptr
      002FFC FE               [12] 4153 	mov	r6,a
      002FFD A3               [24] 4154 	inc	dptr
      002FFE E0               [24] 4155 	movx	a,@dptr
      002FFF FF               [12] 4156 	mov	r7,a
      003000 BE 45 0A         [24] 4157 	cjne	r6,#0x45,00111$
      003003 BF 00 07         [24] 4158 	cjne	r7,#0x00,00111$
                                   4159 ;	src/maxhub.c:909: bits = 0;
      003006 90 00 F1         [24] 4160 	mov	dptr,#_setPulseWidth_bits_65536_159
      003009 E4               [12] 4161 	clr	a
      00300A F0               [24] 4162 	movx	@dptr,a
      00300B 80 2E            [24] 4163 	sjmp	00112$
      00300D                       4164 00111$:
                                   4165 ;	src/maxhub.c:910: else if (width == 118)
      00300D BE 76 0B         [24] 4166 	cjne	r6,#0x76,00108$
      003010 BF 00 08         [24] 4167 	cjne	r7,#0x00,00108$
                                   4168 ;	src/maxhub.c:911: bits = 1;
      003013 90 00 F1         [24] 4169 	mov	dptr,#_setPulseWidth_bits_65536_159
      003016 74 01            [12] 4170 	mov	a,#0x01
      003018 F0               [24] 4171 	movx	@dptr,a
      003019 80 20            [24] 4172 	sjmp	00112$
      00301B                       4173 00108$:
                                   4174 ;	src/maxhub.c:912: else if (width == 215)
      00301B BE D7 0B         [24] 4175 	cjne	r6,#0xd7,00105$
      00301E BF 00 08         [24] 4176 	cjne	r7,#0x00,00105$
                                   4177 ;	src/maxhub.c:913: bits = 2;
      003021 90 00 F1         [24] 4178 	mov	dptr,#_setPulseWidth_bits_65536_159
      003024 74 02            [12] 4179 	mov	a,#0x02
      003026 F0               [24] 4180 	movx	@dptr,a
      003027 80 12            [24] 4181 	sjmp	00112$
      003029                       4182 00105$:
                                   4183 ;	src/maxhub.c:914: else if (width == 411)
      003029 BE 9B 0B         [24] 4184 	cjne	r6,#0x9b,00102$
      00302C BF 01 08         [24] 4185 	cjne	r7,#0x01,00102$
                                   4186 ;	src/maxhub.c:915: bits = 3;
      00302F 90 00 F1         [24] 4187 	mov	dptr,#_setPulseWidth_bits_65536_159
      003032 74 03            [12] 4188 	mov	a,#0x03
      003034 F0               [24] 4189 	movx	@dptr,a
      003035 80 04            [24] 4190 	sjmp	00112$
      003037                       4191 00102$:
                                   4192 ;	src/maxhub.c:917: return FAIL;
      003037 90 FF FF         [24] 4193 	mov	dptr,#0xffff
      00303A 22               [24] 4194 	ret
      00303B                       4195 00112$:
                                   4196 ;	src/maxhub.c:920: regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
      00303B 75 82 0A         [24] 4197 	mov	dpl,#0x0a
      00303E 12 20 C1         [24] 4198 	lcall	_readRegisterMAX30101
      003041 E5 82            [12] 4199 	mov	a,dpl
                                   4200 ;	src/maxhub.c:921: regVal &= PULSE_MASK;                                  // Mask bits to change.
      003043 54 FC            [12] 4201 	anl	a,#0xfc
      003045 FF               [12] 4202 	mov	r7,a
                                   4203 ;	src/maxhub.c:922: regVal |= bits;                                        // Add bits
      003046 90 00 F1         [24] 4204 	mov	dptr,#_setPulseWidth_bits_65536_159
      003049 E0               [24] 4205 	movx	a,@dptr
      00304A 90 00 B5         [24] 4206 	mov	dptr,#_writeRegisterMAX30101_PARM_2
      00304D 4F               [12] 4207 	orl	a,r7
      00304E F0               [24] 4208 	movx	@dptr,a
                                   4209 ;	src/maxhub.c:923: writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register
      00304F 75 82 0A         [24] 4210 	mov	dpl,#0x0a
      003052 12 20 8F         [24] 4211 	lcall	_writeRegisterMAX30101
                                   4212 ;	src/maxhub.c:925: return SFE_BIO_SUCCESS;
      003055 90 00 00         [24] 4213 	mov	dptr,#0x0000
                                   4214 ;	src/maxhub.c:926: }
      003058 22               [24] 4215 	ret
                                   4216 ;------------------------------------------------------------
                                   4217 ;Allocation info for local variables in function 'setSampleRate'
                                   4218 ;------------------------------------------------------------
                                   4219 ;sampRate                  Allocated with name '_setSampleRate_sampRate_65536_160'
                                   4220 ;bits                      Allocated with name '_setSampleRate_bits_65536_161'
                                   4221 ;regVal                    Allocated with name '_setSampleRate_regVal_65536_161'
                                   4222 ;------------------------------------------------------------
                                   4223 ;	src/maxhub.c:941: int setSampleRate(uint16_t sampRate)
                                   4224 ;	-----------------------------------------
                                   4225 ;	 function setSampleRate
                                   4226 ;	-----------------------------------------
      003059                       4227 _setSampleRate:
      003059 AF 83            [24] 4228 	mov	r7,dph
      00305B E5 82            [12] 4229 	mov	a,dpl
      00305D 90 00 F2         [24] 4230 	mov	dptr,#_setSampleRate_sampRate_65536_160
      003060 F0               [24] 4231 	movx	@dptr,a
      003061 EF               [12] 4232 	mov	a,r7
      003062 A3               [24] 4233 	inc	dptr
      003063 F0               [24] 4234 	movx	@dptr,a
                                   4235 ;	src/maxhub.c:948: if (sampRate == 50)
      003064 90 00 F2         [24] 4236 	mov	dptr,#_setSampleRate_sampRate_65536_160
      003067 E0               [24] 4237 	movx	a,@dptr
      003068 FE               [12] 4238 	mov	r6,a
      003069 A3               [24] 4239 	inc	dptr
      00306A E0               [24] 4240 	movx	a,@dptr
      00306B FF               [12] 4241 	mov	r7,a
      00306C BE 32 0A         [24] 4242 	cjne	r6,#0x32,00123$
      00306F BF 00 07         [24] 4243 	cjne	r7,#0x00,00123$
                                   4244 ;	src/maxhub.c:949: bits = 0;
      003072 90 00 F4         [24] 4245 	mov	dptr,#_setSampleRate_bits_65536_161
      003075 E4               [12] 4246 	clr	a
      003076 F0               [24] 4247 	movx	@dptr,a
      003077 80 66            [24] 4248 	sjmp	00124$
      003079                       4249 00123$:
                                   4250 ;	src/maxhub.c:950: else if (sampRate == 100)
      003079 BE 64 0B         [24] 4251 	cjne	r6,#0x64,00120$
      00307C BF 00 08         [24] 4252 	cjne	r7,#0x00,00120$
                                   4253 ;	src/maxhub.c:951: bits = 1;
      00307F 90 00 F4         [24] 4254 	mov	dptr,#_setSampleRate_bits_65536_161
      003082 74 01            [12] 4255 	mov	a,#0x01
      003084 F0               [24] 4256 	movx	@dptr,a
      003085 80 58            [24] 4257 	sjmp	00124$
      003087                       4258 00120$:
                                   4259 ;	src/maxhub.c:952: else if (sampRate == 200)
      003087 BE C8 0B         [24] 4260 	cjne	r6,#0xc8,00117$
      00308A BF 00 08         [24] 4261 	cjne	r7,#0x00,00117$
                                   4262 ;	src/maxhub.c:953: bits = 2;
      00308D 90 00 F4         [24] 4263 	mov	dptr,#_setSampleRate_bits_65536_161
      003090 74 02            [12] 4264 	mov	a,#0x02
      003092 F0               [24] 4265 	movx	@dptr,a
      003093 80 4A            [24] 4266 	sjmp	00124$
      003095                       4267 00117$:
                                   4268 ;	src/maxhub.c:954: else if (sampRate == 400)
      003095 BE 90 0B         [24] 4269 	cjne	r6,#0x90,00114$
      003098 BF 01 08         [24] 4270 	cjne	r7,#0x01,00114$
                                   4271 ;	src/maxhub.c:955: bits = 3;
      00309B 90 00 F4         [24] 4272 	mov	dptr,#_setSampleRate_bits_65536_161
      00309E 74 03            [12] 4273 	mov	a,#0x03
      0030A0 F0               [24] 4274 	movx	@dptr,a
      0030A1 80 3C            [24] 4275 	sjmp	00124$
      0030A3                       4276 00114$:
                                   4277 ;	src/maxhub.c:956: else if (sampRate == 800)
      0030A3 BE 20 0B         [24] 4278 	cjne	r6,#0x20,00111$
      0030A6 BF 03 08         [24] 4279 	cjne	r7,#0x03,00111$
                                   4280 ;	src/maxhub.c:957: bits = 4;
      0030A9 90 00 F4         [24] 4281 	mov	dptr,#_setSampleRate_bits_65536_161
      0030AC 74 04            [12] 4282 	mov	a,#0x04
      0030AE F0               [24] 4283 	movx	@dptr,a
      0030AF 80 2E            [24] 4284 	sjmp	00124$
      0030B1                       4285 00111$:
                                   4286 ;	src/maxhub.c:958: else if (sampRate == 1000)
      0030B1 BE E8 0B         [24] 4287 	cjne	r6,#0xe8,00108$
      0030B4 BF 03 08         [24] 4288 	cjne	r7,#0x03,00108$
                                   4289 ;	src/maxhub.c:959: bits = 5;
      0030B7 90 00 F4         [24] 4290 	mov	dptr,#_setSampleRate_bits_65536_161
      0030BA 74 05            [12] 4291 	mov	a,#0x05
      0030BC F0               [24] 4292 	movx	@dptr,a
      0030BD 80 20            [24] 4293 	sjmp	00124$
      0030BF                       4294 00108$:
                                   4295 ;	src/maxhub.c:960: else if (sampRate == 1600)
      0030BF BE 40 0B         [24] 4296 	cjne	r6,#0x40,00105$
      0030C2 BF 06 08         [24] 4297 	cjne	r7,#0x06,00105$
                                   4298 ;	src/maxhub.c:961: bits = 6;
      0030C5 90 00 F4         [24] 4299 	mov	dptr,#_setSampleRate_bits_65536_161
      0030C8 74 06            [12] 4300 	mov	a,#0x06
      0030CA F0               [24] 4301 	movx	@dptr,a
      0030CB 80 12            [24] 4302 	sjmp	00124$
      0030CD                       4303 00105$:
                                   4304 ;	src/maxhub.c:962: else if (sampRate == 3200)
      0030CD BE 80 0B         [24] 4305 	cjne	r6,#0x80,00102$
      0030D0 BF 0C 08         [24] 4306 	cjne	r7,#0x0c,00102$
                                   4307 ;	src/maxhub.c:963: bits = 7;
      0030D3 90 00 F4         [24] 4308 	mov	dptr,#_setSampleRate_bits_65536_161
      0030D6 74 07            [12] 4309 	mov	a,#0x07
      0030D8 F0               [24] 4310 	movx	@dptr,a
      0030D9 80 04            [24] 4311 	sjmp	00124$
      0030DB                       4312 00102$:
                                   4313 ;	src/maxhub.c:965: return FAIL;
      0030DB 90 FF FF         [24] 4314 	mov	dptr,#0xffff
      0030DE 22               [24] 4315 	ret
      0030DF                       4316 00124$:
                                   4317 ;	src/maxhub.c:968: regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
      0030DF 75 82 0A         [24] 4318 	mov	dpl,#0x0a
      0030E2 12 20 C1         [24] 4319 	lcall	_readRegisterMAX30101
      0030E5 E5 82            [12] 4320 	mov	a,dpl
                                   4321 ;	src/maxhub.c:969: regVal &= SAMP_MASK;                                   // Mask bits to change.
      0030E7 54 E3            [12] 4322 	anl	a,#0xe3
      0030E9 FF               [12] 4323 	mov	r7,a
                                   4324 ;	src/maxhub.c:970: regVal |= (bits << 2);                                 // Add bits but shift them first to correct position.
      0030EA 90 00 F4         [24] 4325 	mov	dptr,#_setSampleRate_bits_65536_161
      0030ED E0               [24] 4326 	movx	a,@dptr
      0030EE 25 E0            [12] 4327 	add	a,acc
      0030F0 25 E0            [12] 4328 	add	a,acc
      0030F2 90 00 B5         [24] 4329 	mov	dptr,#_writeRegisterMAX30101_PARM_2
      0030F5 4F               [12] 4330 	orl	a,r7
      0030F6 F0               [24] 4331 	movx	@dptr,a
                                   4332 ;	src/maxhub.c:971: writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register
      0030F7 75 82 0A         [24] 4333 	mov	dpl,#0x0a
      0030FA 12 20 8F         [24] 4334 	lcall	_writeRegisterMAX30101
                                   4335 ;	src/maxhub.c:973: return SFE_BIO_SUCCESS;
      0030FD 90 00 00         [24] 4336 	mov	dptr,#0x0000
                                   4337 ;	src/maxhub.c:974: }
      003100 22               [24] 4338 	ret
                                   4339 ;------------------------------------------------------------
                                   4340 ;Allocation info for local variables in function 'checkDeviceType'
                                   4341 ;------------------------------------------------------------
                                   4342 ;returnByte                Allocated with name '_checkDeviceType_returnByte_65536_162'
                                   4343 ;------------------------------------------------------------
                                   4344 ;	src/maxhub.c:984: int checkDeviceType()
                                   4345 ;	-----------------------------------------
                                   4346 ;	 function checkDeviceType
                                   4347 ;	-----------------------------------------
      003101                       4348 _checkDeviceType:
                                   4349 ;	src/maxhub.c:986: int returnByte = i2cMax32664ReadByte(IDENTITY, READ_MCU_TYPE, NULL);
      003101 90 00 AA         [24] 4350 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      003104 E4               [12] 4351 	clr	a
      003105 F0               [24] 4352 	movx	@dptr,a
      003106 90 00 AB         [24] 4353 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      003109 F0               [24] 4354 	movx	@dptr,a
      00310A A3               [24] 4355 	inc	dptr
      00310B F0               [24] 4356 	movx	@dptr,a
      00310C A3               [24] 4357 	inc	dptr
      00310D F0               [24] 4358 	movx	@dptr,a
      00310E 75 82 FF         [24] 4359 	mov	dpl,#0xff
      003111 12 1C 78         [24] 4360 	lcall	_i2cMax32664ReadByte
      003114 AE 82            [24] 4361 	mov	r6,dpl
      003116 AF 83            [24] 4362 	mov	r7,dph
                                   4363 ;	src/maxhub.c:987: if (returnByte == FAIL)
      003118 BE FF 25         [24] 4364 	cjne	r6,#0xff,00102$
      00311B BF FF 22         [24] 4365 	cjne	r7,#0xff,00102$
                                   4366 ;	src/maxhub.c:989: ERROR_LOG("Reaed Device Type failed");
      00311E 74 F1            [12] 4367 	mov	a,#___str_55
      003120 C0 E0            [24] 4368 	push	acc
      003122 74 56            [12] 4369 	mov	a,#(___str_55 >> 8)
      003124 C0 E0            [24] 4370 	push	acc
      003126 12 3B B6         [24] 4371 	lcall	_printf_tiny
      003129 15 81            [12] 4372 	dec	sp
      00312B 15 81            [12] 4373 	dec	sp
      00312D 74 38            [12] 4374 	mov	a,#___str_2
      00312F C0 E0            [24] 4375 	push	acc
      003131 74 50            [12] 4376 	mov	a,#(___str_2 >> 8)
      003133 C0 E0            [24] 4377 	push	acc
      003135 12 3B B6         [24] 4378 	lcall	_printf_tiny
      003138 15 81            [12] 4379 	dec	sp
      00313A 15 81            [12] 4380 	dec	sp
                                   4381 ;	src/maxhub.c:990: return FAIL;
      00313C 90 FF FF         [24] 4382 	mov	dptr,#0xffff
      00313F 22               [24] 4383 	ret
      003140                       4384 00102$:
                                   4385 ;	src/maxhub.c:994: if (returnByte != 0x01)
      003140 BE 01 05         [24] 4386 	cjne	r6,#0x01,00117$
      003143 BF 00 02         [24] 4387 	cjne	r7,#0x00,00117$
      003146 80 28            [24] 4388 	sjmp	00104$
      003148                       4389 00117$:
                                   4390 ;	src/maxhub.c:996: ERROR_LOG("Device Type %d not expected", returnByte);
      003148 C0 06            [24] 4391 	push	ar6
      00314A C0 07            [24] 4392 	push	ar7
      00314C 74 1A            [12] 4393 	mov	a,#___str_56
      00314E C0 E0            [24] 4394 	push	acc
      003150 74 57            [12] 4395 	mov	a,#(___str_56 >> 8)
      003152 C0 E0            [24] 4396 	push	acc
      003154 12 3B B6         [24] 4397 	lcall	_printf_tiny
      003157 E5 81            [12] 4398 	mov	a,sp
      003159 24 FC            [12] 4399 	add	a,#0xfc
      00315B F5 81            [12] 4400 	mov	sp,a
      00315D 74 38            [12] 4401 	mov	a,#___str_2
      00315F C0 E0            [24] 4402 	push	acc
      003161 74 50            [12] 4403 	mov	a,#(___str_2 >> 8)
      003163 C0 E0            [24] 4404 	push	acc
      003165 12 3B B6         [24] 4405 	lcall	_printf_tiny
      003168 15 81            [12] 4406 	dec	sp
      00316A 15 81            [12] 4407 	dec	sp
                                   4408 ;	src/maxhub.c:997: return FAIL;
      00316C 90 FF FF         [24] 4409 	mov	dptr,#0xffff
      00316F 22               [24] 4410 	ret
      003170                       4411 00104$:
                                   4412 ;	src/maxhub.c:1000: INFO_LOG("Device Type Check Success");
      003170 74 46            [12] 4413 	mov	a,#___str_57
      003172 C0 E0            [24] 4414 	push	acc
      003174 74 57            [12] 4415 	mov	a,#(___str_57 >> 8)
      003176 C0 E0            [24] 4416 	push	acc
      003178 74 80            [12] 4417 	mov	a,#0x80
      00317A C0 E0            [24] 4418 	push	acc
      00317C 12 3E BF         [24] 4419 	lcall	_printf
      00317F 15 81            [12] 4420 	dec	sp
      003181 15 81            [12] 4421 	dec	sp
      003183 15 81            [12] 4422 	dec	sp
      003185 74 38            [12] 4423 	mov	a,#___str_2
      003187 C0 E0            [24] 4424 	push	acc
      003189 74 50            [12] 4425 	mov	a,#(___str_2 >> 8)
      00318B C0 E0            [24] 4426 	push	acc
      00318D 12 3B B6         [24] 4427 	lcall	_printf_tiny
      003190 15 81            [12] 4428 	dec	sp
      003192 15 81            [12] 4429 	dec	sp
                                   4430 ;	src/maxhub.c:1001: return SUCCESS;
      003194 90 00 00         [24] 4431 	mov	dptr,#0x0000
                                   4432 ;	src/maxhub.c:1002: }
      003197 22               [24] 4433 	ret
                                   4434 ;------------------------------------------------------------
                                   4435 ;Allocation info for local variables in function 'lastTest'
                                   4436 ;------------------------------------------------------------
                                   4437 ;status                    Allocated with name '_lastTest_status_65536_165'
                                   4438 ;readVal                   Allocated with name '_lastTest_readVal_131072_166'
                                   4439 ;------------------------------------------------------------
                                   4440 ;	src/maxhub.c:1010: void lastTest()
                                   4441 ;	-----------------------------------------
                                   4442 ;	 function lastTest
                                   4443 ;	-----------------------------------------
      003198                       4444 _lastTest:
                                   4445 ;	src/maxhub.c:1013: int status = i2cMax32664WriteByte(0x10, 0x00, 0x03);
      003198 90 00 A7         [24] 4446 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      00319B E4               [12] 4447 	clr	a
      00319C F0               [24] 4448 	movx	@dptr,a
      00319D 90 00 A8         [24] 4449 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0031A0 74 03            [12] 4450 	mov	a,#0x03
      0031A2 F0               [24] 4451 	movx	@dptr,a
      0031A3 75 82 10         [24] 4452 	mov	dpl,#0x10
      0031A6 12 1C 0A         [24] 4453 	lcall	_i2cMax32664WriteByte
                                   4454 ;	src/maxhub.c:1016: status = i2cMax32664WriteByte(0x10, 0x01, 0x01);
      0031A9 90 00 A7         [24] 4455 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      0031AC 74 01            [12] 4456 	mov	a,#0x01
      0031AE F0               [24] 4457 	movx	@dptr,a
      0031AF 90 00 A8         [24] 4458 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0031B2 F0               [24] 4459 	movx	@dptr,a
      0031B3 75 82 10         [24] 4460 	mov	dpl,#0x10
      0031B6 12 1C 0A         [24] 4461 	lcall	_i2cMax32664WriteByte
                                   4462 ;	src/maxhub.c:1019: status = i2cMax32664WriteByte(0x44, 0x03, 0x01);
      0031B9 90 00 A7         [24] 4463 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      0031BC 74 03            [12] 4464 	mov	a,#0x03
      0031BE F0               [24] 4465 	movx	@dptr,a
      0031BF 90 00 A8         [24] 4466 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0031C2 74 01            [12] 4467 	mov	a,#0x01
      0031C4 F0               [24] 4468 	movx	@dptr,a
      0031C5 75 82 44         [24] 4469 	mov	dpl,#0x44
      0031C8 12 1C 0A         [24] 4470 	lcall	_i2cMax32664WriteByte
                                   4471 ;	src/maxhub.c:1022: status = i2cMax32664WriteByte(0x52, 0x02, 0x01);
      0031CB 90 00 A7         [24] 4472 	mov	dptr,#_i2cMax32664WriteByte_PARM_2
      0031CE 74 02            [12] 4473 	mov	a,#0x02
      0031D0 F0               [24] 4474 	movx	@dptr,a
      0031D1 90 00 A8         [24] 4475 	mov	dptr,#_i2cMax32664WriteByte_PARM_3
      0031D4 14               [12] 4476 	dec	a
      0031D5 F0               [24] 4477 	movx	@dptr,a
      0031D6 75 82 52         [24] 4478 	mov	dpl,#0x52
      0031D9 12 1C 0A         [24] 4479 	lcall	_i2cMax32664WriteByte
                                   4480 ;	src/maxhub.c:1025: while(1)
      0031DC                       4481 00102$:
                                   4482 ;	src/maxhub.c:1027: int readVal = i2cMax32664ReadByte(0x00, 0x00, NULL);
      0031DC 90 00 AA         [24] 4483 	mov	dptr,#_i2cMax32664ReadByte_PARM_2
      0031DF E4               [12] 4484 	clr	a
      0031E0 F0               [24] 4485 	movx	@dptr,a
      0031E1 90 00 AB         [24] 4486 	mov	dptr,#_i2cMax32664ReadByte_PARM_3
      0031E4 F0               [24] 4487 	movx	@dptr,a
      0031E5 A3               [24] 4488 	inc	dptr
      0031E6 F0               [24] 4489 	movx	@dptr,a
      0031E7 A3               [24] 4490 	inc	dptr
      0031E8 F0               [24] 4491 	movx	@dptr,a
      0031E9 75 82 00         [24] 4492 	mov	dpl,#0x00
      0031EC 12 1C 78         [24] 4493 	lcall	_i2cMax32664ReadByte
      0031EF AE 82            [24] 4494 	mov	r6,dpl
      0031F1 AF 83            [24] 4495 	mov	r7,dph
                                   4496 ;	src/maxhub.c:1028: printf("hub status = %x\n\r", readVal);
      0031F3 C0 06            [24] 4497 	push	ar6
      0031F5 C0 07            [24] 4498 	push	ar7
      0031F7 74 6D            [12] 4499 	mov	a,#___str_58
      0031F9 C0 E0            [24] 4500 	push	acc
      0031FB 74 57            [12] 4501 	mov	a,#(___str_58 >> 8)
      0031FD C0 E0            [24] 4502 	push	acc
      0031FF 74 80            [12] 4503 	mov	a,#0x80
      003201 C0 E0            [24] 4504 	push	acc
      003203 12 3E BF         [24] 4505 	lcall	_printf
      003206 E5 81            [12] 4506 	mov	a,sp
      003208 24 FB            [12] 4507 	add	a,#0xfb
      00320A F5 81            [12] 4508 	mov	sp,a
                                   4509 ;	src/maxhub.c:1029: hubDelayMs(100);
      00320C 75 82 64         [24] 4510 	mov	dpl,#0x64
      00320F 12 1A 05         [24] 4511 	lcall	_hubDelayMs
                                   4512 ;	src/maxhub.c:1032: }
      003212 80 C8            [24] 4513 	sjmp	00102$
                                   4514 ;------------------------------------------------------------
                                   4515 ;Allocation info for local variables in function 'testMaxHub'
                                   4516 ;------------------------------------------------------------
                                   4517 ;mode                      Allocated with name '_testMaxHub_mode_65537_168'
                                   4518 ;data                      Allocated with name '_testMaxHub_data_65538_169'
                                   4519 ;counter                   Allocated with name '_testMaxHub_counter_65538_169'
                                   4520 ;status                    Allocated with name '_testMaxHub_status_131074_170'
                                   4521 ;------------------------------------------------------------
                                   4522 ;	src/maxhub.c:1038: void testMaxHub()
                                   4523 ;	-----------------------------------------
                                   4524 ;	 function testMaxHub
                                   4525 ;	-----------------------------------------
      003214                       4526 _testMaxHub:
                                   4527 ;	src/maxhub.c:1040: INFO_LOG("Entering Text Max HUB");
      003214 74 7F            [12] 4528 	mov	a,#___str_59
      003216 C0 E0            [24] 4529 	push	acc
      003218 74 57            [12] 4530 	mov	a,#(___str_59 >> 8)
      00321A C0 E0            [24] 4531 	push	acc
      00321C 74 80            [12] 4532 	mov	a,#0x80
      00321E C0 E0            [24] 4533 	push	acc
      003220 12 3E BF         [24] 4534 	lcall	_printf
      003223 15 81            [12] 4535 	dec	sp
      003225 15 81            [12] 4536 	dec	sp
      003227 15 81            [12] 4537 	dec	sp
      003229 74 38            [12] 4538 	mov	a,#___str_2
      00322B C0 E0            [24] 4539 	push	acc
      00322D 74 50            [12] 4540 	mov	a,#(___str_2 >> 8)
      00322F C0 E0            [24] 4541 	push	acc
      003231 12 3B B6         [24] 4542 	lcall	_printf_tiny
      003234 15 81            [12] 4543 	dec	sp
      003236 15 81            [12] 4544 	dec	sp
                                   4545 ;	src/maxhub.c:1041: setApplicationMode();
      003238 12 21 26         [24] 4546 	lcall	_setApplicationMode
                                   4547 ;	src/maxhub.c:1045: MFIO = 0;
                                   4548 ;	assignBit
      00323B C2 94            [12] 4549 	clr	_P1_4
                                   4550 ;	src/maxhub.c:1050: checkDeviceType();
      00323D 12 31 01         [24] 4551 	lcall	_checkDeviceType
                                   4552 ;	src/maxhub.c:1058: configSensorBpm(mode);
      003240 75 82 01         [24] 4553 	mov	dpl,#0x01
      003243 12 25 4C         [24] 4554 	lcall	_configSensorBpm
                                   4555 ;	src/maxhub.c:1059: setPulseWidth(118);
      003246 90 00 76         [24] 4556 	mov	dptr,#0x0076
      003249 12 2F ED         [24] 4557 	lcall	_setPulseWidth
                                   4558 ;	src/maxhub.c:1060: setSampleRate(1600);
      00324C 90 06 40         [24] 4559 	mov	dptr,#0x0640
      00324F 12 30 59         [24] 4560 	lcall	_setSampleRate
                                   4561 ;	src/maxhub.c:1077: while (1)
      003252                       4562 00108$:
                                   4563 ;	src/maxhub.c:1100: int status = readSensorBpm(mode, &data);
      003252 90 00 D2         [24] 4564 	mov	dptr,#_readSensorBpm_PARM_2
      003255 74 F5            [12] 4565 	mov	a,#_testMaxHub_data_65538_169
      003257 F0               [24] 4566 	movx	@dptr,a
      003258 74 00            [12] 4567 	mov	a,#(_testMaxHub_data_65538_169 >> 8)
      00325A A3               [24] 4568 	inc	dptr
      00325B F0               [24] 4569 	movx	@dptr,a
      00325C E4               [12] 4570 	clr	a
      00325D A3               [24] 4571 	inc	dptr
      00325E F0               [24] 4572 	movx	@dptr,a
      00325F 75 82 01         [24] 4573 	mov	dpl,#0x01
      003262 12 2B 3E         [24] 4574 	lcall	_readSensorBpm
      003265 E5 82            [12] 4575 	mov	a,dpl
      003267 85 83 F0         [24] 4576 	mov	b,dph
                                   4577 ;	src/maxhub.c:1101: if (status == SUCCESS)
      00326A 45 F0            [12] 4578 	orl	a,b
      00326C 60 03            [24] 4579 	jz	00125$
      00326E 02 33 85         [24] 4580 	ljmp	00106$
      003271                       4581 00125$:
                                   4582 ;	src/maxhub.c:1103: INFO_LOG("CONFIDENCE = %u", data.confidence);
      003271 90 00 FF         [24] 4583 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
      003274 E0               [24] 4584 	movx	a,@dptr
      003275 FF               [12] 4585 	mov	r7,a
      003276 7E 00            [12] 4586 	mov	r6,#0x00
      003278 C0 07            [24] 4587 	push	ar7
      00327A C0 06            [24] 4588 	push	ar6
      00327C 74 A2            [12] 4589 	mov	a,#___str_60
      00327E C0 E0            [24] 4590 	push	acc
      003280 74 57            [12] 4591 	mov	a,#(___str_60 >> 8)
      003282 C0 E0            [24] 4592 	push	acc
      003284 74 80            [12] 4593 	mov	a,#0x80
      003286 C0 E0            [24] 4594 	push	acc
      003288 12 3E BF         [24] 4595 	lcall	_printf
      00328B E5 81            [12] 4596 	mov	a,sp
      00328D 24 FB            [12] 4597 	add	a,#0xfb
      00328F F5 81            [12] 4598 	mov	sp,a
      003291 74 38            [12] 4599 	mov	a,#___str_2
      003293 C0 E0            [24] 4600 	push	acc
      003295 74 50            [12] 4601 	mov	a,#(___str_2 >> 8)
      003297 C0 E0            [24] 4602 	push	acc
      003299 12 3B B6         [24] 4603 	lcall	_printf_tiny
      00329C 15 81            [12] 4604 	dec	sp
      00329E 15 81            [12] 4605 	dec	sp
                                   4606 ;	src/maxhub.c:1104: if (data.confidence > 50)
      0032A0 90 00 FF         [24] 4607 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
      0032A3 E0               [24] 4608 	movx	a,@dptr
      0032A4 FF               [12] 4609 	mov  r7,a
      0032A5 24 CD            [12] 4610 	add	a,#0xff - 0x32
      0032A7 40 03            [24] 4611 	jc	00126$
      0032A9 02 33 85         [24] 4612 	ljmp	00106$
      0032AC                       4613 00126$:
                                   4614 ;	src/maxhub.c:1110: INFO_LOG("IR LED = %lu", data.irLed);
      0032AC 90 00 F5         [24] 4615 	mov	dptr,#_testMaxHub_data_65538_169
      0032AF E0               [24] 4616 	movx	a,@dptr
      0032B0 FC               [12] 4617 	mov	r4,a
      0032B1 A3               [24] 4618 	inc	dptr
      0032B2 E0               [24] 4619 	movx	a,@dptr
      0032B3 FD               [12] 4620 	mov	r5,a
      0032B4 A3               [24] 4621 	inc	dptr
      0032B5 E0               [24] 4622 	movx	a,@dptr
      0032B6 FE               [12] 4623 	mov	r6,a
      0032B7 A3               [24] 4624 	inc	dptr
      0032B8 E0               [24] 4625 	movx	a,@dptr
      0032B9 FF               [12] 4626 	mov	r7,a
      0032BA C0 04            [24] 4627 	push	ar4
      0032BC C0 05            [24] 4628 	push	ar5
      0032BE C0 06            [24] 4629 	push	ar6
      0032C0 C0 07            [24] 4630 	push	ar7
      0032C2 74 BF            [12] 4631 	mov	a,#___str_61
      0032C4 C0 E0            [24] 4632 	push	acc
      0032C6 74 57            [12] 4633 	mov	a,#(___str_61 >> 8)
      0032C8 C0 E0            [24] 4634 	push	acc
      0032CA 74 80            [12] 4635 	mov	a,#0x80
      0032CC C0 E0            [24] 4636 	push	acc
      0032CE 12 3E BF         [24] 4637 	lcall	_printf
      0032D1 E5 81            [12] 4638 	mov	a,sp
      0032D3 24 F9            [12] 4639 	add	a,#0xf9
      0032D5 F5 81            [12] 4640 	mov	sp,a
      0032D7 74 38            [12] 4641 	mov	a,#___str_2
      0032D9 C0 E0            [24] 4642 	push	acc
      0032DB 74 50            [12] 4643 	mov	a,#(___str_2 >> 8)
      0032DD C0 E0            [24] 4644 	push	acc
      0032DF 12 3B B6         [24] 4645 	lcall	_printf_tiny
      0032E2 15 81            [12] 4646 	dec	sp
      0032E4 15 81            [12] 4647 	dec	sp
                                   4648 ;	src/maxhub.c:1111: INFO_LOG("RED LED = %lu", data.redLed);
      0032E6 90 00 F9         [24] 4649 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x0004)
      0032E9 E0               [24] 4650 	movx	a,@dptr
      0032EA FC               [12] 4651 	mov	r4,a
      0032EB A3               [24] 4652 	inc	dptr
      0032EC E0               [24] 4653 	movx	a,@dptr
      0032ED FD               [12] 4654 	mov	r5,a
      0032EE A3               [24] 4655 	inc	dptr
      0032EF E0               [24] 4656 	movx	a,@dptr
      0032F0 FE               [12] 4657 	mov	r6,a
      0032F1 A3               [24] 4658 	inc	dptr
      0032F2 E0               [24] 4659 	movx	a,@dptr
      0032F3 FF               [12] 4660 	mov	r7,a
      0032F4 C0 04            [24] 4661 	push	ar4
      0032F6 C0 05            [24] 4662 	push	ar5
      0032F8 C0 06            [24] 4663 	push	ar6
      0032FA C0 07            [24] 4664 	push	ar7
      0032FC 74 D9            [12] 4665 	mov	a,#___str_62
      0032FE C0 E0            [24] 4666 	push	acc
      003300 74 57            [12] 4667 	mov	a,#(___str_62 >> 8)
      003302 C0 E0            [24] 4668 	push	acc
      003304 74 80            [12] 4669 	mov	a,#0x80
      003306 C0 E0            [24] 4670 	push	acc
      003308 12 3E BF         [24] 4671 	lcall	_printf
      00330B E5 81            [12] 4672 	mov	a,sp
      00330D 24 F9            [12] 4673 	add	a,#0xf9
      00330F F5 81            [12] 4674 	mov	sp,a
      003311 74 38            [12] 4675 	mov	a,#___str_2
      003313 C0 E0            [24] 4676 	push	acc
      003315 74 50            [12] 4677 	mov	a,#(___str_2 >> 8)
      003317 C0 E0            [24] 4678 	push	acc
      003319 12 3B B6         [24] 4679 	lcall	_printf_tiny
      00331C 15 81            [12] 4680 	dec	sp
      00331E 15 81            [12] 4681 	dec	sp
                                   4682 ;	src/maxhub.c:1113: INFO_LOG("HEART-RATE = %u", data.heartRate);
      003320 90 00 FD         [24] 4683 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x0008)
      003323 E0               [24] 4684 	movx	a,@dptr
      003324 FE               [12] 4685 	mov	r6,a
      003325 A3               [24] 4686 	inc	dptr
      003326 E0               [24] 4687 	movx	a,@dptr
      003327 FF               [12] 4688 	mov	r7,a
      003328 C0 06            [24] 4689 	push	ar6
      00332A C0 07            [24] 4690 	push	ar7
      00332C 74 F4            [12] 4691 	mov	a,#___str_63
      00332E C0 E0            [24] 4692 	push	acc
      003330 74 57            [12] 4693 	mov	a,#(___str_63 >> 8)
      003332 C0 E0            [24] 4694 	push	acc
      003334 74 80            [12] 4695 	mov	a,#0x80
      003336 C0 E0            [24] 4696 	push	acc
      003338 12 3E BF         [24] 4697 	lcall	_printf
      00333B E5 81            [12] 4698 	mov	a,sp
      00333D 24 FB            [12] 4699 	add	a,#0xfb
      00333F F5 81            [12] 4700 	mov	sp,a
      003341 74 38            [12] 4701 	mov	a,#___str_2
      003343 C0 E0            [24] 4702 	push	acc
      003345 74 50            [12] 4703 	mov	a,#(___str_2 >> 8)
      003347 C0 E0            [24] 4704 	push	acc
      003349 12 3B B6         [24] 4705 	lcall	_printf_tiny
      00334C 15 81            [12] 4706 	dec	sp
      00334E 15 81            [12] 4707 	dec	sp
                                   4708 ;	src/maxhub.c:1114: INFO_LOG("OXYGEN = %u", data.oxygen);
      003350 90 01 00         [24] 4709 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000b)
      003353 E0               [24] 4710 	movx	a,@dptr
      003354 FE               [12] 4711 	mov	r6,a
      003355 A3               [24] 4712 	inc	dptr
      003356 E0               [24] 4713 	movx	a,@dptr
      003357 FF               [12] 4714 	mov	r7,a
      003358 C0 06            [24] 4715 	push	ar6
      00335A C0 07            [24] 4716 	push	ar7
      00335C 74 11            [12] 4717 	mov	a,#___str_64
      00335E C0 E0            [24] 4718 	push	acc
      003360 74 58            [12] 4719 	mov	a,#(___str_64 >> 8)
      003362 C0 E0            [24] 4720 	push	acc
      003364 74 80            [12] 4721 	mov	a,#0x80
      003366 C0 E0            [24] 4722 	push	acc
      003368 12 3E BF         [24] 4723 	lcall	_printf
      00336B E5 81            [12] 4724 	mov	a,sp
      00336D 24 FB            [12] 4725 	add	a,#0xfb
      00336F F5 81            [12] 4726 	mov	sp,a
      003371 74 38            [12] 4727 	mov	a,#___str_2
      003373 C0 E0            [24] 4728 	push	acc
      003375 74 50            [12] 4729 	mov	a,#(___str_2 >> 8)
      003377 C0 E0            [24] 4730 	push	acc
      003379 12 3B B6         [24] 4731 	lcall	_printf_tiny
      00337C 15 81            [12] 4732 	dec	sp
      00337E 15 81            [12] 4733 	dec	sp
                                   4734 ;	src/maxhub.c:1122: data.confidence = 0;
      003380 90 00 FF         [24] 4735 	mov	dptr,#(_testMaxHub_data_65538_169 + 0x000a)
      003383 E4               [12] 4736 	clr	a
      003384 F0               [24] 4737 	movx	@dptr,a
      003385                       4738 00106$:
                                   4739 ;	src/maxhub.c:1126: hubDelayMs(10);
      003385 75 82 0A         [24] 4740 	mov	dpl,#0x0a
      003388 12 1A 05         [24] 4741 	lcall	_hubDelayMs
                                   4742 ;	src/maxhub.c:1130: MFIO = 1;
                                   4743 ;	src/maxhub.c:1131: }
      00338B 02 32 52         [24] 4744 	ljmp	00108$
                                   4745 	.area CSEG    (CODE)
                                   4746 	.area CONST   (CODE)
                                   4747 	.area CONST   (CODE)
      004FF6                       4748 ___str_0:
      004FF6 0A                    4749 	.db 0x0a
      004FF7 0D                    4750 	.db 0x0d
      004FF8 1B                    4751 	.db 0x1b
      004FF9 5B 31 3B 33 31 6D 45  4752 	.ascii "[1;31mERROR: %s:%d Write address failed!"
             52 52 4F 52 3A 20 25
             73 3A 25 64 20 57 72
             69 74 65 20 61 64 64
             72 65 73 73 20 66 61
             69 6C 65 64 21
      005021 00                    4753 	.db 0x00
                                   4754 	.area CSEG    (CODE)
                                   4755 	.area CONST   (CODE)
      005022                       4756 ___str_1:
      005022 69 32 63 4D 61 78 33  4757 	.ascii "i2cMax32664WriteBytes"
             32 36 36 34 57 72 69
             74 65 42 79 74 65 73
      005037 00                    4758 	.db 0x00
                                   4759 	.area CSEG    (CODE)
                                   4760 	.area CONST   (CODE)
      005038                       4761 ___str_2:
      005038 1B                    4762 	.db 0x1b
      005039 5B 30 6D              4763 	.ascii "[0m"
      00503C 00                    4764 	.db 0x00
                                   4765 	.area CSEG    (CODE)
                                   4766 	.area CONST   (CODE)
      00503D                       4767 ___str_3:
      00503D 0A                    4768 	.db 0x0a
      00503E 0D                    4769 	.db 0x0d
      00503F 1B                    4770 	.db 0x1b
      005040 5B 31 3B 33 31 6D 45  4771 	.ascii "[1;31mERROR: %s Family Byte Write address failed!"
             52 52 4F 52 3A 20 25
             73 20 46 61 6D 69 6C
             79 20 42 79 74 65 20
             57 72 69 74 65 20 61
             64 64 72 65 73 73 20
             66 61 69 6C 65 64 21
      005071 00                    4772 	.db 0x00
                                   4773 	.area CSEG    (CODE)
                                   4774 	.area CONST   (CODE)
      005072                       4775 ___str_4:
      005072 0A                    4776 	.db 0x0a
      005073 0D                    4777 	.db 0x0d
      005074 1B                    4778 	.db 0x1b
      005075 5B 31 3B 33 31 6D 45  4779 	.ascii "[1;31mERROR: %s Index Byte Write address failed!"
             52 52 4F 52 3A 20 25
             73 20 49 6E 64 65 78
             20 42 79 74 65 20 57
             72 69 74 65 20 61 64
             64 72 65 73 73 20 66
             61 69 6C 65 64 21
      0050A5 00                    4780 	.db 0x00
                                   4781 	.area CSEG    (CODE)
                                   4782 	.area CONST   (CODE)
      0050A6                       4783 ___str_5:
      0050A6 0A                    4784 	.db 0x0a
      0050A7 0D                    4785 	.db 0x0d
      0050A8 1B                    4786 	.db 0x1b
      0050A9 5B 31 3B 33 31 6D 45  4787 	.ascii "[1;31mERROR: %s Data Byte Write %d failed!"
             52 52 4F 52 3A 20 25
             73 20 44 61 74 61 20
             42 79 74 65 20 57 72
             69 74 65 20 25 64 20
             66 61 69 6C 65 64 21
      0050D3 00                    4788 	.db 0x00
                                   4789 	.area CSEG    (CODE)
                                   4790 	.area CONST   (CODE)
      0050D4                       4791 ___str_6:
      0050D4 0A                    4792 	.db 0x0a
      0050D5 0D                    4793 	.db 0x0d
      0050D6 1B                    4794 	.db 0x1b
      0050D7 5B 31 3B 33 31 6D 45  4795 	.ascii "[1;31mERROR: %s Read Byte failed!"
             52 52 4F 52 3A 20 25
             73 20 52 65 61 64 20
             42 79 74 65 20 66 61
             69 6C 65 64 21
      0050F8 00                    4796 	.db 0x00
                                   4797 	.area CSEG    (CODE)
                                   4798 	.area CONST   (CODE)
      0050F9                       4799 ___str_7:
      0050F9 0A                    4800 	.db 0x0a
      0050FA 0D                    4801 	.db 0x0d
      0050FB 1B                    4802 	.db 0x1b
      0050FC 5B 33 38 3B 35 3B 32  4803 	.ascii "[38;5;214mretrying write"
             31 34 6D 72 65 74 72
             79 69 6E 67 20 77 72
             69 74 65
      005114 00                    4804 	.db 0x00
                                   4805 	.area CSEG    (CODE)
                                   4806 	.area CONST   (CODE)
      005115                       4807 ___str_8:
      005115 0A                    4808 	.db 0x0a
      005116 0D                    4809 	.db 0x0d
      005117 1B                    4810 	.db 0x1b
      005118 5B 31 3B 33 31 6D 45  4811 	.ascii "[1;31mERROR: %s Write address failed!"
             52 52 4F 52 3A 20 25
             73 20 57 72 69 74 65
             20 61 64 64 72 65 73
             73 20 66 61 69 6C 65
             64 21
      00513D 00                    4812 	.db 0x00
                                   4813 	.area CSEG    (CODE)
                                   4814 	.area CONST   (CODE)
      00513E                       4815 ___str_9:
      00513E 69 32 63 4D 61 78 33  4816 	.ascii "i2cMax32664ReadByte"
             32 36 36 34 52 65 61
             64 42 79 74 65
      005151 00                    4817 	.db 0x00
                                   4818 	.area CSEG    (CODE)
                                   4819 	.area CONST   (CODE)
      005152                       4820 ___str_10:
      005152 0A                    4821 	.db 0x0a
      005153 0D                    4822 	.db 0x0d
      005154 1B                    4823 	.db 0x1b
      005155 5B 31 3B 33 31 6D 45  4824 	.ascii "[1;31mERROR: %s Write Byte Write address failed!"
             52 52 4F 52 3A 20 25
             73 20 57 72 69 74 65
             20 42 79 74 65 20 57
             72 69 74 65 20 61 64
             64 72 65 73 73 20 66
             61 69 6C 65 64 21
      005185 00                    4825 	.db 0x00
                                   4826 	.area CSEG    (CODE)
                                   4827 	.area CONST   (CODE)
      005186                       4828 ___str_11:
      005186 69 32 63 4D 61 78 33  4829 	.ascii "i2cMax32664SequentialReadByte"
             32 36 36 34 53 65 71
             75 65 6E 74 69 61 6C
             52 65 61 64 42 79 74
             65
      0051A3 00                    4830 	.db 0x00
                                   4831 	.area CSEG    (CODE)
                                   4832 	.area CONST   (CODE)
      0051A4                       4833 ___str_12:
      0051A4 0A                    4834 	.db 0x0a
      0051A5 0D                    4835 	.db 0x0d
      0051A6 1B                    4836 	.db 0x1b
      0051A7 5B 31 3B 33 31 6D 45  4837 	.ascii "[1;31mERROR: %s Status Byte = %d"
             52 52 4F 52 3A 20 25
             73 20 53 74 61 74 75
             73 20 42 79 74 65 20
             3D 20 25 64
      0051C7 00                    4838 	.db 0x00
                                   4839 	.area CSEG    (CODE)
                                   4840 	.area CONST   (CODE)
      0051C8                       4841 ___str_13:
      0051C8 0A                    4842 	.db 0x0a
      0051C9 0D                    4843 	.db 0x0d
      0051CA 1B                    4844 	.db 0x1b
      0051CB 5B 31 3B 33 31 6D 45  4845 	.ascii "[1;31mERROR: Error reading device mode!"
             52 52 4F 52 3A 20 45
             72 72 6F 72 20 72 65
             61 64 69 6E 67 20 64
             65 76 69 63 65 20 6D
             6F 64 65 21
      0051F2 00                    4846 	.db 0x00
                                   4847 	.area CSEG    (CODE)
                                   4848 	.area CONST   (CODE)
      0051F3                       4849 ___str_14:
      0051F3 0A                    4850 	.db 0x0a
      0051F4 0D                    4851 	.db 0x0d
      0051F5 1B                    4852 	.db 0x1b
      0051F6 5B 33 38 3B 35 3B 32  4853 	.ascii "[38;5;214mSetting to Application Mode..."
             31 34 6D 53 65 74 74
             69 6E 67 20 74 6F 20
             41 70 70 6C 69 63 61
             74 69 6F 6E 20 4D 6F
             64 65 2E 2E 2E
      00521E 00                    4854 	.db 0x00
                                   4855 	.area CSEG    (CODE)
                                   4856 	.area CONST   (CODE)
      00521F                       4857 ___str_15:
      00521F 0A                    4858 	.db 0x0a
      005220 0D                    4859 	.db 0x0d
      005221 1B                    4860 	.db 0x1b
      005222 5B 31 3B 33 31 6D 45  4861 	.ascii "[1;31mERROR: Application Mode not set!!!"
             52 52 4F 52 3A 20 41
             70 70 6C 69 63 61 74
             69 6F 6E 20 4D 6F 64
             65 20 6E 6F 74 20 73
             65 74 21 21 21
      00524A 00                    4862 	.db 0x00
                                   4863 	.area CSEG    (CODE)
                                   4864 	.area CONST   (CODE)
      00524B                       4865 ___str_16:
      00524B 0A                    4866 	.db 0x0a
      00524C 0D                    4867 	.db 0x0d
      00524D 1B                    4868 	.db 0x1b
      00524E 5B 33 38 3B 35 3B 32  4869 	.ascii "[38;5;214mApplication Mode Set"
             31 34 6D 41 70 70 6C
             69 63 61 74 69 6F 6E
             20 4D 6F 64 65 20 53
             65 74
      00526C 00                    4870 	.db 0x00
                                   4871 	.area CSEG    (CODE)
                                   4872 	.area CONST   (CODE)
      00526D                       4873 ___str_17:
      00526D 0A                    4874 	.db 0x0a
      00526E 0D                    4875 	.db 0x0d
      00526F 1B                    4876 	.db 0x1b
      005270 5B 31 3B 33 31 6D 45  4877 	.ascii "[1;31mERROR: %s: Recieved Error Status = %d"
             52 52 4F 52 3A 20 25
             73 3A 20 52 65 63 69
             65 76 65 64 20 45 72
             72 6F 72 20 53 74 61
             74 75 73 20 3D 20 25
             64
      00529B 00                    4878 	.db 0x00
                                   4879 	.area CSEG    (CODE)
                                   4880 	.area CONST   (CODE)
      00529C                       4881 ___str_18:
      00529C 73 65 74 4F 75 74 70  4882 	.ascii "setOutputMode"
             75 74 4D 6F 64 65
      0052A9 00                    4883 	.db 0x00
                                   4884 	.area CSEG    (CODE)
                                   4885 	.area CONST   (CODE)
      0052AA                       4886 ___str_19:
      0052AA 73 65 74 46 69 66 6F  4887 	.ascii "setFifoThreshold"
             54 68 72 65 73 68 6F
             6C 64
      0052BA 00                    4888 	.db 0x00
                                   4889 	.area CSEG    (CODE)
                                   4890 	.area CONST   (CODE)
      0052BB                       4891 ___str_20:
      0052BB 61 67 63 41 6C 67 6F  4892 	.ascii "agcAlgoControl"
             43 6F 6E 74 72 6F 6C
      0052C9 00                    4893 	.db 0x00
                                   4894 	.area CSEG    (CODE)
                                   4895 	.area CONST   (CODE)
      0052CA                       4896 ___str_21:
      0052CA 6D 61 78 33 30 31 30  4897 	.ascii "max30101Control"
             31 43 6F 6E 74 72 6F
             6C
      0052D9 00                    4898 	.db 0x00
                                   4899 	.area CSEG    (CODE)
                                   4900 	.area CONST   (CODE)
      0052DA                       4901 ___str_22:
      0052DA 6D 61 78 69 6D 46 61  4902 	.ascii "maximFastAlgoControl"
             73 74 41 6C 67 6F 43
             6F 6E 74 72 6F 6C
      0052EE 00                    4903 	.db 0x00
                                   4904 	.area CSEG    (CODE)
                                   4905 	.area CONST   (CODE)
      0052EF                       4906 ___str_23:
      0052EF 0A                    4907 	.db 0x0a
      0052F0 0D                    4908 	.db 0x0d
      0052F1 1B                    4909 	.db 0x1b
      0052F2 5B 33 38 3B 35 3B 32  4910 	.ascii "[38;5;214msetOutputMode Status = %d"
             31 34 6D 73 65 74 4F
             75 74 70 75 74 4D 6F
             64 65 20 53 74 61 74
             75 73 20 3D 20 25 64
      005315 00                    4911 	.db 0x00
                                   4912 	.area CSEG    (CODE)
                                   4913 	.area CONST   (CODE)
      005316                       4914 ___str_24:
      005316 0A                    4915 	.db 0x0a
      005317 0D                    4916 	.db 0x0d
      005318 1B                    4917 	.db 0x1b
      005319 5B 33 38 3B 35 3B 32  4918 	.ascii "[38;5;214msetOutputMode Status 2 = %d"
             31 34 6D 73 65 74 4F
             75 74 70 75 74 4D 6F
             64 65 20 53 74 61 74
             75 73 20 32 20 3D 20
             25 64
      00533E 00                    4919 	.db 0x00
                                   4920 	.area CSEG    (CODE)
                                   4921 	.area CONST   (CODE)
      00533F                       4922 ___str_25:
      00533F 0A                    4923 	.db 0x0a
      005340 0D                    4924 	.db 0x0d
      005341 1B                    4925 	.db 0x1b
      005342 5B 33 38 3B 35 3B 32  4926 	.ascii "[38;5;214msetFifoThreshold Status = %d"
             31 34 6D 73 65 74 46
             69 66 6F 54 68 72 65
             73 68 6F 6C 64 20 53
             74 61 74 75 73 20 3D
             20 25 64
      005368 00                    4927 	.db 0x00
                                   4928 	.area CSEG    (CODE)
                                   4929 	.area CONST   (CODE)
      005369                       4930 ___str_26:
      005369 0A                    4931 	.db 0x0a
      00536A 0D                    4932 	.db 0x0d
      00536B 1B                    4933 	.db 0x1b
      00536C 5B 33 38 3B 35 3B 32  4934 	.ascii "[38;5;214magcAlgoControl Status = %d"
             31 34 6D 61 67 63 41
             6C 67 6F 43 6F 6E 74
             72 6F 6C 20 53 74 61
             74 75 73 20 3D 20 25
             64
      005390 00                    4935 	.db 0x00
                                   4936 	.area CSEG    (CODE)
                                   4937 	.area CONST   (CODE)
      005391                       4938 ___str_27:
      005391 0A                    4939 	.db 0x0a
      005392 0D                    4940 	.db 0x0d
      005393 1B                    4941 	.db 0x1b
      005394 5B 33 38 3B 35 3B 32  4942 	.ascii "[38;5;214mmax30101Control Status = %d"
             31 34 6D 6D 61 78 33
             30 31 30 31 43 6F 6E
             74 72 6F 6C 20 53 74
             61 74 75 73 20 3D 20
             25 64
      0053B9 00                    4943 	.db 0x00
                                   4944 	.area CSEG    (CODE)
                                   4945 	.area CONST   (CODE)
      0053BA                       4946 ___str_28:
      0053BA 0A                    4947 	.db 0x0a
      0053BB 0D                    4948 	.db 0x0d
      0053BC 1B                    4949 	.db 0x1b
      0053BD 5B 33 38 3B 35 3B 32  4950 	.ascii "[38;5;214mmaximFastAlgoControl Status = %d"
             31 34 6D 6D 61 78 69
             6D 46 61 73 74 41 6C
             67 6F 43 6F 6E 74 72
             6F 6C 20 53 74 61 74
             75 73 20 3D 20 25 64
      0053E7 00                    4951 	.db 0x00
                                   4952 	.area CSEG    (CODE)
                                   4953 	.area CONST   (CODE)
      0053E8                       4954 ___str_29:
      0053E8 0A                    4955 	.db 0x0a
      0053E9 0D                    4956 	.db 0x0d
      0053EA 1B                    4957 	.db 0x1b
      0053EB 5B 33 38 3B 35 3B 32  4958 	.ascii "[38;5;214m%s: configuration success"
             31 34 6D 25 73 3A 20
             63 6F 6E 66 69 67 75
             72 61 74 69 6F 6E 20
             73 75 63 63 65 73 73
      00540E 00                    4959 	.db 0x00
                                   4960 	.area CSEG    (CODE)
                                   4961 	.area CONST   (CODE)
      00540F                       4962 ___str_30:
      00540F 63 6F 6E 66 69 67 42  4963 	.ascii "configBpm"
             70 6D
      005418 00                    4964 	.db 0x00
                                   4965 	.area CSEG    (CODE)
                                   4966 	.area CONST   (CODE)
      005419                       4967 ___str_31:
      005419 63 6F 6E 66 69 67 53  4968 	.ascii "configSensorBpm"
             65 6E 73 6F 72 42 70
             6D
      005428 00                    4969 	.db 0x00
                                   4970 	.area CSEG    (CODE)
                                   4971 	.area CONST   (CODE)
      005429                       4972 ___str_32:
      005429 0A                    4973 	.db 0x0a
      00542A 0D                    4974 	.db 0x0d
      00542B 1B                    4975 	.db 0x1b
      00542C 5B 31 3B 33 31 6D 45  4976 	.ascii "[1;31mERROR: Error reading numSamplesOutFifo"
             52 52 4F 52 3A 20 45
             72 72 6F 72 20 72 65
             61 64 69 6E 67 20 6E
             75 6D 53 61 6D 70 6C
             65 73 4F 75 74 46 69
             66 6F
      005458 00                    4977 	.db 0x00
                                   4978 	.area CSEG    (CODE)
                                   4979 	.area CONST   (CODE)
      005459                       4980 ___str_33:
      005459 0A                    4981 	.db 0x0a
      00545A 0D                    4982 	.db 0x0d
      00545B 1B                    4983 	.db 0x1b
      00545C 5B 31 3B 33 31 6D 45  4984 	.ascii "[1;31mERROR: %s: Hub Status Error : %d"
             52 52 4F 52 3A 20 25
             73 3A 20 48 75 62 20
             53 74 61 74 75 73 20
             45 72 72 6F 72 20 3A
             20 25 64
      005482 00                    4985 	.db 0x00
                                   4986 	.area CSEG    (CODE)
                                   4987 	.area CONST   (CODE)
      005483                       4988 ___str_34:
      005483 72 65 61 64 42 70 6D  4989 	.ascii "readBpm"
      00548A 00                    4990 	.db 0x00
                                   4991 	.area CSEG    (CODE)
                                   4992 	.area CONST   (CODE)
      00548B                       4993 ___str_35:
      00548B 0A                    4994 	.db 0x0a
      00548C 0D                    4995 	.db 0x0d
      00548D 1B                    4996 	.db 0x1b
      00548E 5B 33 38 3B 35 3B 32  4997 	.ascii "[38;5;214mStatus Byte = %d"
             31 34 6D 53 74 61 74
             75 73 20 42 79 74 65
             20 3D 20 25 64
      0054A8 00                    4998 	.db 0x00
                                   4999 	.area CSEG    (CODE)
                                   5000 	.area CONST   (CODE)
      0054A9                       5001 ___str_36:
      0054A9 0A                    5002 	.db 0x0a
      0054AA 0D                    5003 	.db 0x0d
      0054AB 1B                    5004 	.db 0x1b
      0054AC 5B 33 38 3B 35 3B 32  5005 	.ascii "[38;5;214mnumSamples = %d"
             31 34 6D 6E 75 6D 53
             61 6D 70 6C 65 73 20
             3D 20 25 64
      0054C5 00                    5006 	.db 0x00
                                   5007 	.area CSEG    (CODE)
                                   5008 	.area CONST   (CODE)
      0054C6                       5009 ___str_37:
      0054C6 0A                    5010 	.db 0x0a
      0054C7 0D                    5011 	.db 0x0d
      0054C8 1B                    5012 	.db 0x1b
      0054C9 5B 33 38 3B 35 3B 32  5013 	.ascii "[38;5;214m%s: No samples to read"
             31 34 6D 25 73 3A 20
             4E 6F 20 73 61 6D 70
             6C 65 73 20 74 6F 20
             72 65 61 64
      0054E9 00                    5014 	.db 0x00
                                   5015 	.area CSEG    (CODE)
                                   5016 	.area CONST   (CODE)
      0054EA                       5017 ___str_38:
      0054EA 0A                    5018 	.db 0x0a
      0054EB 0D                    5019 	.db 0x0d
      0054EC 44 61 74 61 20 66 72  5020 	.ascii "Data from Hub"
             6F 6D 20 48 75 62
      0054F9 0A                    5021 	.db 0x0a
      0054FA 0D                    5022 	.db 0x0d
      0054FB 00                    5023 	.db 0x00
                                   5024 	.area CSEG    (CODE)
                                   5025 	.area CONST   (CODE)
      0054FC                       5026 ___str_39:
      0054FC 25 64                 5027 	.ascii "%d"
      0054FE 0A                    5028 	.db 0x0a
      0054FF 0D                    5029 	.db 0x0d
      005500 00                    5030 	.db 0x00
                                   5031 	.area CSEG    (CODE)
                                   5032 	.area CONST   (CODE)
      005501                       5033 ___str_40:
      005501 0A                    5034 	.db 0x0a
      005502 0D                    5035 	.db 0x0d
      005503 1B                    5036 	.db 0x1b
      005504 5B 31 3B 33 31 6D 45  5037 	.ascii "[1;31mERROR: %s: Status Error : %d"
             52 52 4F 52 3A 20 25
             73 3A 20 53 74 61 74
             75 73 20 45 72 72 6F
             72 20 3A 20 25 64
      005526 00                    5038 	.db 0x00
                                   5039 	.area CSEG    (CODE)
                                   5040 	.area CONST   (CODE)
      005527                       5041 ___str_41:
      005527 0A                    5042 	.db 0x0a
      005528 0D                    5043 	.db 0x0d
      005529 1B                    5044 	.db 0x1b
      00552A 5B 33 38 3B 35 3B 32  5045 	.ascii "[38;5;214m%s: Finger Status = NO_READING"
             31 34 6D 25 73 3A 20
             46 69 6E 67 65 72 20
             53 74 61 74 75 73 20
             3D 20 4E 4F 5F 52 45
             41 44 49 4E 47
      005552 00                    5046 	.db 0x00
                                   5047 	.area CSEG    (CODE)
                                   5048 	.area CONST   (CODE)
      005553                       5049 ___str_42:
      005553 0A                    5050 	.db 0x0a
      005554 0D                    5051 	.db 0x0d
      005555 1B                    5052 	.db 0x1b
      005556 5B 33 38 3B 35 3B 32  5053 	.ascii "[38;5;214m%s: Finger Status = NOT_READY"
             31 34 6D 25 73 3A 20
             46 69 6E 67 65 72 20
             53 74 61 74 75 73 20
             3D 20 4E 4F 54 5F 52
             45 41 44 59
      00557D 00                    5054 	.db 0x00
                                   5055 	.area CSEG    (CODE)
                                   5056 	.area CONST   (CODE)
      00557E                       5057 ___str_43:
      00557E 0A                    5058 	.db 0x0a
      00557F 0D                    5059 	.db 0x0d
      005580 1B                    5060 	.db 0x1b
      005581 5B 33 38 3B 35 3B 32  5061 	.ascii "[38;5;214m%s: Finger Status = OBJECT_DETECTED"
             31 34 6D 25 73 3A 20
             46 69 6E 67 65 72 20
             53 74 61 74 75 73 20
             3D 20 4F 42 4A 45 43
             54 5F 44 45 54 45 43
             54 45 44
      0055AE 00                    5062 	.db 0x00
                                   5063 	.area CSEG    (CODE)
                                   5064 	.area CONST   (CODE)
      0055AF                       5065 ___str_44:
      0055AF 0A                    5066 	.db 0x0a
      0055B0 0D                    5067 	.db 0x0d
      0055B1 1B                    5068 	.db 0x1b
      0055B2 5B 33 38 3B 35 3B 32  5069 	.ascii "[38;5;214m%s: Finger Status = FINGER_DETECTED"
             31 34 6D 25 73 3A 20
             46 69 6E 67 65 72 20
             53 74 61 74 75 73 20
             3D 20 46 49 4E 47 45
             52 5F 44 45 54 45 43
             54 45 44
      0055DF 00                    5070 	.db 0x00
                                   5071 	.area CSEG    (CODE)
                                   5072 	.area CONST   (CODE)
      0055E0                       5073 ___str_45:
      0055E0 0A                    5074 	.db 0x0a
      0055E1 0D                    5075 	.db 0x0d
      0055E2 1B                    5076 	.db 0x1b
      0055E3 5B 31 3B 33 31 6D 45  5077 	.ascii "[1;31mERROR: Unknown case!"
             52 52 4F 52 3A 20 55
             6E 6B 6E 6F 77 6E 20
             63 61 73 65 21
      0055FD 00                    5078 	.db 0x00
                                   5079 	.area CSEG    (CODE)
                                   5080 	.area CONST   (CODE)
      0055FE                       5081 ___str_46:
      0055FE 72 65 61 64 53 65 6E  5082 	.ascii "readSensorBpm"
             73 6F 72 42 70 6D
      00560B 00                    5083 	.db 0x00
                                   5084 	.area CSEG    (CODE)
                                   5085 	.area CONST   (CODE)
      00560C                       5086 ___str_47:
      00560C 0A                    5087 	.db 0x0a
      00560D 0D                    5088 	.db 0x0d
      00560E 1B                    5089 	.db 0x1b
      00560F 5B 33 38 3B 35 3B 32  5090 	.ascii "[38;5;214mHub Status = %d"
             31 34 6D 48 75 62 20
             53 74 61 74 75 73 20
             3D 20 25 64
      005628 00                    5091 	.db 0x00
                                   5092 	.area CSEG    (CODE)
                                   5093 	.area CONST   (CODE)
      005629                       5094 ___str_48:
      005629 0A                    5095 	.db 0x0a
      00562A 0D                    5096 	.db 0x0d
      00562B 1B                    5097 	.db 0x1b
      00562C 5B 33 38 3B 35 3B 32  5098 	.ascii "[38;5;214mNum Samples = %d"
             31 34 6D 4E 75 6D 20
             53 61 6D 70 6C 65 73
             20 3D 20 25 64
      005646 00                    5099 	.db 0x00
                                   5100 	.area CSEG    (CODE)
                                   5101 	.area CONST   (CODE)
      005647                       5102 ___str_49:
      005647 0A                    5103 	.db 0x0a
      005648 0D                    5104 	.db 0x0d
      005649 1B                    5105 	.db 0x1b
      00564A 5B 33 38 3B 35 3B 32  5106 	.ascii "[38;5;214mNO_READING"
             31 34 6D 4E 4F 5F 52
             45 41 44 49 4E 47
      00565E 00                    5107 	.db 0x00
                                   5108 	.area CSEG    (CODE)
                                   5109 	.area CONST   (CODE)
      00565F                       5110 ___str_50:
      00565F 0A                    5111 	.db 0x0a
      005660 0D                    5112 	.db 0x0d
      005661 1B                    5113 	.db 0x1b
      005662 5B 33 38 3B 35 3B 32  5114 	.ascii "[38;5;214mNOT_READY"
             31 34 6D 4E 4F 54 5F
             52 45 41 44 59
      005675 00                    5115 	.db 0x00
                                   5116 	.area CSEG    (CODE)
                                   5117 	.area CONST   (CODE)
      005676                       5118 ___str_51:
      005676 0A                    5119 	.db 0x0a
      005677 0D                    5120 	.db 0x0d
      005678 1B                    5121 	.db 0x1b
      005679 5B 33 38 3B 35 3B 32  5122 	.ascii "[38;5;214mOBJECT_DETECTED"
             31 34 6D 4F 42 4A 45
             43 54 5F 44 45 54 45
             43 54 45 44
      005692 00                    5123 	.db 0x00
                                   5124 	.area CSEG    (CODE)
                                   5125 	.area CONST   (CODE)
      005693                       5126 ___str_52:
      005693 0A                    5127 	.db 0x0a
      005694 0D                    5128 	.db 0x0d
      005695 1B                    5129 	.db 0x1b
      005696 5B 33 38 3B 35 3B 32  5130 	.ascii "[38;5;214mFINGER_DETECTED"
             31 34 6D 46 49 4E 47
             45 52 5F 44 45 54 45
             43 54 45 44
      0056AF 00                    5131 	.db 0x00
                                   5132 	.area CSEG    (CODE)
                                   5133 	.area CONST   (CODE)
      0056B0                       5134 ___str_53:
      0056B0 0A                    5135 	.db 0x0a
      0056B1 0D                    5136 	.db 0x0d
      0056B2 1B                    5137 	.db 0x1b
      0056B3 5B 33 38 3B 35 3B 32  5138 	.ascii "[38;5;214mPRESSING_TOO_HARD"
             31 34 6D 50 52 45 53
             53 49 4E 47 5F 54 4F
             4F 5F 48 41 52 44
      0056CE 00                    5139 	.db 0x00
                                   5140 	.area CSEG    (CODE)
                                   5141 	.area CONST   (CODE)
      0056CF                       5142 ___str_54:
      0056CF 0A                    5143 	.db 0x0a
      0056D0 0D                    5144 	.db 0x0d
      0056D1 1B                    5145 	.db 0x1b
      0056D2 5B 31 3B 33 31 6D 45  5146 	.ascii "[1;31mERROR: UNKNOWN ERROR: %d"
             52 52 4F 52 3A 20 55
             4E 4B 4E 4F 57 4E 20
             45 52 52 4F 52 3A 20
             25 64
      0056F0 00                    5147 	.db 0x00
                                   5148 	.area CSEG    (CODE)
                                   5149 	.area CONST   (CODE)
      0056F1                       5150 ___str_55:
      0056F1 0A                    5151 	.db 0x0a
      0056F2 0D                    5152 	.db 0x0d
      0056F3 1B                    5153 	.db 0x1b
      0056F4 5B 31 3B 33 31 6D 45  5154 	.ascii "[1;31mERROR: Reaed Device Type failed"
             52 52 4F 52 3A 20 52
             65 61 65 64 20 44 65
             76 69 63 65 20 54 79
             70 65 20 66 61 69 6C
             65 64
      005719 00                    5155 	.db 0x00
                                   5156 	.area CSEG    (CODE)
                                   5157 	.area CONST   (CODE)
      00571A                       5158 ___str_56:
      00571A 0A                    5159 	.db 0x0a
      00571B 0D                    5160 	.db 0x0d
      00571C 1B                    5161 	.db 0x1b
      00571D 5B 31 3B 33 31 6D 45  5162 	.ascii "[1;31mERROR: Device Type %d not expected"
             52 52 4F 52 3A 20 44
             65 76 69 63 65 20 54
             79 70 65 20 25 64 20
             6E 6F 74 20 65 78 70
             65 63 74 65 64
      005745 00                    5163 	.db 0x00
                                   5164 	.area CSEG    (CODE)
                                   5165 	.area CONST   (CODE)
      005746                       5166 ___str_57:
      005746 0A                    5167 	.db 0x0a
      005747 0D                    5168 	.db 0x0d
      005748 1B                    5169 	.db 0x1b
      005749 5B 33 38 3B 35 3B 32  5170 	.ascii "[38;5;214mDevice Type Check Success"
             31 34 6D 44 65 76 69
             63 65 20 54 79 70 65
             20 43 68 65 63 6B 20
             53 75 63 63 65 73 73
      00576C 00                    5171 	.db 0x00
                                   5172 	.area CSEG    (CODE)
                                   5173 	.area CONST   (CODE)
      00576D                       5174 ___str_58:
      00576D 68 75 62 20 73 74 61  5175 	.ascii "hub status = %x"
             74 75 73 20 3D 20 25
             78
      00577C 0A                    5176 	.db 0x0a
      00577D 0D                    5177 	.db 0x0d
      00577E 00                    5178 	.db 0x00
                                   5179 	.area CSEG    (CODE)
                                   5180 	.area CONST   (CODE)
      00577F                       5181 ___str_59:
      00577F 0A                    5182 	.db 0x0a
      005780 0D                    5183 	.db 0x0d
      005781 1B                    5184 	.db 0x1b
      005782 5B 33 38 3B 35 3B 32  5185 	.ascii "[38;5;214mEntering Text Max HUB"
             31 34 6D 45 6E 74 65
             72 69 6E 67 20 54 65
             78 74 20 4D 61 78 20
             48 55 42
      0057A1 00                    5186 	.db 0x00
                                   5187 	.area CSEG    (CODE)
                                   5188 	.area CONST   (CODE)
      0057A2                       5189 ___str_60:
      0057A2 0A                    5190 	.db 0x0a
      0057A3 0D                    5191 	.db 0x0d
      0057A4 1B                    5192 	.db 0x1b
      0057A5 5B 33 38 3B 35 3B 32  5193 	.ascii "[38;5;214mCONFIDENCE = %u"
             31 34 6D 43 4F 4E 46
             49 44 45 4E 43 45 20
             3D 20 25 75
      0057BE 00                    5194 	.db 0x00
                                   5195 	.area CSEG    (CODE)
                                   5196 	.area CONST   (CODE)
      0057BF                       5197 ___str_61:
      0057BF 0A                    5198 	.db 0x0a
      0057C0 0D                    5199 	.db 0x0d
      0057C1 1B                    5200 	.db 0x1b
      0057C2 5B 33 38 3B 35 3B 32  5201 	.ascii "[38;5;214mIR LED = %lu"
             31 34 6D 49 52 20 4C
             45 44 20 3D 20 25 6C
             75
      0057D8 00                    5202 	.db 0x00
                                   5203 	.area CSEG    (CODE)
                                   5204 	.area CONST   (CODE)
      0057D9                       5205 ___str_62:
      0057D9 0A                    5206 	.db 0x0a
      0057DA 0D                    5207 	.db 0x0d
      0057DB 1B                    5208 	.db 0x1b
      0057DC 5B 33 38 3B 35 3B 32  5209 	.ascii "[38;5;214mRED LED = %lu"
             31 34 6D 52 45 44 20
             4C 45 44 20 3D 20 25
             6C 75
      0057F3 00                    5210 	.db 0x00
                                   5211 	.area CSEG    (CODE)
                                   5212 	.area CONST   (CODE)
      0057F4                       5213 ___str_63:
      0057F4 0A                    5214 	.db 0x0a
      0057F5 0D                    5215 	.db 0x0d
      0057F6 1B                    5216 	.db 0x1b
      0057F7 5B 33 38 3B 35 3B 32  5217 	.ascii "[38;5;214mHEART-RATE = %u"
             31 34 6D 48 45 41 52
             54 2D 52 41 54 45 20
             3D 20 25 75
      005810 00                    5218 	.db 0x00
                                   5219 	.area CSEG    (CODE)
                                   5220 	.area CONST   (CODE)
      005811                       5221 ___str_64:
      005811 0A                    5222 	.db 0x0a
      005812 0D                    5223 	.db 0x0d
      005813 1B                    5224 	.db 0x1b
      005814 5B 33 38 3B 35 3B 32  5225 	.ascii "[38;5;214mOXYGEN = %u"
             31 34 6D 4F 58 59 47
             45 4E 20 3D 20 25 75
      005829 00                    5226 	.db 0x00
                                   5227 	.area CSEG    (CODE)
                                   5228 	.area CONST   (CODE)
      00582A                       5229 ___str_65:
      00582A 0A                    5230 	.db 0x0a
      00582B 0D                    5231 	.db 0x0d
      00582C 1B                    5232 	.db 0x1b
      00582D 5B 33 38 3B 35 3B 32  5233 	.ascii "[38;5;214mrValue = %f"
             31 34 6D 72 56 61 6C
             75 65 20 3D 20 25 66
      005842 00                    5234 	.db 0x00
                                   5235 	.area CSEG    (CODE)
                                   5236 	.area CONST   (CODE)
      005843                       5237 ___str_66:
      005843 0A                    5238 	.db 0x0a
      005844 0D                    5239 	.db 0x0d
      005845 1B                    5240 	.db 0x1b
      005846 5B 33 38 3B 35 3B 32  5241 	.ascii "[38;5;214mExtended Status = %u"
             31 34 6D 45 78 74 65
             6E 64 65 64 20 53 74
             61 74 75 73 20 3D 20
             25 75
      005864 00                    5242 	.db 0x00
                                   5243 	.area CSEG    (CODE)
                                   5244 	.area XINIT   (CODE)
                                   5245 	.area CABS    (ABS,CODE)
