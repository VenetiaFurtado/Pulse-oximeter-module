                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module maxsensor
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _testMaxWing
                                     12 	.globl _getInterruptStatus
                                     13 	.globl _readSensorFifo
                                     14 	.globl _getBufferSizeInBytes
                                     15 	.globl _sensorInit
                                     16 	.globl _configureSensorRegister
                                     17 	.globl _pmicInit
                                     18 	.globl _sensor_delay
                                     19 	.globl _printf_tiny
                                     20 	.globl _printf
                                     21 	.globl _writeRegisterMAXWing
                                     22 	.globl _readBytesMAXWing
                                     23 	.globl _readRegisterMAXWing
                                     24 	.globl _P5_7
                                     25 	.globl _P5_6
                                     26 	.globl _P5_5
                                     27 	.globl _P5_4
                                     28 	.globl _P5_3
                                     29 	.globl _P5_2
                                     30 	.globl _P5_1
                                     31 	.globl _P5_0
                                     32 	.globl _P4_7
                                     33 	.globl _P4_6
                                     34 	.globl _P4_5
                                     35 	.globl _P4_4
                                     36 	.globl _P4_3
                                     37 	.globl _P4_2
                                     38 	.globl _P4_1
                                     39 	.globl _P4_0
                                     40 	.globl _PX0L
                                     41 	.globl _PT0L
                                     42 	.globl _PX1L
                                     43 	.globl _PT1L
                                     44 	.globl _PSL
                                     45 	.globl _PT2L
                                     46 	.globl _PPCL
                                     47 	.globl _EC
                                     48 	.globl _CCF0
                                     49 	.globl _CCF1
                                     50 	.globl _CCF2
                                     51 	.globl _CCF3
                                     52 	.globl _CCF4
                                     53 	.globl _CR
                                     54 	.globl _CF
                                     55 	.globl _TF2
                                     56 	.globl _EXF2
                                     57 	.globl _RCLK
                                     58 	.globl _TCLK
                                     59 	.globl _EXEN2
                                     60 	.globl _TR2
                                     61 	.globl _C_T2
                                     62 	.globl _CP_RL2
                                     63 	.globl _T2CON_7
                                     64 	.globl _T2CON_6
                                     65 	.globl _T2CON_5
                                     66 	.globl _T2CON_4
                                     67 	.globl _T2CON_3
                                     68 	.globl _T2CON_2
                                     69 	.globl _T2CON_1
                                     70 	.globl _T2CON_0
                                     71 	.globl _PT2
                                     72 	.globl _ET2
                                     73 	.globl _CY
                                     74 	.globl _AC
                                     75 	.globl _F0
                                     76 	.globl _RS1
                                     77 	.globl _RS0
                                     78 	.globl _OV
                                     79 	.globl _F1
                                     80 	.globl _P
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _RD
                                     87 	.globl _WR
                                     88 	.globl _T1
                                     89 	.globl _T0
                                     90 	.globl _INT1
                                     91 	.globl _INT0
                                     92 	.globl _TXD
                                     93 	.globl _RXD
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ES
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _P2_7
                                    109 	.globl _P2_6
                                    110 	.globl _P2_5
                                    111 	.globl _P2_4
                                    112 	.globl _P2_3
                                    113 	.globl _P2_2
                                    114 	.globl _P2_1
                                    115 	.globl _P2_0
                                    116 	.globl _SM0
                                    117 	.globl _SM1
                                    118 	.globl _SM2
                                    119 	.globl _REN
                                    120 	.globl _TB8
                                    121 	.globl _RB8
                                    122 	.globl _TI
                                    123 	.globl _RI
                                    124 	.globl _P1_7
                                    125 	.globl _P1_6
                                    126 	.globl _P1_5
                                    127 	.globl _P1_4
                                    128 	.globl _P1_3
                                    129 	.globl _P1_2
                                    130 	.globl _P1_1
                                    131 	.globl _P1_0
                                    132 	.globl _TF1
                                    133 	.globl _TR1
                                    134 	.globl _TF0
                                    135 	.globl _TR0
                                    136 	.globl _IE1
                                    137 	.globl _IT1
                                    138 	.globl _IE0
                                    139 	.globl _IT0
                                    140 	.globl _P0_7
                                    141 	.globl _P0_6
                                    142 	.globl _P0_5
                                    143 	.globl _P0_4
                                    144 	.globl _P0_3
                                    145 	.globl _P0_2
                                    146 	.globl _P0_1
                                    147 	.globl _P0_0
                                    148 	.globl _EECON
                                    149 	.globl _KBF
                                    150 	.globl _KBE
                                    151 	.globl _KBLS
                                    152 	.globl _BRL
                                    153 	.globl _BDRCON
                                    154 	.globl _T2MOD
                                    155 	.globl _SPDAT
                                    156 	.globl _SPSTA
                                    157 	.globl _SPCON
                                    158 	.globl _SADEN
                                    159 	.globl _SADDR
                                    160 	.globl _WDTPRG
                                    161 	.globl _WDTRST
                                    162 	.globl _P5
                                    163 	.globl _P4
                                    164 	.globl _IPH1
                                    165 	.globl _IPL1
                                    166 	.globl _IPH0
                                    167 	.globl _IPL0
                                    168 	.globl _IEN1
                                    169 	.globl _IEN0
                                    170 	.globl _CMOD
                                    171 	.globl _CL
                                    172 	.globl _CH
                                    173 	.globl _CCON
                                    174 	.globl _CCAPM4
                                    175 	.globl _CCAPM3
                                    176 	.globl _CCAPM2
                                    177 	.globl _CCAPM1
                                    178 	.globl _CCAPM0
                                    179 	.globl _CCAP4L
                                    180 	.globl _CCAP3L
                                    181 	.globl _CCAP2L
                                    182 	.globl _CCAP1L
                                    183 	.globl _CCAP0L
                                    184 	.globl _CCAP4H
                                    185 	.globl _CCAP3H
                                    186 	.globl _CCAP2H
                                    187 	.globl _CCAP1H
                                    188 	.globl _CCAP0H
                                    189 	.globl _CKCON1
                                    190 	.globl _CKCON0
                                    191 	.globl _CKRL
                                    192 	.globl _AUXR1
                                    193 	.globl _AUXR
                                    194 	.globl _TH2
                                    195 	.globl _TL2
                                    196 	.globl _RCAP2H
                                    197 	.globl _RCAP2L
                                    198 	.globl _T2CON
                                    199 	.globl _B
                                    200 	.globl _ACC
                                    201 	.globl _PSW
                                    202 	.globl _IP
                                    203 	.globl _P3
                                    204 	.globl _IE
                                    205 	.globl _P2
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _P1
                                    209 	.globl _TH1
                                    210 	.globl _TH0
                                    211 	.globl _TL1
                                    212 	.globl _TL0
                                    213 	.globl _TMOD
                                    214 	.globl _TCON
                                    215 	.globl _PCON
                                    216 	.globl _DPH
                                    217 	.globl _DPL
                                    218 	.globl _SP
                                    219 	.globl _P0
                                    220 	.globl _getBufferSizeInBytes_PARM_2
                                    221 	.globl _configureSensorRegister_PARM_3
                                    222 	.globl _configureSensorRegister_PARM_2
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           000080   228 _P0	=	0x0080
                           000081   229 _SP	=	0x0081
                           000082   230 _DPL	=	0x0082
                           000083   231 _DPH	=	0x0083
                           000087   232 _PCON	=	0x0087
                           000088   233 _TCON	=	0x0088
                           000089   234 _TMOD	=	0x0089
                           00008A   235 _TL0	=	0x008a
                           00008B   236 _TL1	=	0x008b
                           00008C   237 _TH0	=	0x008c
                           00008D   238 _TH1	=	0x008d
                           000090   239 _P1	=	0x0090
                           000098   240 _SCON	=	0x0098
                           000099   241 _SBUF	=	0x0099
                           0000A0   242 _P2	=	0x00a0
                           0000A8   243 _IE	=	0x00a8
                           0000B0   244 _P3	=	0x00b0
                           0000B8   245 _IP	=	0x00b8
                           0000D0   246 _PSW	=	0x00d0
                           0000E0   247 _ACC	=	0x00e0
                           0000F0   248 _B	=	0x00f0
                           0000C8   249 _T2CON	=	0x00c8
                           0000CA   250 _RCAP2L	=	0x00ca
                           0000CB   251 _RCAP2H	=	0x00cb
                           0000CC   252 _TL2	=	0x00cc
                           0000CD   253 _TH2	=	0x00cd
                           00008E   254 _AUXR	=	0x008e
                           0000A2   255 _AUXR1	=	0x00a2
                           000097   256 _CKRL	=	0x0097
                           00008F   257 _CKCON0	=	0x008f
                           0000AF   258 _CKCON1	=	0x00af
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 _CCAP1H	=	0x00fb
                           0000FC   261 _CCAP2H	=	0x00fc
                           0000FD   262 _CCAP3H	=	0x00fd
                           0000FE   263 _CCAP4H	=	0x00fe
                           0000EA   264 _CCAP0L	=	0x00ea
                           0000EB   265 _CCAP1L	=	0x00eb
                           0000EC   266 _CCAP2L	=	0x00ec
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 _CCAP4L	=	0x00ee
                           0000DA   269 _CCAPM0	=	0x00da
                           0000DB   270 _CCAPM1	=	0x00db
                           0000DC   271 _CCAPM2	=	0x00dc
                           0000DD   272 _CCAPM3	=	0x00dd
                           0000DE   273 _CCAPM4	=	0x00de
                           0000D8   274 _CCON	=	0x00d8
                           0000F9   275 _CH	=	0x00f9
                           0000E9   276 _CL	=	0x00e9
                           0000D9   277 _CMOD	=	0x00d9
                           0000A8   278 _IEN0	=	0x00a8
                           0000B1   279 _IEN1	=	0x00b1
                           0000B8   280 _IPL0	=	0x00b8
                           0000B7   281 _IPH0	=	0x00b7
                           0000B2   282 _IPL1	=	0x00b2
                           0000B3   283 _IPH1	=	0x00b3
                           0000C0   284 _P4	=	0x00c0
                           0000E8   285 _P5	=	0x00e8
                           0000A6   286 _WDTRST	=	0x00a6
                           0000A7   287 _WDTPRG	=	0x00a7
                           0000A9   288 _SADDR	=	0x00a9
                           0000B9   289 _SADEN	=	0x00b9
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C9   293 _T2MOD	=	0x00c9
                           00009B   294 _BDRCON	=	0x009b
                           00009A   295 _BRL	=	0x009a
                           00009C   296 _KBLS	=	0x009c
                           00009D   297 _KBE	=	0x009d
                           00009E   298 _KBF	=	0x009e
                           0000D2   299 _EECON	=	0x00d2
                                    300 ;--------------------------------------------------------
                                    301 ; special function bits
                                    302 ;--------------------------------------------------------
                                    303 	.area RSEG    (ABS,DATA)
      000000                        304 	.org 0x0000
                           000080   305 _P0_0	=	0x0080
                           000081   306 _P0_1	=	0x0081
                           000082   307 _P0_2	=	0x0082
                           000083   308 _P0_3	=	0x0083
                           000084   309 _P0_4	=	0x0084
                           000085   310 _P0_5	=	0x0085
                           000086   311 _P0_6	=	0x0086
                           000087   312 _P0_7	=	0x0087
                           000088   313 _IT0	=	0x0088
                           000089   314 _IE0	=	0x0089
                           00008A   315 _IT1	=	0x008a
                           00008B   316 _IE1	=	0x008b
                           00008C   317 _TR0	=	0x008c
                           00008D   318 _TF0	=	0x008d
                           00008E   319 _TR1	=	0x008e
                           00008F   320 _TF1	=	0x008f
                           000090   321 _P1_0	=	0x0090
                           000091   322 _P1_1	=	0x0091
                           000092   323 _P1_2	=	0x0092
                           000093   324 _P1_3	=	0x0093
                           000094   325 _P1_4	=	0x0094
                           000095   326 _P1_5	=	0x0095
                           000096   327 _P1_6	=	0x0096
                           000097   328 _P1_7	=	0x0097
                           000098   329 _RI	=	0x0098
                           000099   330 _TI	=	0x0099
                           00009A   331 _RB8	=	0x009a
                           00009B   332 _TB8	=	0x009b
                           00009C   333 _REN	=	0x009c
                           00009D   334 _SM2	=	0x009d
                           00009E   335 _SM1	=	0x009e
                           00009F   336 _SM0	=	0x009f
                           0000A0   337 _P2_0	=	0x00a0
                           0000A1   338 _P2_1	=	0x00a1
                           0000A2   339 _P2_2	=	0x00a2
                           0000A3   340 _P2_3	=	0x00a3
                           0000A4   341 _P2_4	=	0x00a4
                           0000A5   342 _P2_5	=	0x00a5
                           0000A6   343 _P2_6	=	0x00a6
                           0000A7   344 _P2_7	=	0x00a7
                           0000A8   345 _EX0	=	0x00a8
                           0000A9   346 _ET0	=	0x00a9
                           0000AA   347 _EX1	=	0x00aa
                           0000AB   348 _ET1	=	0x00ab
                           0000AC   349 _ES	=	0x00ac
                           0000AF   350 _EA	=	0x00af
                           0000B0   351 _P3_0	=	0x00b0
                           0000B1   352 _P3_1	=	0x00b1
                           0000B2   353 _P3_2	=	0x00b2
                           0000B3   354 _P3_3	=	0x00b3
                           0000B4   355 _P3_4	=	0x00b4
                           0000B5   356 _P3_5	=	0x00b5
                           0000B6   357 _P3_6	=	0x00b6
                           0000B7   358 _P3_7	=	0x00b7
                           0000B0   359 _RXD	=	0x00b0
                           0000B1   360 _TXD	=	0x00b1
                           0000B2   361 _INT0	=	0x00b2
                           0000B3   362 _INT1	=	0x00b3
                           0000B4   363 _T0	=	0x00b4
                           0000B5   364 _T1	=	0x00b5
                           0000B6   365 _WR	=	0x00b6
                           0000B7   366 _RD	=	0x00b7
                           0000B8   367 _PX0	=	0x00b8
                           0000B9   368 _PT0	=	0x00b9
                           0000BA   369 _PX1	=	0x00ba
                           0000BB   370 _PT1	=	0x00bb
                           0000BC   371 _PS	=	0x00bc
                           0000D0   372 _P	=	0x00d0
                           0000D1   373 _F1	=	0x00d1
                           0000D2   374 _OV	=	0x00d2
                           0000D3   375 _RS0	=	0x00d3
                           0000D4   376 _RS1	=	0x00d4
                           0000D5   377 _F0	=	0x00d5
                           0000D6   378 _AC	=	0x00d6
                           0000D7   379 _CY	=	0x00d7
                           0000AD   380 _ET2	=	0x00ad
                           0000BD   381 _PT2	=	0x00bd
                           0000C8   382 _T2CON_0	=	0x00c8
                           0000C9   383 _T2CON_1	=	0x00c9
                           0000CA   384 _T2CON_2	=	0x00ca
                           0000CB   385 _T2CON_3	=	0x00cb
                           0000CC   386 _T2CON_4	=	0x00cc
                           0000CD   387 _T2CON_5	=	0x00cd
                           0000CE   388 _T2CON_6	=	0x00ce
                           0000CF   389 _T2CON_7	=	0x00cf
                           0000C8   390 _CP_RL2	=	0x00c8
                           0000C9   391 _C_T2	=	0x00c9
                           0000CA   392 _TR2	=	0x00ca
                           0000CB   393 _EXEN2	=	0x00cb
                           0000CC   394 _TCLK	=	0x00cc
                           0000CD   395 _RCLK	=	0x00cd
                           0000CE   396 _EXF2	=	0x00ce
                           0000CF   397 _TF2	=	0x00cf
                           0000DF   398 _CF	=	0x00df
                           0000DE   399 _CR	=	0x00de
                           0000DC   400 _CCF4	=	0x00dc
                           0000DB   401 _CCF3	=	0x00db
                           0000DA   402 _CCF2	=	0x00da
                           0000D9   403 _CCF1	=	0x00d9
                           0000D8   404 _CCF0	=	0x00d8
                           0000AE   405 _EC	=	0x00ae
                           0000BE   406 _PPCL	=	0x00be
                           0000BD   407 _PT2L	=	0x00bd
                           0000BC   408 _PSL	=	0x00bc
                           0000BB   409 _PT1L	=	0x00bb
                           0000BA   410 _PX1L	=	0x00ba
                           0000B9   411 _PT0L	=	0x00b9
                           0000B8   412 _PX0L	=	0x00b8
                           0000C0   413 _P4_0	=	0x00c0
                           0000C1   414 _P4_1	=	0x00c1
                           0000C2   415 _P4_2	=	0x00c2
                           0000C3   416 _P4_3	=	0x00c3
                           0000C4   417 _P4_4	=	0x00c4
                           0000C5   418 _P4_5	=	0x00c5
                           0000C6   419 _P4_6	=	0x00c6
                           0000C7   420 _P4_7	=	0x00c7
                           0000E8   421 _P5_0	=	0x00e8
                           0000E9   422 _P5_1	=	0x00e9
                           0000EA   423 _P5_2	=	0x00ea
                           0000EB   424 _P5_3	=	0x00eb
                           0000EC   425 _P5_4	=	0x00ec
                           0000ED   426 _P5_5	=	0x00ed
                           0000EE   427 _P5_6	=	0x00ee
                           0000EF   428 _P5_7	=	0x00ef
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable register banks
                                    431 ;--------------------------------------------------------
                                    432 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        433 	.ds 8
                                    434 ;--------------------------------------------------------
                                    435 ; internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area DSEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable items in internal ram
                                    440 ;--------------------------------------------------------
                                    441 ;--------------------------------------------------------
                                    442 ; indirectly addressable internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area ISEG    (DATA)
                                    445 ;--------------------------------------------------------
                                    446 ; absolute internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area IABS    (ABS,DATA)
                                    449 	.area IABS    (ABS,DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; bit data
                                    452 ;--------------------------------------------------------
                                    453 	.area BSEG    (BIT)
                                    454 ;--------------------------------------------------------
                                    455 ; paged external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area PSEG    (PAG,XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XSEG    (XDATA)
      00010A                        462 _sensor_delay_val_65536_26:
      00010A                        463 	.ds 2
      00010C                        464 _configureSensorRegister_PARM_2:
      00010C                        465 	.ds 1
      00010D                        466 _configureSensorRegister_PARM_3:
      00010D                        467 	.ds 1
      00010E                        468 _configureSensorRegister_deviceId_65536_30:
      00010E                        469 	.ds 1
      00010F                        470 _getBufferSizeInBytes_PARM_2:
      00010F                        471 	.ds 1
      000110                        472 _getBufferSizeInBytes_head_65536_50:
      000110                        473 	.ds 1
      000111                        474 _getBufferSizeInBytes_numBytes_65536_51:
      000111                        475 	.ds 1
      000112                        476 _readSensorFifo_fifoData_65536_55:
      000112                        477 	.ds 3
      000115                        478 _testMaxWing_fifo_65537_65:
      000115                        479 	.ds 192
                                    480 ;--------------------------------------------------------
                                    481 ; absolute external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XABS    (ABS,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; external initialized ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XISEG   (XDATA)
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT0 (CODE)
                                    490 	.area GSINIT1 (CODE)
                                    491 	.area GSINIT2 (CODE)
                                    492 	.area GSINIT3 (CODE)
                                    493 	.area GSINIT4 (CODE)
                                    494 	.area GSINIT5 (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area CSEG    (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; global & static initialisations
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; Home
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area HOME    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; code
                                    512 ;--------------------------------------------------------
                                    513 	.area CSEG    (CODE)
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'sensor_delay'
                                    516 ;------------------------------------------------------------
                                    517 ;val                       Allocated with name '_sensor_delay_val_65536_26'
                                    518 ;i                         Allocated with name '_sensor_delay_i_131072_28'
                                    519 ;------------------------------------------------------------
                                    520 ;	src/maxsensor.c:61: void sensor_delay(uint16_t val)
                                    521 ;	-----------------------------------------
                                    522 ;	 function sensor_delay
                                    523 ;	-----------------------------------------
      00338E                        524 _sensor_delay:
                           000007   525 	ar7 = 0x07
                           000006   526 	ar6 = 0x06
                           000005   527 	ar5 = 0x05
                           000004   528 	ar4 = 0x04
                           000003   529 	ar3 = 0x03
                           000002   530 	ar2 = 0x02
                           000001   531 	ar1 = 0x01
                           000000   532 	ar0 = 0x00
      00338E AF 83            [24]  533 	mov	r7,dph
      003390 E5 82            [12]  534 	mov	a,dpl
      003392 90 01 0A         [24]  535 	mov	dptr,#_sensor_delay_val_65536_26
      003395 F0               [24]  536 	movx	@dptr,a
      003396 EF               [12]  537 	mov	a,r7
      003397 A3               [24]  538 	inc	dptr
      003398 F0               [24]  539 	movx	@dptr,a
                                    540 ;	src/maxsensor.c:63: for (uint16_t i = 0; i < val; i++)
      003399 90 01 0A         [24]  541 	mov	dptr,#_sensor_delay_val_65536_26
      00339C E0               [24]  542 	movx	a,@dptr
      00339D FE               [12]  543 	mov	r6,a
      00339E A3               [24]  544 	inc	dptr
      00339F E0               [24]  545 	movx	a,@dptr
      0033A0 FF               [12]  546 	mov	r7,a
      0033A1 7C 00            [12]  547 	mov	r4,#0x00
      0033A3 7D 00            [12]  548 	mov	r5,#0x00
      0033A5                        549 00103$:
      0033A5 C3               [12]  550 	clr	c
      0033A6 EC               [12]  551 	mov	a,r4
      0033A7 9E               [12]  552 	subb	a,r6
      0033A8 ED               [12]  553 	mov	a,r5
      0033A9 9F               [12]  554 	subb	a,r7
      0033AA 50 07            [24]  555 	jnc	00105$
      0033AC 0C               [12]  556 	inc	r4
      0033AD BC 00 F5         [24]  557 	cjne	r4,#0x00,00103$
      0033B0 0D               [12]  558 	inc	r5
      0033B1 80 F2            [24]  559 	sjmp	00103$
      0033B3                        560 00105$:
                                    561 ;	src/maxsensor.c:65: }
      0033B3 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'pmicInit'
                                    565 ;------------------------------------------------------------
                                    566 ;	src/maxsensor.c:71: void pmicInit()
                                    567 ;	-----------------------------------------
                                    568 ;	 function pmicInit
                                    569 ;	-----------------------------------------
      0033B4                        570 _pmicInit:
                                    571 ;	src/maxsensor.c:74: writeRegisterMAXWing(PMIC, BBB_EXTRA_ADRS, 0x40);
      0033B4 90 00 3A         [24]  572 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      0033B7 74 1C            [12]  573 	mov	a,#0x1c
      0033B9 F0               [24]  574 	movx	@dptr,a
      0033BA 90 00 3B         [24]  575 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      0033BD 74 40            [12]  576 	mov	a,#0x40
      0033BF F0               [24]  577 	movx	@dptr,a
      0033C0 75 82 2A         [24]  578 	mov	dpl,#0x2a
      0033C3 12 09 68         [24]  579 	lcall	_writeRegisterMAXWing
                                    580 ;	src/maxsensor.c:77: PMIC_ENABLE = 0;
                                    581 ;	assignBit
      0033C6 C2 95            [12]  582 	clr	_P1_5
                                    583 ;	src/maxsensor.c:78: writeRegisterMAXWing(PMIC, BOOST_VOLTAGE, 0x08);
      0033C8 90 00 3A         [24]  584 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      0033CB 74 05            [12]  585 	mov	a,#0x05
      0033CD F0               [24]  586 	movx	@dptr,a
      0033CE 90 00 3B         [24]  587 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      0033D1 74 08            [12]  588 	mov	a,#0x08
      0033D3 F0               [24]  589 	movx	@dptr,a
      0033D4 75 82 2A         [24]  590 	mov	dpl,#0x2a
      0033D7 12 09 68         [24]  591 	lcall	_writeRegisterMAXWing
                                    592 ;	src/maxsensor.c:79: PMIC_ENABLE = 1;
                                    593 ;	assignBit
      0033DA D2 95            [12]  594 	setb	_P1_5
                                    595 ;	src/maxsensor.c:80: }
      0033DC 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'configureSensorRegister'
                                    599 ;------------------------------------------------------------
                                    600 ;regAddr                   Allocated with name '_configureSensorRegister_PARM_2'
                                    601 ;regVal                    Allocated with name '_configureSensorRegister_PARM_3'
                                    602 ;deviceId                  Allocated with name '_configureSensorRegister_deviceId_65536_30'
                                    603 ;status                    Allocated with name '_configureSensorRegister_status_65536_31'
                                    604 ;val                       Allocated with name '_configureSensorRegister_val_65537_33'
                                    605 ;------------------------------------------------------------
                                    606 ;	src/maxsensor.c:90: int configureSensorRegister(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
                                    607 ;	-----------------------------------------
                                    608 ;	 function configureSensorRegister
                                    609 ;	-----------------------------------------
      0033DD                        610 _configureSensorRegister:
      0033DD E5 82            [12]  611 	mov	a,dpl
      0033DF 90 01 0E         [24]  612 	mov	dptr,#_configureSensorRegister_deviceId_65536_30
      0033E2 F0               [24]  613 	movx	@dptr,a
                                    614 ;	src/maxsensor.c:92: int status = writeRegisterMAXWing(deviceId, regAddr, regVal);
      0033E3 E0               [24]  615 	movx	a,@dptr
      0033E4 FF               [12]  616 	mov	r7,a
      0033E5 90 01 0C         [24]  617 	mov	dptr,#_configureSensorRegister_PARM_2
      0033E8 E0               [24]  618 	movx	a,@dptr
      0033E9 FE               [12]  619 	mov	r6,a
      0033EA 90 01 0D         [24]  620 	mov	dptr,#_configureSensorRegister_PARM_3
      0033ED E0               [24]  621 	movx	a,@dptr
      0033EE FD               [12]  622 	mov	r5,a
      0033EF 90 00 3A         [24]  623 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      0033F2 EE               [12]  624 	mov	a,r6
      0033F3 F0               [24]  625 	movx	@dptr,a
      0033F4 90 00 3B         [24]  626 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      0033F7 ED               [12]  627 	mov	a,r5
      0033F8 F0               [24]  628 	movx	@dptr,a
      0033F9 8F 82            [24]  629 	mov	dpl,r7
      0033FB C0 07            [24]  630 	push	ar7
      0033FD C0 06            [24]  631 	push	ar6
      0033FF C0 05            [24]  632 	push	ar5
      003401 12 09 68         [24]  633 	lcall	_writeRegisterMAXWing
      003404 E5 82            [12]  634 	mov	a,dpl
      003406 85 83 F0         [24]  635 	mov	b,dph
      003409 D0 05            [24]  636 	pop	ar5
      00340B D0 06            [24]  637 	pop	ar6
      00340D D0 07            [24]  638 	pop	ar7
                                    639 ;	src/maxsensor.c:93: if (status != SUCCESS)
      00340F 45 F0            [12]  640 	orl	a,b
      003411 60 2C            [24]  641 	jz	00102$
                                    642 ;	src/maxsensor.c:95: ERROR_LOG("Write to Register %u Failed", regAddr);
      003413 8E 03            [24]  643 	mov	ar3,r6
      003415 7C 00            [12]  644 	mov	r4,#0x00
      003417 C0 03            [24]  645 	push	ar3
      003419 C0 04            [24]  646 	push	ar4
      00341B 74 65            [12]  647 	mov	a,#___str_0
      00341D C0 E0            [24]  648 	push	acc
      00341F 74 58            [12]  649 	mov	a,#(___str_0 >> 8)
      003421 C0 E0            [24]  650 	push	acc
      003423 12 3B B6         [24]  651 	lcall	_printf_tiny
      003426 E5 81            [12]  652 	mov	a,sp
      003428 24 FC            [12]  653 	add	a,#0xfc
      00342A F5 81            [12]  654 	mov	sp,a
      00342C 74 91            [12]  655 	mov	a,#___str_1
      00342E C0 E0            [24]  656 	push	acc
      003430 74 58            [12]  657 	mov	a,#(___str_1 >> 8)
      003432 C0 E0            [24]  658 	push	acc
      003434 12 3B B6         [24]  659 	lcall	_printf_tiny
      003437 15 81            [12]  660 	dec	sp
      003439 15 81            [12]  661 	dec	sp
                                    662 ;	src/maxsensor.c:96: return FAIL;
      00343B 90 FF FF         [24]  663 	mov	dptr,#0xffff
      00343E 22               [24]  664 	ret
      00343F                        665 00102$:
                                    666 ;	src/maxsensor.c:99: sensor_delay(500);
      00343F 90 01 F4         [24]  667 	mov	dptr,#0x01f4
      003442 C0 07            [24]  668 	push	ar7
      003444 C0 06            [24]  669 	push	ar6
      003446 C0 05            [24]  670 	push	ar5
      003448 12 33 8E         [24]  671 	lcall	_sensor_delay
      00344B D0 05            [24]  672 	pop	ar5
      00344D D0 06            [24]  673 	pop	ar6
      00344F D0 07            [24]  674 	pop	ar7
                                    675 ;	src/maxsensor.c:102: uint8_t val = readRegisterMAXWing(deviceId, regAddr);
      003451 90 00 2E         [24]  676 	mov	dptr,#_readRegisterMAXWing_PARM_2
      003454 EE               [12]  677 	mov	a,r6
      003455 F0               [24]  678 	movx	@dptr,a
      003456 8F 82            [24]  679 	mov	dpl,r7
      003458 C0 06            [24]  680 	push	ar6
      00345A C0 05            [24]  681 	push	ar5
      00345C 12 05 F4         [24]  682 	lcall	_readRegisterMAXWing
      00345F AC 82            [24]  683 	mov	r4,dpl
      003461 AF 83            [24]  684 	mov	r7,dph
      003463 D0 05            [24]  685 	pop	ar5
      003465 D0 06            [24]  686 	pop	ar6
                                    687 ;	src/maxsensor.c:103: if (val != regVal)
      003467 EC               [12]  688 	mov	a,r4
      003468 B5 05 02         [24]  689 	cjne	a,ar5,00116$
      00346B 80 36            [24]  690 	sjmp	00104$
      00346D                        691 00116$:
                                    692 ;	src/maxsensor.c:105: ERROR_LOG("Register %d Expected %d and actual %d config does not match!", regAddr, regVal, val);
      00346D 7F 00            [12]  693 	mov	r7,#0x00
      00346F 7B 00            [12]  694 	mov	r3,#0x00
      003471 7A 00            [12]  695 	mov	r2,#0x00
      003473 C0 04            [24]  696 	push	ar4
      003475 C0 07            [24]  697 	push	ar7
      003477 C0 05            [24]  698 	push	ar5
      003479 C0 03            [24]  699 	push	ar3
      00347B C0 06            [24]  700 	push	ar6
      00347D C0 02            [24]  701 	push	ar2
      00347F 74 96            [12]  702 	mov	a,#___str_2
      003481 C0 E0            [24]  703 	push	acc
      003483 74 58            [12]  704 	mov	a,#(___str_2 >> 8)
      003485 C0 E0            [24]  705 	push	acc
      003487 12 3B B6         [24]  706 	lcall	_printf_tiny
      00348A E5 81            [12]  707 	mov	a,sp
      00348C 24 F8            [12]  708 	add	a,#0xf8
      00348E F5 81            [12]  709 	mov	sp,a
      003490 74 91            [12]  710 	mov	a,#___str_1
      003492 C0 E0            [24]  711 	push	acc
      003494 74 58            [12]  712 	mov	a,#(___str_1 >> 8)
      003496 C0 E0            [24]  713 	push	acc
      003498 12 3B B6         [24]  714 	lcall	_printf_tiny
      00349B 15 81            [12]  715 	dec	sp
      00349D 15 81            [12]  716 	dec	sp
                                    717 ;	src/maxsensor.c:106: return FAIL;
      00349F 90 FF FF         [24]  718 	mov	dptr,#0xffff
      0034A2 22               [24]  719 	ret
      0034A3                        720 00104$:
                                    721 ;	src/maxsensor.c:109: return SUCCESS;
      0034A3 90 00 00         [24]  722 	mov	dptr,#0x0000
                                    723 ;	src/maxsensor.c:110: }
      0034A6 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'sensorInit'
                                    727 ;------------------------------------------------------------
                                    728 ;status                    Allocated with name '_sensorInit_status_65536_35'
                                    729 ;modeConfig                Allocated with name '_sensorInit_modeConfig_65536_35'
                                    730 ;interruptEnableRegister   Allocated with name '_sensorInit_interruptEnableRegister_65537_37'
                                    731 ;fifoConfig                Allocated with name '_sensorInit_fifoConfig_65538_39'
                                    732 ;spo2Config                Allocated with name '_sensorInit_spo2Config_65539_41'
                                    733 ;multiLedControlRegister1  Allocated with name '_sensorInit_multiLedControlRegister1_65540_45'
                                    734 ;------------------------------------------------------------
                                    735 ;	src/maxsensor.c:116: void sensorInit()
                                    736 ;	-----------------------------------------
                                    737 ;	 function sensorInit
                                    738 ;	-----------------------------------------
      0034A7                        739 _sensorInit:
                                    740 ;	src/maxsensor.c:124: status = writeRegisterMAXWing(MAX30101, ModeConfiguration, modeConfig);
      0034A7 90 00 3A         [24]  741 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      0034AA 74 09            [12]  742 	mov	a,#0x09
      0034AC F0               [24]  743 	movx	@dptr,a
      0034AD 90 00 3B         [24]  744 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      0034B0 74 43            [12]  745 	mov	a,#0x43
      0034B2 F0               [24]  746 	movx	@dptr,a
      0034B3 75 82 75         [24]  747 	mov	dpl,#0x75
      0034B6 12 09 68         [24]  748 	lcall	_writeRegisterMAXWing
      0034B9 E5 82            [12]  749 	mov	a,dpl
      0034BB 85 83 F0         [24]  750 	mov	b,dph
                                    751 ;	src/maxsensor.c:125: if (status != SUCCESS)
      0034BE 45 F0            [12]  752 	orl	a,b
      0034C0 60 1F            [24]  753 	jz	00102$
                                    754 ;	src/maxsensor.c:127: ERROR_LOG("1 Reset Conguration Failed");
      0034C2 74 E3            [12]  755 	mov	a,#___str_3
      0034C4 C0 E0            [24]  756 	push	acc
      0034C6 74 58            [12]  757 	mov	a,#(___str_3 >> 8)
      0034C8 C0 E0            [24]  758 	push	acc
      0034CA 12 3B B6         [24]  759 	lcall	_printf_tiny
      0034CD 15 81            [12]  760 	dec	sp
      0034CF 15 81            [12]  761 	dec	sp
      0034D1 74 91            [12]  762 	mov	a,#___str_1
      0034D3 C0 E0            [24]  763 	push	acc
      0034D5 74 58            [12]  764 	mov	a,#(___str_1 >> 8)
      0034D7 C0 E0            [24]  765 	push	acc
      0034D9 12 3B B6         [24]  766 	lcall	_printf_tiny
      0034DC 15 81            [12]  767 	dec	sp
      0034DE 15 81            [12]  768 	dec	sp
                                    769 ;	src/maxsensor.c:128: return;
      0034E0 22               [24]  770 	ret
      0034E1                        771 00102$:
                                    772 ;	src/maxsensor.c:131: sensor_delay(500);
      0034E1 90 01 F4         [24]  773 	mov	dptr,#0x01f4
      0034E4 12 33 8E         [24]  774 	lcall	_sensor_delay
                                    775 ;	src/maxsensor.c:138: status = configureSensorRegister(MAX30101, InterruptEnable1, interruptEnableRegister);
      0034E7 90 01 0C         [24]  776 	mov	dptr,#_configureSensorRegister_PARM_2
      0034EA 74 02            [12]  777 	mov	a,#0x02
      0034EC F0               [24]  778 	movx	@dptr,a
      0034ED 90 01 0D         [24]  779 	mov	dptr,#_configureSensorRegister_PARM_3
      0034F0 74 C0            [12]  780 	mov	a,#0xc0
      0034F2 F0               [24]  781 	movx	@dptr,a
      0034F3 75 82 75         [24]  782 	mov	dpl,#0x75
      0034F6 12 33 DD         [24]  783 	lcall	_configureSensorRegister
      0034F9 E5 82            [12]  784 	mov	a,dpl
      0034FB 85 83 F0         [24]  785 	mov	b,dph
                                    786 ;	src/maxsensor.c:139: if (status != SUCCESS)
      0034FE 45 F0            [12]  787 	orl	a,b
      003500 60 1E            [24]  788 	jz	00104$
                                    789 ;	src/maxsensor.c:141: ERROR_LOG("2 Interrupt Enable Register Failed");
      003502 74 0E            [12]  790 	mov	a,#___str_4
      003504 C0 E0            [24]  791 	push	acc
      003506 74 59            [12]  792 	mov	a,#(___str_4 >> 8)
      003508 C0 E0            [24]  793 	push	acc
      00350A 12 3B B6         [24]  794 	lcall	_printf_tiny
      00350D 15 81            [12]  795 	dec	sp
      00350F 15 81            [12]  796 	dec	sp
      003511 74 91            [12]  797 	mov	a,#___str_1
      003513 C0 E0            [24]  798 	push	acc
      003515 74 58            [12]  799 	mov	a,#(___str_1 >> 8)
      003517 C0 E0            [24]  800 	push	acc
      003519 12 3B B6         [24]  801 	lcall	_printf_tiny
      00351C 15 81            [12]  802 	dec	sp
      00351E 15 81            [12]  803 	dec	sp
      003520                        804 00104$:
                                    805 ;	src/maxsensor.c:151: status = configureSensorRegister(MAX30101, FIFO_Configuration, fifoConfig);
      003520 90 01 0C         [24]  806 	mov	dptr,#_configureSensorRegister_PARM_2
      003523 74 08            [12]  807 	mov	a,#0x08
      003525 F0               [24]  808 	movx	@dptr,a
      003526 90 01 0D         [24]  809 	mov	dptr,#_configureSensorRegister_PARM_3
      003529 74 02            [12]  810 	mov	a,#0x02
      00352B F0               [24]  811 	movx	@dptr,a
      00352C 75 82 75         [24]  812 	mov	dpl,#0x75
      00352F 12 33 DD         [24]  813 	lcall	_configureSensorRegister
      003532 E5 82            [12]  814 	mov	a,dpl
      003534 85 83 F0         [24]  815 	mov	b,dph
                                    816 ;	src/maxsensor.c:152: if (status != SUCCESS)
      003537 45 F0            [12]  817 	orl	a,b
      003539 60 1E            [24]  818 	jz	00106$
                                    819 ;	src/maxsensor.c:154: ERROR_LOG("3 FIFO Config Failed");
      00353B 74 41            [12]  820 	mov	a,#___str_5
      00353D C0 E0            [24]  821 	push	acc
      00353F 74 59            [12]  822 	mov	a,#(___str_5 >> 8)
      003541 C0 E0            [24]  823 	push	acc
      003543 12 3B B6         [24]  824 	lcall	_printf_tiny
      003546 15 81            [12]  825 	dec	sp
      003548 15 81            [12]  826 	dec	sp
      00354A 74 91            [12]  827 	mov	a,#___str_1
      00354C C0 E0            [24]  828 	push	acc
      00354E 74 58            [12]  829 	mov	a,#(___str_1 >> 8)
      003550 C0 E0            [24]  830 	push	acc
      003552 12 3B B6         [24]  831 	lcall	_printf_tiny
      003555 15 81            [12]  832 	dec	sp
      003557 15 81            [12]  833 	dec	sp
      003559                        834 00106$:
                                    835 ;	src/maxsensor.c:163: status = configureSensorRegister(MAX30101, SpO2Configuration, spo2Config);
      003559 90 01 0C         [24]  836 	mov	dptr,#_configureSensorRegister_PARM_2
      00355C 74 0A            [12]  837 	mov	a,#0x0a
      00355E F0               [24]  838 	movx	@dptr,a
      00355F 90 01 0D         [24]  839 	mov	dptr,#_configureSensorRegister_PARM_3
      003562 74 25            [12]  840 	mov	a,#0x25
      003564 F0               [24]  841 	movx	@dptr,a
      003565 75 82 75         [24]  842 	mov	dpl,#0x75
      003568 12 33 DD         [24]  843 	lcall	_configureSensorRegister
      00356B E5 82            [12]  844 	mov	a,dpl
      00356D 85 83 F0         [24]  845 	mov	b,dph
                                    846 ;	src/maxsensor.c:164: if (status != SUCCESS)
      003570 45 F0            [12]  847 	orl	a,b
      003572 60 1E            [24]  848 	jz	00108$
                                    849 ;	src/maxsensor.c:166: ERROR_LOG("4 SpO2 Config Failed");
      003574 74 66            [12]  850 	mov	a,#___str_6
      003576 C0 E0            [24]  851 	push	acc
      003578 74 59            [12]  852 	mov	a,#(___str_6 >> 8)
      00357A C0 E0            [24]  853 	push	acc
      00357C 12 3B B6         [24]  854 	lcall	_printf_tiny
      00357F 15 81            [12]  855 	dec	sp
      003581 15 81            [12]  856 	dec	sp
      003583 74 91            [12]  857 	mov	a,#___str_1
      003585 C0 E0            [24]  858 	push	acc
      003587 74 58            [12]  859 	mov	a,#(___str_1 >> 8)
      003589 C0 E0            [24]  860 	push	acc
      00358B 12 3B B6         [24]  861 	lcall	_printf_tiny
      00358E 15 81            [12]  862 	dec	sp
      003590 15 81            [12]  863 	dec	sp
      003592                        864 00108$:
                                    865 ;	src/maxsensor.c:183: status = configureSensorRegister(MAX30101, LED1_RED_PA, 0xFF);
      003592 90 01 0C         [24]  866 	mov	dptr,#_configureSensorRegister_PARM_2
      003595 74 0C            [12]  867 	mov	a,#0x0c
      003597 F0               [24]  868 	movx	@dptr,a
      003598 90 01 0D         [24]  869 	mov	dptr,#_configureSensorRegister_PARM_3
      00359B 74 FF            [12]  870 	mov	a,#0xff
      00359D F0               [24]  871 	movx	@dptr,a
      00359E 75 82 75         [24]  872 	mov	dpl,#0x75
      0035A1 12 33 DD         [24]  873 	lcall	_configureSensorRegister
      0035A4 E5 82            [12]  874 	mov	a,dpl
      0035A6 85 83 F0         [24]  875 	mov	b,dph
                                    876 ;	src/maxsensor.c:184: if (status != SUCCESS)
      0035A9 45 F0            [12]  877 	orl	a,b
      0035AB 60 1E            [24]  878 	jz	00110$
                                    879 ;	src/maxsensor.c:186: ERROR_LOG("6 Red LED Drive Current Conguration Failed");
      0035AD 74 8B            [12]  880 	mov	a,#___str_7
      0035AF C0 E0            [24]  881 	push	acc
      0035B1 74 59            [12]  882 	mov	a,#(___str_7 >> 8)
      0035B3 C0 E0            [24]  883 	push	acc
      0035B5 12 3B B6         [24]  884 	lcall	_printf_tiny
      0035B8 15 81            [12]  885 	dec	sp
      0035BA 15 81            [12]  886 	dec	sp
      0035BC 74 91            [12]  887 	mov	a,#___str_1
      0035BE C0 E0            [24]  888 	push	acc
      0035C0 74 58            [12]  889 	mov	a,#(___str_1 >> 8)
      0035C2 C0 E0            [24]  890 	push	acc
      0035C4 12 3B B6         [24]  891 	lcall	_printf_tiny
      0035C7 15 81            [12]  892 	dec	sp
      0035C9 15 81            [12]  893 	dec	sp
      0035CB                        894 00110$:
                                    895 ;	src/maxsensor.c:191: status = configureSensorRegister(MAX30101, LED2_IR_PA, 0xFF);
      0035CB 90 01 0C         [24]  896 	mov	dptr,#_configureSensorRegister_PARM_2
      0035CE 74 0D            [12]  897 	mov	a,#0x0d
      0035D0 F0               [24]  898 	movx	@dptr,a
      0035D1 90 01 0D         [24]  899 	mov	dptr,#_configureSensorRegister_PARM_3
      0035D4 74 FF            [12]  900 	mov	a,#0xff
      0035D6 F0               [24]  901 	movx	@dptr,a
      0035D7 75 82 75         [24]  902 	mov	dpl,#0x75
      0035DA 12 33 DD         [24]  903 	lcall	_configureSensorRegister
      0035DD AE 82            [24]  904 	mov	r6,dpl
      0035DF AF 83            [24]  905 	mov	r7,dph
                                    906 ;	src/maxsensor.c:192: if (status != SUCCESS)
      0035E1 EE               [12]  907 	mov	a,r6
      0035E2 4F               [12]  908 	orl	a,r7
      0035E3 60 26            [24]  909 	jz	00112$
                                    910 ;	src/maxsensor.c:194: ERROR_LOG("7 IR LED Drive Current Conguration Failed");
      0035E5 C0 07            [24]  911 	push	ar7
      0035E7 C0 06            [24]  912 	push	ar6
      0035E9 74 C6            [12]  913 	mov	a,#___str_8
      0035EB C0 E0            [24]  914 	push	acc
      0035ED 74 59            [12]  915 	mov	a,#(___str_8 >> 8)
      0035EF C0 E0            [24]  916 	push	acc
      0035F1 12 3B B6         [24]  917 	lcall	_printf_tiny
      0035F4 15 81            [12]  918 	dec	sp
      0035F6 15 81            [12]  919 	dec	sp
      0035F8 74 91            [12]  920 	mov	a,#___str_1
      0035FA C0 E0            [24]  921 	push	acc
      0035FC 74 58            [12]  922 	mov	a,#(___str_1 >> 8)
      0035FE C0 E0            [24]  923 	push	acc
      003600 12 3B B6         [24]  924 	lcall	_printf_tiny
      003603 15 81            [12]  925 	dec	sp
      003605 15 81            [12]  926 	dec	sp
      003607 D0 06            [24]  927 	pop	ar6
      003609 D0 07            [24]  928 	pop	ar7
      00360B                        929 00112$:
                                    930 ;	src/maxsensor.c:201: writeRegisterMAXWing(MAX30101, ModeControlReg1, multiLedControlRegister1);
      00360B 90 00 3A         [24]  931 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      00360E 74 11            [12]  932 	mov	a,#0x11
      003610 F0               [24]  933 	movx	@dptr,a
      003611 90 00 3B         [24]  934 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      003614 74 21            [12]  935 	mov	a,#0x21
      003616 F0               [24]  936 	movx	@dptr,a
      003617 75 82 75         [24]  937 	mov	dpl,#0x75
      00361A C0 07            [24]  938 	push	ar7
      00361C C0 06            [24]  939 	push	ar6
      00361E 12 09 68         [24]  940 	lcall	_writeRegisterMAXWing
      003621 D0 06            [24]  941 	pop	ar6
      003623 D0 07            [24]  942 	pop	ar7
                                    943 ;	src/maxsensor.c:202: if (status != SUCCESS)
      003625 EE               [12]  944 	mov	a,r6
      003626 4F               [12]  945 	orl	a,r7
      003627 60 1F            [24]  946 	jz	00114$
                                    947 ;	src/maxsensor.c:204: ERROR_LOG("5 Multi LED Control Failed");
      003629 74 00            [12]  948 	mov	a,#___str_9
      00362B C0 E0            [24]  949 	push	acc
      00362D 74 5A            [12]  950 	mov	a,#(___str_9 >> 8)
      00362F C0 E0            [24]  951 	push	acc
      003631 12 3B B6         [24]  952 	lcall	_printf_tiny
      003634 15 81            [12]  953 	dec	sp
      003636 15 81            [12]  954 	dec	sp
      003638 74 91            [12]  955 	mov	a,#___str_1
      00363A C0 E0            [24]  956 	push	acc
      00363C 74 58            [12]  957 	mov	a,#(___str_1 >> 8)
      00363E C0 E0            [24]  958 	push	acc
      003640 12 3B B6         [24]  959 	lcall	_printf_tiny
      003643 15 81            [12]  960 	dec	sp
      003645 15 81            [12]  961 	dec	sp
                                    962 ;	src/maxsensor.c:205: return;
      003647 22               [24]  963 	ret
      003648                        964 00114$:
                                    965 ;	src/maxsensor.c:210: status = writeRegisterMAXWing(MAX30101, FIFO_WritePointer, 0);
      003648 90 00 3A         [24]  966 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      00364B 74 04            [12]  967 	mov	a,#0x04
      00364D F0               [24]  968 	movx	@dptr,a
      00364E 90 00 3B         [24]  969 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      003651 E4               [12]  970 	clr	a
      003652 F0               [24]  971 	movx	@dptr,a
      003653 75 82 75         [24]  972 	mov	dpl,#0x75
      003656 12 09 68         [24]  973 	lcall	_writeRegisterMAXWing
      003659 E5 82            [12]  974 	mov	a,dpl
      00365B 85 83 F0         [24]  975 	mov	b,dph
                                    976 ;	src/maxsensor.c:211: if (status != SUCCESS)
      00365E 45 F0            [12]  977 	orl	a,b
      003660 60 1F            [24]  978 	jz	00116$
                                    979 ;	src/maxsensor.c:213: ERROR_LOG("8 Resetting Write Pointer Failed");
      003662 74 2B            [12]  980 	mov	a,#___str_10
      003664 C0 E0            [24]  981 	push	acc
      003666 74 5A            [12]  982 	mov	a,#(___str_10 >> 8)
      003668 C0 E0            [24]  983 	push	acc
      00366A 12 3B B6         [24]  984 	lcall	_printf_tiny
      00366D 15 81            [12]  985 	dec	sp
      00366F 15 81            [12]  986 	dec	sp
      003671 74 91            [12]  987 	mov	a,#___str_1
      003673 C0 E0            [24]  988 	push	acc
      003675 74 58            [12]  989 	mov	a,#(___str_1 >> 8)
      003677 C0 E0            [24]  990 	push	acc
      003679 12 3B B6         [24]  991 	lcall	_printf_tiny
      00367C 15 81            [12]  992 	dec	sp
      00367E 15 81            [12]  993 	dec	sp
                                    994 ;	src/maxsensor.c:214: return;
      003680 22               [24]  995 	ret
      003681                        996 00116$:
                                    997 ;	src/maxsensor.c:217: status = writeRegisterMAXWing(MAX30101, FIFO_ReadPointer, 0);
      003681 90 00 3A         [24]  998 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      003684 74 06            [12]  999 	mov	a,#0x06
      003686 F0               [24] 1000 	movx	@dptr,a
      003687 90 00 3B         [24] 1001 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      00368A E4               [12] 1002 	clr	a
      00368B F0               [24] 1003 	movx	@dptr,a
      00368C 75 82 75         [24] 1004 	mov	dpl,#0x75
      00368F 12 09 68         [24] 1005 	lcall	_writeRegisterMAXWing
      003692 E5 82            [12] 1006 	mov	a,dpl
      003694 85 83 F0         [24] 1007 	mov	b,dph
                                   1008 ;	src/maxsensor.c:218: if (status != SUCCESS)
      003697 45 F0            [12] 1009 	orl	a,b
      003699 60 1F            [24] 1010 	jz	00118$
                                   1011 ;	src/maxsensor.c:220: ERROR_LOG("9 Resetting Read Failed");
      00369B 74 5C            [12] 1012 	mov	a,#___str_11
      00369D C0 E0            [24] 1013 	push	acc
      00369F 74 5A            [12] 1014 	mov	a,#(___str_11 >> 8)
      0036A1 C0 E0            [24] 1015 	push	acc
      0036A3 12 3B B6         [24] 1016 	lcall	_printf_tiny
      0036A6 15 81            [12] 1017 	dec	sp
      0036A8 15 81            [12] 1018 	dec	sp
      0036AA 74 91            [12] 1019 	mov	a,#___str_1
      0036AC C0 E0            [24] 1020 	push	acc
      0036AE 74 58            [12] 1021 	mov	a,#(___str_1 >> 8)
      0036B0 C0 E0            [24] 1022 	push	acc
      0036B2 12 3B B6         [24] 1023 	lcall	_printf_tiny
      0036B5 15 81            [12] 1024 	dec	sp
      0036B7 15 81            [12] 1025 	dec	sp
                                   1026 ;	src/maxsensor.c:221: return;
      0036B9 22               [24] 1027 	ret
      0036BA                       1028 00118$:
                                   1029 ;	src/maxsensor.c:228: status = configureSensorRegister(MAX30101, ModeConfiguration, modeConfig);
      0036BA 90 01 0C         [24] 1030 	mov	dptr,#_configureSensorRegister_PARM_2
      0036BD 74 09            [12] 1031 	mov	a,#0x09
      0036BF F0               [24] 1032 	movx	@dptr,a
      0036C0 90 01 0D         [24] 1033 	mov	dptr,#_configureSensorRegister_PARM_3
      0036C3 74 03            [12] 1034 	mov	a,#0x03
      0036C5 F0               [24] 1035 	movx	@dptr,a
      0036C6 75 82 75         [24] 1036 	mov	dpl,#0x75
      0036C9 12 33 DD         [24] 1037 	lcall	_configureSensorRegister
      0036CC E5 82            [12] 1038 	mov	a,dpl
      0036CE 85 83 F0         [24] 1039 	mov	b,dph
                                   1040 ;	src/maxsensor.c:229: if (status != SUCCESS)
      0036D1 45 F0            [12] 1041 	orl	a,b
      0036D3 60 1E            [24] 1042 	jz	00120$
                                   1043 ;	src/maxsensor.c:231: ERROR_LOG("10 Setting operating mode Failed");
      0036D5 74 84            [12] 1044 	mov	a,#___str_12
      0036D7 C0 E0            [24] 1045 	push	acc
      0036D9 74 5A            [12] 1046 	mov	a,#(___str_12 >> 8)
      0036DB C0 E0            [24] 1047 	push	acc
      0036DD 12 3B B6         [24] 1048 	lcall	_printf_tiny
      0036E0 15 81            [12] 1049 	dec	sp
      0036E2 15 81            [12] 1050 	dec	sp
      0036E4 74 91            [12] 1051 	mov	a,#___str_1
      0036E6 C0 E0            [24] 1052 	push	acc
      0036E8 74 58            [12] 1053 	mov	a,#(___str_1 >> 8)
      0036EA C0 E0            [24] 1054 	push	acc
      0036EC 12 3B B6         [24] 1055 	lcall	_printf_tiny
      0036EF 15 81            [12] 1056 	dec	sp
      0036F1 15 81            [12] 1057 	dec	sp
      0036F3                       1058 00120$:
                                   1059 ;	src/maxsensor.c:235: sensor_delay(500);
      0036F3 90 01 F4         [24] 1060 	mov	dptr,#0x01f4
                                   1061 ;	src/maxsensor.c:236: }
      0036F6 02 33 8E         [24] 1062 	ljmp	_sensor_delay
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'getBufferSizeInBytes'
                                   1065 ;------------------------------------------------------------
                                   1066 ;tail                      Allocated with name '_getBufferSizeInBytes_PARM_2'
                                   1067 ;head                      Allocated with name '_getBufferSizeInBytes_head_65536_50'
                                   1068 ;numBytes                  Allocated with name '_getBufferSizeInBytes_numBytes_65536_51'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	src/maxsensor.c:245: uint8_t getBufferSizeInBytes(uint8_t head, uint8_t tail)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function getBufferSizeInBytes
                                   1073 ;	-----------------------------------------
      0036F9                       1074 _getBufferSizeInBytes:
      0036F9 E5 82            [12] 1075 	mov	a,dpl
      0036FB 90 01 10         [24] 1076 	mov	dptr,#_getBufferSizeInBytes_head_65536_50
      0036FE F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	src/maxsensor.c:250: if (head > tail) // Head is greater than tail
      0036FF E0               [24] 1079 	movx	a,@dptr
      003700 FF               [12] 1080 	mov	r7,a
      003701 90 01 0F         [24] 1081 	mov	dptr,#_getBufferSizeInBytes_PARM_2
      003704 E0               [24] 1082 	movx	a,@dptr
      003705 FE               [12] 1083 	mov	r6,a
      003706 C3               [12] 1084 	clr	c
      003707 9F               [12] 1085 	subb	a,r7
      003708 50 09            [24] 1086 	jnc	00105$
                                   1087 ;	src/maxsensor.c:252: numBytes = head - tail;
      00370A 90 01 11         [24] 1088 	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
      00370D EF               [12] 1089 	mov	a,r7
      00370E C3               [12] 1090 	clr	c
      00370F 9E               [12] 1091 	subb	a,r6
      003710 F0               [24] 1092 	movx	@dptr,a
      003711 80 17            [24] 1093 	sjmp	00106$
      003713                       1094 00105$:
                                   1095 ;	src/maxsensor.c:255: else if (head < tail) // Tail is greater than head
      003713 C3               [12] 1096 	clr	c
      003714 EF               [12] 1097 	mov	a,r7
      003715 9E               [12] 1098 	subb	a,r6
      003716 50 0D            [24] 1099 	jnc	00102$
                                   1100 ;	src/maxsensor.c:257: numBytes = (BUFFER_SIZE - tail) + head;
      003718 74 20            [12] 1101 	mov	a,#0x20
      00371A C3               [12] 1102 	clr	c
      00371B 9E               [12] 1103 	subb	a,r6
      00371C FE               [12] 1104 	mov	r6,a
      00371D 90 01 11         [24] 1105 	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
      003720 EF               [12] 1106 	mov	a,r7
      003721 2E               [12] 1107 	add	a,r6
      003722 F0               [24] 1108 	movx	@dptr,a
      003723 80 05            [24] 1109 	sjmp	00106$
      003725                       1110 00102$:
                                   1111 ;	src/maxsensor.c:261: numBytes = 0;
      003725 90 01 11         [24] 1112 	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
      003728 E4               [12] 1113 	clr	a
      003729 F0               [24] 1114 	movx	@dptr,a
      00372A                       1115 00106$:
                                   1116 ;	src/maxsensor.c:264: numBytes = numBytes * SIZE_PER_CHANNEL * NUM_LEDS;
      00372A 90 01 11         [24] 1117 	mov	dptr,#_getBufferSizeInBytes_numBytes_65536_51
      00372D E0               [24] 1118 	movx	a,@dptr
      00372E 75 F0 06         [24] 1119 	mov	b,#0x06
      003731 A4               [48] 1120 	mul	ab
      003732 F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	src/maxsensor.c:266: return numBytes;
      003733 E0               [24] 1123 	movx	a,@dptr
                                   1124 ;	src/maxsensor.c:267: }
      003734 F5 82            [12] 1125 	mov	dpl,a
      003736 22               [24] 1126 	ret
                                   1127 ;------------------------------------------------------------
                                   1128 ;Allocation info for local variables in function 'readSensorFifo'
                                   1129 ;------------------------------------------------------------
                                   1130 ;fifoData                  Allocated with name '_readSensorFifo_fifoData_65536_55'
                                   1131 ;result                    Allocated with name '_readSensorFifo_result_65536_56'
                                   1132 ;overflowCnt               Allocated with name '_readSensorFifo_overflowCnt_65536_56'
                                   1133 ;writeIndex                Allocated with name '_readSensorFifo_writeIndex_65537_58'
                                   1134 ;readIndex                 Allocated with name '_readSensorFifo_readIndex_65538_60'
                                   1135 ;------------------------------------------------------------
                                   1136 ;	src/maxsensor.c:275: int readSensorFifo(uint8_t fifoData[])
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function readSensorFifo
                                   1139 ;	-----------------------------------------
      003737                       1140 _readSensorFifo:
      003737 AF F0            [24] 1141 	mov	r7,b
      003739 AE 83            [24] 1142 	mov	r6,dph
      00373B E5 82            [12] 1143 	mov	a,dpl
      00373D 90 01 12         [24] 1144 	mov	dptr,#_readSensorFifo_fifoData_65536_55
      003740 F0               [24] 1145 	movx	@dptr,a
      003741 EE               [12] 1146 	mov	a,r6
      003742 A3               [24] 1147 	inc	dptr
      003743 F0               [24] 1148 	movx	@dptr,a
      003744 EF               [12] 1149 	mov	a,r7
      003745 A3               [24] 1150 	inc	dptr
      003746 F0               [24] 1151 	movx	@dptr,a
                                   1152 ;	src/maxsensor.c:280: int overflowCnt = readRegisterMAXWing(MAX30101, OverflowCounter);
      003747 90 00 2E         [24] 1153 	mov	dptr,#_readRegisterMAXWing_PARM_2
      00374A 74 05            [12] 1154 	mov	a,#0x05
      00374C F0               [24] 1155 	movx	@dptr,a
      00374D 75 82 75         [24] 1156 	mov	dpl,#0x75
      003750 12 05 F4         [24] 1157 	lcall	_readRegisterMAXWing
      003753 AE 82            [24] 1158 	mov	r6,dpl
      003755 AF 83            [24] 1159 	mov	r7,dph
                                   1160 ;	src/maxsensor.c:281: if (overflowCnt == FAIL)
      003757 BE FF 37         [24] 1161 	cjne	r6,#0xff,00102$
      00375A BF FF 34         [24] 1162 	cjne	r7,#0xff,00102$
                                   1163 ;	src/maxsensor.c:283: ERROR_LOG("%s: Reading overflow counter fail", __func__);
      00375D C0 07            [24] 1164 	push	ar7
      00375F C0 06            [24] 1165 	push	ar6
      003761 74 E7            [12] 1166 	mov	a,#___str_14
      003763 C0 E0            [24] 1167 	push	acc
      003765 74 5A            [12] 1168 	mov	a,#(___str_14 >> 8)
      003767 C0 E0            [24] 1169 	push	acc
      003769 74 80            [12] 1170 	mov	a,#0x80
      00376B C0 E0            [24] 1171 	push	acc
      00376D 74 B5            [12] 1172 	mov	a,#___str_13
      00376F C0 E0            [24] 1173 	push	acc
      003771 74 5A            [12] 1174 	mov	a,#(___str_13 >> 8)
      003773 C0 E0            [24] 1175 	push	acc
      003775 12 3B B6         [24] 1176 	lcall	_printf_tiny
      003778 E5 81            [12] 1177 	mov	a,sp
      00377A 24 FB            [12] 1178 	add	a,#0xfb
      00377C F5 81            [12] 1179 	mov	sp,a
      00377E 74 91            [12] 1180 	mov	a,#___str_1
      003780 C0 E0            [24] 1181 	push	acc
      003782 74 58            [12] 1182 	mov	a,#(___str_1 >> 8)
      003784 C0 E0            [24] 1183 	push	acc
      003786 12 3B B6         [24] 1184 	lcall	_printf_tiny
      003789 15 81            [12] 1185 	dec	sp
      00378B 15 81            [12] 1186 	dec	sp
      00378D D0 06            [24] 1187 	pop	ar6
      00378F D0 07            [24] 1188 	pop	ar7
      003791                       1189 00102$:
                                   1190 ;	src/maxsensor.c:286: INFO_LOG("Overflow Count = %d", overflowCnt);
      003791 C0 06            [24] 1191 	push	ar6
      003793 C0 07            [24] 1192 	push	ar7
      003795 74 F6            [12] 1193 	mov	a,#___str_15
      003797 C0 E0            [24] 1194 	push	acc
      003799 74 5A            [12] 1195 	mov	a,#(___str_15 >> 8)
      00379B C0 E0            [24] 1196 	push	acc
      00379D 74 80            [12] 1197 	mov	a,#0x80
      00379F C0 E0            [24] 1198 	push	acc
      0037A1 12 3E BF         [24] 1199 	lcall	_printf
      0037A4 E5 81            [12] 1200 	mov	a,sp
      0037A6 24 FB            [12] 1201 	add	a,#0xfb
      0037A8 F5 81            [12] 1202 	mov	sp,a
      0037AA 74 91            [12] 1203 	mov	a,#___str_1
      0037AC C0 E0            [24] 1204 	push	acc
      0037AE 74 58            [12] 1205 	mov	a,#(___str_1 >> 8)
      0037B0 C0 E0            [24] 1206 	push	acc
      0037B2 12 3B B6         [24] 1207 	lcall	_printf_tiny
      0037B5 15 81            [12] 1208 	dec	sp
      0037B7 15 81            [12] 1209 	dec	sp
                                   1210 ;	src/maxsensor.c:287: sensor_delay(500);
      0037B9 90 01 F4         [24] 1211 	mov	dptr,#0x01f4
      0037BC 12 33 8E         [24] 1212 	lcall	_sensor_delay
                                   1213 ;	src/maxsensor.c:290: int writeIndex = readRegisterMAXWing(MAX30101, FIFO_WritePointer);
      0037BF 90 00 2E         [24] 1214 	mov	dptr,#_readRegisterMAXWing_PARM_2
      0037C2 74 04            [12] 1215 	mov	a,#0x04
      0037C4 F0               [24] 1216 	movx	@dptr,a
      0037C5 75 82 75         [24] 1217 	mov	dpl,#0x75
      0037C8 12 05 F4         [24] 1218 	lcall	_readRegisterMAXWing
      0037CB AE 82            [24] 1219 	mov	r6,dpl
      0037CD AF 83            [24] 1220 	mov	r7,dph
                                   1221 ;	src/maxsensor.c:291: if (writeIndex == FAIL)
      0037CF BE FF 37         [24] 1222 	cjne	r6,#0xff,00104$
      0037D2 BF FF 34         [24] 1223 	cjne	r7,#0xff,00104$
                                   1224 ;	src/maxsensor.c:293: ERROR_LOG("%s: Reading Write Index fail", __func__);
      0037D5 C0 07            [24] 1225 	push	ar7
      0037D7 C0 06            [24] 1226 	push	ar6
      0037D9 74 E7            [12] 1227 	mov	a,#___str_14
      0037DB C0 E0            [24] 1228 	push	acc
      0037DD 74 5A            [12] 1229 	mov	a,#(___str_14 >> 8)
      0037DF C0 E0            [24] 1230 	push	acc
      0037E1 74 80            [12] 1231 	mov	a,#0x80
      0037E3 C0 E0            [24] 1232 	push	acc
      0037E5 74 17            [12] 1233 	mov	a,#___str_16
      0037E7 C0 E0            [24] 1234 	push	acc
      0037E9 74 5B            [12] 1235 	mov	a,#(___str_16 >> 8)
      0037EB C0 E0            [24] 1236 	push	acc
      0037ED 12 3B B6         [24] 1237 	lcall	_printf_tiny
      0037F0 E5 81            [12] 1238 	mov	a,sp
      0037F2 24 FB            [12] 1239 	add	a,#0xfb
      0037F4 F5 81            [12] 1240 	mov	sp,a
      0037F6 74 91            [12] 1241 	mov	a,#___str_1
      0037F8 C0 E0            [24] 1242 	push	acc
      0037FA 74 58            [12] 1243 	mov	a,#(___str_1 >> 8)
      0037FC C0 E0            [24] 1244 	push	acc
      0037FE 12 3B B6         [24] 1245 	lcall	_printf_tiny
      003801 15 81            [12] 1246 	dec	sp
      003803 15 81            [12] 1247 	dec	sp
      003805 D0 06            [24] 1248 	pop	ar6
      003807 D0 07            [24] 1249 	pop	ar7
      003809                       1250 00104$:
                                   1251 ;	src/maxsensor.c:296: INFO_LOG("Write ptr = %d", writeIndex);
      003809 C0 06            [24] 1252 	push	ar6
      00380B C0 07            [24] 1253 	push	ar7
      00380D 74 44            [12] 1254 	mov	a,#___str_17
      00380F C0 E0            [24] 1255 	push	acc
      003811 74 5B            [12] 1256 	mov	a,#(___str_17 >> 8)
      003813 C0 E0            [24] 1257 	push	acc
      003815 74 80            [12] 1258 	mov	a,#0x80
      003817 C0 E0            [24] 1259 	push	acc
      003819 12 3E BF         [24] 1260 	lcall	_printf
      00381C E5 81            [12] 1261 	mov	a,sp
      00381E 24 FB            [12] 1262 	add	a,#0xfb
      003820 F5 81            [12] 1263 	mov	sp,a
      003822 74 91            [12] 1264 	mov	a,#___str_1
      003824 C0 E0            [24] 1265 	push	acc
      003826 74 58            [12] 1266 	mov	a,#(___str_1 >> 8)
      003828 C0 E0            [24] 1267 	push	acc
      00382A 12 3B B6         [24] 1268 	lcall	_printf_tiny
      00382D 15 81            [12] 1269 	dec	sp
      00382F 15 81            [12] 1270 	dec	sp
                                   1271 ;	src/maxsensor.c:297: sensor_delay(500);
      003831 90 01 F4         [24] 1272 	mov	dptr,#0x01f4
      003834 12 33 8E         [24] 1273 	lcall	_sensor_delay
                                   1274 ;	src/maxsensor.c:300: int readIndex = readRegisterMAXWing(MAX30101, FIFO_ReadPointer);
      003837 90 00 2E         [24] 1275 	mov	dptr,#_readRegisterMAXWing_PARM_2
      00383A 74 06            [12] 1276 	mov	a,#0x06
      00383C F0               [24] 1277 	movx	@dptr,a
      00383D 75 82 75         [24] 1278 	mov	dpl,#0x75
      003840 12 05 F4         [24] 1279 	lcall	_readRegisterMAXWing
      003843 AE 82            [24] 1280 	mov	r6,dpl
      003845 AF 83            [24] 1281 	mov	r7,dph
                                   1282 ;	src/maxsensor.c:301: if (readIndex == FAIL)
      003847 BE FF 37         [24] 1283 	cjne	r6,#0xff,00106$
      00384A BF FF 34         [24] 1284 	cjne	r7,#0xff,00106$
                                   1285 ;	src/maxsensor.c:303: ERROR_LOG("%s: Reading Read Index fail", __func__);
      00384D C0 07            [24] 1286 	push	ar7
      00384F C0 06            [24] 1287 	push	ar6
      003851 74 E7            [12] 1288 	mov	a,#___str_14
      003853 C0 E0            [24] 1289 	push	acc
      003855 74 5A            [12] 1290 	mov	a,#(___str_14 >> 8)
      003857 C0 E0            [24] 1291 	push	acc
      003859 74 80            [12] 1292 	mov	a,#0x80
      00385B C0 E0            [24] 1293 	push	acc
      00385D 74 60            [12] 1294 	mov	a,#___str_18
      00385F C0 E0            [24] 1295 	push	acc
      003861 74 5B            [12] 1296 	mov	a,#(___str_18 >> 8)
      003863 C0 E0            [24] 1297 	push	acc
      003865 12 3B B6         [24] 1298 	lcall	_printf_tiny
      003868 E5 81            [12] 1299 	mov	a,sp
      00386A 24 FB            [12] 1300 	add	a,#0xfb
      00386C F5 81            [12] 1301 	mov	sp,a
      00386E 74 91            [12] 1302 	mov	a,#___str_1
      003870 C0 E0            [24] 1303 	push	acc
      003872 74 58            [12] 1304 	mov	a,#(___str_1 >> 8)
      003874 C0 E0            [24] 1305 	push	acc
      003876 12 3B B6         [24] 1306 	lcall	_printf_tiny
      003879 15 81            [12] 1307 	dec	sp
      00387B 15 81            [12] 1308 	dec	sp
      00387D D0 06            [24] 1309 	pop	ar6
      00387F D0 07            [24] 1310 	pop	ar7
      003881                       1311 00106$:
                                   1312 ;	src/maxsensor.c:306: INFO_LOG("Read ptr = %d", readIndex);
      003881 C0 06            [24] 1313 	push	ar6
      003883 C0 07            [24] 1314 	push	ar7
      003885 74 8C            [12] 1315 	mov	a,#___str_19
      003887 C0 E0            [24] 1316 	push	acc
      003889 74 5B            [12] 1317 	mov	a,#(___str_19 >> 8)
      00388B C0 E0            [24] 1318 	push	acc
      00388D 74 80            [12] 1319 	mov	a,#0x80
      00388F C0 E0            [24] 1320 	push	acc
      003891 12 3E BF         [24] 1321 	lcall	_printf
      003894 E5 81            [12] 1322 	mov	a,sp
      003896 24 FB            [12] 1323 	add	a,#0xfb
      003898 F5 81            [12] 1324 	mov	sp,a
      00389A 74 91            [12] 1325 	mov	a,#___str_1
      00389C C0 E0            [24] 1326 	push	acc
      00389E 74 58            [12] 1327 	mov	a,#(___str_1 >> 8)
      0038A0 C0 E0            [24] 1328 	push	acc
      0038A2 12 3B B6         [24] 1329 	lcall	_printf_tiny
      0038A5 15 81            [12] 1330 	dec	sp
      0038A7 15 81            [12] 1331 	dec	sp
                                   1332 ;	src/maxsensor.c:307: sensor_delay(500);
      0038A9 90 01 F4         [24] 1333 	mov	dptr,#0x01f4
      0038AC 12 33 8E         [24] 1334 	lcall	_sensor_delay
                                   1335 ;	src/maxsensor.c:320: result = readBytesMAXWing(MAX30101, FIFO_DataRegister, fifoData, 6);
      0038AF 90 01 12         [24] 1336 	mov	dptr,#_readSensorFifo_fifoData_65536_55
      0038B2 E0               [24] 1337 	movx	a,@dptr
      0038B3 FD               [12] 1338 	mov	r5,a
      0038B4 A3               [24] 1339 	inc	dptr
      0038B5 E0               [24] 1340 	movx	a,@dptr
      0038B6 FE               [12] 1341 	mov	r6,a
      0038B7 A3               [24] 1342 	inc	dptr
      0038B8 E0               [24] 1343 	movx	a,@dptr
      0038B9 FF               [12] 1344 	mov	r7,a
      0038BA 90 00 32         [24] 1345 	mov	dptr,#_readBytesMAXWing_PARM_2
      0038BD 74 07            [12] 1346 	mov	a,#0x07
      0038BF F0               [24] 1347 	movx	@dptr,a
      0038C0 90 00 33         [24] 1348 	mov	dptr,#_readBytesMAXWing_PARM_3
      0038C3 ED               [12] 1349 	mov	a,r5
      0038C4 F0               [24] 1350 	movx	@dptr,a
      0038C5 EE               [12] 1351 	mov	a,r6
      0038C6 A3               [24] 1352 	inc	dptr
      0038C7 F0               [24] 1353 	movx	@dptr,a
      0038C8 EF               [12] 1354 	mov	a,r7
      0038C9 A3               [24] 1355 	inc	dptr
      0038CA F0               [24] 1356 	movx	@dptr,a
      0038CB 90 00 36         [24] 1357 	mov	dptr,#_readBytesMAXWing_PARM_4
      0038CE 74 06            [12] 1358 	mov	a,#0x06
      0038D0 F0               [24] 1359 	movx	@dptr,a
      0038D1 75 82 75         [24] 1360 	mov	dpl,#0x75
      0038D4 12 07 68         [24] 1361 	lcall	_readBytesMAXWing
      0038D7 AE 82            [24] 1362 	mov	r6,dpl
      0038D9 AF 83            [24] 1363 	mov	r7,dph
                                   1364 ;	src/maxsensor.c:321: if (result == FAIL)
      0038DB BE FF 33         [24] 1365 	cjne	r6,#0xff,00108$
      0038DE BF FF 30         [24] 1366 	cjne	r7,#0xff,00108$
                                   1367 ;	src/maxsensor.c:323: ERROR_LOG("%s: Reading FIFO fail", __func__);
      0038E1 74 E7            [12] 1368 	mov	a,#___str_14
      0038E3 C0 E0            [24] 1369 	push	acc
      0038E5 74 5A            [12] 1370 	mov	a,#(___str_14 >> 8)
      0038E7 C0 E0            [24] 1371 	push	acc
      0038E9 74 80            [12] 1372 	mov	a,#0x80
      0038EB C0 E0            [24] 1373 	push	acc
      0038ED 74 A7            [12] 1374 	mov	a,#___str_20
      0038EF C0 E0            [24] 1375 	push	acc
      0038F1 74 5B            [12] 1376 	mov	a,#(___str_20 >> 8)
      0038F3 C0 E0            [24] 1377 	push	acc
      0038F5 12 3B B6         [24] 1378 	lcall	_printf_tiny
      0038F8 E5 81            [12] 1379 	mov	a,sp
      0038FA 24 FB            [12] 1380 	add	a,#0xfb
      0038FC F5 81            [12] 1381 	mov	sp,a
      0038FE 74 91            [12] 1382 	mov	a,#___str_1
      003900 C0 E0            [24] 1383 	push	acc
      003902 74 58            [12] 1384 	mov	a,#(___str_1 >> 8)
      003904 C0 E0            [24] 1385 	push	acc
      003906 12 3B B6         [24] 1386 	lcall	_printf_tiny
      003909 15 81            [12] 1387 	dec	sp
      00390B 15 81            [12] 1388 	dec	sp
                                   1389 ;	src/maxsensor.c:324: return FAIL;
      00390D 90 FF FF         [24] 1390 	mov	dptr,#0xffff
      003910 22               [24] 1391 	ret
      003911                       1392 00108$:
                                   1393 ;	src/maxsensor.c:327: return 6;
      003911 90 00 06         [24] 1394 	mov	dptr,#0x0006
                                   1395 ;	src/maxsensor.c:328: }
      003914 22               [24] 1396 	ret
                                   1397 ;------------------------------------------------------------
                                   1398 ;Allocation info for local variables in function 'getInterruptStatus'
                                   1399 ;------------------------------------------------------------
                                   1400 ;status                    Allocated with name '_getInterruptStatus_status_65536_63'
                                   1401 ;------------------------------------------------------------
                                   1402 ;	src/maxsensor.c:334: void getInterruptStatus()
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function getInterruptStatus
                                   1405 ;	-----------------------------------------
      003915                       1406 _getInterruptStatus:
                                   1407 ;	src/maxsensor.c:336: int status = readRegisterMAXWing(MAX30101, InterruptStatus1);
      003915 90 00 2E         [24] 1408 	mov	dptr,#_readRegisterMAXWing_PARM_2
      003918 E4               [12] 1409 	clr	a
      003919 F0               [24] 1410 	movx	@dptr,a
      00391A 75 82 75         [24] 1411 	mov	dpl,#0x75
      00391D 12 05 F4         [24] 1412 	lcall	_readRegisterMAXWing
      003920 AE 82            [24] 1413 	mov	r6,dpl
      003922 AF 83            [24] 1414 	mov	r7,dph
                                   1415 ;	src/maxsensor.c:337: INFO_LOG("Interrupt status1 = %d", status);
      003924 C0 06            [24] 1416 	push	ar6
      003926 C0 07            [24] 1417 	push	ar7
      003928 74 CD            [12] 1418 	mov	a,#___str_21
      00392A C0 E0            [24] 1419 	push	acc
      00392C 74 5B            [12] 1420 	mov	a,#(___str_21 >> 8)
      00392E C0 E0            [24] 1421 	push	acc
      003930 74 80            [12] 1422 	mov	a,#0x80
      003932 C0 E0            [24] 1423 	push	acc
      003934 12 3E BF         [24] 1424 	lcall	_printf
      003937 E5 81            [12] 1425 	mov	a,sp
      003939 24 FB            [12] 1426 	add	a,#0xfb
      00393B F5 81            [12] 1427 	mov	sp,a
      00393D 74 91            [12] 1428 	mov	a,#___str_1
      00393F C0 E0            [24] 1429 	push	acc
      003941 74 58            [12] 1430 	mov	a,#(___str_1 >> 8)
      003943 C0 E0            [24] 1431 	push	acc
      003945 12 3B B6         [24] 1432 	lcall	_printf_tiny
      003948 15 81            [12] 1433 	dec	sp
      00394A 15 81            [12] 1434 	dec	sp
                                   1435 ;	src/maxsensor.c:338: status = readRegisterMAXWing(MAX30101, InterruptStatus2);
      00394C 90 00 2E         [24] 1436 	mov	dptr,#_readRegisterMAXWing_PARM_2
      00394F 74 01            [12] 1437 	mov	a,#0x01
      003951 F0               [24] 1438 	movx	@dptr,a
      003952 75 82 75         [24] 1439 	mov	dpl,#0x75
      003955 12 05 F4         [24] 1440 	lcall	_readRegisterMAXWing
      003958 AE 82            [24] 1441 	mov	r6,dpl
      00395A AF 83            [24] 1442 	mov	r7,dph
                                   1443 ;	src/maxsensor.c:339: INFO_LOG("Interrupt status2 = %d", status);
      00395C C0 06            [24] 1444 	push	ar6
      00395E C0 07            [24] 1445 	push	ar7
      003960 74 F1            [12] 1446 	mov	a,#___str_22
      003962 C0 E0            [24] 1447 	push	acc
      003964 74 5B            [12] 1448 	mov	a,#(___str_22 >> 8)
      003966 C0 E0            [24] 1449 	push	acc
      003968 74 80            [12] 1450 	mov	a,#0x80
      00396A C0 E0            [24] 1451 	push	acc
      00396C 12 3E BF         [24] 1452 	lcall	_printf
      00396F E5 81            [12] 1453 	mov	a,sp
      003971 24 FB            [12] 1454 	add	a,#0xfb
      003973 F5 81            [12] 1455 	mov	sp,a
      003975 74 91            [12] 1456 	mov	a,#___str_1
      003977 C0 E0            [24] 1457 	push	acc
      003979 74 58            [12] 1458 	mov	a,#(___str_1 >> 8)
      00397B C0 E0            [24] 1459 	push	acc
      00397D 12 3B B6         [24] 1460 	lcall	_printf_tiny
      003980 15 81            [12] 1461 	dec	sp
      003982 15 81            [12] 1462 	dec	sp
                                   1463 ;	src/maxsensor.c:340: }
      003984 22               [24] 1464 	ret
                                   1465 ;------------------------------------------------------------
                                   1466 ;Allocation info for local variables in function 'testMaxWing'
                                   1467 ;------------------------------------------------------------
                                   1468 ;fifo                      Allocated with name '_testMaxWing_fifo_65537_65'
                                   1469 ;counter                   Allocated with name '_testMaxWing_counter_65537_65'
                                   1470 ;deviceID                  Allocated with name '_testMaxWing_deviceID_131074_67'
                                   1471 ;nreadBytes                Allocated with name '_testMaxWing_nreadBytes_131075_68'
                                   1472 ;ledRed                    Allocated with name '_testMaxWing_ledRed_196611_69'
                                   1473 ;ledIr                     Allocated with name '_testMaxWing_ledIr_196612_70'
                                   1474 ;i                         Allocated with name '_testMaxWing_i_196611_71'
                                   1475 ;------------------------------------------------------------
                                   1476 ;	src/maxsensor.c:346: void testMaxWing()
                                   1477 ;	-----------------------------------------
                                   1478 ;	 function testMaxWing
                                   1479 ;	-----------------------------------------
      003985                       1480 _testMaxWing:
                                   1481 ;	src/maxsensor.c:348: pmicInit();
      003985 12 33 B4         [24] 1482 	lcall	_pmicInit
                                   1483 ;	src/maxsensor.c:349: sensorInit();
      003988 12 34 A7         [24] 1484 	lcall	_sensorInit
                                   1485 ;	src/maxsensor.c:355: while (1)
      00398B 7E 00            [12] 1486 	mov	r6,#0x00
      00398D 7F 00            [12] 1487 	mov	r7,#0x00
      00398F                       1488 00106$:
                                   1489 ;	src/maxsensor.c:357: SECTION;
      00398F C0 07            [24] 1490 	push	ar7
      003991 C0 06            [24] 1491 	push	ar6
      003993 74 15            [12] 1492 	mov	a,#___str_23
      003995 C0 E0            [24] 1493 	push	acc
      003997 74 5C            [12] 1494 	mov	a,#(___str_23 >> 8)
      003999 C0 E0            [24] 1495 	push	acc
      00399B 12 3B B6         [24] 1496 	lcall	_printf_tiny
      00399E 15 81            [12] 1497 	dec	sp
      0039A0 15 81            [12] 1498 	dec	sp
                                   1499 ;	src/maxsensor.c:358: uint8_t deviceID = readRegisterMAXWing(MAX30101, 0xFF);
      0039A2 90 00 2E         [24] 1500 	mov	dptr,#_readRegisterMAXWing_PARM_2
      0039A5 74 FF            [12] 1501 	mov	a,#0xff
      0039A7 F0               [24] 1502 	movx	@dptr,a
      0039A8 75 82 75         [24] 1503 	mov	dpl,#0x75
      0039AB 12 05 F4         [24] 1504 	lcall	_readRegisterMAXWing
                                   1505 ;	src/maxsensor.c:361: getInterruptStatus();
      0039AE 12 39 15         [24] 1506 	lcall	_getInterruptStatus
                                   1507 ;	src/maxsensor.c:362: int nreadBytes = readSensorFifo(fifo);
      0039B1 90 01 15         [24] 1508 	mov	dptr,#_testMaxWing_fifo_65537_65
      0039B4 75 F0 00         [24] 1509 	mov	b,#0x00
      0039B7 12 37 37         [24] 1510 	lcall	_readSensorFifo
      0039BA AC 82            [24] 1511 	mov	r4,dpl
      0039BC AD 83            [24] 1512 	mov	r5,dph
      0039BE D0 06            [24] 1513 	pop	ar6
      0039C0 D0 07            [24] 1514 	pop	ar7
                                   1515 ;	src/maxsensor.c:365: if (nreadBytes != FAIL && nreadBytes > 0)
      0039C2 BC FF 05         [24] 1516 	cjne	r4,#0xff,00133$
      0039C5 BD FF 02         [24] 1517 	cjne	r5,#0xff,00133$
      0039C8 80 73            [24] 1518 	sjmp	00117$
      0039CA                       1519 00133$:
      0039CA C3               [12] 1520 	clr	c
      0039CB E4               [12] 1521 	clr	a
      0039CC 9C               [12] 1522 	subb	a,r4
      0039CD 74 80            [12] 1523 	mov	a,#(0x00 ^ 0x80)
      0039CF 8D F0            [24] 1524 	mov	b,r5
      0039D1 63 F0 80         [24] 1525 	xrl	b,#0x80
      0039D4 95 F0            [12] 1526 	subb	a,b
      0039D6 50 65            [24] 1527 	jnc	00117$
                                   1528 ;	src/maxsensor.c:367: uint16_t ledRed = fifo[2];
      0039D8 90 01 17         [24] 1529 	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0002)
      0039DB E0               [24] 1530 	movx	a,@dptr
                                   1531 ;	src/maxsensor.c:368: ledRed = (ledRed << 8) | fifo[1];
      0039DC FC               [12] 1532 	mov	r4,a
      0039DD 7D 00            [12] 1533 	mov	r5,#0x00
      0039DF 90 01 16         [24] 1534 	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0001)
      0039E2 E0               [24] 1535 	movx	a,@dptr
      0039E3 7A 00            [12] 1536 	mov	r2,#0x00
      0039E5 42 05            [12] 1537 	orl	ar5,a
      0039E7 EA               [12] 1538 	mov	a,r2
      0039E8 42 04            [12] 1539 	orl	ar4,a
                                   1540 ;	src/maxsensor.c:370: uint16_t ledIr = fifo[5];
      0039EA 90 01 1A         [24] 1541 	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0005)
      0039ED E0               [24] 1542 	movx	a,@dptr
                                   1543 ;	src/maxsensor.c:371: ledIr = (ledIr << 8) | fifo[4];
      0039EE FA               [12] 1544 	mov	r2,a
      0039EF 7B 00            [12] 1545 	mov	r3,#0x00
      0039F1 90 01 19         [24] 1546 	mov	dptr,#(_testMaxWing_fifo_65537_65 + 0x0004)
      0039F4 E0               [24] 1547 	movx	a,@dptr
      0039F5 79 00            [12] 1548 	mov	r1,#0x00
      0039F7 42 03            [12] 1549 	orl	ar3,a
      0039F9 E9               [12] 1550 	mov	a,r1
      0039FA 42 02            [12] 1551 	orl	ar2,a
                                   1552 ;	src/maxsensor.c:378: INFO_LOG("%u,red = %u ir = %u", counter++,ledRed,ledIr);
      0039FC 8E 00            [24] 1553 	mov	ar0,r6
      0039FE 8F 01            [24] 1554 	mov	ar1,r7
      003A00 0E               [12] 1555 	inc	r6
      003A01 BE 00 01         [24] 1556 	cjne	r6,#0x00,00135$
      003A04 0F               [12] 1557 	inc	r7
      003A05                       1558 00135$:
      003A05 C0 07            [24] 1559 	push	ar7
      003A07 C0 06            [24] 1560 	push	ar6
      003A09 C0 03            [24] 1561 	push	ar3
      003A0B C0 02            [24] 1562 	push	ar2
      003A0D C0 05            [24] 1563 	push	ar5
      003A0F C0 04            [24] 1564 	push	ar4
      003A11 C0 00            [24] 1565 	push	ar0
      003A13 C0 01            [24] 1566 	push	ar1
      003A15 74 62            [12] 1567 	mov	a,#___str_24
      003A17 C0 E0            [24] 1568 	push	acc
      003A19 74 5C            [12] 1569 	mov	a,#(___str_24 >> 8)
      003A1B C0 E0            [24] 1570 	push	acc
      003A1D 74 80            [12] 1571 	mov	a,#0x80
      003A1F C0 E0            [24] 1572 	push	acc
      003A21 12 3E BF         [24] 1573 	lcall	_printf
      003A24 E5 81            [12] 1574 	mov	a,sp
      003A26 24 F7            [12] 1575 	add	a,#0xf7
      003A28 F5 81            [12] 1576 	mov	sp,a
      003A2A 74 91            [12] 1577 	mov	a,#___str_1
      003A2C C0 E0            [24] 1578 	push	acc
      003A2E 74 58            [12] 1579 	mov	a,#(___str_1 >> 8)
      003A30 C0 E0            [24] 1580 	push	acc
      003A32 12 3B B6         [24] 1581 	lcall	_printf_tiny
      003A35 15 81            [12] 1582 	dec	sp
      003A37 15 81            [12] 1583 	dec	sp
      003A39 D0 06            [24] 1584 	pop	ar6
      003A3B D0 07            [24] 1585 	pop	ar7
                                   1586 ;	src/maxsensor.c:387: for (uint16_t i = 0; i < 100; i++)
      003A3D                       1587 00117$:
      003A3D 7C 00            [12] 1588 	mov	r4,#0x00
      003A3F 7D 00            [12] 1589 	mov	r5,#0x00
      003A41                       1590 00109$:
      003A41 8C 02            [24] 1591 	mov	ar2,r4
      003A43 8D 03            [24] 1592 	mov	ar3,r5
      003A45 C3               [12] 1593 	clr	c
      003A46 EA               [12] 1594 	mov	a,r2
      003A47 94 64            [12] 1595 	subb	a,#0x64
      003A49 EB               [12] 1596 	mov	a,r3
      003A4A 94 00            [12] 1597 	subb	a,#0x00
      003A4C 40 03            [24] 1598 	jc	00136$
      003A4E 02 39 8F         [24] 1599 	ljmp	00106$
      003A51                       1600 00136$:
                                   1601 ;	src/maxsensor.c:389: sensor_delay(500);
      003A51 90 01 F4         [24] 1602 	mov	dptr,#0x01f4
      003A54 C0 07            [24] 1603 	push	ar7
      003A56 C0 06            [24] 1604 	push	ar6
      003A58 C0 05            [24] 1605 	push	ar5
      003A5A C0 04            [24] 1606 	push	ar4
      003A5C 12 33 8E         [24] 1607 	lcall	_sensor_delay
      003A5F D0 04            [24] 1608 	pop	ar4
      003A61 D0 05            [24] 1609 	pop	ar5
      003A63 D0 06            [24] 1610 	pop	ar6
      003A65 D0 07            [24] 1611 	pop	ar7
                                   1612 ;	src/maxsensor.c:387: for (uint16_t i = 0; i < 100; i++)
      003A67 0C               [12] 1613 	inc	r4
      003A68 BC 00 D6         [24] 1614 	cjne	r4,#0x00,00109$
      003A6B 0D               [12] 1615 	inc	r5
                                   1616 ;	src/maxsensor.c:393: }
      003A6C 80 D3            [24] 1617 	sjmp	00109$
                                   1618 	.area CSEG    (CODE)
                                   1619 	.area CONST   (CODE)
                                   1620 	.area CONST   (CODE)
      005865                       1621 ___str_0:
      005865 0A                    1622 	.db 0x0a
      005866 0D                    1623 	.db 0x0d
      005867 1B                    1624 	.db 0x1b
      005868 5B 31 3B 33 31 6D 45  1625 	.ascii "[1;31mERROR: Write to Register %u Failed"
             52 52 4F 52 3A 20 57
             72 69 74 65 20 74 6F
             20 52 65 67 69 73 74
             65 72 20 25 75 20 46
             61 69 6C 65 64
      005890 00                    1626 	.db 0x00
                                   1627 	.area CSEG    (CODE)
                                   1628 	.area CONST   (CODE)
      005891                       1629 ___str_1:
      005891 1B                    1630 	.db 0x1b
      005892 5B 30 6D              1631 	.ascii "[0m"
      005895 00                    1632 	.db 0x00
                                   1633 	.area CSEG    (CODE)
                                   1634 	.area CONST   (CODE)
      005896                       1635 ___str_2:
      005896 0A                    1636 	.db 0x0a
      005897 0D                    1637 	.db 0x0d
      005898 1B                    1638 	.db 0x1b
      005899 5B 31 3B 33 31 6D 45  1639 	.ascii "[1;31mERROR: Register %d Expected %d and actual %d config do"
             52 52 4F 52 3A 20 52
             65 67 69 73 74 65 72
             20 25 64 20 45 78 70
             65 63 74 65 64 20 25
             64 20 61 6E 64 20 61
             63 74 75 61 6C 20 25
             64 20 63 6F 6E 66 69
             67 20 64 6F
      0058D5 65 73 20 6E 6F 74 20  1640 	.ascii "es not match!"
             6D 61 74 63 68 21
      0058E2 00                    1641 	.db 0x00
                                   1642 	.area CSEG    (CODE)
                                   1643 	.area CONST   (CODE)
      0058E3                       1644 ___str_3:
      0058E3 0A                    1645 	.db 0x0a
      0058E4 0D                    1646 	.db 0x0d
      0058E5 1B                    1647 	.db 0x1b
      0058E6 5B 31 3B 33 31 6D 45  1648 	.ascii "[1;31mERROR: 1 Reset Conguration Failed"
             52 52 4F 52 3A 20 31
             20 52 65 73 65 74 20
             43 6F 6E 67 75 72 61
             74 69 6F 6E 20 46 61
             69 6C 65 64
      00590D 00                    1649 	.db 0x00
                                   1650 	.area CSEG    (CODE)
                                   1651 	.area CONST   (CODE)
      00590E                       1652 ___str_4:
      00590E 0A                    1653 	.db 0x0a
      00590F 0D                    1654 	.db 0x0d
      005910 1B                    1655 	.db 0x1b
      005911 5B 31 3B 33 31 6D 45  1656 	.ascii "[1;31mERROR: 2 Interrupt Enable Register Failed"
             52 52 4F 52 3A 20 32
             20 49 6E 74 65 72 72
             75 70 74 20 45 6E 61
             62 6C 65 20 52 65 67
             69 73 74 65 72 20 46
             61 69 6C 65 64
      005940 00                    1657 	.db 0x00
                                   1658 	.area CSEG    (CODE)
                                   1659 	.area CONST   (CODE)
      005941                       1660 ___str_5:
      005941 0A                    1661 	.db 0x0a
      005942 0D                    1662 	.db 0x0d
      005943 1B                    1663 	.db 0x1b
      005944 5B 31 3B 33 31 6D 45  1664 	.ascii "[1;31mERROR: 3 FIFO Config Failed"
             52 52 4F 52 3A 20 33
             20 46 49 46 4F 20 43
             6F 6E 66 69 67 20 46
             61 69 6C 65 64
      005965 00                    1665 	.db 0x00
                                   1666 	.area CSEG    (CODE)
                                   1667 	.area CONST   (CODE)
      005966                       1668 ___str_6:
      005966 0A                    1669 	.db 0x0a
      005967 0D                    1670 	.db 0x0d
      005968 1B                    1671 	.db 0x1b
      005969 5B 31 3B 33 31 6D 45  1672 	.ascii "[1;31mERROR: 4 SpO2 Config Failed"
             52 52 4F 52 3A 20 34
             20 53 70 4F 32 20 43
             6F 6E 66 69 67 20 46
             61 69 6C 65 64
      00598A 00                    1673 	.db 0x00
                                   1674 	.area CSEG    (CODE)
                                   1675 	.area CONST   (CODE)
      00598B                       1676 ___str_7:
      00598B 0A                    1677 	.db 0x0a
      00598C 0D                    1678 	.db 0x0d
      00598D 1B                    1679 	.db 0x1b
      00598E 5B 31 3B 33 31 6D 45  1680 	.ascii "[1;31mERROR: 6 Red LED Drive Current Conguration Failed"
             52 52 4F 52 3A 20 36
             20 52 65 64 20 4C 45
             44 20 44 72 69 76 65
             20 43 75 72 72 65 6E
             74 20 43 6F 6E 67 75
             72 61 74 69 6F 6E 20
             46 61 69 6C 65 64
      0059C5 00                    1681 	.db 0x00
                                   1682 	.area CSEG    (CODE)
                                   1683 	.area CONST   (CODE)
      0059C6                       1684 ___str_8:
      0059C6 0A                    1685 	.db 0x0a
      0059C7 0D                    1686 	.db 0x0d
      0059C8 1B                    1687 	.db 0x1b
      0059C9 5B 31 3B 33 31 6D 45  1688 	.ascii "[1;31mERROR: 7 IR LED Drive Current Conguration Failed"
             52 52 4F 52 3A 20 37
             20 49 52 20 4C 45 44
             20 44 72 69 76 65 20
             43 75 72 72 65 6E 74
             20 43 6F 6E 67 75 72
             61 74 69 6F 6E 20 46
             61 69 6C 65 64
      0059FF 00                    1689 	.db 0x00
                                   1690 	.area CSEG    (CODE)
                                   1691 	.area CONST   (CODE)
      005A00                       1692 ___str_9:
      005A00 0A                    1693 	.db 0x0a
      005A01 0D                    1694 	.db 0x0d
      005A02 1B                    1695 	.db 0x1b
      005A03 5B 31 3B 33 31 6D 45  1696 	.ascii "[1;31mERROR: 5 Multi LED Control Failed"
             52 52 4F 52 3A 20 35
             20 4D 75 6C 74 69 20
             4C 45 44 20 43 6F 6E
             74 72 6F 6C 20 46 61
             69 6C 65 64
      005A2A 00                    1697 	.db 0x00
                                   1698 	.area CSEG    (CODE)
                                   1699 	.area CONST   (CODE)
      005A2B                       1700 ___str_10:
      005A2B 0A                    1701 	.db 0x0a
      005A2C 0D                    1702 	.db 0x0d
      005A2D 1B                    1703 	.db 0x1b
      005A2E 5B 31 3B 33 31 6D 45  1704 	.ascii "[1;31mERROR: 8 Resetting Write Pointer Failed"
             52 52 4F 52 3A 20 38
             20 52 65 73 65 74 74
             69 6E 67 20 57 72 69
             74 65 20 50 6F 69 6E
             74 65 72 20 46 61 69
             6C 65 64
      005A5B 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      005A5C                       1708 ___str_11:
      005A5C 0A                    1709 	.db 0x0a
      005A5D 0D                    1710 	.db 0x0d
      005A5E 1B                    1711 	.db 0x1b
      005A5F 5B 31 3B 33 31 6D 45  1712 	.ascii "[1;31mERROR: 9 Resetting Read Failed"
             52 52 4F 52 3A 20 39
             20 52 65 73 65 74 74
             69 6E 67 20 52 65 61
             64 20 46 61 69 6C 65
             64
      005A83 00                    1713 	.db 0x00
                                   1714 	.area CSEG    (CODE)
                                   1715 	.area CONST   (CODE)
      005A84                       1716 ___str_12:
      005A84 0A                    1717 	.db 0x0a
      005A85 0D                    1718 	.db 0x0d
      005A86 1B                    1719 	.db 0x1b
      005A87 5B 31 3B 33 31 6D 45  1720 	.ascii "[1;31mERROR: 10 Setting operating mode Failed"
             52 52 4F 52 3A 20 31
             30 20 53 65 74 74 69
             6E 67 20 6F 70 65 72
             61 74 69 6E 67 20 6D
             6F 64 65 20 46 61 69
             6C 65 64
      005AB4 00                    1721 	.db 0x00
                                   1722 	.area CSEG    (CODE)
                                   1723 	.area CONST   (CODE)
      005AB5                       1724 ___str_13:
      005AB5 0A                    1725 	.db 0x0a
      005AB6 0D                    1726 	.db 0x0d
      005AB7 1B                    1727 	.db 0x1b
      005AB8 5B 31 3B 33 31 6D 45  1728 	.ascii "[1;31mERROR: %s: Reading overflow counter fail"
             52 52 4F 52 3A 20 25
             73 3A 20 52 65 61 64
             69 6E 67 20 6F 76 65
             72 66 6C 6F 77 20 63
             6F 75 6E 74 65 72 20
             66 61 69 6C
      005AE6 00                    1729 	.db 0x00
                                   1730 	.area CSEG    (CODE)
                                   1731 	.area CONST   (CODE)
      005AE7                       1732 ___str_14:
      005AE7 72 65 61 64 53 65 6E  1733 	.ascii "readSensorFifo"
             73 6F 72 46 69 66 6F
      005AF5 00                    1734 	.db 0x00
                                   1735 	.area CSEG    (CODE)
                                   1736 	.area CONST   (CODE)
      005AF6                       1737 ___str_15:
      005AF6 0A                    1738 	.db 0x0a
      005AF7 0D                    1739 	.db 0x0d
      005AF8 1B                    1740 	.db 0x1b
      005AF9 5B 33 38 3B 35 3B 32  1741 	.ascii "[38;5;214mOverflow Count = %d"
             31 34 6D 4F 76 65 72
             66 6C 6F 77 20 43 6F
             75 6E 74 20 3D 20 25
             64
      005B16 00                    1742 	.db 0x00
                                   1743 	.area CSEG    (CODE)
                                   1744 	.area CONST   (CODE)
      005B17                       1745 ___str_16:
      005B17 0A                    1746 	.db 0x0a
      005B18 0D                    1747 	.db 0x0d
      005B19 1B                    1748 	.db 0x1b
      005B1A 5B 31 3B 33 31 6D 45  1749 	.ascii "[1;31mERROR: %s: Reading Write Index fail"
             52 52 4F 52 3A 20 25
             73 3A 20 52 65 61 64
             69 6E 67 20 57 72 69
             74 65 20 49 6E 64 65
             78 20 66 61 69 6C
      005B43 00                    1750 	.db 0x00
                                   1751 	.area CSEG    (CODE)
                                   1752 	.area CONST   (CODE)
      005B44                       1753 ___str_17:
      005B44 0A                    1754 	.db 0x0a
      005B45 0D                    1755 	.db 0x0d
      005B46 1B                    1756 	.db 0x1b
      005B47 5B 33 38 3B 35 3B 32  1757 	.ascii "[38;5;214mWrite ptr = %d"
             31 34 6D 57 72 69 74
             65 20 70 74 72 20 3D
             20 25 64
      005B5F 00                    1758 	.db 0x00
                                   1759 	.area CSEG    (CODE)
                                   1760 	.area CONST   (CODE)
      005B60                       1761 ___str_18:
      005B60 0A                    1762 	.db 0x0a
      005B61 0D                    1763 	.db 0x0d
      005B62 1B                    1764 	.db 0x1b
      005B63 5B 31 3B 33 31 6D 45  1765 	.ascii "[1;31mERROR: %s: Reading Read Index fail"
             52 52 4F 52 3A 20 25
             73 3A 20 52 65 61 64
             69 6E 67 20 52 65 61
             64 20 49 6E 64 65 78
             20 66 61 69 6C
      005B8B 00                    1766 	.db 0x00
                                   1767 	.area CSEG    (CODE)
                                   1768 	.area CONST   (CODE)
      005B8C                       1769 ___str_19:
      005B8C 0A                    1770 	.db 0x0a
      005B8D 0D                    1771 	.db 0x0d
      005B8E 1B                    1772 	.db 0x1b
      005B8F 5B 33 38 3B 35 3B 32  1773 	.ascii "[38;5;214mRead ptr = %d"
             31 34 6D 52 65 61 64
             20 70 74 72 20 3D 20
             25 64
      005BA6 00                    1774 	.db 0x00
                                   1775 	.area CSEG    (CODE)
                                   1776 	.area CONST   (CODE)
      005BA7                       1777 ___str_20:
      005BA7 0A                    1778 	.db 0x0a
      005BA8 0D                    1779 	.db 0x0d
      005BA9 1B                    1780 	.db 0x1b
      005BAA 5B 31 3B 33 31 6D 45  1781 	.ascii "[1;31mERROR: %s: Reading FIFO fail"
             52 52 4F 52 3A 20 25
             73 3A 20 52 65 61 64
             69 6E 67 20 46 49 46
             4F 20 66 61 69 6C
      005BCC 00                    1782 	.db 0x00
                                   1783 	.area CSEG    (CODE)
                                   1784 	.area CONST   (CODE)
      005BCD                       1785 ___str_21:
      005BCD 0A                    1786 	.db 0x0a
      005BCE 0D                    1787 	.db 0x0d
      005BCF 1B                    1788 	.db 0x1b
      005BD0 5B 33 38 3B 35 3B 32  1789 	.ascii "[38;5;214mInterrupt status1 = %d"
             31 34 6D 49 6E 74 65
             72 72 75 70 74 20 73
             74 61 74 75 73 31 20
             3D 20 25 64
      005BF0 00                    1790 	.db 0x00
                                   1791 	.area CSEG    (CODE)
                                   1792 	.area CONST   (CODE)
      005BF1                       1793 ___str_22:
      005BF1 0A                    1794 	.db 0x0a
      005BF2 0D                    1795 	.db 0x0d
      005BF3 1B                    1796 	.db 0x1b
      005BF4 5B 33 38 3B 35 3B 32  1797 	.ascii "[38;5;214mInterrupt status2 = %d"
             31 34 6D 49 6E 74 65
             72 72 75 70 74 20 73
             74 61 74 75 73 32 20
             3D 20 25 64
      005C14 00                    1798 	.db 0x00
                                   1799 	.area CSEG    (CODE)
                                   1800 	.area CONST   (CODE)
      005C15                       1801 ___str_23:
      005C15 0A                    1802 	.db 0x0a
      005C16 0D                    1803 	.db 0x0d
      005C17 2A 2A 2A 2A 2A 2A 2A  1804 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      005C53 2A 2A 2A 2A 2A 2A 2A  1805 	.ascii "**************"
             2A 2A 2A 2A 2A 2A 2A
      005C61 00                    1806 	.db 0x00
                                   1807 	.area CSEG    (CODE)
                                   1808 	.area CONST   (CODE)
      005C62                       1809 ___str_24:
      005C62 0A                    1810 	.db 0x0a
      005C63 0D                    1811 	.db 0x0d
      005C64 1B                    1812 	.db 0x1b
      005C65 5B 33 38 3B 35 3B 32  1813 	.ascii "[38;5;214m%u,red = %u ir = %u"
             31 34 6D 25 75 2C 72
             65 64 20 3D 20 25 75
             20 69 72 20 3D 20 25
             75
      005C82 00                    1814 	.db 0x00
                                   1815 	.area CSEG    (CODE)
                                   1816 	.area XINIT   (CODE)
                                   1817 	.area CABS    (ABS,CODE)
