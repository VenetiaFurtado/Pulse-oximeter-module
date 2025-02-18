                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _printf
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _writeRegisterMAXWing_PARM_3
                                    210 	.globl _writeRegisterMAXWing_PARM_2
                                    211 	.globl _readBytesMAXWing_PARM_4
                                    212 	.globl _readBytesMAXWing_PARM_3
                                    213 	.globl _readBytesMAXWing_PARM_2
                                    214 	.globl _readRegisterMAXWing_PARM_2
                                    215 	.globl _sendControlByteNoAddr_PARM_2
                                    216 	.globl _sendControlByte_PARM_3
                                    217 	.globl _sendControlByte_PARM_2
                                    218 	.globl _clock
                                    219 	.globl _checkAcknowledgement
                                    220 	.globl _start
                                    221 	.globl _stop
                                    222 	.globl _sendAcknowledge
                                    223 	.globl _sendNAcknowledge
                                    224 	.globl _reverse
                                    225 	.globl _sendControlByte
                                    226 	.globl _sendControlByteNoAddr
                                    227 	.globl _i2cByteWrite
                                    228 	.globl _i2cByteRead
                                    229 	.globl _readRegisterMAXWing
                                    230 	.globl _readBytesMAXWing
                                    231 	.globl _writeRegisterMAXWing
                                    232 	.globl _testI2c
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           000080   238 _P0	=	0x0080
                           000081   239 _SP	=	0x0081
                           000082   240 _DPL	=	0x0082
                           000083   241 _DPH	=	0x0083
                           000087   242 _PCON	=	0x0087
                           000088   243 _TCON	=	0x0088
                           000089   244 _TMOD	=	0x0089
                           00008A   245 _TL0	=	0x008a
                           00008B   246 _TL1	=	0x008b
                           00008C   247 _TH0	=	0x008c
                           00008D   248 _TH1	=	0x008d
                           000090   249 _P1	=	0x0090
                           000098   250 _SCON	=	0x0098
                           000099   251 _SBUF	=	0x0099
                           0000A0   252 _P2	=	0x00a0
                           0000A8   253 _IE	=	0x00a8
                           0000B0   254 _P3	=	0x00b0
                           0000B8   255 _IP	=	0x00b8
                           0000D0   256 _PSW	=	0x00d0
                           0000E0   257 _ACC	=	0x00e0
                           0000F0   258 _B	=	0x00f0
                           0000C8   259 _T2CON	=	0x00c8
                           0000CA   260 _RCAP2L	=	0x00ca
                           0000CB   261 _RCAP2H	=	0x00cb
                           0000CC   262 _TL2	=	0x00cc
                           0000CD   263 _TH2	=	0x00cd
                           00008E   264 _AUXR	=	0x008e
                           0000A2   265 _AUXR1	=	0x00a2
                           000097   266 _CKRL	=	0x0097
                           00008F   267 _CKCON0	=	0x008f
                           0000AF   268 _CKCON1	=	0x00af
                           0000FA   269 _CCAP0H	=	0x00fa
                           0000FB   270 _CCAP1H	=	0x00fb
                           0000FC   271 _CCAP2H	=	0x00fc
                           0000FD   272 _CCAP3H	=	0x00fd
                           0000FE   273 _CCAP4H	=	0x00fe
                           0000EA   274 _CCAP0L	=	0x00ea
                           0000EB   275 _CCAP1L	=	0x00eb
                           0000EC   276 _CCAP2L	=	0x00ec
                           0000ED   277 _CCAP3L	=	0x00ed
                           0000EE   278 _CCAP4L	=	0x00ee
                           0000DA   279 _CCAPM0	=	0x00da
                           0000DB   280 _CCAPM1	=	0x00db
                           0000DC   281 _CCAPM2	=	0x00dc
                           0000DD   282 _CCAPM3	=	0x00dd
                           0000DE   283 _CCAPM4	=	0x00de
                           0000D8   284 _CCON	=	0x00d8
                           0000F9   285 _CH	=	0x00f9
                           0000E9   286 _CL	=	0x00e9
                           0000D9   287 _CMOD	=	0x00d9
                           0000A8   288 _IEN0	=	0x00a8
                           0000B1   289 _IEN1	=	0x00b1
                           0000B8   290 _IPL0	=	0x00b8
                           0000B7   291 _IPH0	=	0x00b7
                           0000B2   292 _IPL1	=	0x00b2
                           0000B3   293 _IPH1	=	0x00b3
                           0000C0   294 _P4	=	0x00c0
                           0000E8   295 _P5	=	0x00e8
                           0000A6   296 _WDTRST	=	0x00a6
                           0000A7   297 _WDTPRG	=	0x00a7
                           0000A9   298 _SADDR	=	0x00a9
                           0000B9   299 _SADEN	=	0x00b9
                           0000C3   300 _SPCON	=	0x00c3
                           0000C4   301 _SPSTA	=	0x00c4
                           0000C5   302 _SPDAT	=	0x00c5
                           0000C9   303 _T2MOD	=	0x00c9
                           00009B   304 _BDRCON	=	0x009b
                           00009A   305 _BRL	=	0x009a
                           00009C   306 _KBLS	=	0x009c
                           00009D   307 _KBE	=	0x009d
                           00009E   308 _KBF	=	0x009e
                           0000D2   309 _EECON	=	0x00d2
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           000080   315 _P0_0	=	0x0080
                           000081   316 _P0_1	=	0x0081
                           000082   317 _P0_2	=	0x0082
                           000083   318 _P0_3	=	0x0083
                           000084   319 _P0_4	=	0x0084
                           000085   320 _P0_5	=	0x0085
                           000086   321 _P0_6	=	0x0086
                           000087   322 _P0_7	=	0x0087
                           000088   323 _IT0	=	0x0088
                           000089   324 _IE0	=	0x0089
                           00008A   325 _IT1	=	0x008a
                           00008B   326 _IE1	=	0x008b
                           00008C   327 _TR0	=	0x008c
                           00008D   328 _TF0	=	0x008d
                           00008E   329 _TR1	=	0x008e
                           00008F   330 _TF1	=	0x008f
                           000090   331 _P1_0	=	0x0090
                           000091   332 _P1_1	=	0x0091
                           000092   333 _P1_2	=	0x0092
                           000093   334 _P1_3	=	0x0093
                           000094   335 _P1_4	=	0x0094
                           000095   336 _P1_5	=	0x0095
                           000096   337 _P1_6	=	0x0096
                           000097   338 _P1_7	=	0x0097
                           000098   339 _RI	=	0x0098
                           000099   340 _TI	=	0x0099
                           00009A   341 _RB8	=	0x009a
                           00009B   342 _TB8	=	0x009b
                           00009C   343 _REN	=	0x009c
                           00009D   344 _SM2	=	0x009d
                           00009E   345 _SM1	=	0x009e
                           00009F   346 _SM0	=	0x009f
                           0000A0   347 _P2_0	=	0x00a0
                           0000A1   348 _P2_1	=	0x00a1
                           0000A2   349 _P2_2	=	0x00a2
                           0000A3   350 _P2_3	=	0x00a3
                           0000A4   351 _P2_4	=	0x00a4
                           0000A5   352 _P2_5	=	0x00a5
                           0000A6   353 _P2_6	=	0x00a6
                           0000A7   354 _P2_7	=	0x00a7
                           0000A8   355 _EX0	=	0x00a8
                           0000A9   356 _ET0	=	0x00a9
                           0000AA   357 _EX1	=	0x00aa
                           0000AB   358 _ET1	=	0x00ab
                           0000AC   359 _ES	=	0x00ac
                           0000AF   360 _EA	=	0x00af
                           0000B0   361 _P3_0	=	0x00b0
                           0000B1   362 _P3_1	=	0x00b1
                           0000B2   363 _P3_2	=	0x00b2
                           0000B3   364 _P3_3	=	0x00b3
                           0000B4   365 _P3_4	=	0x00b4
                           0000B5   366 _P3_5	=	0x00b5
                           0000B6   367 _P3_6	=	0x00b6
                           0000B7   368 _P3_7	=	0x00b7
                           0000B0   369 _RXD	=	0x00b0
                           0000B1   370 _TXD	=	0x00b1
                           0000B2   371 _INT0	=	0x00b2
                           0000B3   372 _INT1	=	0x00b3
                           0000B4   373 _T0	=	0x00b4
                           0000B5   374 _T1	=	0x00b5
                           0000B6   375 _WR	=	0x00b6
                           0000B7   376 _RD	=	0x00b7
                           0000B8   377 _PX0	=	0x00b8
                           0000B9   378 _PT0	=	0x00b9
                           0000BA   379 _PX1	=	0x00ba
                           0000BB   380 _PT1	=	0x00bb
                           0000BC   381 _PS	=	0x00bc
                           0000D0   382 _P	=	0x00d0
                           0000D1   383 _F1	=	0x00d1
                           0000D2   384 _OV	=	0x00d2
                           0000D3   385 _RS0	=	0x00d3
                           0000D4   386 _RS1	=	0x00d4
                           0000D5   387 _F0	=	0x00d5
                           0000D6   388 _AC	=	0x00d6
                           0000D7   389 _CY	=	0x00d7
                           0000AD   390 _ET2	=	0x00ad
                           0000BD   391 _PT2	=	0x00bd
                           0000C8   392 _T2CON_0	=	0x00c8
                           0000C9   393 _T2CON_1	=	0x00c9
                           0000CA   394 _T2CON_2	=	0x00ca
                           0000CB   395 _T2CON_3	=	0x00cb
                           0000CC   396 _T2CON_4	=	0x00cc
                           0000CD   397 _T2CON_5	=	0x00cd
                           0000CE   398 _T2CON_6	=	0x00ce
                           0000CF   399 _T2CON_7	=	0x00cf
                           0000C8   400 _CP_RL2	=	0x00c8
                           0000C9   401 _C_T2	=	0x00c9
                           0000CA   402 _TR2	=	0x00ca
                           0000CB   403 _EXEN2	=	0x00cb
                           0000CC   404 _TCLK	=	0x00cc
                           0000CD   405 _RCLK	=	0x00cd
                           0000CE   406 _EXF2	=	0x00ce
                           0000CF   407 _TF2	=	0x00cf
                           0000DF   408 _CF	=	0x00df
                           0000DE   409 _CR	=	0x00de
                           0000DC   410 _CCF4	=	0x00dc
                           0000DB   411 _CCF3	=	0x00db
                           0000DA   412 _CCF2	=	0x00da
                           0000D9   413 _CCF1	=	0x00d9
                           0000D8   414 _CCF0	=	0x00d8
                           0000AE   415 _EC	=	0x00ae
                           0000BE   416 _PPCL	=	0x00be
                           0000BD   417 _PT2L	=	0x00bd
                           0000BC   418 _PSL	=	0x00bc
                           0000BB   419 _PT1L	=	0x00bb
                           0000BA   420 _PX1L	=	0x00ba
                           0000B9   421 _PT0L	=	0x00b9
                           0000B8   422 _PX0L	=	0x00b8
                           0000C0   423 _P4_0	=	0x00c0
                           0000C1   424 _P4_1	=	0x00c1
                           0000C2   425 _P4_2	=	0x00c2
                           0000C3   426 _P4_3	=	0x00c3
                           0000C4   427 _P4_4	=	0x00c4
                           0000C5   428 _P4_5	=	0x00c5
                           0000C6   429 _P4_6	=	0x00c6
                           0000C7   430 _P4_7	=	0x00c7
                           0000E8   431 _P5_0	=	0x00e8
                           0000E9   432 _P5_1	=	0x00e9
                           0000EA   433 _P5_2	=	0x00ea
                           0000EB   434 _P5_3	=	0x00eb
                           0000EC   435 _P5_4	=	0x00ec
                           0000ED   436 _P5_5	=	0x00ed
                           0000EE   437 _P5_6	=	0x00ee
                           0000EF   438 _P5_7	=	0x00ef
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable register banks
                                    441 ;--------------------------------------------------------
                                    442 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        443 	.ds 8
                                    444 ;--------------------------------------------------------
                                    445 ; internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area DSEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; overlayable items in internal ram
                                    450 ;--------------------------------------------------------
                                    451 ;--------------------------------------------------------
                                    452 ; indirectly addressable internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area ISEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area IABS    (ABS,DATA)
                                    459 	.area IABS    (ABS,DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; bit data
                                    462 ;--------------------------------------------------------
                                    463 	.area BSEG    (BIT)
                                    464 ;--------------------------------------------------------
                                    465 ; paged external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area PSEG    (PAG,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XSEG    (XDATA)
      000023                        472 _reverse_input_65536_36:
      000023                        473 	.ds 1
      000024                        474 _reverse_output_65536_37:
      000024                        475 	.ds 1
      000025                        476 _sendControlByte_PARM_2:
      000025                        477 	.ds 1
      000026                        478 _sendControlByte_PARM_3:
      000026                        479 	.ds 2
      000028                        480 _sendControlByte_op_65536_40:
      000028                        481 	.ds 1
      000029                        482 _sendControlByteNoAddr_PARM_2:
      000029                        483 	.ds 1
      00002A                        484 _sendControlByteNoAddr_op_65536_46:
      00002A                        485 	.ds 1
      00002B                        486 _i2cByteWrite_dataByte_65536_50:
      00002B                        487 	.ds 1
      00002C                        488 _i2cByteWrite_databyteMsbFirst_65536_51:
      00002C                        489 	.ds 1
      00002D                        490 _i2cByteRead_dataByte_65536_54:
      00002D                        491 	.ds 1
      00002E                        492 _readRegisterMAXWing_PARM_2:
      00002E                        493 	.ds 1
      00002F                        494 _readRegisterMAXWing_deviceId_65536_57:
      00002F                        495 	.ds 1
      000030                        496 _readRegisterMAXWing_regAddressMsbFirst_65537_60:
      000030                        497 	.ds 1
      000031                        498 _readRegisterMAXWing_dataByte_65538_65:
      000031                        499 	.ds 1
      000032                        500 _readBytesMAXWing_PARM_2:
      000032                        501 	.ds 1
      000033                        502 _readBytesMAXWing_PARM_3:
      000033                        503 	.ds 3
      000036                        504 _readBytesMAXWing_PARM_4:
      000036                        505 	.ds 1
      000037                        506 _readBytesMAXWing_deviceId_65536_68:
      000037                        507 	.ds 1
      000038                        508 _readBytesMAXWing_regAddressMsbFirst_65537_71:
      000038                        509 	.ds 1
      000039                        510 _readBytesMAXWing_dataByte_196609_77:
      000039                        511 	.ds 1
      00003A                        512 _writeRegisterMAXWing_PARM_2:
      00003A                        513 	.ds 1
      00003B                        514 _writeRegisterMAXWing_PARM_3:
      00003B                        515 	.ds 1
      00003C                        516 _writeRegisterMAXWing_deviceId_65536_82:
      00003C                        517 	.ds 1
      00003D                        518 _writeRegisterMAXWing_regAddressMsbFirst_65537_85:
      00003D                        519 	.ds 1
      00003E                        520 _writeRegisterMAXWing_databyteMsbFirst_65538_89:
      00003E                        521 	.ds 1
                                    522 ;--------------------------------------------------------
                                    523 ; absolute external ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XABS    (ABS,XDATA)
                                    526 ;--------------------------------------------------------
                                    527 ; external initialized ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XISEG   (XDATA)
                                    530 	.area HOME    (CODE)
                                    531 	.area GSINIT0 (CODE)
                                    532 	.area GSINIT1 (CODE)
                                    533 	.area GSINIT2 (CODE)
                                    534 	.area GSINIT3 (CODE)
                                    535 	.area GSINIT4 (CODE)
                                    536 	.area GSINIT5 (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.area GSFINAL (CODE)
                                    539 	.area CSEG    (CODE)
                                    540 ;--------------------------------------------------------
                                    541 ; global & static initialisations
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; Home
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area HOME    (CODE)
                                    552 ;--------------------------------------------------------
                                    553 ; code
                                    554 ;--------------------------------------------------------
                                    555 	.area CSEG    (CODE)
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'clock'
                                    558 ;------------------------------------------------------------
                                    559 ;	src/i2c.c:37: void clock()
                                    560 ;	-----------------------------------------
                                    561 ;	 function clock
                                    562 ;	-----------------------------------------
      000405                        563 _clock:
                           000007   564 	ar7 = 0x07
                           000006   565 	ar6 = 0x06
                           000005   566 	ar5 = 0x05
                           000004   567 	ar4 = 0x04
                           000003   568 	ar3 = 0x03
                           000002   569 	ar2 = 0x02
                           000001   570 	ar1 = 0x01
                           000000   571 	ar0 = 0x00
                                    572 ;	src/i2c.c:39: NOP;
      000405 00               [12]  573 	nop
                                    574 ;	src/i2c.c:40: SCL = 1;
                                    575 ;	assignBit
      000406 D2 93            [12]  576 	setb	_P1_3
                                    577 ;	src/i2c.c:41: NOP;
      000408 00               [12]  578 	nop
                                    579 ;	src/i2c.c:42: NOP;
      000409 00               [12]  580 	nop
                                    581 ;	src/i2c.c:43: SCL = 0;
                                    582 ;	assignBit
      00040A C2 93            [12]  583 	clr	_P1_3
                                    584 ;	src/i2c.c:44: NOP;
      00040C 00               [12]  585 	nop
                                    586 ;	src/i2c.c:45: }
      00040D 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'checkAcknowledgement'
                                    590 ;------------------------------------------------------------
                                    591 ;value                     Allocated with name '_checkAcknowledgement_value_65537_30'
                                    592 ;------------------------------------------------------------
                                    593 ;	src/i2c.c:52: int checkAcknowledgement()
                                    594 ;	-----------------------------------------
                                    595 ;	 function checkAcknowledgement
                                    596 ;	-----------------------------------------
      00040E                        597 _checkAcknowledgement:
                                    598 ;	src/i2c.c:55: SDA = 1;
                                    599 ;	assignBit
      00040E D2 92            [12]  600 	setb	_P1_2
                                    601 ;	src/i2c.c:56: NOP;
      000410 00               [12]  602 	nop
                                    603 ;	src/i2c.c:57: NOP;
      000411 00               [12]  604 	nop
                                    605 ;	src/i2c.c:58: SCL = 1;
                                    606 ;	assignBit
      000412 D2 93            [12]  607 	setb	_P1_3
                                    608 ;	src/i2c.c:60: uint8_t value = SDA;
      000414 A2 92            [12]  609 	mov	c,_P1_2
      000416 E4               [12]  610 	clr	a
      000417 33               [12]  611 	rlc	a
      000418 FF               [12]  612 	mov	r7,a
                                    613 ;	src/i2c.c:61: NOP;
      000419 00               [12]  614 	nop
                                    615 ;	src/i2c.c:62: SCL = 0;
                                    616 ;	assignBit
      00041A C2 93            [12]  617 	clr	_P1_3
                                    618 ;	src/i2c.c:63: NOP;
      00041C 00               [12]  619 	nop
                                    620 ;	src/i2c.c:64: if(value != 0)
      00041D EF               [12]  621 	mov	a,r7
      00041E 60 04            [24]  622 	jz	00102$
                                    623 ;	src/i2c.c:66: return FAIL;
      000420 90 FF FF         [24]  624 	mov	dptr,#0xffff
      000423 22               [24]  625 	ret
      000424                        626 00102$:
                                    627 ;	src/i2c.c:68: return SUCCESS;
      000424 90 00 00         [24]  628 	mov	dptr,#0x0000
                                    629 ;	src/i2c.c:69: }
      000427 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'start'
                                    633 ;------------------------------------------------------------
                                    634 ;	src/i2c.c:75: void start()
                                    635 ;	-----------------------------------------
                                    636 ;	 function start
                                    637 ;	-----------------------------------------
      000428                        638 _start:
                                    639 ;	src/i2c.c:77: SDA = 1;
                                    640 ;	assignBit
      000428 D2 92            [12]  641 	setb	_P1_2
                                    642 ;	src/i2c.c:78: NOP;
      00042A 00               [12]  643 	nop
                                    644 ;	src/i2c.c:79: SCL = 1;
                                    645 ;	assignBit
      00042B D2 93            [12]  646 	setb	_P1_3
                                    647 ;	src/i2c.c:80: NOP;
      00042D 00               [12]  648 	nop
                                    649 ;	src/i2c.c:81: SDA = 0;
                                    650 ;	assignBit
      00042E C2 92            [12]  651 	clr	_P1_2
                                    652 ;	src/i2c.c:82: NOP;
      000430 00               [12]  653 	nop
                                    654 ;	src/i2c.c:83: NOP;
      000431 00               [12]  655 	nop
                                    656 ;	src/i2c.c:84: SCL = 0;
                                    657 ;	assignBit
      000432 C2 93            [12]  658 	clr	_P1_3
                                    659 ;	src/i2c.c:85: }
      000434 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'stop'
                                    663 ;------------------------------------------------------------
                                    664 ;	src/i2c.c:91: void stop()
                                    665 ;	-----------------------------------------
                                    666 ;	 function stop
                                    667 ;	-----------------------------------------
      000435                        668 _stop:
                                    669 ;	src/i2c.c:93: SDA = 0;
                                    670 ;	assignBit
      000435 C2 92            [12]  671 	clr	_P1_2
                                    672 ;	src/i2c.c:94: NOP;
      000437 00               [12]  673 	nop
                                    674 ;	src/i2c.c:95: NOP;
      000438 00               [12]  675 	nop
                                    676 ;	src/i2c.c:96: SCL = 1;
                                    677 ;	assignBit
      000439 D2 93            [12]  678 	setb	_P1_3
                                    679 ;	src/i2c.c:97: NOP;
      00043B 00               [12]  680 	nop
                                    681 ;	src/i2c.c:98: NOP;
      00043C 00               [12]  682 	nop
                                    683 ;	src/i2c.c:99: SDA = 1;
                                    684 ;	assignBit
      00043D D2 92            [12]  685 	setb	_P1_2
                                    686 ;	src/i2c.c:100: NOP;
      00043F 00               [12]  687 	nop
                                    688 ;	src/i2c.c:101: NOP;
      000440 00               [12]  689 	nop
                                    690 ;	src/i2c.c:102: }
      000441 22               [24]  691 	ret
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'sendAcknowledge'
                                    694 ;------------------------------------------------------------
                                    695 ;	src/i2c.c:108: void sendAcknowledge()
                                    696 ;	-----------------------------------------
                                    697 ;	 function sendAcknowledge
                                    698 ;	-----------------------------------------
      000442                        699 _sendAcknowledge:
                                    700 ;	src/i2c.c:110: SDA = 0;
                                    701 ;	assignBit
      000442 C2 92            [12]  702 	clr	_P1_2
                                    703 ;	src/i2c.c:111: NOP;
      000444 00               [12]  704 	nop
                                    705 ;	src/i2c.c:112: NOP;
      000445 00               [12]  706 	nop
                                    707 ;	src/i2c.c:113: clock();
      000446 12 04 05         [24]  708 	lcall	_clock
                                    709 ;	src/i2c.c:114: SDA = 1;
                                    710 ;	assignBit
      000449 D2 92            [12]  711 	setb	_P1_2
                                    712 ;	src/i2c.c:115: NOP;
      00044B 00               [12]  713 	nop
                                    714 ;	src/i2c.c:116: NOP;
      00044C 00               [12]  715 	nop
                                    716 ;	src/i2c.c:117: }
      00044D 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'sendNAcknowledge'
                                    720 ;------------------------------------------------------------
                                    721 ;	src/i2c.c:123: void sendNAcknowledge()
                                    722 ;	-----------------------------------------
                                    723 ;	 function sendNAcknowledge
                                    724 ;	-----------------------------------------
      00044E                        725 _sendNAcknowledge:
                                    726 ;	src/i2c.c:125: SDA = 1;
                                    727 ;	assignBit
      00044E D2 92            [12]  728 	setb	_P1_2
                                    729 ;	src/i2c.c:126: NOP;
      000450 00               [12]  730 	nop
                                    731 ;	src/i2c.c:127: NOP;
      000451 00               [12]  732 	nop
                                    733 ;	src/i2c.c:128: clock();
      000452 12 04 05         [24]  734 	lcall	_clock
                                    735 ;	src/i2c.c:129: NOP;
      000455 00               [12]  736 	nop
                                    737 ;	src/i2c.c:130: NOP;
      000456 00               [12]  738 	nop
                                    739 ;	src/i2c.c:131: }
      000457 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'reverse'
                                    743 ;------------------------------------------------------------
                                    744 ;input                     Allocated with name '_reverse_input_65536_36'
                                    745 ;output                    Allocated with name '_reverse_output_65536_37'
                                    746 ;i                         Allocated with name '_reverse_i_131072_38'
                                    747 ;------------------------------------------------------------
                                    748 ;	src/i2c.c:138: uint8_t reverse(uint8_t input)
                                    749 ;	-----------------------------------------
                                    750 ;	 function reverse
                                    751 ;	-----------------------------------------
      000458                        752 _reverse:
      000458 E5 82            [12]  753 	mov	a,dpl
      00045A 90 00 23         [24]  754 	mov	dptr,#_reverse_input_65536_36
      00045D F0               [24]  755 	movx	@dptr,a
                                    756 ;	src/i2c.c:140: uint8_t output = 0;
      00045E 90 00 24         [24]  757 	mov	dptr,#_reverse_output_65536_37
      000461 E4               [12]  758 	clr	a
      000462 F0               [24]  759 	movx	@dptr,a
                                    760 ;	src/i2c.c:142: for (int i = 0; i < 8; i++)
      000463 7E 00            [12]  761 	mov	r6,#0x00
      000465 7F 00            [12]  762 	mov	r7,#0x00
      000467                        763 00103$:
      000467 C3               [12]  764 	clr	c
      000468 EE               [12]  765 	mov	a,r6
      000469 94 08            [12]  766 	subb	a,#0x08
      00046B EF               [12]  767 	mov	a,r7
      00046C 64 80            [12]  768 	xrl	a,#0x80
      00046E 94 80            [12]  769 	subb	a,#0x80
      000470 50 24            [24]  770 	jnc	00101$
                                    771 ;	src/i2c.c:144: output = output << 1;
      000472 90 00 24         [24]  772 	mov	dptr,#_reverse_output_65536_37
      000475 E0               [24]  773 	movx	a,@dptr
      000476 25 E0            [12]  774 	add	a,acc
      000478 F0               [24]  775 	movx	@dptr,a
                                    776 ;	src/i2c.c:146: output = output | (input & 0x01);
      000479 90 00 23         [24]  777 	mov	dptr,#_reverse_input_65536_36
      00047C E0               [24]  778 	movx	a,@dptr
      00047D FD               [12]  779 	mov	r5,a
      00047E 74 01            [12]  780 	mov	a,#0x01
      000480 5D               [12]  781 	anl	a,r5
      000481 FC               [12]  782 	mov	r4,a
      000482 90 00 24         [24]  783 	mov	dptr,#_reverse_output_65536_37
      000485 E0               [24]  784 	movx	a,@dptr
      000486 4C               [12]  785 	orl	a,r4
      000487 F0               [24]  786 	movx	@dptr,a
                                    787 ;	src/i2c.c:147: input = input >> 1;
      000488 ED               [12]  788 	mov	a,r5
      000489 C3               [12]  789 	clr	c
      00048A 13               [12]  790 	rrc	a
      00048B 90 00 23         [24]  791 	mov	dptr,#_reverse_input_65536_36
      00048E F0               [24]  792 	movx	@dptr,a
                                    793 ;	src/i2c.c:142: for (int i = 0; i < 8; i++)
      00048F 0E               [12]  794 	inc	r6
      000490 BE 00 D4         [24]  795 	cjne	r6,#0x00,00103$
      000493 0F               [12]  796 	inc	r7
      000494 80 D1            [24]  797 	sjmp	00103$
      000496                        798 00101$:
                                    799 ;	src/i2c.c:149: return output;
      000496 90 00 24         [24]  800 	mov	dptr,#_reverse_output_65536_37
      000499 E0               [24]  801 	movx	a,@dptr
                                    802 ;	src/i2c.c:150: }
      00049A F5 82            [12]  803 	mov	dpl,a
      00049C 22               [24]  804 	ret
                                    805 ;------------------------------------------------------------
                                    806 ;Allocation info for local variables in function 'sendControlByte'
                                    807 ;------------------------------------------------------------
                                    808 ;deviceId                  Allocated with name '_sendControlByte_PARM_2'
                                    809 ;addr                      Allocated with name '_sendControlByte_PARM_3'
                                    810 ;op                        Allocated with name '_sendControlByte_op_65536_40'
                                    811 ;blockAddress              Allocated with name '_sendControlByte_blockAddress_65536_41'
                                    812 ;b0                        Allocated with name '_sendControlByte_b0_65536_41'
                                    813 ;b1                        Allocated with name '_sendControlByte_b1_65537_42'
                                    814 ;b2                        Allocated with name '_sendControlByte_b2_65538_43'
                                    815 ;i                         Allocated with name '_sendControlByte_i_131074_44'
                                    816 ;------------------------------------------------------------
                                    817 ;	src/i2c.c:159: void sendControlByte(const Operation op, uint8_t deviceId, uint16_t addr) 
                                    818 ;	-----------------------------------------
                                    819 ;	 function sendControlByte
                                    820 ;	-----------------------------------------
      00049D                        821 _sendControlByte:
      00049D E5 82            [12]  822 	mov	a,dpl
      00049F 90 00 28         [24]  823 	mov	dptr,#_sendControlByte_op_65536_40
      0004A2 F0               [24]  824 	movx	@dptr,a
                                    825 ;	src/i2c.c:162: uint8_t blockAddress = (addr & 0x700) >> 8;
      0004A3 90 00 26         [24]  826 	mov	dptr,#_sendControlByte_PARM_3
      0004A6 E0               [24]  827 	movx	a,@dptr
      0004A7 A3               [24]  828 	inc	dptr
      0004A8 E0               [24]  829 	movx	a,@dptr
      0004A9 FF               [12]  830 	mov	r7,a
      0004AA 53 07 07         [24]  831 	anl	ar7,#0x07
      0004AD 8F 06            [24]  832 	mov	ar6,r7
                                    833 ;	src/i2c.c:164: uint8_t b0 = blockAddress & 0x01;
      0004AF 74 01            [12]  834 	mov	a,#0x01
      0004B1 5E               [12]  835 	anl	a,r6
      0004B2 FF               [12]  836 	mov	r7,a
                                    837 ;	src/i2c.c:165: blockAddress >>= 1; 
      0004B3 EE               [12]  838 	mov	a,r6
      0004B4 C3               [12]  839 	clr	c
      0004B5 13               [12]  840 	rrc	a
      0004B6 FE               [12]  841 	mov	r6,a
                                    842 ;	src/i2c.c:166: uint8_t b1 = blockAddress & 0x01;
      0004B7 74 01            [12]  843 	mov	a,#0x01
      0004B9 5E               [12]  844 	anl	a,r6
      0004BA FD               [12]  845 	mov	r5,a
                                    846 ;	src/i2c.c:167: blockAddress >>= 1;
      0004BB EE               [12]  847 	mov	a,r6
      0004BC C3               [12]  848 	clr	c
      0004BD 13               [12]  849 	rrc	a
      0004BE FE               [12]  850 	mov	r6,a
                                    851 ;	src/i2c.c:168: uint8_t b2 = blockAddress & 0x01;
      0004BF 53 06 01         [24]  852 	anl	ar6,#0x01
                                    853 ;	src/i2c.c:174: for (int i = 0; i < 4; i++)
      0004C2 7B 00            [12]  854 	mov	r3,#0x00
      0004C4 7C 00            [12]  855 	mov	r4,#0x00
      0004C6                        856 00103$:
      0004C6 C3               [12]  857 	clr	c
      0004C7 EB               [12]  858 	mov	a,r3
      0004C8 94 04            [12]  859 	subb	a,#0x04
      0004CA EC               [12]  860 	mov	a,r4
      0004CB 64 80            [12]  861 	xrl	a,#0x80
      0004CD 94 80            [12]  862 	subb	a,#0x80
      0004CF 50 34            [24]  863 	jnc	00101$
                                    864 ;	src/i2c.c:176: SDA = deviceId & 0x01;
      0004D1 90 00 25         [24]  865 	mov	dptr,#_sendControlByte_PARM_2
      0004D4 E0               [24]  866 	movx	a,@dptr
      0004D5 FA               [12]  867 	mov	r2,a
      0004D6 54 01            [12]  868 	anl	a,#0x01
                                    869 ;	assignBit
      0004D8 24 FF            [12]  870 	add	a,#0xff
      0004DA 92 92            [24]  871 	mov	_P1_2,c
                                    872 ;	src/i2c.c:177: clock();
      0004DC C0 07            [24]  873 	push	ar7
      0004DE C0 06            [24]  874 	push	ar6
      0004E0 C0 05            [24]  875 	push	ar5
      0004E2 C0 04            [24]  876 	push	ar4
      0004E4 C0 03            [24]  877 	push	ar3
      0004E6 C0 02            [24]  878 	push	ar2
      0004E8 12 04 05         [24]  879 	lcall	_clock
      0004EB D0 02            [24]  880 	pop	ar2
      0004ED D0 03            [24]  881 	pop	ar3
      0004EF D0 04            [24]  882 	pop	ar4
      0004F1 D0 05            [24]  883 	pop	ar5
      0004F3 D0 06            [24]  884 	pop	ar6
      0004F5 D0 07            [24]  885 	pop	ar7
                                    886 ;	src/i2c.c:178: deviceId = deviceId >> 1;
      0004F7 EA               [12]  887 	mov	a,r2
      0004F8 C3               [12]  888 	clr	c
      0004F9 13               [12]  889 	rrc	a
      0004FA 90 00 25         [24]  890 	mov	dptr,#_sendControlByte_PARM_2
      0004FD F0               [24]  891 	movx	@dptr,a
                                    892 ;	src/i2c.c:174: for (int i = 0; i < 4; i++)
      0004FE 0B               [12]  893 	inc	r3
      0004FF BB 00 C4         [24]  894 	cjne	r3,#0x00,00103$
      000502 0C               [12]  895 	inc	r4
      000503 80 C1            [24]  896 	sjmp	00103$
      000505                        897 00101$:
                                    898 ;	src/i2c.c:182: SDA = b2;
                                    899 ;	assignBit
      000505 EE               [12]  900 	mov	a,r6
      000506 24 FF            [12]  901 	add	a,#0xff
      000508 92 92            [24]  902 	mov	_P1_2,c
                                    903 ;	src/i2c.c:183: clock();
      00050A C0 07            [24]  904 	push	ar7
      00050C C0 05            [24]  905 	push	ar5
      00050E 12 04 05         [24]  906 	lcall	_clock
      000511 D0 05            [24]  907 	pop	ar5
                                    908 ;	src/i2c.c:186: SDA = b1;
                                    909 ;	assignBit
      000513 ED               [12]  910 	mov	a,r5
      000514 24 FF            [12]  911 	add	a,#0xff
      000516 92 92            [24]  912 	mov	_P1_2,c
                                    913 ;	src/i2c.c:187: clock();
      000518 12 04 05         [24]  914 	lcall	_clock
      00051B D0 07            [24]  915 	pop	ar7
                                    916 ;	src/i2c.c:190: SDA = b0;
                                    917 ;	assignBit
      00051D EF               [12]  918 	mov	a,r7
      00051E 24 FF            [12]  919 	add	a,#0xff
      000520 92 92            [24]  920 	mov	_P1_2,c
                                    921 ;	src/i2c.c:191: clock();
      000522 12 04 05         [24]  922 	lcall	_clock
                                    923 ;	src/i2c.c:194: SDA = op;
      000525 90 00 28         [24]  924 	mov	dptr,#_sendControlByte_op_65536_40
      000528 E0               [24]  925 	movx	a,@dptr
                                    926 ;	assignBit
      000529 24 FF            [12]  927 	add	a,#0xff
      00052B 92 92            [24]  928 	mov	_P1_2,c
                                    929 ;	src/i2c.c:195: clock();
                                    930 ;	src/i2c.c:196: }
      00052D 02 04 05         [24]  931 	ljmp	_clock
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'sendControlByteNoAddr'
                                    934 ;------------------------------------------------------------
                                    935 ;deviceId                  Allocated with name '_sendControlByteNoAddr_PARM_2'
                                    936 ;op                        Allocated with name '_sendControlByteNoAddr_op_65536_46'
                                    937 ;i                         Allocated with name '_sendControlByteNoAddr_i_131072_48'
                                    938 ;------------------------------------------------------------
                                    939 ;	src/i2c.c:204: void sendControlByteNoAddr(const Operation op, uint8_t deviceId)
                                    940 ;	-----------------------------------------
                                    941 ;	 function sendControlByteNoAddr
                                    942 ;	-----------------------------------------
      000530                        943 _sendControlByteNoAddr:
      000530 E5 82            [12]  944 	mov	a,dpl
      000532 90 00 2A         [24]  945 	mov	dptr,#_sendControlByteNoAddr_op_65536_46
      000535 F0               [24]  946 	movx	@dptr,a
                                    947 ;	src/i2c.c:207: for (int i = 0; i < 7; i++)
      000536 7E 00            [12]  948 	mov	r6,#0x00
      000538 7F 00            [12]  949 	mov	r7,#0x00
      00053A                        950 00103$:
      00053A C3               [12]  951 	clr	c
      00053B EE               [12]  952 	mov	a,r6
      00053C 94 07            [12]  953 	subb	a,#0x07
      00053E EF               [12]  954 	mov	a,r7
      00053F 64 80            [12]  955 	xrl	a,#0x80
      000541 94 80            [12]  956 	subb	a,#0x80
      000543 50 28            [24]  957 	jnc	00101$
                                    958 ;	src/i2c.c:209: SDA = deviceId & 0x01;
      000545 90 00 29         [24]  959 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000548 E0               [24]  960 	movx	a,@dptr
      000549 FD               [12]  961 	mov	r5,a
      00054A 54 01            [12]  962 	anl	a,#0x01
                                    963 ;	assignBit
      00054C 24 FF            [12]  964 	add	a,#0xff
      00054E 92 92            [24]  965 	mov	_P1_2,c
                                    966 ;	src/i2c.c:210: clock();
      000550 C0 07            [24]  967 	push	ar7
      000552 C0 06            [24]  968 	push	ar6
      000554 C0 05            [24]  969 	push	ar5
      000556 12 04 05         [24]  970 	lcall	_clock
      000559 D0 05            [24]  971 	pop	ar5
      00055B D0 06            [24]  972 	pop	ar6
      00055D D0 07            [24]  973 	pop	ar7
                                    974 ;	src/i2c.c:211: deviceId = deviceId >> 1;
      00055F ED               [12]  975 	mov	a,r5
      000560 C3               [12]  976 	clr	c
      000561 13               [12]  977 	rrc	a
      000562 90 00 29         [24]  978 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000565 F0               [24]  979 	movx	@dptr,a
                                    980 ;	src/i2c.c:207: for (int i = 0; i < 7; i++)
      000566 0E               [12]  981 	inc	r6
      000567 BE 00 D0         [24]  982 	cjne	r6,#0x00,00103$
      00056A 0F               [12]  983 	inc	r7
      00056B 80 CD            [24]  984 	sjmp	00103$
      00056D                        985 00101$:
                                    986 ;	src/i2c.c:214: SDA = op;
      00056D 90 00 2A         [24]  987 	mov	dptr,#_sendControlByteNoAddr_op_65536_46
      000570 E0               [24]  988 	movx	a,@dptr
                                    989 ;	assignBit
      000571 24 FF            [12]  990 	add	a,#0xff
      000573 92 92            [24]  991 	mov	_P1_2,c
                                    992 ;	src/i2c.c:215: clock();
                                    993 ;	src/i2c.c:216: }
      000575 02 04 05         [24]  994 	ljmp	_clock
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'i2cByteWrite'
                                    997 ;------------------------------------------------------------
                                    998 ;dataByte                  Allocated with name '_i2cByteWrite_dataByte_65536_50'
                                    999 ;databyteMsbFirst          Allocated with name '_i2cByteWrite_databyteMsbFirst_65536_51'
                                   1000 ;i                         Allocated with name '_i2cByteWrite_i_131072_52'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	src/i2c.c:218: void i2cByteWrite(uint8_t dataByte)
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function i2cByteWrite
                                   1005 ;	-----------------------------------------
      000578                       1006 _i2cByteWrite:
      000578 E5 82            [12] 1007 	mov	a,dpl
      00057A 90 00 2B         [24] 1008 	mov	dptr,#_i2cByteWrite_dataByte_65536_50
      00057D F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	src/i2c.c:221: uint8_t databyteMsbFirst = reverse(dataByte);
      00057E E0               [24] 1011 	movx	a,@dptr
      00057F F5 82            [12] 1012 	mov	dpl,a
      000581 12 04 58         [24] 1013 	lcall	_reverse
      000584 E5 82            [12] 1014 	mov	a,dpl
      000586 90 00 2C         [24] 1015 	mov	dptr,#_i2cByteWrite_databyteMsbFirst_65536_51
      000589 F0               [24] 1016 	movx	@dptr,a
                                   1017 ;	src/i2c.c:222: for (int i = 0; i < 8; i++)
      00058A 7E 00            [12] 1018 	mov	r6,#0x00
      00058C 7F 00            [12] 1019 	mov	r7,#0x00
      00058E                       1020 00103$:
      00058E C3               [12] 1021 	clr	c
      00058F EE               [12] 1022 	mov	a,r6
      000590 94 08            [12] 1023 	subb	a,#0x08
      000592 EF               [12] 1024 	mov	a,r7
      000593 64 80            [12] 1025 	xrl	a,#0x80
      000595 94 80            [12] 1026 	subb	a,#0x80
      000597 50 21            [24] 1027 	jnc	00105$
                                   1028 ;	src/i2c.c:224: SDA = databyteMsbFirst & 0x01;
      000599 90 00 2C         [24] 1029 	mov	dptr,#_i2cByteWrite_databyteMsbFirst_65536_51
      00059C E0               [24] 1030 	movx	a,@dptr
      00059D FD               [12] 1031 	mov	r5,a
      00059E 54 01            [12] 1032 	anl	a,#0x01
                                   1033 ;	assignBit
      0005A0 24 FF            [12] 1034 	add	a,#0xff
      0005A2 92 92            [24] 1035 	mov	_P1_2,c
                                   1036 ;	src/i2c.c:225: databyteMsbFirst >>= 1;
      0005A4 ED               [12] 1037 	mov	a,r5
      0005A5 C3               [12] 1038 	clr	c
      0005A6 13               [12] 1039 	rrc	a
      0005A7 F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	src/i2c.c:226: clock();
      0005A8 C0 07            [24] 1042 	push	ar7
      0005AA C0 06            [24] 1043 	push	ar6
      0005AC 12 04 05         [24] 1044 	lcall	_clock
      0005AF D0 06            [24] 1045 	pop	ar6
      0005B1 D0 07            [24] 1046 	pop	ar7
                                   1047 ;	src/i2c.c:222: for (int i = 0; i < 8; i++)
      0005B3 0E               [12] 1048 	inc	r6
      0005B4 BE 00 D7         [24] 1049 	cjne	r6,#0x00,00103$
      0005B7 0F               [12] 1050 	inc	r7
      0005B8 80 D4            [24] 1051 	sjmp	00103$
      0005BA                       1052 00105$:
                                   1053 ;	src/i2c.c:228: }
      0005BA 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2cByteRead'
                                   1057 ;------------------------------------------------------------
                                   1058 ;dataByte                  Allocated with name '_i2cByteRead_dataByte_65536_54'
                                   1059 ;i                         Allocated with name '_i2cByteRead_i_131072_55'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	src/i2c.c:230: uint8_t i2cByteRead()
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function i2cByteRead
                                   1064 ;	-----------------------------------------
      0005BB                       1065 _i2cByteRead:
                                   1066 ;	src/i2c.c:232: uint8_t dataByte = 0;
      0005BB 90 00 2D         [24] 1067 	mov	dptr,#_i2cByteRead_dataByte_65536_54
      0005BE E4               [12] 1068 	clr	a
      0005BF F0               [24] 1069 	movx	@dptr,a
                                   1070 ;	src/i2c.c:233: for (int i = 0; i < 8; i++)
      0005C0 7E 00            [12] 1071 	mov	r6,#0x00
      0005C2 7F 00            [12] 1072 	mov	r7,#0x00
      0005C4                       1073 00103$:
      0005C4 C3               [12] 1074 	clr	c
      0005C5 EE               [12] 1075 	mov	a,r6
      0005C6 94 08            [12] 1076 	subb	a,#0x08
      0005C8 EF               [12] 1077 	mov	a,r7
      0005C9 64 80            [12] 1078 	xrl	a,#0x80
      0005CB 94 80            [12] 1079 	subb	a,#0x80
      0005CD 50 1E            [24] 1080 	jnc	00101$
                                   1081 ;	src/i2c.c:235: SCL = 1;
                                   1082 ;	assignBit
      0005CF D2 93            [12] 1083 	setb	_P1_3
                                   1084 ;	src/i2c.c:237: dataByte = (dataByte << 1) | SDA;
      0005D1 90 00 2D         [24] 1085 	mov	dptr,#_i2cByteRead_dataByte_65536_54
      0005D4 E0               [24] 1086 	movx	a,@dptr
      0005D5 25 E0            [12] 1087 	add	a,acc
      0005D7 FD               [12] 1088 	mov	r5,a
      0005D8 A2 92            [12] 1089 	mov	c,_P1_2
      0005DA E4               [12] 1090 	clr	a
      0005DB 33               [12] 1091 	rlc	a
      0005DC FC               [12] 1092 	mov	r4,a
      0005DD 90 00 2D         [24] 1093 	mov	dptr,#_i2cByteRead_dataByte_65536_54
      0005E0 4D               [12] 1094 	orl	a,r5
      0005E1 F0               [24] 1095 	movx	@dptr,a
                                   1096 ;	src/i2c.c:238: NOP;
      0005E2 00               [12] 1097 	nop
                                   1098 ;	src/i2c.c:239: SCL = 0;
                                   1099 ;	assignBit
      0005E3 C2 93            [12] 1100 	clr	_P1_3
                                   1101 ;	src/i2c.c:240: NOP;
      0005E5 00               [12] 1102 	nop
                                   1103 ;	src/i2c.c:233: for (int i = 0; i < 8; i++)
      0005E6 0E               [12] 1104 	inc	r6
      0005E7 BE 00 DA         [24] 1105 	cjne	r6,#0x00,00103$
      0005EA 0F               [12] 1106 	inc	r7
      0005EB 80 D7            [24] 1107 	sjmp	00103$
      0005ED                       1108 00101$:
                                   1109 ;	src/i2c.c:242: return dataByte;
      0005ED 90 00 2D         [24] 1110 	mov	dptr,#_i2cByteRead_dataByte_65536_54
      0005F0 E0               [24] 1111 	movx	a,@dptr
                                   1112 ;	src/i2c.c:243: }
      0005F1 F5 82            [12] 1113 	mov	dpl,a
      0005F3 22               [24] 1114 	ret
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 'readRegisterMAXWing'
                                   1117 ;------------------------------------------------------------
                                   1118 ;regAddr                   Allocated with name '_readRegisterMAXWing_PARM_2'
                                   1119 ;deviceId                  Allocated with name '_readRegisterMAXWing_deviceId_65536_57'
                                   1120 ;regAddressMsbFirst        Allocated with name '_readRegisterMAXWing_regAddressMsbFirst_65537_60'
                                   1121 ;i                         Allocated with name '_readRegisterMAXWing_i_131073_61'
                                   1122 ;dataByte                  Allocated with name '_readRegisterMAXWing_dataByte_65538_65'
                                   1123 ;i                         Allocated with name '_readRegisterMAXWing_i_131074_66'
                                   1124 ;------------------------------------------------------------
                                   1125 ;	src/i2c.c:252: int readRegisterMAXWing(uint8_t deviceId, uint8_t regAddr)
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function readRegisterMAXWing
                                   1128 ;	-----------------------------------------
      0005F4                       1129 _readRegisterMAXWing:
      0005F4 E5 82            [12] 1130 	mov	a,dpl
      0005F6 90 00 2F         [24] 1131 	mov	dptr,#_readRegisterMAXWing_deviceId_65536_57
      0005F9 F0               [24] 1132 	movx	@dptr,a
                                   1133 ;	src/i2c.c:254: start();
      0005FA 12 04 28         [24] 1134 	lcall	_start
                                   1135 ;	src/i2c.c:255: sendControlByteNoAddr(WRITE, deviceId);
      0005FD 90 00 2F         [24] 1136 	mov	dptr,#_readRegisterMAXWing_deviceId_65536_57
      000600 E0               [24] 1137 	movx	a,@dptr
      000601 FF               [12] 1138 	mov	r7,a
      000602 90 00 29         [24] 1139 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000605 F0               [24] 1140 	movx	@dptr,a
      000606 75 82 00         [24] 1141 	mov	dpl,#0x00
      000609 C0 07            [24] 1142 	push	ar7
      00060B 12 05 30         [24] 1143 	lcall	_sendControlByteNoAddr
                                   1144 ;	src/i2c.c:256: if (checkAcknowledgement() == FAIL)
      00060E 12 04 0E         [24] 1145 	lcall	_checkAcknowledgement
      000611 AD 82            [24] 1146 	mov	r5,dpl
      000613 AE 83            [24] 1147 	mov	r6,dph
      000615 D0 07            [24] 1148 	pop	ar7
      000617 BD FF 33         [24] 1149 	cjne	r5,#0xff,00102$
      00061A BE FF 30         [24] 1150 	cjne	r6,#0xff,00102$
                                   1151 ;	src/i2c.c:258: ERROR_LOG("%s: Acknowledgement Failed", __func__);
      00061D 74 98            [12] 1152 	mov	a,#___str_1
      00061F C0 E0            [24] 1153 	push	acc
      000621 74 4B            [12] 1154 	mov	a,#(___str_1 >> 8)
      000623 C0 E0            [24] 1155 	push	acc
      000625 74 80            [12] 1156 	mov	a,#0x80
      000627 C0 E0            [24] 1157 	push	acc
      000629 74 6D            [12] 1158 	mov	a,#___str_0
      00062B C0 E0            [24] 1159 	push	acc
      00062D 74 4B            [12] 1160 	mov	a,#(___str_0 >> 8)
      00062F C0 E0            [24] 1161 	push	acc
      000631 12 3B B6         [24] 1162 	lcall	_printf_tiny
      000634 E5 81            [12] 1163 	mov	a,sp
      000636 24 FB            [12] 1164 	add	a,#0xfb
      000638 F5 81            [12] 1165 	mov	sp,a
      00063A 74 AC            [12] 1166 	mov	a,#___str_2
      00063C C0 E0            [24] 1167 	push	acc
      00063E 74 4B            [12] 1168 	mov	a,#(___str_2 >> 8)
      000640 C0 E0            [24] 1169 	push	acc
      000642 12 3B B6         [24] 1170 	lcall	_printf_tiny
      000645 15 81            [12] 1171 	dec	sp
      000647 15 81            [12] 1172 	dec	sp
                                   1173 ;	src/i2c.c:259: return FAIL;
      000649 90 FF FF         [24] 1174 	mov	dptr,#0xffff
      00064C 22               [24] 1175 	ret
      00064D                       1176 00102$:
                                   1177 ;	src/i2c.c:262: uint8_t regAddressMsbFirst = reverse(regAddr);
      00064D 90 00 2E         [24] 1178 	mov	dptr,#_readRegisterMAXWing_PARM_2
      000650 E0               [24] 1179 	movx	a,@dptr
      000651 F5 82            [12] 1180 	mov	dpl,a
      000653 C0 07            [24] 1181 	push	ar7
      000655 12 04 58         [24] 1182 	lcall	_reverse
      000658 E5 82            [12] 1183 	mov	a,dpl
      00065A D0 07            [24] 1184 	pop	ar7
      00065C 90 00 30         [24] 1185 	mov	dptr,#_readRegisterMAXWing_regAddressMsbFirst_65537_60
      00065F F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	src/i2c.c:263: for (int i = 0; i < 8; i++)
      000660 7D 00            [12] 1188 	mov	r5,#0x00
      000662 7E 00            [12] 1189 	mov	r6,#0x00
      000664                       1190 00110$:
      000664 C3               [12] 1191 	clr	c
      000665 ED               [12] 1192 	mov	a,r5
      000666 94 08            [12] 1193 	subb	a,#0x08
      000668 EE               [12] 1194 	mov	a,r6
      000669 64 80            [12] 1195 	xrl	a,#0x80
      00066B 94 80            [12] 1196 	subb	a,#0x80
      00066D 50 25            [24] 1197 	jnc	00103$
                                   1198 ;	src/i2c.c:265: SDA = regAddressMsbFirst & 0x01;
      00066F 90 00 30         [24] 1199 	mov	dptr,#_readRegisterMAXWing_regAddressMsbFirst_65537_60
      000672 E0               [24] 1200 	movx	a,@dptr
      000673 FC               [12] 1201 	mov	r4,a
      000674 54 01            [12] 1202 	anl	a,#0x01
                                   1203 ;	assignBit
      000676 24 FF            [12] 1204 	add	a,#0xff
      000678 92 92            [24] 1205 	mov	_P1_2,c
                                   1206 ;	src/i2c.c:266: regAddressMsbFirst >>= 1;
      00067A EC               [12] 1207 	mov	a,r4
      00067B C3               [12] 1208 	clr	c
      00067C 13               [12] 1209 	rrc	a
      00067D F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	src/i2c.c:267: clock();
      00067E C0 07            [24] 1212 	push	ar7
      000680 C0 06            [24] 1213 	push	ar6
      000682 C0 05            [24] 1214 	push	ar5
      000684 12 04 05         [24] 1215 	lcall	_clock
      000687 D0 05            [24] 1216 	pop	ar5
      000689 D0 06            [24] 1217 	pop	ar6
      00068B D0 07            [24] 1218 	pop	ar7
                                   1219 ;	src/i2c.c:263: for (int i = 0; i < 8; i++)
      00068D 0D               [12] 1220 	inc	r5
      00068E BD 00 D3         [24] 1221 	cjne	r5,#0x00,00110$
      000691 0E               [12] 1222 	inc	r6
      000692 80 D0            [24] 1223 	sjmp	00110$
      000694                       1224 00103$:
                                   1225 ;	src/i2c.c:269: if (checkAcknowledgement() == FAIL)
      000694 C0 07            [24] 1226 	push	ar7
      000696 12 04 0E         [24] 1227 	lcall	_checkAcknowledgement
      000699 AD 82            [24] 1228 	mov	r5,dpl
      00069B AE 83            [24] 1229 	mov	r6,dph
      00069D D0 07            [24] 1230 	pop	ar7
      00069F BD FF 33         [24] 1231 	cjne	r5,#0xff,00105$
      0006A2 BE FF 30         [24] 1232 	cjne	r6,#0xff,00105$
                                   1233 ;	src/i2c.c:271: ERROR_LOG("%s Read address failed!", __func__);
      0006A5 74 98            [12] 1234 	mov	a,#___str_1
      0006A7 C0 E0            [24] 1235 	push	acc
      0006A9 74 4B            [12] 1236 	mov	a,#(___str_1 >> 8)
      0006AB C0 E0            [24] 1237 	push	acc
      0006AD 74 80            [12] 1238 	mov	a,#0x80
      0006AF C0 E0            [24] 1239 	push	acc
      0006B1 74 B1            [12] 1240 	mov	a,#___str_3
      0006B3 C0 E0            [24] 1241 	push	acc
      0006B5 74 4B            [12] 1242 	mov	a,#(___str_3 >> 8)
      0006B7 C0 E0            [24] 1243 	push	acc
      0006B9 12 3B B6         [24] 1244 	lcall	_printf_tiny
      0006BC E5 81            [12] 1245 	mov	a,sp
      0006BE 24 FB            [12] 1246 	add	a,#0xfb
      0006C0 F5 81            [12] 1247 	mov	sp,a
      0006C2 74 AC            [12] 1248 	mov	a,#___str_2
      0006C4 C0 E0            [24] 1249 	push	acc
      0006C6 74 4B            [12] 1250 	mov	a,#(___str_2 >> 8)
      0006C8 C0 E0            [24] 1251 	push	acc
      0006CA 12 3B B6         [24] 1252 	lcall	_printf_tiny
      0006CD 15 81            [12] 1253 	dec	sp
      0006CF 15 81            [12] 1254 	dec	sp
                                   1255 ;	src/i2c.c:272: return FAIL;
      0006D1 90 FF FF         [24] 1256 	mov	dptr,#0xffff
      0006D4 22               [24] 1257 	ret
      0006D5                       1258 00105$:
                                   1259 ;	src/i2c.c:274: start();
      0006D5 C0 07            [24] 1260 	push	ar7
      0006D7 12 04 28         [24] 1261 	lcall	_start
      0006DA D0 07            [24] 1262 	pop	ar7
                                   1263 ;	src/i2c.c:275: sendControlByteNoAddr(READ, deviceId);
      0006DC 90 00 29         [24] 1264 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      0006DF EF               [12] 1265 	mov	a,r7
      0006E0 F0               [24] 1266 	movx	@dptr,a
      0006E1 75 82 01         [24] 1267 	mov	dpl,#0x01
      0006E4 12 05 30         [24] 1268 	lcall	_sendControlByteNoAddr
                                   1269 ;	src/i2c.c:276: if (checkAcknowledgement() == FAIL)
      0006E7 12 04 0E         [24] 1270 	lcall	_checkAcknowledgement
      0006EA AE 82            [24] 1271 	mov	r6,dpl
      0006EC AF 83            [24] 1272 	mov	r7,dph
      0006EE BE FF 33         [24] 1273 	cjne	r6,#0xff,00107$
      0006F1 BF FF 30         [24] 1274 	cjne	r7,#0xff,00107$
                                   1275 ;	src/i2c.c:278: ERROR_LOG("%s: Acknowledgement Failed", __func__);
      0006F4 74 98            [12] 1276 	mov	a,#___str_1
      0006F6 C0 E0            [24] 1277 	push	acc
      0006F8 74 4B            [12] 1278 	mov	a,#(___str_1 >> 8)
      0006FA C0 E0            [24] 1279 	push	acc
      0006FC 74 80            [12] 1280 	mov	a,#0x80
      0006FE C0 E0            [24] 1281 	push	acc
      000700 74 6D            [12] 1282 	mov	a,#___str_0
      000702 C0 E0            [24] 1283 	push	acc
      000704 74 4B            [12] 1284 	mov	a,#(___str_0 >> 8)
      000706 C0 E0            [24] 1285 	push	acc
      000708 12 3B B6         [24] 1286 	lcall	_printf_tiny
      00070B E5 81            [12] 1287 	mov	a,sp
      00070D 24 FB            [12] 1288 	add	a,#0xfb
      00070F F5 81            [12] 1289 	mov	sp,a
      000711 74 AC            [12] 1290 	mov	a,#___str_2
      000713 C0 E0            [24] 1291 	push	acc
      000715 74 4B            [12] 1292 	mov	a,#(___str_2 >> 8)
      000717 C0 E0            [24] 1293 	push	acc
      000719 12 3B B6         [24] 1294 	lcall	_printf_tiny
      00071C 15 81            [12] 1295 	dec	sp
      00071E 15 81            [12] 1296 	dec	sp
                                   1297 ;	src/i2c.c:279: return FAIL;
      000720 90 FF FF         [24] 1298 	mov	dptr,#0xffff
      000723 22               [24] 1299 	ret
      000724                       1300 00107$:
                                   1301 ;	src/i2c.c:282: uint8_t dataByte = 0;
      000724 90 00 31         [24] 1302 	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
      000727 E4               [12] 1303 	clr	a
      000728 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	src/i2c.c:283: for (int i = 0; i < 8; i++)
      000729 7E 00            [12] 1306 	mov	r6,#0x00
      00072B 7F 00            [12] 1307 	mov	r7,#0x00
      00072D                       1308 00113$:
      00072D C3               [12] 1309 	clr	c
      00072E EE               [12] 1310 	mov	a,r6
      00072F 94 08            [12] 1311 	subb	a,#0x08
      000731 EF               [12] 1312 	mov	a,r7
      000732 64 80            [12] 1313 	xrl	a,#0x80
      000734 94 80            [12] 1314 	subb	a,#0x80
      000736 50 1E            [24] 1315 	jnc	00108$
                                   1316 ;	src/i2c.c:285: SCL = 1;
                                   1317 ;	assignBit
      000738 D2 93            [12] 1318 	setb	_P1_3
                                   1319 ;	src/i2c.c:287: dataByte = (dataByte << 1) | SDA;
      00073A 90 00 31         [24] 1320 	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
      00073D E0               [24] 1321 	movx	a,@dptr
      00073E 25 E0            [12] 1322 	add	a,acc
      000740 FD               [12] 1323 	mov	r5,a
      000741 A2 92            [12] 1324 	mov	c,_P1_2
      000743 E4               [12] 1325 	clr	a
      000744 33               [12] 1326 	rlc	a
      000745 FC               [12] 1327 	mov	r4,a
      000746 90 00 31         [24] 1328 	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
      000749 4D               [12] 1329 	orl	a,r5
      00074A F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	src/i2c.c:288: NOP;
      00074B 00               [12] 1332 	nop
                                   1333 ;	src/i2c.c:289: SCL = 0;
                                   1334 ;	assignBit
      00074C C2 93            [12] 1335 	clr	_P1_3
                                   1336 ;	src/i2c.c:290: NOP;
      00074E 00               [12] 1337 	nop
                                   1338 ;	src/i2c.c:283: for (int i = 0; i < 8; i++)
      00074F 0E               [12] 1339 	inc	r6
      000750 BE 00 DA         [24] 1340 	cjne	r6,#0x00,00113$
      000753 0F               [12] 1341 	inc	r7
      000754 80 D7            [24] 1342 	sjmp	00113$
      000756                       1343 00108$:
                                   1344 ;	src/i2c.c:292: sendNAcknowledge();
      000756 12 04 4E         [24] 1345 	lcall	_sendNAcknowledge
                                   1346 ;	src/i2c.c:293: stop();
      000759 12 04 35         [24] 1347 	lcall	_stop
                                   1348 ;	src/i2c.c:295: return dataByte;
      00075C 90 00 31         [24] 1349 	mov	dptr,#_readRegisterMAXWing_dataByte_65538_65
      00075F E0               [24] 1350 	movx	a,@dptr
      000760 FF               [12] 1351 	mov	r7,a
      000761 7E 00            [12] 1352 	mov	r6,#0x00
      000763 8F 82            [24] 1353 	mov	dpl,r7
      000765 8E 83            [24] 1354 	mov	dph,r6
                                   1355 ;	src/i2c.c:296: }
      000767 22               [24] 1356 	ret
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'readBytesMAXWing'
                                   1359 ;------------------------------------------------------------
                                   1360 ;regAddr                   Allocated with name '_readBytesMAXWing_PARM_2'
                                   1361 ;dataArray                 Allocated with name '_readBytesMAXWing_PARM_3'
                                   1362 ;size                      Allocated with name '_readBytesMAXWing_PARM_4'
                                   1363 ;deviceId                  Allocated with name '_readBytesMAXWing_deviceId_65536_68'
                                   1364 ;regAddressMsbFirst        Allocated with name '_readBytesMAXWing_regAddressMsbFirst_65537_71'
                                   1365 ;i                         Allocated with name '_readBytesMAXWing_i_131073_72'
                                   1366 ;k                         Allocated with name '_readBytesMAXWing_k_131073_76'
                                   1367 ;dataByte                  Allocated with name '_readBytesMAXWing_dataByte_196609_77'
                                   1368 ;i                         Allocated with name '_readBytesMAXWing_i_262145_78'
                                   1369 ;------------------------------------------------------------
                                   1370 ;	src/i2c.c:308: int readBytesMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t dataArray[], uint8_t size)
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function readBytesMAXWing
                                   1373 ;	-----------------------------------------
      000768                       1374 _readBytesMAXWing:
      000768 E5 82            [12] 1375 	mov	a,dpl
      00076A 90 00 37         [24] 1376 	mov	dptr,#_readBytesMAXWing_deviceId_65536_68
      00076D F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	src/i2c.c:310: start();
      00076E 12 04 28         [24] 1379 	lcall	_start
                                   1380 ;	src/i2c.c:311: sendControlByteNoAddr(WRITE, deviceId);
      000771 90 00 37         [24] 1381 	mov	dptr,#_readBytesMAXWing_deviceId_65536_68
      000774 E0               [24] 1382 	movx	a,@dptr
      000775 FF               [12] 1383 	mov	r7,a
      000776 90 00 29         [24] 1384 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000779 F0               [24] 1385 	movx	@dptr,a
      00077A 75 82 00         [24] 1386 	mov	dpl,#0x00
      00077D C0 07            [24] 1387 	push	ar7
      00077F 12 05 30         [24] 1388 	lcall	_sendControlByteNoAddr
                                   1389 ;	src/i2c.c:312: if (checkAcknowledgement() == FAIL)
      000782 12 04 0E         [24] 1390 	lcall	_checkAcknowledgement
      000785 AD 82            [24] 1391 	mov	r5,dpl
      000787 AE 83            [24] 1392 	mov	r6,dph
      000789 D0 07            [24] 1393 	pop	ar7
      00078B BD FF 33         [24] 1394 	cjne	r5,#0xff,00102$
      00078E BE FF 30         [24] 1395 	cjne	r6,#0xff,00102$
                                   1396 ;	src/i2c.c:314: ERROR_LOG("%s: Acknowledgement Failed", __func__);
      000791 74 D9            [12] 1397 	mov	a,#___str_4
      000793 C0 E0            [24] 1398 	push	acc
      000795 74 4B            [12] 1399 	mov	a,#(___str_4 >> 8)
      000797 C0 E0            [24] 1400 	push	acc
      000799 74 80            [12] 1401 	mov	a,#0x80
      00079B C0 E0            [24] 1402 	push	acc
      00079D 74 6D            [12] 1403 	mov	a,#___str_0
      00079F C0 E0            [24] 1404 	push	acc
      0007A1 74 4B            [12] 1405 	mov	a,#(___str_0 >> 8)
      0007A3 C0 E0            [24] 1406 	push	acc
      0007A5 12 3B B6         [24] 1407 	lcall	_printf_tiny
      0007A8 E5 81            [12] 1408 	mov	a,sp
      0007AA 24 FB            [12] 1409 	add	a,#0xfb
      0007AC F5 81            [12] 1410 	mov	sp,a
      0007AE 74 AC            [12] 1411 	mov	a,#___str_2
      0007B0 C0 E0            [24] 1412 	push	acc
      0007B2 74 4B            [12] 1413 	mov	a,#(___str_2 >> 8)
      0007B4 C0 E0            [24] 1414 	push	acc
      0007B6 12 3B B6         [24] 1415 	lcall	_printf_tiny
      0007B9 15 81            [12] 1416 	dec	sp
      0007BB 15 81            [12] 1417 	dec	sp
                                   1418 ;	src/i2c.c:315: return FAIL;
      0007BD 90 FF FF         [24] 1419 	mov	dptr,#0xffff
      0007C0 22               [24] 1420 	ret
      0007C1                       1421 00102$:
                                   1422 ;	src/i2c.c:318: uint8_t regAddressMsbFirst = reverse(regAddr);
      0007C1 90 00 32         [24] 1423 	mov	dptr,#_readBytesMAXWing_PARM_2
      0007C4 E0               [24] 1424 	movx	a,@dptr
      0007C5 F5 82            [12] 1425 	mov	dpl,a
      0007C7 C0 07            [24] 1426 	push	ar7
      0007C9 12 04 58         [24] 1427 	lcall	_reverse
      0007CC E5 82            [12] 1428 	mov	a,dpl
      0007CE D0 07            [24] 1429 	pop	ar7
      0007D0 90 00 38         [24] 1430 	mov	dptr,#_readBytesMAXWing_regAddressMsbFirst_65537_71
      0007D3 F0               [24] 1431 	movx	@dptr,a
                                   1432 ;	src/i2c.c:319: for (int i = 0; i < 8; i++)
      0007D4 7D 00            [12] 1433 	mov	r5,#0x00
      0007D6 7E 00            [12] 1434 	mov	r6,#0x00
      0007D8                       1435 00114$:
      0007D8 C3               [12] 1436 	clr	c
      0007D9 ED               [12] 1437 	mov	a,r5
      0007DA 94 08            [12] 1438 	subb	a,#0x08
      0007DC EE               [12] 1439 	mov	a,r6
      0007DD 64 80            [12] 1440 	xrl	a,#0x80
      0007DF 94 80            [12] 1441 	subb	a,#0x80
      0007E1 50 25            [24] 1442 	jnc	00103$
                                   1443 ;	src/i2c.c:321: SDA = regAddressMsbFirst & 0x01;
      0007E3 90 00 38         [24] 1444 	mov	dptr,#_readBytesMAXWing_regAddressMsbFirst_65537_71
      0007E6 E0               [24] 1445 	movx	a,@dptr
      0007E7 FC               [12] 1446 	mov	r4,a
      0007E8 54 01            [12] 1447 	anl	a,#0x01
                                   1448 ;	assignBit
      0007EA 24 FF            [12] 1449 	add	a,#0xff
      0007EC 92 92            [24] 1450 	mov	_P1_2,c
                                   1451 ;	src/i2c.c:322: regAddressMsbFirst >>= 1;
      0007EE EC               [12] 1452 	mov	a,r4
      0007EF C3               [12] 1453 	clr	c
      0007F0 13               [12] 1454 	rrc	a
      0007F1 F0               [24] 1455 	movx	@dptr,a
                                   1456 ;	src/i2c.c:323: clock();
      0007F2 C0 07            [24] 1457 	push	ar7
      0007F4 C0 06            [24] 1458 	push	ar6
      0007F6 C0 05            [24] 1459 	push	ar5
      0007F8 12 04 05         [24] 1460 	lcall	_clock
      0007FB D0 05            [24] 1461 	pop	ar5
      0007FD D0 06            [24] 1462 	pop	ar6
      0007FF D0 07            [24] 1463 	pop	ar7
                                   1464 ;	src/i2c.c:319: for (int i = 0; i < 8; i++)
      000801 0D               [12] 1465 	inc	r5
      000802 BD 00 D3         [24] 1466 	cjne	r5,#0x00,00114$
      000805 0E               [12] 1467 	inc	r6
      000806 80 D0            [24] 1468 	sjmp	00114$
      000808                       1469 00103$:
                                   1470 ;	src/i2c.c:325: if (checkAcknowledgement() == FAIL)
      000808 C0 07            [24] 1471 	push	ar7
      00080A 12 04 0E         [24] 1472 	lcall	_checkAcknowledgement
      00080D AD 82            [24] 1473 	mov	r5,dpl
      00080F AE 83            [24] 1474 	mov	r6,dph
      000811 D0 07            [24] 1475 	pop	ar7
      000813 BD FF 33         [24] 1476 	cjne	r5,#0xff,00105$
      000816 BE FF 30         [24] 1477 	cjne	r6,#0xff,00105$
                                   1478 ;	src/i2c.c:327: ERROR_LOG("%s Read address failed!", __func__);
      000819 74 D9            [12] 1479 	mov	a,#___str_4
      00081B C0 E0            [24] 1480 	push	acc
      00081D 74 4B            [12] 1481 	mov	a,#(___str_4 >> 8)
      00081F C0 E0            [24] 1482 	push	acc
      000821 74 80            [12] 1483 	mov	a,#0x80
      000823 C0 E0            [24] 1484 	push	acc
      000825 74 B1            [12] 1485 	mov	a,#___str_3
      000827 C0 E0            [24] 1486 	push	acc
      000829 74 4B            [12] 1487 	mov	a,#(___str_3 >> 8)
      00082B C0 E0            [24] 1488 	push	acc
      00082D 12 3B B6         [24] 1489 	lcall	_printf_tiny
      000830 E5 81            [12] 1490 	mov	a,sp
      000832 24 FB            [12] 1491 	add	a,#0xfb
      000834 F5 81            [12] 1492 	mov	sp,a
      000836 74 AC            [12] 1493 	mov	a,#___str_2
      000838 C0 E0            [24] 1494 	push	acc
      00083A 74 4B            [12] 1495 	mov	a,#(___str_2 >> 8)
      00083C C0 E0            [24] 1496 	push	acc
      00083E 12 3B B6         [24] 1497 	lcall	_printf_tiny
      000841 15 81            [12] 1498 	dec	sp
      000843 15 81            [12] 1499 	dec	sp
                                   1500 ;	src/i2c.c:328: return FAIL;
      000845 90 FF FF         [24] 1501 	mov	dptr,#0xffff
      000848 22               [24] 1502 	ret
      000849                       1503 00105$:
                                   1504 ;	src/i2c.c:331: start();
      000849 C0 07            [24] 1505 	push	ar7
      00084B 12 04 28         [24] 1506 	lcall	_start
      00084E D0 07            [24] 1507 	pop	ar7
                                   1508 ;	src/i2c.c:332: sendControlByteNoAddr(READ, deviceId);
      000850 90 00 29         [24] 1509 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000853 EF               [12] 1510 	mov	a,r7
      000854 F0               [24] 1511 	movx	@dptr,a
      000855 75 82 01         [24] 1512 	mov	dpl,#0x01
      000858 12 05 30         [24] 1513 	lcall	_sendControlByteNoAddr
                                   1514 ;	src/i2c.c:333: if (checkAcknowledgement() == FAIL)
      00085B 12 04 0E         [24] 1515 	lcall	_checkAcknowledgement
      00085E AE 82            [24] 1516 	mov	r6,dpl
      000860 AF 83            [24] 1517 	mov	r7,dph
      000862 BE FF 33         [24] 1518 	cjne	r6,#0xff,00133$
      000865 BF FF 30         [24] 1519 	cjne	r7,#0xff,00133$
                                   1520 ;	src/i2c.c:335: ERROR_LOG("%s: Acknowledgement Failed", __func__);
      000868 74 D9            [12] 1521 	mov	a,#___str_4
      00086A C0 E0            [24] 1522 	push	acc
      00086C 74 4B            [12] 1523 	mov	a,#(___str_4 >> 8)
      00086E C0 E0            [24] 1524 	push	acc
      000870 74 80            [12] 1525 	mov	a,#0x80
      000872 C0 E0            [24] 1526 	push	acc
      000874 74 6D            [12] 1527 	mov	a,#___str_0
      000876 C0 E0            [24] 1528 	push	acc
      000878 74 4B            [12] 1529 	mov	a,#(___str_0 >> 8)
      00087A C0 E0            [24] 1530 	push	acc
      00087C 12 3B B6         [24] 1531 	lcall	_printf_tiny
      00087F E5 81            [12] 1532 	mov	a,sp
      000881 24 FB            [12] 1533 	add	a,#0xfb
      000883 F5 81            [12] 1534 	mov	sp,a
      000885 74 AC            [12] 1535 	mov	a,#___str_2
      000887 C0 E0            [24] 1536 	push	acc
      000889 74 4B            [12] 1537 	mov	a,#(___str_2 >> 8)
      00088B C0 E0            [24] 1538 	push	acc
      00088D 12 3B B6         [24] 1539 	lcall	_printf_tiny
      000890 15 81            [12] 1540 	dec	sp
      000892 15 81            [12] 1541 	dec	sp
                                   1542 ;	src/i2c.c:336: return FAIL;
      000894 90 FF FF         [24] 1543 	mov	dptr,#0xffff
      000897 22               [24] 1544 	ret
                                   1545 ;	src/i2c.c:339: for (uint8_t k = 0; k < size; k++)
      000898                       1546 00133$:
      000898 90 00 33         [24] 1547 	mov	dptr,#_readBytesMAXWing_PARM_3
      00089B E0               [24] 1548 	movx	a,@dptr
      00089C FD               [12] 1549 	mov	r5,a
      00089D A3               [24] 1550 	inc	dptr
      00089E E0               [24] 1551 	movx	a,@dptr
      00089F FE               [12] 1552 	mov	r6,a
      0008A0 A3               [24] 1553 	inc	dptr
      0008A1 E0               [24] 1554 	movx	a,@dptr
      0008A2 FF               [12] 1555 	mov	r7,a
      0008A3 90 00 36         [24] 1556 	mov	dptr,#_readBytesMAXWing_PARM_4
      0008A6 E0               [24] 1557 	movx	a,@dptr
      0008A7 FC               [12] 1558 	mov	r4,a
      0008A8 7B 00            [12] 1559 	mov	r3,#0x00
      0008AA                       1560 00120$:
      0008AA C3               [12] 1561 	clr	c
      0008AB EB               [12] 1562 	mov	a,r3
      0008AC 9C               [12] 1563 	subb	a,r4
      0008AD 40 03            [24] 1564 	jc	00175$
      0008AF 02 09 61         [24] 1565 	ljmp	00112$
      0008B2                       1566 00175$:
                                   1567 ;	src/i2c.c:341: uint8_t dataByte = 0;
      0008B2 90 00 39         [24] 1568 	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
      0008B5 E4               [12] 1569 	clr	a
      0008B6 F0               [24] 1570 	movx	@dptr,a
                                   1571 ;	src/i2c.c:342: for (int i = 0; i < 8; i++)
      0008B7 79 00            [12] 1572 	mov	r1,#0x00
      0008B9 7A 00            [12] 1573 	mov	r2,#0x00
      0008BB                       1574 00117$:
      0008BB C3               [12] 1575 	clr	c
      0008BC E9               [12] 1576 	mov	a,r1
      0008BD 94 08            [12] 1577 	subb	a,#0x08
      0008BF EA               [12] 1578 	mov	a,r2
      0008C0 64 80            [12] 1579 	xrl	a,#0x80
      0008C2 94 80            [12] 1580 	subb	a,#0x80
      0008C4 50 2A            [24] 1581 	jnc	00108$
                                   1582 ;	src/i2c.c:344: SCL = 1;
      0008C6 C0 05            [24] 1583 	push	ar5
      0008C8 C0 06            [24] 1584 	push	ar6
      0008CA C0 07            [24] 1585 	push	ar7
                                   1586 ;	assignBit
      0008CC D2 93            [12] 1587 	setb	_P1_3
                                   1588 ;	src/i2c.c:346: dataByte = (dataByte << 1) | SDA;
      0008CE 90 00 39         [24] 1589 	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
      0008D1 E0               [24] 1590 	movx	a,@dptr
      0008D2 25 E0            [12] 1591 	add	a,acc
      0008D4 F8               [12] 1592 	mov	r0,a
      0008D5 A2 92            [12] 1593 	mov	c,_P1_2
      0008D7 E4               [12] 1594 	clr	a
      0008D8 33               [12] 1595 	rlc	a
      0008D9 FF               [12] 1596 	mov	r7,a
      0008DA 90 00 39         [24] 1597 	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
      0008DD 48               [12] 1598 	orl	a,r0
      0008DE F0               [24] 1599 	movx	@dptr,a
                                   1600 ;	src/i2c.c:347: NOP;
      0008DF 00               [12] 1601 	nop
                                   1602 ;	src/i2c.c:348: SCL = 0;
                                   1603 ;	assignBit
      0008E0 C2 93            [12] 1604 	clr	_P1_3
                                   1605 ;	src/i2c.c:349: NOP;
      0008E2 00               [12] 1606 	nop
                                   1607 ;	src/i2c.c:342: for (int i = 0; i < 8; i++)
      0008E3 09               [12] 1608 	inc	r1
      0008E4 B9 00 01         [24] 1609 	cjne	r1,#0x00,00177$
      0008E7 0A               [12] 1610 	inc	r2
      0008E8                       1611 00177$:
      0008E8 D0 07            [24] 1612 	pop	ar7
      0008EA D0 06            [24] 1613 	pop	ar6
      0008EC D0 05            [24] 1614 	pop	ar5
      0008EE 80 CB            [24] 1615 	sjmp	00117$
      0008F0                       1616 00108$:
                                   1617 ;	src/i2c.c:352: dataArray[k] = dataByte;
      0008F0 EB               [12] 1618 	mov	a,r3
      0008F1 2D               [12] 1619 	add	a,r5
      0008F2 F8               [12] 1620 	mov	r0,a
      0008F3 E4               [12] 1621 	clr	a
      0008F4 3E               [12] 1622 	addc	a,r6
      0008F5 F9               [12] 1623 	mov	r1,a
      0008F6 8F 02            [24] 1624 	mov	ar2,r7
      0008F8 C0 05            [24] 1625 	push	ar5
      0008FA C0 06            [24] 1626 	push	ar6
      0008FC C0 07            [24] 1627 	push	ar7
      0008FE 90 00 39         [24] 1628 	mov	dptr,#_readBytesMAXWing_dataByte_196609_77
      000901 E0               [24] 1629 	movx	a,@dptr
      000902 88 82            [24] 1630 	mov	dpl,r0
      000904 89 83            [24] 1631 	mov	dph,r1
      000906 8A F0            [24] 1632 	mov	b,r2
      000908 12 3B 9B         [24] 1633 	lcall	__gptrput
                                   1634 ;	src/i2c.c:355: if (k < size - 1)
      00090B 8C 06            [24] 1635 	mov	ar6,r4
      00090D 7F 00            [12] 1636 	mov	r7,#0x00
      00090F 1E               [12] 1637 	dec	r6
      000910 BE FF 01         [24] 1638 	cjne	r6,#0xff,00178$
      000913 1F               [12] 1639 	dec	r7
      000914                       1640 00178$:
      000914 8B 02            [24] 1641 	mov	ar2,r3
      000916 7D 00            [12] 1642 	mov	r5,#0x00
      000918 C3               [12] 1643 	clr	c
      000919 EA               [12] 1644 	mov	a,r2
      00091A 9E               [12] 1645 	subb	a,r6
      00091B ED               [12] 1646 	mov	a,r5
      00091C 64 80            [12] 1647 	xrl	a,#0x80
      00091E 8F F0            [24] 1648 	mov	b,r7
      000920 63 F0 80         [24] 1649 	xrl	b,#0x80
      000923 95 F0            [12] 1650 	subb	a,b
      000925 D0 07            [24] 1651 	pop	ar7
      000927 D0 06            [24] 1652 	pop	ar6
      000929 D0 05            [24] 1653 	pop	ar5
      00092B 50 19            [24] 1654 	jnc	00110$
                                   1655 ;	src/i2c.c:357: sendAcknowledge();
      00092D C0 07            [24] 1656 	push	ar7
      00092F C0 06            [24] 1657 	push	ar6
      000931 C0 05            [24] 1658 	push	ar5
      000933 C0 04            [24] 1659 	push	ar4
      000935 C0 03            [24] 1660 	push	ar3
      000937 12 04 42         [24] 1661 	lcall	_sendAcknowledge
      00093A D0 03            [24] 1662 	pop	ar3
      00093C D0 04            [24] 1663 	pop	ar4
      00093E D0 05            [24] 1664 	pop	ar5
      000940 D0 06            [24] 1665 	pop	ar6
      000942 D0 07            [24] 1666 	pop	ar7
      000944 80 17            [24] 1667 	sjmp	00121$
      000946                       1668 00110$:
                                   1669 ;	src/i2c.c:361: sendNAcknowledge();
      000946 C0 07            [24] 1670 	push	ar7
      000948 C0 06            [24] 1671 	push	ar6
      00094A C0 05            [24] 1672 	push	ar5
      00094C C0 04            [24] 1673 	push	ar4
      00094E C0 03            [24] 1674 	push	ar3
      000950 12 04 4E         [24] 1675 	lcall	_sendNAcknowledge
      000953 D0 03            [24] 1676 	pop	ar3
      000955 D0 04            [24] 1677 	pop	ar4
      000957 D0 05            [24] 1678 	pop	ar5
      000959 D0 06            [24] 1679 	pop	ar6
      00095B D0 07            [24] 1680 	pop	ar7
      00095D                       1681 00121$:
                                   1682 ;	src/i2c.c:339: for (uint8_t k = 0; k < size; k++)
      00095D 0B               [12] 1683 	inc	r3
      00095E 02 08 AA         [24] 1684 	ljmp	00120$
      000961                       1685 00112$:
                                   1686 ;	src/i2c.c:364: stop();
      000961 12 04 35         [24] 1687 	lcall	_stop
                                   1688 ;	src/i2c.c:366: return SUCCESS;
      000964 90 00 00         [24] 1689 	mov	dptr,#0x0000
                                   1690 ;	src/i2c.c:367: }
      000967 22               [24] 1691 	ret
                                   1692 ;------------------------------------------------------------
                                   1693 ;Allocation info for local variables in function 'writeRegisterMAXWing'
                                   1694 ;------------------------------------------------------------
                                   1695 ;regAddr                   Allocated with name '_writeRegisterMAXWing_PARM_2'
                                   1696 ;regVal                    Allocated with name '_writeRegisterMAXWing_PARM_3'
                                   1697 ;deviceId                  Allocated with name '_writeRegisterMAXWing_deviceId_65536_82'
                                   1698 ;regAddressMsbFirst        Allocated with name '_writeRegisterMAXWing_regAddressMsbFirst_65537_85'
                                   1699 ;i                         Allocated with name '_writeRegisterMAXWing_i_131073_86'
                                   1700 ;databyteMsbFirst          Allocated with name '_writeRegisterMAXWing_databyteMsbFirst_65538_89'
                                   1701 ;i                         Allocated with name '_writeRegisterMAXWing_i_131074_90'
                                   1702 ;------------------------------------------------------------
                                   1703 ;	src/i2c.c:377: int writeRegisterMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
                                   1704 ;	-----------------------------------------
                                   1705 ;	 function writeRegisterMAXWing
                                   1706 ;	-----------------------------------------
      000968                       1707 _writeRegisterMAXWing:
      000968 E5 82            [12] 1708 	mov	a,dpl
      00096A 90 00 3C         [24] 1709 	mov	dptr,#_writeRegisterMAXWing_deviceId_65536_82
      00096D F0               [24] 1710 	movx	@dptr,a
                                   1711 ;	src/i2c.c:379: start();
      00096E 12 04 28         [24] 1712 	lcall	_start
                                   1713 ;	src/i2c.c:380: sendControlByteNoAddr(WRITE, deviceId);
      000971 90 00 3C         [24] 1714 	mov	dptr,#_writeRegisterMAXWing_deviceId_65536_82
      000974 E0               [24] 1715 	movx	a,@dptr
      000975 90 00 29         [24] 1716 	mov	dptr,#_sendControlByteNoAddr_PARM_2
      000978 F0               [24] 1717 	movx	@dptr,a
      000979 75 82 00         [24] 1718 	mov	dpl,#0x00
      00097C 12 05 30         [24] 1719 	lcall	_sendControlByteNoAddr
                                   1720 ;	src/i2c.c:381: if (checkAcknowledgement() == FAIL)
      00097F 12 04 0E         [24] 1721 	lcall	_checkAcknowledgement
      000982 AE 82            [24] 1722 	mov	r6,dpl
      000984 AF 83            [24] 1723 	mov	r7,dph
      000986 BE FF 2F         [24] 1724 	cjne	r6,#0xff,00102$
      000989 BF FF 2C         [24] 1725 	cjne	r7,#0xff,00102$
                                   1726 ;	src/i2c.c:383: ERROR_LOG("%s: Acknowledgement Failed", __func__);
      00098C 74 EA            [12] 1727 	mov	a,#___str_5
      00098E C0 E0            [24] 1728 	push	acc
      000990 74 4B            [12] 1729 	mov	a,#(___str_5 >> 8)
      000992 C0 E0            [24] 1730 	push	acc
      000994 74 80            [12] 1731 	mov	a,#0x80
      000996 C0 E0            [24] 1732 	push	acc
      000998 74 6D            [12] 1733 	mov	a,#___str_0
      00099A C0 E0            [24] 1734 	push	acc
      00099C 74 4B            [12] 1735 	mov	a,#(___str_0 >> 8)
      00099E C0 E0            [24] 1736 	push	acc
      0009A0 12 3B B6         [24] 1737 	lcall	_printf_tiny
      0009A3 E5 81            [12] 1738 	mov	a,sp
      0009A5 24 FB            [12] 1739 	add	a,#0xfb
      0009A7 F5 81            [12] 1740 	mov	sp,a
      0009A9 74 AC            [12] 1741 	mov	a,#___str_2
      0009AB C0 E0            [24] 1742 	push	acc
      0009AD 74 4B            [12] 1743 	mov	a,#(___str_2 >> 8)
      0009AF C0 E0            [24] 1744 	push	acc
      0009B1 12 3B B6         [24] 1745 	lcall	_printf_tiny
      0009B4 15 81            [12] 1746 	dec	sp
      0009B6 15 81            [12] 1747 	dec	sp
      0009B8                       1748 00102$:
                                   1749 ;	src/i2c.c:385: uint8_t regAddressMsbFirst = reverse(regAddr);
      0009B8 90 00 3A         [24] 1750 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      0009BB E0               [24] 1751 	movx	a,@dptr
      0009BC F5 82            [12] 1752 	mov	dpl,a
      0009BE 12 04 58         [24] 1753 	lcall	_reverse
      0009C1 E5 82            [12] 1754 	mov	a,dpl
      0009C3 90 00 3D         [24] 1755 	mov	dptr,#_writeRegisterMAXWing_regAddressMsbFirst_65537_85
      0009C6 F0               [24] 1756 	movx	@dptr,a
                                   1757 ;	src/i2c.c:386: for (int i = 0; i < 8; i++)
      0009C7 7E 00            [12] 1758 	mov	r6,#0x00
      0009C9 7F 00            [12] 1759 	mov	r7,#0x00
      0009CB                       1760 00110$:
      0009CB C3               [12] 1761 	clr	c
      0009CC EE               [12] 1762 	mov	a,r6
      0009CD 94 08            [12] 1763 	subb	a,#0x08
      0009CF EF               [12] 1764 	mov	a,r7
      0009D0 64 80            [12] 1765 	xrl	a,#0x80
      0009D2 94 80            [12] 1766 	subb	a,#0x80
      0009D4 50 21            [24] 1767 	jnc	00103$
                                   1768 ;	src/i2c.c:388: SDA = regAddressMsbFirst & 0x01;
      0009D6 90 00 3D         [24] 1769 	mov	dptr,#_writeRegisterMAXWing_regAddressMsbFirst_65537_85
      0009D9 E0               [24] 1770 	movx	a,@dptr
      0009DA FD               [12] 1771 	mov	r5,a
      0009DB 54 01            [12] 1772 	anl	a,#0x01
                                   1773 ;	assignBit
      0009DD 24 FF            [12] 1774 	add	a,#0xff
      0009DF 92 92            [24] 1775 	mov	_P1_2,c
                                   1776 ;	src/i2c.c:389: regAddressMsbFirst >>= 1;
      0009E1 ED               [12] 1777 	mov	a,r5
      0009E2 C3               [12] 1778 	clr	c
      0009E3 13               [12] 1779 	rrc	a
      0009E4 F0               [24] 1780 	movx	@dptr,a
                                   1781 ;	src/i2c.c:390: clock();
      0009E5 C0 07            [24] 1782 	push	ar7
      0009E7 C0 06            [24] 1783 	push	ar6
      0009E9 12 04 05         [24] 1784 	lcall	_clock
      0009EC D0 06            [24] 1785 	pop	ar6
      0009EE D0 07            [24] 1786 	pop	ar7
                                   1787 ;	src/i2c.c:386: for (int i = 0; i < 8; i++)
      0009F0 0E               [12] 1788 	inc	r6
      0009F1 BE 00 D7         [24] 1789 	cjne	r6,#0x00,00110$
      0009F4 0F               [12] 1790 	inc	r7
      0009F5 80 D4            [24] 1791 	sjmp	00110$
      0009F7                       1792 00103$:
                                   1793 ;	src/i2c.c:392: if (checkAcknowledgement() == FAIL)
      0009F7 12 04 0E         [24] 1794 	lcall	_checkAcknowledgement
      0009FA AE 82            [24] 1795 	mov	r6,dpl
      0009FC AF 83            [24] 1796 	mov	r7,dph
      0009FE BE FF 33         [24] 1797 	cjne	r6,#0xff,00105$
      000A01 BF FF 30         [24] 1798 	cjne	r7,#0xff,00105$
                                   1799 ;	src/i2c.c:394: ERROR_LOG("%s Read address failed!", __func__);
      000A04 74 EA            [12] 1800 	mov	a,#___str_5
      000A06 C0 E0            [24] 1801 	push	acc
      000A08 74 4B            [12] 1802 	mov	a,#(___str_5 >> 8)
      000A0A C0 E0            [24] 1803 	push	acc
      000A0C 74 80            [12] 1804 	mov	a,#0x80
      000A0E C0 E0            [24] 1805 	push	acc
      000A10 74 B1            [12] 1806 	mov	a,#___str_3
      000A12 C0 E0            [24] 1807 	push	acc
      000A14 74 4B            [12] 1808 	mov	a,#(___str_3 >> 8)
      000A16 C0 E0            [24] 1809 	push	acc
      000A18 12 3B B6         [24] 1810 	lcall	_printf_tiny
      000A1B E5 81            [12] 1811 	mov	a,sp
      000A1D 24 FB            [12] 1812 	add	a,#0xfb
      000A1F F5 81            [12] 1813 	mov	sp,a
      000A21 74 AC            [12] 1814 	mov	a,#___str_2
      000A23 C0 E0            [24] 1815 	push	acc
      000A25 74 4B            [12] 1816 	mov	a,#(___str_2 >> 8)
      000A27 C0 E0            [24] 1817 	push	acc
      000A29 12 3B B6         [24] 1818 	lcall	_printf_tiny
      000A2C 15 81            [12] 1819 	dec	sp
      000A2E 15 81            [12] 1820 	dec	sp
                                   1821 ;	src/i2c.c:395: return FAIL;
      000A30 90 FF FF         [24] 1822 	mov	dptr,#0xffff
      000A33 22               [24] 1823 	ret
      000A34                       1824 00105$:
                                   1825 ;	src/i2c.c:398: uint8_t databyteMsbFirst = reverse(regVal);
      000A34 90 00 3B         [24] 1826 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      000A37 E0               [24] 1827 	movx	a,@dptr
      000A38 F5 82            [12] 1828 	mov	dpl,a
      000A3A 12 04 58         [24] 1829 	lcall	_reverse
      000A3D E5 82            [12] 1830 	mov	a,dpl
      000A3F 90 00 3E         [24] 1831 	mov	dptr,#_writeRegisterMAXWing_databyteMsbFirst_65538_89
      000A42 F0               [24] 1832 	movx	@dptr,a
                                   1833 ;	src/i2c.c:399: for (int i = 0; i < 8; i++)
      000A43 7E 00            [12] 1834 	mov	r6,#0x00
      000A45 7F 00            [12] 1835 	mov	r7,#0x00
      000A47                       1836 00113$:
      000A47 C3               [12] 1837 	clr	c
      000A48 EE               [12] 1838 	mov	a,r6
      000A49 94 08            [12] 1839 	subb	a,#0x08
      000A4B EF               [12] 1840 	mov	a,r7
      000A4C 64 80            [12] 1841 	xrl	a,#0x80
      000A4E 94 80            [12] 1842 	subb	a,#0x80
      000A50 50 21            [24] 1843 	jnc	00106$
                                   1844 ;	src/i2c.c:401: SDA = databyteMsbFirst & 0x01;
      000A52 90 00 3E         [24] 1845 	mov	dptr,#_writeRegisterMAXWing_databyteMsbFirst_65538_89
      000A55 E0               [24] 1846 	movx	a,@dptr
      000A56 FD               [12] 1847 	mov	r5,a
      000A57 54 01            [12] 1848 	anl	a,#0x01
                                   1849 ;	assignBit
      000A59 24 FF            [12] 1850 	add	a,#0xff
      000A5B 92 92            [24] 1851 	mov	_P1_2,c
                                   1852 ;	src/i2c.c:402: databyteMsbFirst >>= 1;
      000A5D ED               [12] 1853 	mov	a,r5
      000A5E C3               [12] 1854 	clr	c
      000A5F 13               [12] 1855 	rrc	a
      000A60 F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	src/i2c.c:403: clock();
      000A61 C0 07            [24] 1858 	push	ar7
      000A63 C0 06            [24] 1859 	push	ar6
      000A65 12 04 05         [24] 1860 	lcall	_clock
      000A68 D0 06            [24] 1861 	pop	ar6
      000A6A D0 07            [24] 1862 	pop	ar7
                                   1863 ;	src/i2c.c:399: for (int i = 0; i < 8; i++)
      000A6C 0E               [12] 1864 	inc	r6
      000A6D BE 00 D7         [24] 1865 	cjne	r6,#0x00,00113$
      000A70 0F               [12] 1866 	inc	r7
      000A71 80 D4            [24] 1867 	sjmp	00113$
      000A73                       1868 00106$:
                                   1869 ;	src/i2c.c:405: if (checkAcknowledgement() == FAIL)
      000A73 12 04 0E         [24] 1870 	lcall	_checkAcknowledgement
      000A76 AE 82            [24] 1871 	mov	r6,dpl
      000A78 AF 83            [24] 1872 	mov	r7,dph
      000A7A BE FF 33         [24] 1873 	cjne	r6,#0xff,00108$
      000A7D BF FF 30         [24] 1874 	cjne	r7,#0xff,00108$
                                   1875 ;	src/i2c.c:407: ERROR_LOG("%s Write data failed!", __func__);
      000A80 74 EA            [12] 1876 	mov	a,#___str_5
      000A82 C0 E0            [24] 1877 	push	acc
      000A84 74 4B            [12] 1878 	mov	a,#(___str_5 >> 8)
      000A86 C0 E0            [24] 1879 	push	acc
      000A88 74 80            [12] 1880 	mov	a,#0x80
      000A8A C0 E0            [24] 1881 	push	acc
      000A8C 74 FF            [12] 1882 	mov	a,#___str_6
      000A8E C0 E0            [24] 1883 	push	acc
      000A90 74 4B            [12] 1884 	mov	a,#(___str_6 >> 8)
      000A92 C0 E0            [24] 1885 	push	acc
      000A94 12 3B B6         [24] 1886 	lcall	_printf_tiny
      000A97 E5 81            [12] 1887 	mov	a,sp
      000A99 24 FB            [12] 1888 	add	a,#0xfb
      000A9B F5 81            [12] 1889 	mov	sp,a
      000A9D 74 AC            [12] 1890 	mov	a,#___str_2
      000A9F C0 E0            [24] 1891 	push	acc
      000AA1 74 4B            [12] 1892 	mov	a,#(___str_2 >> 8)
      000AA3 C0 E0            [24] 1893 	push	acc
      000AA5 12 3B B6         [24] 1894 	lcall	_printf_tiny
      000AA8 15 81            [12] 1895 	dec	sp
      000AAA 15 81            [12] 1896 	dec	sp
                                   1897 ;	src/i2c.c:408: return FAIL;
      000AAC 90 FF FF         [24] 1898 	mov	dptr,#0xffff
      000AAF 22               [24] 1899 	ret
      000AB0                       1900 00108$:
                                   1901 ;	src/i2c.c:410: stop();
                                   1902 ;	src/i2c.c:411: }
      000AB0 02 04 35         [24] 1903 	ljmp	_stop
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'testI2c'
                                   1906 ;------------------------------------------------------------
                                   1907 ;regVal                    Allocated with name '_testI2c_regVal_65536_93'
                                   1908 ;------------------------------------------------------------
                                   1909 ;	src/i2c.c:417: int testI2c()
                                   1910 ;	-----------------------------------------
                                   1911 ;	 function testI2c
                                   1912 ;	-----------------------------------------
      000AB3                       1913 _testI2c:
                                   1914 ;	src/i2c.c:422: regVal = readRegisterMAXWing(MAX30101, 0x0A);
      000AB3 90 00 2E         [24] 1915 	mov	dptr,#_readRegisterMAXWing_PARM_2
      000AB6 74 0A            [12] 1916 	mov	a,#0x0a
      000AB8 F0               [24] 1917 	movx	@dptr,a
      000AB9 75 82 75         [24] 1918 	mov	dpl,#0x75
      000ABC 12 05 F4         [24] 1919 	lcall	_readRegisterMAXWing
      000ABF AE 82            [24] 1920 	mov	r6,dpl
                                   1921 ;	src/i2c.c:423: INFO_LOG("LOG 1: Value at location: %u", regVal);
      000AC1 7F 00            [12] 1922 	mov	r7,#0x00
      000AC3 C0 06            [24] 1923 	push	ar6
      000AC5 C0 07            [24] 1924 	push	ar7
      000AC7 74 25            [12] 1925 	mov	a,#___str_7
      000AC9 C0 E0            [24] 1926 	push	acc
      000ACB 74 4C            [12] 1927 	mov	a,#(___str_7 >> 8)
      000ACD C0 E0            [24] 1928 	push	acc
      000ACF 74 80            [12] 1929 	mov	a,#0x80
      000AD1 C0 E0            [24] 1930 	push	acc
      000AD3 12 3E BF         [24] 1931 	lcall	_printf
      000AD6 E5 81            [12] 1932 	mov	a,sp
      000AD8 24 FB            [12] 1933 	add	a,#0xfb
      000ADA F5 81            [12] 1934 	mov	sp,a
      000ADC 74 AC            [12] 1935 	mov	a,#___str_2
      000ADE C0 E0            [24] 1936 	push	acc
      000AE0 74 4B            [12] 1937 	mov	a,#(___str_2 >> 8)
      000AE2 C0 E0            [24] 1938 	push	acc
      000AE4 12 3B B6         [24] 1939 	lcall	_printf_tiny
      000AE7 15 81            [12] 1940 	dec	sp
      000AE9 15 81            [12] 1941 	dec	sp
                                   1942 ;	src/i2c.c:424: writeRegisterMAXWing(MAX30101, 0x0A, 0x01); // Write Register
      000AEB 90 00 3A         [24] 1943 	mov	dptr,#_writeRegisterMAXWing_PARM_2
      000AEE 74 0A            [12] 1944 	mov	a,#0x0a
      000AF0 F0               [24] 1945 	movx	@dptr,a
      000AF1 90 00 3B         [24] 1946 	mov	dptr,#_writeRegisterMAXWing_PARM_3
      000AF4 74 01            [12] 1947 	mov	a,#0x01
      000AF6 F0               [24] 1948 	movx	@dptr,a
      000AF7 75 82 75         [24] 1949 	mov	dpl,#0x75
      000AFA 12 09 68         [24] 1950 	lcall	_writeRegisterMAXWing
                                   1951 ;	src/i2c.c:425: regVal = readRegisterMAXWing(MAX30101, 0x0A);
      000AFD 90 00 2E         [24] 1952 	mov	dptr,#_readRegisterMAXWing_PARM_2
      000B00 74 0A            [12] 1953 	mov	a,#0x0a
      000B02 F0               [24] 1954 	movx	@dptr,a
      000B03 75 82 75         [24] 1955 	mov	dpl,#0x75
      000B06 12 05 F4         [24] 1956 	lcall	_readRegisterMAXWing
      000B09 AE 82            [24] 1957 	mov	r6,dpl
                                   1958 ;	src/i2c.c:426: INFO_LOG("LOG 2:Value at location: %u", regVal);
      000B0B 7F 00            [12] 1959 	mov	r7,#0x00
      000B0D C0 06            [24] 1960 	push	ar6
      000B0F C0 07            [24] 1961 	push	ar7
      000B11 74 4F            [12] 1962 	mov	a,#___str_8
      000B13 C0 E0            [24] 1963 	push	acc
      000B15 74 4C            [12] 1964 	mov	a,#(___str_8 >> 8)
      000B17 C0 E0            [24] 1965 	push	acc
      000B19 74 80            [12] 1966 	mov	a,#0x80
      000B1B C0 E0            [24] 1967 	push	acc
      000B1D 12 3E BF         [24] 1968 	lcall	_printf
      000B20 E5 81            [12] 1969 	mov	a,sp
      000B22 24 FB            [12] 1970 	add	a,#0xfb
      000B24 F5 81            [12] 1971 	mov	sp,a
      000B26 74 AC            [12] 1972 	mov	a,#___str_2
      000B28 C0 E0            [24] 1973 	push	acc
      000B2A 74 4B            [12] 1974 	mov	a,#(___str_2 >> 8)
      000B2C C0 E0            [24] 1975 	push	acc
      000B2E 12 3B B6         [24] 1976 	lcall	_printf_tiny
      000B31 15 81            [12] 1977 	dec	sp
      000B33 15 81            [12] 1978 	dec	sp
                                   1979 ;	src/i2c.c:428: }
      000B35 22               [24] 1980 	ret
                                   1981 	.area CSEG    (CODE)
                                   1982 	.area CONST   (CODE)
                                   1983 	.area CONST   (CODE)
      004B6D                       1984 ___str_0:
      004B6D 0A                    1985 	.db 0x0a
      004B6E 0D                    1986 	.db 0x0d
      004B6F 1B                    1987 	.db 0x1b
      004B70 5B 31 3B 33 31 6D 45  1988 	.ascii "[1;31mERROR: %s: Acknowledgement Failed"
             52 52 4F 52 3A 20 25
             73 3A 20 41 63 6B 6E
             6F 77 6C 65 64 67 65
             6D 65 6E 74 20 46 61
             69 6C 65 64
      004B97 00                    1989 	.db 0x00
                                   1990 	.area CSEG    (CODE)
                                   1991 	.area CONST   (CODE)
      004B98                       1992 ___str_1:
      004B98 72 65 61 64 52 65 67  1993 	.ascii "readRegisterMAXWing"
             69 73 74 65 72 4D 41
             58 57 69 6E 67
      004BAB 00                    1994 	.db 0x00
                                   1995 	.area CSEG    (CODE)
                                   1996 	.area CONST   (CODE)
      004BAC                       1997 ___str_2:
      004BAC 1B                    1998 	.db 0x1b
      004BAD 5B 30 6D              1999 	.ascii "[0m"
      004BB0 00                    2000 	.db 0x00
                                   2001 	.area CSEG    (CODE)
                                   2002 	.area CONST   (CODE)
      004BB1                       2003 ___str_3:
      004BB1 0A                    2004 	.db 0x0a
      004BB2 0D                    2005 	.db 0x0d
      004BB3 1B                    2006 	.db 0x1b
      004BB4 5B 31 3B 33 31 6D 45  2007 	.ascii "[1;31mERROR: %s Read address failed!"
             52 52 4F 52 3A 20 25
             73 20 52 65 61 64 20
             61 64 64 72 65 73 73
             20 66 61 69 6C 65 64
             21
      004BD8 00                    2008 	.db 0x00
                                   2009 	.area CSEG    (CODE)
                                   2010 	.area CONST   (CODE)
      004BD9                       2011 ___str_4:
      004BD9 72 65 61 64 42 79 74  2012 	.ascii "readBytesMAXWing"
             65 73 4D 41 58 57 69
             6E 67
      004BE9 00                    2013 	.db 0x00
                                   2014 	.area CSEG    (CODE)
                                   2015 	.area CONST   (CODE)
      004BEA                       2016 ___str_5:
      004BEA 77 72 69 74 65 52 65  2017 	.ascii "writeRegisterMAXWing"
             67 69 73 74 65 72 4D
             41 58 57 69 6E 67
      004BFE 00                    2018 	.db 0x00
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      004BFF                       2021 ___str_6:
      004BFF 0A                    2022 	.db 0x0a
      004C00 0D                    2023 	.db 0x0d
      004C01 1B                    2024 	.db 0x1b
      004C02 5B 31 3B 33 31 6D 45  2025 	.ascii "[1;31mERROR: %s Write data failed!"
             52 52 4F 52 3A 20 25
             73 20 57 72 69 74 65
             20 64 61 74 61 20 66
             61 69 6C 65 64 21
      004C24 00                    2026 	.db 0x00
                                   2027 	.area CSEG    (CODE)
                                   2028 	.area CONST   (CODE)
      004C25                       2029 ___str_7:
      004C25 0A                    2030 	.db 0x0a
      004C26 0D                    2031 	.db 0x0d
      004C27 1B                    2032 	.db 0x1b
      004C28 5B 33 38 3B 35 3B 32  2033 	.ascii "[38;5;214mLOG 1: Value at location: %u"
             31 34 6D 4C 4F 47 20
             31 3A 20 56 61 6C 75
             65 20 61 74 20 6C 6F
             63 61 74 69 6F 6E 3A
             20 25 75
      004C4E 00                    2034 	.db 0x00
                                   2035 	.area CSEG    (CODE)
                                   2036 	.area CONST   (CODE)
      004C4F                       2037 ___str_8:
      004C4F 0A                    2038 	.db 0x0a
      004C50 0D                    2039 	.db 0x0d
      004C51 1B                    2040 	.db 0x1b
      004C52 5B 33 38 3B 35 3B 32  2041 	.ascii "[38;5;214mLOG 2:Value at location: %u"
             31 34 6D 4C 4F 47 20
             32 3A 56 61 6C 75 65
             20 61 74 20 6C 6F 63
             61 74 69 6F 6E 3A 20
             25 75
      004C77 00                    2042 	.db 0x00
                                   2043 	.area CSEG    (CODE)
                                   2044 	.area XINIT   (CODE)
                                   2045 	.area CABS    (ABS,CODE)
