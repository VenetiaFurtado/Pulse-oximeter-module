                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _font
                                     12 	.globl _lcdTest
                                     13 	.globl _generateRandom
                                     14 	.globl _glcdPlotIrValue
                                     15 	.globl _glcdInit
                                     16 	.globl _glcdUpdateStatus
                                     17 	.globl _glcdUpdateBpm
                                     18 	.globl _glcdUpdateSpo2
                                     19 	.globl _itoa
                                     20 	.globl _glcdDrawGraph
                                     21 	.globl _absolute
                                     22 	.globl _glcdWriteString
                                     23 	.globl _gcldClearString
                                     24 	.globl _glcdWriteChar
                                     25 	.globl _glcdClear
                                     26 	.globl _setPixel
                                     27 	.globl _glcdRead
                                     28 	.globl _glcdWrite
                                     29 	.globl _glcdGoToAddr
                                     30 	.globl _glcdControllerSelect
                                     31 	.globl _gLcdWriteToRegister
                                     32 	.globl _busyWait
                                     33 	.globl _delay
                                     34 	.globl _printf_tiny
                                     35 	.globl _printf
                                     36 	.globl _P5_7
                                     37 	.globl _P5_6
                                     38 	.globl _P5_5
                                     39 	.globl _P5_4
                                     40 	.globl _P5_3
                                     41 	.globl _P5_2
                                     42 	.globl _P5_1
                                     43 	.globl _P5_0
                                     44 	.globl _P4_7
                                     45 	.globl _P4_6
                                     46 	.globl _P4_5
                                     47 	.globl _P4_4
                                     48 	.globl _P4_3
                                     49 	.globl _P4_2
                                     50 	.globl _P4_1
                                     51 	.globl _P4_0
                                     52 	.globl _PX0L
                                     53 	.globl _PT0L
                                     54 	.globl _PX1L
                                     55 	.globl _PT1L
                                     56 	.globl _PSL
                                     57 	.globl _PT2L
                                     58 	.globl _PPCL
                                     59 	.globl _EC
                                     60 	.globl _CCF0
                                     61 	.globl _CCF1
                                     62 	.globl _CCF2
                                     63 	.globl _CCF3
                                     64 	.globl _CCF4
                                     65 	.globl _CR
                                     66 	.globl _CF
                                     67 	.globl _TF2
                                     68 	.globl _EXF2
                                     69 	.globl _RCLK
                                     70 	.globl _TCLK
                                     71 	.globl _EXEN2
                                     72 	.globl _TR2
                                     73 	.globl _C_T2
                                     74 	.globl _CP_RL2
                                     75 	.globl _T2CON_7
                                     76 	.globl _T2CON_6
                                     77 	.globl _T2CON_5
                                     78 	.globl _T2CON_4
                                     79 	.globl _T2CON_3
                                     80 	.globl _T2CON_2
                                     81 	.globl _T2CON_1
                                     82 	.globl _T2CON_0
                                     83 	.globl _PT2
                                     84 	.globl _ET2
                                     85 	.globl _CY
                                     86 	.globl _AC
                                     87 	.globl _F0
                                     88 	.globl _RS1
                                     89 	.globl _RS0
                                     90 	.globl _OV
                                     91 	.globl _F1
                                     92 	.globl _P
                                     93 	.globl _PS
                                     94 	.globl _PT1
                                     95 	.globl _PX1
                                     96 	.globl _PT0
                                     97 	.globl _PX0
                                     98 	.globl _RD
                                     99 	.globl _WR
                                    100 	.globl _T1
                                    101 	.globl _T0
                                    102 	.globl _INT1
                                    103 	.globl _INT0
                                    104 	.globl _TXD
                                    105 	.globl _RXD
                                    106 	.globl _P3_7
                                    107 	.globl _P3_6
                                    108 	.globl _P3_5
                                    109 	.globl _P3_4
                                    110 	.globl _P3_3
                                    111 	.globl _P3_2
                                    112 	.globl _P3_1
                                    113 	.globl _P3_0
                                    114 	.globl _EA
                                    115 	.globl _ES
                                    116 	.globl _ET1
                                    117 	.globl _EX1
                                    118 	.globl _ET0
                                    119 	.globl _EX0
                                    120 	.globl _P2_7
                                    121 	.globl _P2_6
                                    122 	.globl _P2_5
                                    123 	.globl _P2_4
                                    124 	.globl _P2_3
                                    125 	.globl _P2_2
                                    126 	.globl _P2_1
                                    127 	.globl _P2_0
                                    128 	.globl _SM0
                                    129 	.globl _SM1
                                    130 	.globl _SM2
                                    131 	.globl _REN
                                    132 	.globl _TB8
                                    133 	.globl _RB8
                                    134 	.globl _TI
                                    135 	.globl _RI
                                    136 	.globl _P1_7
                                    137 	.globl _P1_6
                                    138 	.globl _P1_5
                                    139 	.globl _P1_4
                                    140 	.globl _P1_3
                                    141 	.globl _P1_2
                                    142 	.globl _P1_1
                                    143 	.globl _P1_0
                                    144 	.globl _TF1
                                    145 	.globl _TR1
                                    146 	.globl _TF0
                                    147 	.globl _TR0
                                    148 	.globl _IE1
                                    149 	.globl _IT1
                                    150 	.globl _IE0
                                    151 	.globl _IT0
                                    152 	.globl _P0_7
                                    153 	.globl _P0_6
                                    154 	.globl _P0_5
                                    155 	.globl _P0_4
                                    156 	.globl _P0_3
                                    157 	.globl _P0_2
                                    158 	.globl _P0_1
                                    159 	.globl _P0_0
                                    160 	.globl _EECON
                                    161 	.globl _KBF
                                    162 	.globl _KBE
                                    163 	.globl _KBLS
                                    164 	.globl _BRL
                                    165 	.globl _BDRCON
                                    166 	.globl _T2MOD
                                    167 	.globl _SPDAT
                                    168 	.globl _SPSTA
                                    169 	.globl _SPCON
                                    170 	.globl _SADEN
                                    171 	.globl _SADDR
                                    172 	.globl _WDTPRG
                                    173 	.globl _WDTRST
                                    174 	.globl _P5
                                    175 	.globl _P4
                                    176 	.globl _IPH1
                                    177 	.globl _IPL1
                                    178 	.globl _IPH0
                                    179 	.globl _IPL0
                                    180 	.globl _IEN1
                                    181 	.globl _IEN0
                                    182 	.globl _CMOD
                                    183 	.globl _CL
                                    184 	.globl _CH
                                    185 	.globl _CCON
                                    186 	.globl _CCAPM4
                                    187 	.globl _CCAPM3
                                    188 	.globl _CCAPM2
                                    189 	.globl _CCAPM1
                                    190 	.globl _CCAPM0
                                    191 	.globl _CCAP4L
                                    192 	.globl _CCAP3L
                                    193 	.globl _CCAP2L
                                    194 	.globl _CCAP1L
                                    195 	.globl _CCAP0L
                                    196 	.globl _CCAP4H
                                    197 	.globl _CCAP3H
                                    198 	.globl _CCAP2H
                                    199 	.globl _CCAP1H
                                    200 	.globl _CCAP0H
                                    201 	.globl _CKCON1
                                    202 	.globl _CKCON0
                                    203 	.globl _CKRL
                                    204 	.globl _AUXR1
                                    205 	.globl _AUXR
                                    206 	.globl _TH2
                                    207 	.globl _TL2
                                    208 	.globl _RCAP2H
                                    209 	.globl _RCAP2L
                                    210 	.globl _T2CON
                                    211 	.globl _B
                                    212 	.globl _ACC
                                    213 	.globl _PSW
                                    214 	.globl _IP
                                    215 	.globl _P3
                                    216 	.globl _IE
                                    217 	.globl _P2
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _P1
                                    221 	.globl _TH1
                                    222 	.globl _TH0
                                    223 	.globl _TL1
                                    224 	.globl _TL0
                                    225 	.globl _TMOD
                                    226 	.globl _TCON
                                    227 	.globl _PCON
                                    228 	.globl _DPH
                                    229 	.globl _DPL
                                    230 	.globl _SP
                                    231 	.globl _P0
                                    232 	.globl _generateRandom_PARM_2
                                    233 	.globl _previousReadingY
                                    234 	.globl _previousReadingX
                                    235 	.globl _itoa_PARM_2
                                    236 	.globl _glcdDrawGraph_PARM_4
                                    237 	.globl _glcdDrawGraph_PARM_3
                                    238 	.globl _glcdDrawGraph_PARM_2
                                    239 	.globl _absolute_PARM_2
                                    240 	.globl _glcdWriteString_PARM_3
                                    241 	.globl _glcdWriteString_PARM_2
                                    242 	.globl _gcldClearString_PARM_3
                                    243 	.globl _gcldClearString_PARM_2
                                    244 	.globl _glcdWriteChar_PARM_3
                                    245 	.globl _glcdWriteChar_PARM_2
                                    246 	.globl _setPixel_PARM_3
                                    247 	.globl _setPixel_PARM_2
                                    248 	.globl _glcdWrite_PARM_3
                                    249 	.globl _glcdWrite_PARM_2
                                    250 	.globl _glcdGoToAddr_PARM_2
                                    251 	.globl _gLcdWriteToRegister_PARM_2
                                    252 ;--------------------------------------------------------
                                    253 ; special function registers
                                    254 ;--------------------------------------------------------
                                    255 	.area RSEG    (ABS,DATA)
      000000                        256 	.org 0x0000
                           000080   257 _P0	=	0x0080
                           000081   258 _SP	=	0x0081
                           000082   259 _DPL	=	0x0082
                           000083   260 _DPH	=	0x0083
                           000087   261 _PCON	=	0x0087
                           000088   262 _TCON	=	0x0088
                           000089   263 _TMOD	=	0x0089
                           00008A   264 _TL0	=	0x008a
                           00008B   265 _TL1	=	0x008b
                           00008C   266 _TH0	=	0x008c
                           00008D   267 _TH1	=	0x008d
                           000090   268 _P1	=	0x0090
                           000098   269 _SCON	=	0x0098
                           000099   270 _SBUF	=	0x0099
                           0000A0   271 _P2	=	0x00a0
                           0000A8   272 _IE	=	0x00a8
                           0000B0   273 _P3	=	0x00b0
                           0000B8   274 _IP	=	0x00b8
                           0000D0   275 _PSW	=	0x00d0
                           0000E0   276 _ACC	=	0x00e0
                           0000F0   277 _B	=	0x00f0
                           0000C8   278 _T2CON	=	0x00c8
                           0000CA   279 _RCAP2L	=	0x00ca
                           0000CB   280 _RCAP2H	=	0x00cb
                           0000CC   281 _TL2	=	0x00cc
                           0000CD   282 _TH2	=	0x00cd
                           00008E   283 _AUXR	=	0x008e
                           0000A2   284 _AUXR1	=	0x00a2
                           000097   285 _CKRL	=	0x0097
                           00008F   286 _CKCON0	=	0x008f
                           0000AF   287 _CKCON1	=	0x00af
                           0000FA   288 _CCAP0H	=	0x00fa
                           0000FB   289 _CCAP1H	=	0x00fb
                           0000FC   290 _CCAP2H	=	0x00fc
                           0000FD   291 _CCAP3H	=	0x00fd
                           0000FE   292 _CCAP4H	=	0x00fe
                           0000EA   293 _CCAP0L	=	0x00ea
                           0000EB   294 _CCAP1L	=	0x00eb
                           0000EC   295 _CCAP2L	=	0x00ec
                           0000ED   296 _CCAP3L	=	0x00ed
                           0000EE   297 _CCAP4L	=	0x00ee
                           0000DA   298 _CCAPM0	=	0x00da
                           0000DB   299 _CCAPM1	=	0x00db
                           0000DC   300 _CCAPM2	=	0x00dc
                           0000DD   301 _CCAPM3	=	0x00dd
                           0000DE   302 _CCAPM4	=	0x00de
                           0000D8   303 _CCON	=	0x00d8
                           0000F9   304 _CH	=	0x00f9
                           0000E9   305 _CL	=	0x00e9
                           0000D9   306 _CMOD	=	0x00d9
                           0000A8   307 _IEN0	=	0x00a8
                           0000B1   308 _IEN1	=	0x00b1
                           0000B8   309 _IPL0	=	0x00b8
                           0000B7   310 _IPH0	=	0x00b7
                           0000B2   311 _IPL1	=	0x00b2
                           0000B3   312 _IPH1	=	0x00b3
                           0000C0   313 _P4	=	0x00c0
                           0000E8   314 _P5	=	0x00e8
                           0000A6   315 _WDTRST	=	0x00a6
                           0000A7   316 _WDTPRG	=	0x00a7
                           0000A9   317 _SADDR	=	0x00a9
                           0000B9   318 _SADEN	=	0x00b9
                           0000C3   319 _SPCON	=	0x00c3
                           0000C4   320 _SPSTA	=	0x00c4
                           0000C5   321 _SPDAT	=	0x00c5
                           0000C9   322 _T2MOD	=	0x00c9
                           00009B   323 _BDRCON	=	0x009b
                           00009A   324 _BRL	=	0x009a
                           00009C   325 _KBLS	=	0x009c
                           00009D   326 _KBE	=	0x009d
                           00009E   327 _KBF	=	0x009e
                           0000D2   328 _EECON	=	0x00d2
                                    329 ;--------------------------------------------------------
                                    330 ; special function bits
                                    331 ;--------------------------------------------------------
                                    332 	.area RSEG    (ABS,DATA)
      000000                        333 	.org 0x0000
                           000080   334 _P0_0	=	0x0080
                           000081   335 _P0_1	=	0x0081
                           000082   336 _P0_2	=	0x0082
                           000083   337 _P0_3	=	0x0083
                           000084   338 _P0_4	=	0x0084
                           000085   339 _P0_5	=	0x0085
                           000086   340 _P0_6	=	0x0086
                           000087   341 _P0_7	=	0x0087
                           000088   342 _IT0	=	0x0088
                           000089   343 _IE0	=	0x0089
                           00008A   344 _IT1	=	0x008a
                           00008B   345 _IE1	=	0x008b
                           00008C   346 _TR0	=	0x008c
                           00008D   347 _TF0	=	0x008d
                           00008E   348 _TR1	=	0x008e
                           00008F   349 _TF1	=	0x008f
                           000090   350 _P1_0	=	0x0090
                           000091   351 _P1_1	=	0x0091
                           000092   352 _P1_2	=	0x0092
                           000093   353 _P1_3	=	0x0093
                           000094   354 _P1_4	=	0x0094
                           000095   355 _P1_5	=	0x0095
                           000096   356 _P1_6	=	0x0096
                           000097   357 _P1_7	=	0x0097
                           000098   358 _RI	=	0x0098
                           000099   359 _TI	=	0x0099
                           00009A   360 _RB8	=	0x009a
                           00009B   361 _TB8	=	0x009b
                           00009C   362 _REN	=	0x009c
                           00009D   363 _SM2	=	0x009d
                           00009E   364 _SM1	=	0x009e
                           00009F   365 _SM0	=	0x009f
                           0000A0   366 _P2_0	=	0x00a0
                           0000A1   367 _P2_1	=	0x00a1
                           0000A2   368 _P2_2	=	0x00a2
                           0000A3   369 _P2_3	=	0x00a3
                           0000A4   370 _P2_4	=	0x00a4
                           0000A5   371 _P2_5	=	0x00a5
                           0000A6   372 _P2_6	=	0x00a6
                           0000A7   373 _P2_7	=	0x00a7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B0   380 _P3_0	=	0x00b0
                           0000B1   381 _P3_1	=	0x00b1
                           0000B2   382 _P3_2	=	0x00b2
                           0000B3   383 _P3_3	=	0x00b3
                           0000B4   384 _P3_4	=	0x00b4
                           0000B5   385 _P3_5	=	0x00b5
                           0000B6   386 _P3_6	=	0x00b6
                           0000B7   387 _P3_7	=	0x00b7
                           0000B0   388 _RXD	=	0x00b0
                           0000B1   389 _TXD	=	0x00b1
                           0000B2   390 _INT0	=	0x00b2
                           0000B3   391 _INT1	=	0x00b3
                           0000B4   392 _T0	=	0x00b4
                           0000B5   393 _T1	=	0x00b5
                           0000B6   394 _WR	=	0x00b6
                           0000B7   395 _RD	=	0x00b7
                           0000B8   396 _PX0	=	0x00b8
                           0000B9   397 _PT0	=	0x00b9
                           0000BA   398 _PX1	=	0x00ba
                           0000BB   399 _PT1	=	0x00bb
                           0000BC   400 _PS	=	0x00bc
                           0000D0   401 _P	=	0x00d0
                           0000D1   402 _F1	=	0x00d1
                           0000D2   403 _OV	=	0x00d2
                           0000D3   404 _RS0	=	0x00d3
                           0000D4   405 _RS1	=	0x00d4
                           0000D5   406 _F0	=	0x00d5
                           0000D6   407 _AC	=	0x00d6
                           0000D7   408 _CY	=	0x00d7
                           0000AD   409 _ET2	=	0x00ad
                           0000BD   410 _PT2	=	0x00bd
                           0000C8   411 _T2CON_0	=	0x00c8
                           0000C9   412 _T2CON_1	=	0x00c9
                           0000CA   413 _T2CON_2	=	0x00ca
                           0000CB   414 _T2CON_3	=	0x00cb
                           0000CC   415 _T2CON_4	=	0x00cc
                           0000CD   416 _T2CON_5	=	0x00cd
                           0000CE   417 _T2CON_6	=	0x00ce
                           0000CF   418 _T2CON_7	=	0x00cf
                           0000C8   419 _CP_RL2	=	0x00c8
                           0000C9   420 _C_T2	=	0x00c9
                           0000CA   421 _TR2	=	0x00ca
                           0000CB   422 _EXEN2	=	0x00cb
                           0000CC   423 _TCLK	=	0x00cc
                           0000CD   424 _RCLK	=	0x00cd
                           0000CE   425 _EXF2	=	0x00ce
                           0000CF   426 _TF2	=	0x00cf
                           0000DF   427 _CF	=	0x00df
                           0000DE   428 _CR	=	0x00de
                           0000DC   429 _CCF4	=	0x00dc
                           0000DB   430 _CCF3	=	0x00db
                           0000DA   431 _CCF2	=	0x00da
                           0000D9   432 _CCF1	=	0x00d9
                           0000D8   433 _CCF0	=	0x00d8
                           0000AE   434 _EC	=	0x00ae
                           0000BE   435 _PPCL	=	0x00be
                           0000BD   436 _PT2L	=	0x00bd
                           0000BC   437 _PSL	=	0x00bc
                           0000BB   438 _PT1L	=	0x00bb
                           0000BA   439 _PX1L	=	0x00ba
                           0000B9   440 _PT0L	=	0x00b9
                           0000B8   441 _PX0L	=	0x00b8
                           0000C0   442 _P4_0	=	0x00c0
                           0000C1   443 _P4_1	=	0x00c1
                           0000C2   444 _P4_2	=	0x00c2
                           0000C3   445 _P4_3	=	0x00c3
                           0000C4   446 _P4_4	=	0x00c4
                           0000C5   447 _P4_5	=	0x00c5
                           0000C6   448 _P4_6	=	0x00c6
                           0000C7   449 _P4_7	=	0x00c7
                           0000E8   450 _P5_0	=	0x00e8
                           0000E9   451 _P5_1	=	0x00e9
                           0000EA   452 _P5_2	=	0x00ea
                           0000EB   453 _P5_3	=	0x00eb
                           0000EC   454 _P5_4	=	0x00ec
                           0000ED   455 _P5_5	=	0x00ed
                           0000EE   456 _P5_6	=	0x00ee
                           0000EF   457 _P5_7	=	0x00ef
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
      000008                        467 _glcdDrawGraph_sloc0_1_0:
      000008                        468 	.ds 2
      00000A                        469 _glcdDrawGraph_sloc1_1_0:
      00000A                        470 	.ds 2
      00000C                        471 _glcdDrawGraph_sloc2_1_0:
      00000C                        472 	.ds 2
      00000E                        473 _itoa_sloc0_1_0:
      00000E                        474 	.ds 3
      000011                        475 _glcdPlotIrValue_sloc0_1_0:
      000011                        476 	.ds 2
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; indirectly addressable internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area ISEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area IABS    (ABS,DATA)
                                    488 	.area IABS    (ABS,DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; bit data
                                    491 ;--------------------------------------------------------
                                    492 	.area BSEG    (BIT)
                                    493 ;--------------------------------------------------------
                                    494 ; paged external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area PSEG    (PAG,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XSEG    (XDATA)
      00004E                        501 _delay_timeUs_65536_17:
      00004E                        502 	.ds 2
      000050                        503 _gLcdWriteToRegister_PARM_2:
      000050                        504 	.ds 1
      000051                        505 _gLcdWriteToRegister_addr_65536_22:
      000051                        506 	.ds 1
      000052                        507 _gLcdWriteToRegister_ptr_65536_23:
      000052                        508 	.ds 2
      000054                        509 _glcdControllerSelect_column_65536_30:
      000054                        510 	.ds 1
      000055                        511 _glcdGoToAddr_PARM_2:
      000055                        512 	.ds 1
      000056                        513 _glcdGoToAddr_column_65536_34:
      000056                        514 	.ds 1
      000057                        515 _glcdWrite_PARM_2:
      000057                        516 	.ds 1
      000058                        517 _glcdWrite_PARM_3:
      000058                        518 	.ds 1
      000059                        519 _glcdWrite_column_65536_38:
      000059                        520 	.ds 1
      00005A                        521 _glcdRead_column_65536_43:
      00005A                        522 	.ds 1
      00005B                        523 _glcdRead_ptr_65536_44:
      00005B                        524 	.ds 2
      00005D                        525 _setPixel_PARM_2:
      00005D                        526 	.ds 1
      00005E                        527 _setPixel_PARM_3:
      00005E                        528 	.ds 1
      00005F                        529 _setPixel_row_65536_49:
      00005F                        530 	.ds 1
      000060                        531 _setPixel_pageByte_65538_52:
      000060                        532 	.ds 1
      000061                        533 _glcdWriteChar_PARM_2:
      000061                        534 	.ds 1
      000062                        535 _glcdWriteChar_PARM_3:
      000062                        536 	.ds 1
      000063                        537 _glcdWriteChar_column_65536_60:
      000063                        538 	.ds 1
      000064                        539 _gcldClearString_PARM_2:
      000064                        540 	.ds 1
      000065                        541 _gcldClearString_PARM_3:
      000065                        542 	.ds 1
      000066                        543 _gcldClearString_column_65536_64:
      000066                        544 	.ds 1
      000067                        545 _glcdWriteString_PARM_2:
      000067                        546 	.ds 1
      000068                        547 _glcdWriteString_PARM_3:
      000068                        548 	.ds 3
      00006B                        549 _glcdWriteString_column_65536_68:
      00006B                        550 	.ds 1
      00006C                        551 _absolute_PARM_2:
      00006C                        552 	.ds 2
      00006E                        553 _absolute_value1_65536_71:
      00006E                        554 	.ds 2
      000070                        555 _absolute_result_65536_72:
      000070                        556 	.ds 1
      000071                        557 _glcdDrawGraph_PARM_2:
      000071                        558 	.ds 2
      000073                        559 _glcdDrawGraph_PARM_3:
      000073                        560 	.ds 2
      000075                        561 _glcdDrawGraph_PARM_4:
      000075                        562 	.ds 2
      000077                        563 _glcdDrawGraph_x1_65536_75:
      000077                        564 	.ds 2
      000079                        565 _glcdDrawGraph_temp_131072_77:
      000079                        566 	.ds 2
      00007B                        567 _glcdDrawGraph_temp_131072_78:
      00007B                        568 	.ds 2
      00007D                        569 _glcdDrawGraph_error_65537_79:
      00007D                        570 	.ds 2
      00007F                        571 _glcdDrawGraph_yStep_65537_79:
      00007F                        572 	.ds 2
      000081                        573 _glcdDrawGraph_y_65538_82:
      000081                        574 	.ds 2
      000083                        575 _itoa_PARM_2:
      000083                        576 	.ds 3
      000086                        577 _itoa_val_65536_88:
      000086                        578 	.ds 1
      000087                        579 _itoa_digits_65537_91:
      000087                        580 	.ds 3
      00008A                        581 _glcdUpdateSpo2_oxygen_65536_96:
      00008A                        582 	.ds 1
      00008B                        583 _glcdUpdateSpo2_oxygenLevel_65536_97:
      00008B                        584 	.ds 5
      000090                        585 _glcdUpdateBpm_bpm_65536_98:
      000090                        586 	.ds 1
      000091                        587 _glcdUpdateBpm_bpmString_65536_99:
      000091                        588 	.ds 4
      000095                        589 _glcdUpdateStatus_status_65536_100:
      000095                        590 	.ds 3
      000098                        591 _previousReadingX::
      000098                        592 	.ds 1
      000099                        593 _previousReadingY::
      000099                        594 	.ds 1
      00009A                        595 _glcdPlotIrValue_IrValue_65536_103:
      00009A                        596 	.ds 1
      00009B                        597 _glcdPlotIrValue_x_65536_104:
      00009B                        598 	.ds 1
      00009C                        599 _generateRandom_PARM_2:
      00009C                        600 	.ds 2
      00009E                        601 _generateRandom_min_65536_109:
      00009E                        602 	.ds 2
                                    603 ;--------------------------------------------------------
                                    604 ; absolute external ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area XABS    (ABS,XDATA)
                                    607 ;--------------------------------------------------------
                                    608 ; external initialized ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area XISEG   (XDATA)
                                    611 	.area HOME    (CODE)
                                    612 	.area GSINIT0 (CODE)
                                    613 	.area GSINIT1 (CODE)
                                    614 	.area GSINIT2 (CODE)
                                    615 	.area GSINIT3 (CODE)
                                    616 	.area GSINIT4 (CODE)
                                    617 	.area GSINIT5 (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.area GSFINAL (CODE)
                                    620 	.area CSEG    (CODE)
                                    621 ;--------------------------------------------------------
                                    622 ; global & static initialisations
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
                                    625 	.area GSINIT  (CODE)
                                    626 	.area GSFINAL (CODE)
                                    627 	.area GSINIT  (CODE)
                                    628 ;--------------------------------------------------------
                                    629 ; Home
                                    630 ;--------------------------------------------------------
                                    631 	.area HOME    (CODE)
                                    632 	.area HOME    (CODE)
                                    633 ;--------------------------------------------------------
                                    634 ; code
                                    635 ;--------------------------------------------------------
                                    636 	.area CSEG    (CODE)
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'delay'
                                    639 ;------------------------------------------------------------
                                    640 ;timeUs                    Allocated with name '_delay_timeUs_65536_17'
                                    641 ;i                         Allocated with name '_delay_i_131072_19'
                                    642 ;------------------------------------------------------------
                                    643 ;	src/lcd.c:77: void delay(const uint16_t timeUs)
                                    644 ;	-----------------------------------------
                                    645 ;	 function delay
                                    646 ;	-----------------------------------------
      000F17                        647 _delay:
                           000007   648 	ar7 = 0x07
                           000006   649 	ar6 = 0x06
                           000005   650 	ar5 = 0x05
                           000004   651 	ar4 = 0x04
                           000003   652 	ar3 = 0x03
                           000002   653 	ar2 = 0x02
                           000001   654 	ar1 = 0x01
                           000000   655 	ar0 = 0x00
      000F17 AF 83            [24]  656 	mov	r7,dph
      000F19 E5 82            [12]  657 	mov	a,dpl
      000F1B 90 00 4E         [24]  658 	mov	dptr,#_delay_timeUs_65536_17
      000F1E F0               [24]  659 	movx	@dptr,a
      000F1F EF               [12]  660 	mov	a,r7
      000F20 A3               [24]  661 	inc	dptr
      000F21 F0               [24]  662 	movx	@dptr,a
                                    663 ;	src/lcd.c:79: for (uint16_t i = 0; i < timeUs; i++)
      000F22 90 00 4E         [24]  664 	mov	dptr,#_delay_timeUs_65536_17
      000F25 E0               [24]  665 	movx	a,@dptr
      000F26 FE               [12]  666 	mov	r6,a
      000F27 A3               [24]  667 	inc	dptr
      000F28 E0               [24]  668 	movx	a,@dptr
      000F29 FF               [12]  669 	mov	r7,a
      000F2A 7C 00            [12]  670 	mov	r4,#0x00
      000F2C 7D 00            [12]  671 	mov	r5,#0x00
      000F2E                        672 00103$:
      000F2E C3               [12]  673 	clr	c
      000F2F EC               [12]  674 	mov	a,r4
      000F30 9E               [12]  675 	subb	a,r6
      000F31 ED               [12]  676 	mov	a,r5
      000F32 9F               [12]  677 	subb	a,r7
      000F33 50 08            [24]  678 	jnc	00105$
                                    679 ;	src/lcd.c:81: __asm__("nop");
      000F35 00               [12]  680 	nop
                                    681 ;	src/lcd.c:79: for (uint16_t i = 0; i < timeUs; i++)
      000F36 0C               [12]  682 	inc	r4
      000F37 BC 00 F4         [24]  683 	cjne	r4,#0x00,00103$
      000F3A 0D               [12]  684 	inc	r5
      000F3B 80 F1            [24]  685 	sjmp	00103$
      000F3D                        686 00105$:
                                    687 ;	src/lcd.c:83: }
      000F3D 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'busyWait'
                                    691 ;------------------------------------------------------------
                                    692 ;ptr                       Allocated with name '_busyWait_ptr_65536_21'
                                    693 ;------------------------------------------------------------
                                    694 ;	src/lcd.c:89: void busyWait()
                                    695 ;	-----------------------------------------
                                    696 ;	 function busyWait
                                    697 ;	-----------------------------------------
      000F3E                        698 _busyWait:
                                    699 ;	src/lcd.c:94: while ((*ptr & BUSY_MASK) != 0);
      000F3E                        700 00101$:
      000F3E 90 80 0E         [24]  701 	mov	dptr,#0x800e
      000F41 E0               [24]  702 	movx	a,@dptr
      000F42 20 E7 F9         [24]  703 	jb	acc.7,00101$
                                    704 ;	src/lcd.c:95: }
      000F45 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'gLcdWriteToRegister'
                                    708 ;------------------------------------------------------------
                                    709 ;val                       Allocated with name '_gLcdWriteToRegister_PARM_2'
                                    710 ;addr                      Allocated with name '_gLcdWriteToRegister_addr_65536_22'
                                    711 ;ptr                       Allocated with name '_gLcdWriteToRegister_ptr_65536_23'
                                    712 ;------------------------------------------------------------
                                    713 ;	src/lcd.c:103: void gLcdWriteToRegister(MemoryAddress addr, uint8_t val)
                                    714 ;	-----------------------------------------
                                    715 ;	 function gLcdWriteToRegister
                                    716 ;	-----------------------------------------
      000F46                        717 _gLcdWriteToRegister:
      000F46 E5 82            [12]  718 	mov	a,dpl
      000F48 90 00 51         [24]  719 	mov	dptr,#_gLcdWriteToRegister_addr_65536_22
      000F4B F0               [24]  720 	movx	@dptr,a
                                    721 ;	src/lcd.c:107: if (addr == COMMAND_WRITE)
      000F4C E0               [24]  722 	movx	a,@dptr
      000F4D FF               [12]  723 	mov	r7,a
      000F4E 70 0C            [24]  724 	jnz	00114$
                                    725 ;	src/lcd.c:110: ptr = (__xdata uint8_t *)COMMAND_WRITE_ADDR;
      000F50 90 00 52         [24]  726 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000F53 74 0C            [12]  727 	mov	a,#0x0c
      000F55 F0               [24]  728 	movx	@dptr,a
      000F56 74 80            [12]  729 	mov	a,#0x80
      000F58 A3               [24]  730 	inc	dptr
      000F59 F0               [24]  731 	movx	@dptr,a
      000F5A 80 62            [24]  732 	sjmp	00115$
      000F5C                        733 00114$:
                                    734 ;	src/lcd.c:112: else if (addr == COMMAND_WRITE_LEFT)
      000F5C BF 01 0B         [24]  735 	cjne	r7,#0x01,00111$
                                    736 ;	src/lcd.c:114: ptr = (__xdata uint8_t *)COMMAND_WRITE_LEFT_ADDR;
      000F5F 90 00 52         [24]  737 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000F62 74 08            [12]  738 	mov	a,#0x08
      000F64 F0               [24]  739 	movx	@dptr,a
      000F65 C4               [12]  740 	swap	a
      000F66 A3               [24]  741 	inc	dptr
      000F67 F0               [24]  742 	movx	@dptr,a
      000F68 80 54            [24]  743 	sjmp	00115$
      000F6A                        744 00111$:
                                    745 ;	src/lcd.c:116: else if (addr == COMMAND_WRITE_RIGHT)
      000F6A BF 02 0C         [24]  746 	cjne	r7,#0x02,00108$
                                    747 ;	src/lcd.c:118: ptr = (__xdata uint8_t *)COMMAND_WRITE_RIGHT_ADDR;
      000F6D 90 00 52         [24]  748 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000F70 74 04            [12]  749 	mov	a,#0x04
      000F72 F0               [24]  750 	movx	@dptr,a
      000F73 74 80            [12]  751 	mov	a,#0x80
      000F75 A3               [24]  752 	inc	dptr
      000F76 F0               [24]  753 	movx	@dptr,a
      000F77 80 45            [24]  754 	sjmp	00115$
      000F79                        755 00108$:
                                    756 ;	src/lcd.c:120: else if (addr == DATA_WRITE_LEFT)
      000F79 BF 05 0C         [24]  757 	cjne	r7,#0x05,00105$
                                    758 ;	src/lcd.c:122: ptr = (__xdata uint8_t *)DATA_WRITE_LEFT_ADDR;
      000F7C 90 00 52         [24]  759 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000F7F 74 09            [12]  760 	mov	a,#0x09
      000F81 F0               [24]  761 	movx	@dptr,a
      000F82 74 80            [12]  762 	mov	a,#0x80
      000F84 A3               [24]  763 	inc	dptr
      000F85 F0               [24]  764 	movx	@dptr,a
      000F86 80 36            [24]  765 	sjmp	00115$
      000F88                        766 00105$:
                                    767 ;	src/lcd.c:124: else if (addr == DATA_WRITE_RIGHT)
      000F88 BF 06 0C         [24]  768 	cjne	r7,#0x06,00102$
                                    769 ;	src/lcd.c:126: ptr = (__xdata uint8_t *)DATA_WRITE_RIGHT_ADDR;
      000F8B 90 00 52         [24]  770 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000F8E 74 05            [12]  771 	mov	a,#0x05
      000F90 F0               [24]  772 	movx	@dptr,a
      000F91 74 80            [12]  773 	mov	a,#0x80
      000F93 A3               [24]  774 	inc	dptr
      000F94 F0               [24]  775 	movx	@dptr,a
      000F95 80 27            [24]  776 	sjmp	00115$
      000F97                        777 00102$:
                                    778 ;	src/lcd.c:130: ERROR_LOG("Unknown Memory Addr! = %d", addr);
      000F97 7E 00            [12]  779 	mov	r6,#0x00
      000F99 C0 07            [24]  780 	push	ar7
      000F9B C0 06            [24]  781 	push	ar6
      000F9D 74 7B            [12]  782 	mov	a,#___str_0
      000F9F C0 E0            [24]  783 	push	acc
      000FA1 74 4F            [12]  784 	mov	a,#(___str_0 >> 8)
      000FA3 C0 E0            [24]  785 	push	acc
      000FA5 12 3B B6         [24]  786 	lcall	_printf_tiny
      000FA8 E5 81            [12]  787 	mov	a,sp
      000FAA 24 FC            [12]  788 	add	a,#0xfc
      000FAC F5 81            [12]  789 	mov	sp,a
      000FAE 74 A5            [12]  790 	mov	a,#___str_1
      000FB0 C0 E0            [24]  791 	push	acc
      000FB2 74 4F            [12]  792 	mov	a,#(___str_1 >> 8)
      000FB4 C0 E0            [24]  793 	push	acc
      000FB6 12 3B B6         [24]  794 	lcall	_printf_tiny
      000FB9 15 81            [12]  795 	dec	sp
      000FBB 15 81            [12]  796 	dec	sp
                                    797 ;	src/lcd.c:131: return;
      000FBD 22               [24]  798 	ret
      000FBE                        799 00115$:
                                    800 ;	src/lcd.c:134: *ptr = val;
      000FBE 90 00 52         [24]  801 	mov	dptr,#_gLcdWriteToRegister_ptr_65536_23
      000FC1 E0               [24]  802 	movx	a,@dptr
      000FC2 FE               [12]  803 	mov	r6,a
      000FC3 A3               [24]  804 	inc	dptr
      000FC4 E0               [24]  805 	movx	a,@dptr
      000FC5 FF               [12]  806 	mov	r7,a
      000FC6 90 00 50         [24]  807 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      000FC9 E0               [24]  808 	movx	a,@dptr
      000FCA 8E 82            [24]  809 	mov	dpl,r6
      000FCC 8F 83            [24]  810 	mov	dph,r7
      000FCE F0               [24]  811 	movx	@dptr,a
                                    812 ;	src/lcd.c:135: }
      000FCF 22               [24]  813 	ret
                                    814 ;------------------------------------------------------------
                                    815 ;Allocation info for local variables in function 'glcdControllerSelect'
                                    816 ;------------------------------------------------------------
                                    817 ;column                    Allocated with name '_glcdControllerSelect_column_65536_30'
                                    818 ;------------------------------------------------------------
                                    819 ;	src/lcd.c:143: uint8_t glcdControllerSelect(uint8_t column)
                                    820 ;	-----------------------------------------
                                    821 ;	 function glcdControllerSelect
                                    822 ;	-----------------------------------------
      000FD0                        823 _glcdControllerSelect:
      000FD0 E5 82            [12]  824 	mov	a,dpl
      000FD2 90 00 54         [24]  825 	mov	dptr,#_glcdControllerSelect_column_65536_30
      000FD5 F0               [24]  826 	movx	@dptr,a
                                    827 ;	src/lcd.c:146: if (column < MAX_COLUMN_PER_CONTROLLER)
      000FD6 E0               [24]  828 	movx	a,@dptr
      000FD7 FF               [12]  829 	mov	r7,a
      000FD8 BF 40 00         [24]  830 	cjne	r7,#0x40,00110$
      000FDB                        831 00110$:
      000FDB 50 04            [24]  832 	jnc	00102$
                                    833 ;	src/lcd.c:148: return COLUMN_SELECT_LEFT;
      000FDD 75 82 03         [24]  834 	mov	dpl,#0x03
      000FE0 22               [24]  835 	ret
      000FE1                        836 00102$:
                                    837 ;	src/lcd.c:152: return COLUMN_SELECT_RIGHT;
      000FE1 75 82 04         [24]  838 	mov	dpl,#0x04
                                    839 ;	src/lcd.c:154: }
      000FE4 22               [24]  840 	ret
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'glcdGoToAddr'
                                    843 ;------------------------------------------------------------
                                    844 ;page                      Allocated with name '_glcdGoToAddr_PARM_2'
                                    845 ;column                    Allocated with name '_glcdGoToAddr_column_65536_34'
                                    846 ;controllerSelect          Allocated with name '_glcdGoToAddr_controllerSelect_65536_35'
                                    847 ;------------------------------------------------------------
                                    848 ;	src/lcd.c:162: void glcdGoToAddr(uint8_t column, uint8_t page)
                                    849 ;	-----------------------------------------
                                    850 ;	 function glcdGoToAddr
                                    851 ;	-----------------------------------------
      000FE5                        852 _glcdGoToAddr:
      000FE5 E5 82            [12]  853 	mov	a,dpl
      000FE7 90 00 56         [24]  854 	mov	dptr,#_glcdGoToAddr_column_65536_34
      000FEA F0               [24]  855 	movx	@dptr,a
                                    856 ;	src/lcd.c:164: uint8_t controllerSelect = glcdControllerSelect(column);
      000FEB E0               [24]  857 	movx	a,@dptr
      000FEC FF               [12]  858 	mov	r7,a
      000FED F5 82            [12]  859 	mov	dpl,a
      000FEF C0 07            [24]  860 	push	ar7
      000FF1 12 0F D0         [24]  861 	lcall	_glcdControllerSelect
      000FF4 AE 82            [24]  862 	mov	r6,dpl
      000FF6 D0 07            [24]  863 	pop	ar7
                                    864 ;	src/lcd.c:166: if (controllerSelect == COLUMN_SELECT_LEFT)
      000FF8 BE 03 27         [24]  865 	cjne	r6,#0x03,00104$
                                    866 ;	src/lcd.c:169: gLcdWriteToRegister(COMMAND_WRITE_LEFT, PAGE_MASK | page);
      000FFB 90 00 55         [24]  867 	mov	dptr,#_glcdGoToAddr_PARM_2
      000FFE E0               [24]  868 	movx	a,@dptr
      000FFF 90 00 50         [24]  869 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      001002 44 B8            [12]  870 	orl	a,#0xb8
      001004 F0               [24]  871 	movx	@dptr,a
      001005 75 82 01         [24]  872 	mov	dpl,#0x01
      001008 C0 07            [24]  873 	push	ar7
      00100A 12 0F 46         [24]  874 	lcall	_gLcdWriteToRegister
                                    875 ;	src/lcd.c:170: busyWait();
      00100D 12 0F 3E         [24]  876 	lcall	_busyWait
      001010 D0 07            [24]  877 	pop	ar7
                                    878 ;	src/lcd.c:173: gLcdWriteToRegister(COMMAND_WRITE_LEFT, Y_MASK | column);
      001012 90 00 50         [24]  879 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      001015 74 40            [12]  880 	mov	a,#0x40
      001017 4F               [12]  881 	orl	a,r7
      001018 F0               [24]  882 	movx	@dptr,a
      001019 75 82 01         [24]  883 	mov	dpl,#0x01
      00101C 12 0F 46         [24]  884 	lcall	_gLcdWriteToRegister
                                    885 ;	src/lcd.c:174: busyWait();
      00101F 02 0F 3E         [24]  886 	ljmp	_busyWait
      001022                        887 00104$:
                                    888 ;	src/lcd.c:176: else if (controllerSelect == COLUMN_SELECT_RIGHT) // right controller
      001022 BE 04 2D         [24]  889 	cjne	r6,#0x04,00106$
                                    890 ;	src/lcd.c:178: column = column - MAX_COLUMN_PER_CONTROLLER;
      001025 EF               [12]  891 	mov	a,r7
      001026 24 C0            [12]  892 	add	a,#0xc0
      001028 90 00 56         [24]  893 	mov	dptr,#_glcdGoToAddr_column_65536_34
      00102B F0               [24]  894 	movx	@dptr,a
                                    895 ;	src/lcd.c:181: gLcdWriteToRegister(COMMAND_WRITE_RIGHT, PAGE_MASK | page);
      00102C 90 00 55         [24]  896 	mov	dptr,#_glcdGoToAddr_PARM_2
      00102F E0               [24]  897 	movx	a,@dptr
      001030 90 00 50         [24]  898 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      001033 44 B8            [12]  899 	orl	a,#0xb8
      001035 F0               [24]  900 	movx	@dptr,a
      001036 75 82 02         [24]  901 	mov	dpl,#0x02
      001039 12 0F 46         [24]  902 	lcall	_gLcdWriteToRegister
                                    903 ;	src/lcd.c:182: busyWait();
      00103C 12 0F 3E         [24]  904 	lcall	_busyWait
                                    905 ;	src/lcd.c:185: gLcdWriteToRegister(COMMAND_WRITE_RIGHT, Y_MASK | column);
      00103F 90 00 56         [24]  906 	mov	dptr,#_glcdGoToAddr_column_65536_34
      001042 E0               [24]  907 	movx	a,@dptr
      001043 90 00 50         [24]  908 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      001046 44 40            [12]  909 	orl	a,#0x40
      001048 F0               [24]  910 	movx	@dptr,a
      001049 75 82 02         [24]  911 	mov	dpl,#0x02
      00104C 12 0F 46         [24]  912 	lcall	_gLcdWriteToRegister
                                    913 ;	src/lcd.c:186: busyWait();
                                    914 ;	src/lcd.c:188: }
      00104F 02 0F 3E         [24]  915 	ljmp	_busyWait
      001052                        916 00106$:
      001052 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'glcdWrite'
                                    920 ;------------------------------------------------------------
                                    921 ;page                      Allocated with name '_glcdWrite_PARM_2'
                                    922 ;val                       Allocated with name '_glcdWrite_PARM_3'
                                    923 ;column                    Allocated with name '_glcdWrite_column_65536_38'
                                    924 ;controllerSelect          Allocated with name '_glcdWrite_controllerSelect_65537_40'
                                    925 ;------------------------------------------------------------
                                    926 ;	src/lcd.c:197: void glcdWrite(uint8_t column, uint8_t page, char val)
                                    927 ;	-----------------------------------------
                                    928 ;	 function glcdWrite
                                    929 ;	-----------------------------------------
      001053                        930 _glcdWrite:
      001053 E5 82            [12]  931 	mov	a,dpl
      001055 90 00 59         [24]  932 	mov	dptr,#_glcdWrite_column_65536_38
      001058 F0               [24]  933 	movx	@dptr,a
                                    934 ;	src/lcd.c:199: glcdGoToAddr(column, page);
      001059 E0               [24]  935 	movx	a,@dptr
      00105A FF               [12]  936 	mov	r7,a
      00105B 90 00 57         [24]  937 	mov	dptr,#_glcdWrite_PARM_2
      00105E E0               [24]  938 	movx	a,@dptr
      00105F 90 00 55         [24]  939 	mov	dptr,#_glcdGoToAddr_PARM_2
      001062 F0               [24]  940 	movx	@dptr,a
      001063 8F 82            [24]  941 	mov	dpl,r7
      001065 C0 07            [24]  942 	push	ar7
      001067 12 0F E5         [24]  943 	lcall	_glcdGoToAddr
      00106A D0 07            [24]  944 	pop	ar7
                                    945 ;	src/lcd.c:202: uint8_t controllerSelect = glcdControllerSelect(column);
      00106C 8F 82            [24]  946 	mov	dpl,r7
      00106E 12 0F D0         [24]  947 	lcall	_glcdControllerSelect
      001071 AF 82            [24]  948 	mov	r7,dpl
                                    949 ;	src/lcd.c:204: if (controllerSelect == COLUMN_SELECT_LEFT)
      001073 BF 03 10         [24]  950 	cjne	r7,#0x03,00102$
                                    951 ;	src/lcd.c:206: gLcdWriteToRegister(DATA_WRITE_LEFT, val);
      001076 90 00 58         [24]  952 	mov	dptr,#_glcdWrite_PARM_3
      001079 E0               [24]  953 	movx	a,@dptr
      00107A 90 00 50         [24]  954 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      00107D F0               [24]  955 	movx	@dptr,a
      00107E 75 82 05         [24]  956 	mov	dpl,#0x05
      001081 12 0F 46         [24]  957 	lcall	_gLcdWriteToRegister
      001084 80 0E            [24]  958 	sjmp	00103$
      001086                        959 00102$:
                                    960 ;	src/lcd.c:210: gLcdWriteToRegister(DATA_WRITE_RIGHT, val);
      001086 90 00 58         [24]  961 	mov	dptr,#_glcdWrite_PARM_3
      001089 E0               [24]  962 	movx	a,@dptr
      00108A 90 00 50         [24]  963 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      00108D F0               [24]  964 	movx	@dptr,a
      00108E 75 82 06         [24]  965 	mov	dpl,#0x06
      001091 12 0F 46         [24]  966 	lcall	_gLcdWriteToRegister
      001094                        967 00103$:
                                    968 ;	src/lcd.c:212: busyWait();
                                    969 ;	src/lcd.c:213: }
      001094 02 0F 3E         [24]  970 	ljmp	_busyWait
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'glcdRead'
                                    973 ;------------------------------------------------------------
                                    974 ;column                    Allocated with name '_glcdRead_column_65536_43'
                                    975 ;controllerSelect          Allocated with name '_glcdRead_controllerSelect_65536_44'
                                    976 ;ptr                       Allocated with name '_glcdRead_ptr_65536_44'
                                    977 ;dataByte                  Allocated with name '_glcdRead_dataByte_65537_48'
                                    978 ;------------------------------------------------------------
                                    979 ;	src/lcd.c:221: uint8_t glcdRead(uint8_t column)
                                    980 ;	-----------------------------------------
                                    981 ;	 function glcdRead
                                    982 ;	-----------------------------------------
      001097                        983 _glcdRead:
      001097 E5 82            [12]  984 	mov	a,dpl
      001099 90 00 5A         [24]  985 	mov	dptr,#_glcdRead_column_65536_43
      00109C F0               [24]  986 	movx	@dptr,a
                                    987 ;	src/lcd.c:223: uint8_t controllerSelect = glcdControllerSelect(column);
      00109D E0               [24]  988 	movx	a,@dptr
      00109E F5 82            [12]  989 	mov	dpl,a
      0010A0 12 0F D0         [24]  990 	lcall	_glcdControllerSelect
      0010A3 AF 82            [24]  991 	mov	r7,dpl
                                    992 ;	src/lcd.c:225: __xdata uint8_t *ptr = NULL;
      0010A5 90 00 5B         [24]  993 	mov	dptr,#_glcdRead_ptr_65536_44
      0010A8 E4               [12]  994 	clr	a
      0010A9 F0               [24]  995 	movx	@dptr,a
      0010AA A3               [24]  996 	inc	dptr
      0010AB F0               [24]  997 	movx	@dptr,a
                                    998 ;	src/lcd.c:227: if (controllerSelect == COLUMN_SELECT_LEFT)
      0010AC BF 03 0C         [24]  999 	cjne	r7,#0x03,00105$
                                   1000 ;	src/lcd.c:229: ptr = (__xdata uint8_t *)DATA_READ_LEFT_ADDR;
      0010AF 90 00 5B         [24] 1001 	mov	dptr,#_glcdRead_ptr_65536_44
      0010B2 74 0B            [12] 1002 	mov	a,#0x0b
      0010B4 F0               [24] 1003 	movx	@dptr,a
      0010B5 74 80            [12] 1004 	mov	a,#0x80
      0010B7 A3               [24] 1005 	inc	dptr
      0010B8 F0               [24] 1006 	movx	@dptr,a
      0010B9 80 2D            [24] 1007 	sjmp	00106$
      0010BB                       1008 00105$:
                                   1009 ;	src/lcd.c:231: else if (controllerSelect == COLUMN_SELECT_RIGHT)
      0010BB BF 04 0C         [24] 1010 	cjne	r7,#0x04,00102$
                                   1011 ;	src/lcd.c:233: ptr = (__xdata uint8_t *)DATA_READ_RIGHT_ADDR;
      0010BE 90 00 5B         [24] 1012 	mov	dptr,#_glcdRead_ptr_65536_44
      0010C1 74 07            [12] 1013 	mov	a,#0x07
      0010C3 F0               [24] 1014 	movx	@dptr,a
      0010C4 74 80            [12] 1015 	mov	a,#0x80
      0010C6 A3               [24] 1016 	inc	dptr
      0010C7 F0               [24] 1017 	movx	@dptr,a
      0010C8 80 1E            [24] 1018 	sjmp	00106$
      0010CA                       1019 00102$:
                                   1020 ;	src/lcd.c:237: ERROR_LOG("UNKNOWN CONTROLLER");
      0010CA 74 AA            [12] 1021 	mov	a,#___str_2
      0010CC C0 E0            [24] 1022 	push	acc
      0010CE 74 4F            [12] 1023 	mov	a,#(___str_2 >> 8)
      0010D0 C0 E0            [24] 1024 	push	acc
      0010D2 12 3B B6         [24] 1025 	lcall	_printf_tiny
      0010D5 15 81            [12] 1026 	dec	sp
      0010D7 15 81            [12] 1027 	dec	sp
      0010D9 74 A5            [12] 1028 	mov	a,#___str_1
      0010DB C0 E0            [24] 1029 	push	acc
      0010DD 74 4F            [12] 1030 	mov	a,#(___str_1 >> 8)
      0010DF C0 E0            [24] 1031 	push	acc
      0010E1 12 3B B6         [24] 1032 	lcall	_printf_tiny
      0010E4 15 81            [12] 1033 	dec	sp
      0010E6 15 81            [12] 1034 	dec	sp
      0010E8                       1035 00106$:
                                   1036 ;	src/lcd.c:240: uint8_t dataByte = *ptr;
      0010E8 90 00 5B         [24] 1037 	mov	dptr,#_glcdRead_ptr_65536_44
      0010EB E0               [24] 1038 	movx	a,@dptr
      0010EC FE               [12] 1039 	mov	r6,a
      0010ED A3               [24] 1040 	inc	dptr
      0010EE E0               [24] 1041 	movx	a,@dptr
      0010EF FF               [12] 1042 	mov	r7,a
      0010F0 8E 82            [24] 1043 	mov	dpl,r6
      0010F2 8F 83            [24] 1044 	mov	dph,r7
      0010F4 E0               [24] 1045 	movx	a,@dptr
                                   1046 ;	src/lcd.c:242: return dataByte;
                                   1047 ;	src/lcd.c:243: }
      0010F5 F5 82            [12] 1048 	mov	dpl,a
      0010F7 22               [24] 1049 	ret
                                   1050 ;------------------------------------------------------------
                                   1051 ;Allocation info for local variables in function 'setPixel'
                                   1052 ;------------------------------------------------------------
                                   1053 ;column                    Allocated with name '_setPixel_PARM_2'
                                   1054 ;val                       Allocated with name '_setPixel_PARM_3'
                                   1055 ;row                       Allocated with name '_setPixel_row_65536_49'
                                   1056 ;page                      Allocated with name '_setPixel_page_65537_51'
                                   1057 ;pixelPosition             Allocated with name '_setPixel_pixelPosition_65537_51'
                                   1058 ;pageByte                  Allocated with name '_setPixel_pageByte_65538_52'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	src/lcd.c:252: void setPixel(uint8_t row, uint8_t column, BitValue val)
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function setPixel
                                   1063 ;	-----------------------------------------
      0010F8                       1064 _setPixel:
      0010F8 E5 82            [12] 1065 	mov	a,dpl
      0010FA 90 00 5F         [24] 1066 	mov	dptr,#_setPixel_row_65536_49
      0010FD F0               [24] 1067 	movx	@dptr,a
                                   1068 ;	src/lcd.c:255: row = 63 - row;
      0010FE E0               [24] 1069 	movx	a,@dptr
      0010FF FF               [12] 1070 	mov	r7,a
      001100 74 3F            [12] 1071 	mov	a,#0x3f
      001102 C3               [12] 1072 	clr	c
      001103 9F               [12] 1073 	subb	a,r7
      001104 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	src/lcd.c:258: uint8_t page = row / 8;
      001105 E0               [24] 1076 	movx	a,@dptr
      001106 FF               [12] 1077 	mov	r7,a
      001107 7E 00            [12] 1078 	mov	r6,#0x00
      001109 90 01 EA         [24] 1079 	mov	dptr,#__divsint_PARM_2
      00110C 74 08            [12] 1080 	mov	a,#0x08
      00110E F0               [24] 1081 	movx	@dptr,a
      00110F E4               [12] 1082 	clr	a
      001110 A3               [24] 1083 	inc	dptr
      001111 F0               [24] 1084 	movx	@dptr,a
      001112 8F 82            [24] 1085 	mov	dpl,r7
      001114 8E 83            [24] 1086 	mov	dph,r6
      001116 C0 07            [24] 1087 	push	ar7
      001118 C0 06            [24] 1088 	push	ar6
      00111A 12 3D F3         [24] 1089 	lcall	__divsint
      00111D AC 82            [24] 1090 	mov	r4,dpl
      00111F D0 06            [24] 1091 	pop	ar6
      001121 D0 07            [24] 1092 	pop	ar7
                                   1093 ;	src/lcd.c:260: uint8_t pixelPosition = row % 8;
      001123 53 07 07         [24] 1094 	anl	ar7,#0x07
                                   1095 ;	src/lcd.c:263: glcdGoToAddr(column, page);
      001126 90 00 5D         [24] 1096 	mov	dptr,#_setPixel_PARM_2
      001129 E0               [24] 1097 	movx	a,@dptr
      00112A FE               [12] 1098 	mov	r6,a
      00112B 90 00 55         [24] 1099 	mov	dptr,#_glcdGoToAddr_PARM_2
      00112E EC               [12] 1100 	mov	a,r4
      00112F F0               [24] 1101 	movx	@dptr,a
      001130 8E 82            [24] 1102 	mov	dpl,r6
      001132 C0 07            [24] 1103 	push	ar7
      001134 C0 06            [24] 1104 	push	ar6
      001136 C0 04            [24] 1105 	push	ar4
      001138 12 0F E5         [24] 1106 	lcall	_glcdGoToAddr
      00113B D0 04            [24] 1107 	pop	ar4
      00113D D0 06            [24] 1108 	pop	ar6
                                   1109 ;	src/lcd.c:269: uint8_t pageByte = glcdRead(column);
      00113F 8E 82            [24] 1110 	mov	dpl,r6
      001141 C0 06            [24] 1111 	push	ar6
      001143 C0 04            [24] 1112 	push	ar4
      001145 12 10 97         [24] 1113 	lcall	_glcdRead
      001148 D0 04            [24] 1114 	pop	ar4
      00114A D0 06            [24] 1115 	pop	ar6
                                   1116 ;	src/lcd.c:270: pageByte = glcdRead(column);
      00114C 8E 82            [24] 1117 	mov	dpl,r6
      00114E C0 06            [24] 1118 	push	ar6
      001150 C0 04            [24] 1119 	push	ar4
      001152 12 10 97         [24] 1120 	lcall	_glcdRead
      001155 AD 82            [24] 1121 	mov	r5,dpl
      001157 D0 04            [24] 1122 	pop	ar4
      001159 D0 06            [24] 1123 	pop	ar6
      00115B D0 07            [24] 1124 	pop	ar7
      00115D 90 00 60         [24] 1125 	mov	dptr,#_setPixel_pageByte_65538_52
      001160 ED               [12] 1126 	mov	a,r5
      001161 F0               [24] 1127 	movx	@dptr,a
                                   1128 ;	src/lcd.c:274: if (val == ONE)
      001162 90 00 5E         [24] 1129 	mov	dptr,#_setPixel_PARM_3
      001165 E0               [24] 1130 	movx	a,@dptr
      001166 FB               [12] 1131 	mov	r3,a
      001167 BB 01 17         [24] 1132 	cjne	r3,#0x01,00104$
                                   1133 ;	src/lcd.c:276: pageByte = pageByte | (1 << pixelPosition);
      00116A 8F 02            [24] 1134 	mov	ar2,r7
      00116C 8A F0            [24] 1135 	mov	b,r2
      00116E 05 F0            [12] 1136 	inc	b
      001170 74 01            [12] 1137 	mov	a,#0x01
      001172 80 02            [24] 1138 	sjmp	00120$
      001174                       1139 00118$:
      001174 25 E0            [12] 1140 	add	a,acc
      001176                       1141 00120$:
      001176 D5 F0 FB         [24] 1142 	djnz	b,00118$
      001179 FA               [12] 1143 	mov	r2,a
      00117A 90 00 60         [24] 1144 	mov	dptr,#_setPixel_pageByte_65538_52
      00117D 4D               [12] 1145 	orl	a,r5
      00117E F0               [24] 1146 	movx	@dptr,a
      00117F 80 17            [24] 1147 	sjmp	00105$
      001181                       1148 00104$:
                                   1149 ;	src/lcd.c:278: else if (val == ZERO)
      001181 EB               [12] 1150 	mov	a,r3
      001182 70 14            [24] 1151 	jnz	00105$
                                   1152 ;	src/lcd.c:281: pageByte = pageByte & (~(1 << pixelPosition));
      001184 8F F0            [24] 1153 	mov	b,r7
      001186 05 F0            [12] 1154 	inc	b
      001188 74 01            [12] 1155 	mov	a,#0x01
      00118A 80 02            [24] 1156 	sjmp	00124$
      00118C                       1157 00122$:
      00118C 25 E0            [12] 1158 	add	a,acc
      00118E                       1159 00124$:
      00118E D5 F0 FB         [24] 1160 	djnz	b,00122$
      001191 F4               [12] 1161 	cpl	a
      001192 FF               [12] 1162 	mov	r7,a
      001193 90 00 60         [24] 1163 	mov	dptr,#_setPixel_pageByte_65538_52
      001196 5D               [12] 1164 	anl	a,r5
      001197 F0               [24] 1165 	movx	@dptr,a
      001198                       1166 00105$:
                                   1167 ;	src/lcd.c:285: glcdWrite(column, page, pageByte);
      001198 90 00 60         [24] 1168 	mov	dptr,#_setPixel_pageByte_65538_52
      00119B E0               [24] 1169 	movx	a,@dptr
      00119C FF               [12] 1170 	mov	r7,a
      00119D 90 00 57         [24] 1171 	mov	dptr,#_glcdWrite_PARM_2
      0011A0 EC               [12] 1172 	mov	a,r4
      0011A1 F0               [24] 1173 	movx	@dptr,a
      0011A2 90 00 58         [24] 1174 	mov	dptr,#_glcdWrite_PARM_3
      0011A5 EF               [12] 1175 	mov	a,r7
      0011A6 F0               [24] 1176 	movx	@dptr,a
      0011A7 8E 82            [24] 1177 	mov	dpl,r6
                                   1178 ;	src/lcd.c:286: }
      0011A9 02 10 53         [24] 1179 	ljmp	_glcdWrite
                                   1180 ;------------------------------------------------------------
                                   1181 ;Allocation info for local variables in function 'glcdClear'
                                   1182 ;------------------------------------------------------------
                                   1183 ;column                    Allocated with name '_glcdClear_column_131072_56'
                                   1184 ;page                      Allocated with name '_glcdClear_page_262144_58'
                                   1185 ;------------------------------------------------------------
                                   1186 ;	src/lcd.c:292: void glcdClear()
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function glcdClear
                                   1189 ;	-----------------------------------------
      0011AC                       1190 _glcdClear:
                                   1191 ;	src/lcd.c:294: for (uint8_t column = 0; column < 128; column++)
      0011AC 7F 00            [12] 1192 	mov	r7,#0x00
      0011AE                       1193 00107$:
      0011AE BF 80 00         [24] 1194 	cjne	r7,#0x80,00129$
      0011B1                       1195 00129$:
      0011B1 50 2A            [24] 1196 	jnc	00109$
                                   1197 ;	src/lcd.c:296: for (uint8_t page = 0; page < 8; page++)
      0011B3 8F 06            [24] 1198 	mov	ar6,r7
      0011B5 7D 00            [12] 1199 	mov	r5,#0x00
      0011B7                       1200 00104$:
      0011B7 BD 08 00         [24] 1201 	cjne	r5,#0x08,00131$
      0011BA                       1202 00131$:
      0011BA 50 1E            [24] 1203 	jnc	00108$
                                   1204 ;	src/lcd.c:298: glcdWrite(column, page, 0x00);
      0011BC 90 00 57         [24] 1205 	mov	dptr,#_glcdWrite_PARM_2
      0011BF ED               [12] 1206 	mov	a,r5
      0011C0 F0               [24] 1207 	movx	@dptr,a
      0011C1 90 00 58         [24] 1208 	mov	dptr,#_glcdWrite_PARM_3
      0011C4 E4               [12] 1209 	clr	a
      0011C5 F0               [24] 1210 	movx	@dptr,a
      0011C6 8E 82            [24] 1211 	mov	dpl,r6
      0011C8 C0 07            [24] 1212 	push	ar7
      0011CA C0 06            [24] 1213 	push	ar6
      0011CC C0 05            [24] 1214 	push	ar5
      0011CE 12 10 53         [24] 1215 	lcall	_glcdWrite
      0011D1 D0 05            [24] 1216 	pop	ar5
      0011D3 D0 06            [24] 1217 	pop	ar6
      0011D5 D0 07            [24] 1218 	pop	ar7
                                   1219 ;	src/lcd.c:296: for (uint8_t page = 0; page < 8; page++)
      0011D7 0D               [12] 1220 	inc	r5
      0011D8 80 DD            [24] 1221 	sjmp	00104$
      0011DA                       1222 00108$:
                                   1223 ;	src/lcd.c:294: for (uint8_t column = 0; column < 128; column++)
      0011DA 0F               [12] 1224 	inc	r7
      0011DB 80 D1            [24] 1225 	sjmp	00107$
      0011DD                       1226 00109$:
                                   1227 ;	src/lcd.c:301: }
      0011DD 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function 'glcdWriteChar'
                                   1231 ;------------------------------------------------------------
                                   1232 ;page                      Allocated with name '_glcdWriteChar_PARM_2'
                                   1233 ;c                         Allocated with name '_glcdWriteChar_PARM_3'
                                   1234 ;column                    Allocated with name '_glcdWriteChar_column_65536_60'
                                   1235 ;offset                    Allocated with name '_glcdWriteChar_offset_65536_61'
                                   1236 ;i                         Allocated with name '_glcdWriteChar_i_131072_62'
                                   1237 ;------------------------------------------------------------
                                   1238 ;	src/lcd.c:310: void glcdWriteChar(uint8_t column, uint8_t page, char c)
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function glcdWriteChar
                                   1241 ;	-----------------------------------------
      0011DE                       1242 _glcdWriteChar:
      0011DE E5 82            [12] 1243 	mov	a,dpl
      0011E0 90 00 63         [24] 1244 	mov	dptr,#_glcdWriteChar_column_65536_60
      0011E3 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	src/lcd.c:313: uint8_t offset = (c - 0x20) * CHARACTER_WIDTH;
      0011E4 90 00 62         [24] 1247 	mov	dptr,#_glcdWriteChar_PARM_3
      0011E7 E0               [24] 1248 	movx	a,@dptr
      0011E8 24 E0            [12] 1249 	add	a,#0xe0
      0011EA 75 F0 03         [24] 1250 	mov	b,#0x03
      0011ED A4               [48] 1251 	mul	ab
      0011EE FF               [12] 1252 	mov	r7,a
                                   1253 ;	src/lcd.c:314: for (uint8_t i = 0; i < CHARACTER_WIDTH; i++)
      0011EF 90 00 61         [24] 1254 	mov	dptr,#_glcdWriteChar_PARM_2
      0011F2 E0               [24] 1255 	movx	a,@dptr
      0011F3 FE               [12] 1256 	mov	r6,a
      0011F4 90 00 63         [24] 1257 	mov	dptr,#_glcdWriteChar_column_65536_60
      0011F7 E0               [24] 1258 	movx	a,@dptr
      0011F8 FD               [12] 1259 	mov	r5,a
      0011F9 7C 00            [12] 1260 	mov	r4,#0x00
      0011FB                       1261 00103$:
      0011FB BC 03 00         [24] 1262 	cjne	r4,#0x03,00116$
      0011FE                       1263 00116$:
      0011FE 50 43            [24] 1264 	jnc	00109$
                                   1265 ;	src/lcd.c:317: glcdWrite(column, page, font[offset + i]);
      001200 8F 02            [24] 1266 	mov	ar2,r7
      001202 7B 00            [12] 1267 	mov	r3,#0x00
      001204 8C 00            [24] 1268 	mov	ar0,r4
      001206 79 00            [12] 1269 	mov	r1,#0x00
      001208 E8               [12] 1270 	mov	a,r0
      001209 2A               [12] 1271 	add	a,r2
      00120A FA               [12] 1272 	mov	r2,a
      00120B E9               [12] 1273 	mov	a,r1
      00120C 3B               [12] 1274 	addc	a,r3
      00120D FB               [12] 1275 	mov	r3,a
      00120E EA               [12] 1276 	mov	a,r2
      00120F 24 9B            [12] 1277 	add	a,#_font
      001211 F5 82            [12] 1278 	mov	dpl,a
      001213 EB               [12] 1279 	mov	a,r3
      001214 34 4D            [12] 1280 	addc	a,#(_font >> 8)
      001216 F5 83            [12] 1281 	mov	dph,a
      001218 E4               [12] 1282 	clr	a
      001219 93               [24] 1283 	movc	a,@a+dptr
      00121A FB               [12] 1284 	mov	r3,a
      00121B 90 00 57         [24] 1285 	mov	dptr,#_glcdWrite_PARM_2
      00121E EE               [12] 1286 	mov	a,r6
      00121F F0               [24] 1287 	movx	@dptr,a
      001220 90 00 58         [24] 1288 	mov	dptr,#_glcdWrite_PARM_3
      001223 EB               [12] 1289 	mov	a,r3
      001224 F0               [24] 1290 	movx	@dptr,a
      001225 8D 82            [24] 1291 	mov	dpl,r5
      001227 C0 07            [24] 1292 	push	ar7
      001229 C0 06            [24] 1293 	push	ar6
      00122B C0 05            [24] 1294 	push	ar5
      00122D C0 04            [24] 1295 	push	ar4
      00122F 12 10 53         [24] 1296 	lcall	_glcdWrite
      001232 D0 04            [24] 1297 	pop	ar4
      001234 D0 05            [24] 1298 	pop	ar5
      001236 D0 06            [24] 1299 	pop	ar6
      001238 D0 07            [24] 1300 	pop	ar7
                                   1301 ;	src/lcd.c:318: column++;
      00123A 0D               [12] 1302 	inc	r5
      00123B 90 00 63         [24] 1303 	mov	dptr,#_glcdWriteChar_column_65536_60
      00123E ED               [12] 1304 	mov	a,r5
      00123F F0               [24] 1305 	movx	@dptr,a
                                   1306 ;	src/lcd.c:314: for (uint8_t i = 0; i < CHARACTER_WIDTH; i++)
      001240 0C               [12] 1307 	inc	r4
      001241 80 B8            [24] 1308 	sjmp	00103$
      001243                       1309 00109$:
      001243 90 00 63         [24] 1310 	mov	dptr,#_glcdWriteChar_column_65536_60
      001246 ED               [12] 1311 	mov	a,r5
      001247 F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	src/lcd.c:320: }
      001248 22               [24] 1314 	ret
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'gcldClearString'
                                   1317 ;------------------------------------------------------------
                                   1318 ;page                      Allocated with name '_gcldClearString_PARM_2'
                                   1319 ;size                      Allocated with name '_gcldClearString_PARM_3'
                                   1320 ;column                    Allocated with name '_gcldClearString_column_65536_64'
                                   1321 ;i                         Allocated with name '_gcldClearString_i_131072_66'
                                   1322 ;------------------------------------------------------------
                                   1323 ;	src/lcd.c:329: void gcldClearString(uint8_t column, uint8_t page, uint8_t size)
                                   1324 ;	-----------------------------------------
                                   1325 ;	 function gcldClearString
                                   1326 ;	-----------------------------------------
      001249                       1327 _gcldClearString:
      001249 E5 82            [12] 1328 	mov	a,dpl
      00124B 90 00 66         [24] 1329 	mov	dptr,#_gcldClearString_column_65536_64
      00124E F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	src/lcd.c:331: for (uint8_t i = 0; i < size; i++)
      00124F 90 00 64         [24] 1332 	mov	dptr,#_gcldClearString_PARM_2
      001252 E0               [24] 1333 	movx	a,@dptr
      001253 FF               [12] 1334 	mov	r7,a
      001254 90 00 65         [24] 1335 	mov	dptr,#_gcldClearString_PARM_3
      001257 E0               [24] 1336 	movx	a,@dptr
      001258 FE               [12] 1337 	mov	r6,a
      001259 7D 00            [12] 1338 	mov	r5,#0x00
      00125B                       1339 00103$:
      00125B C3               [12] 1340 	clr	c
      00125C ED               [12] 1341 	mov	a,r5
      00125D 9E               [12] 1342 	subb	a,r6
      00125E 50 2F            [24] 1343 	jnc	00105$
                                   1344 ;	src/lcd.c:333: glcdWriteChar(column, page, 0x20);
      001260 90 00 66         [24] 1345 	mov	dptr,#_gcldClearString_column_65536_64
      001263 E0               [24] 1346 	movx	a,@dptr
      001264 FC               [12] 1347 	mov	r4,a
      001265 90 00 61         [24] 1348 	mov	dptr,#_glcdWriteChar_PARM_2
      001268 EF               [12] 1349 	mov	a,r7
      001269 F0               [24] 1350 	movx	@dptr,a
      00126A 90 00 62         [24] 1351 	mov	dptr,#_glcdWriteChar_PARM_3
      00126D 74 20            [12] 1352 	mov	a,#0x20
      00126F F0               [24] 1353 	movx	@dptr,a
      001270 8C 82            [24] 1354 	mov	dpl,r4
      001272 C0 07            [24] 1355 	push	ar7
      001274 C0 06            [24] 1356 	push	ar6
      001276 C0 05            [24] 1357 	push	ar5
      001278 C0 04            [24] 1358 	push	ar4
      00127A 12 11 DE         [24] 1359 	lcall	_glcdWriteChar
      00127D D0 04            [24] 1360 	pop	ar4
      00127F D0 05            [24] 1361 	pop	ar5
      001281 D0 06            [24] 1362 	pop	ar6
      001283 D0 07            [24] 1363 	pop	ar7
                                   1364 ;	src/lcd.c:334: column += CHARACTER_WIDTH + 1;
      001285 90 00 66         [24] 1365 	mov	dptr,#_gcldClearString_column_65536_64
      001288 74 04            [12] 1366 	mov	a,#0x04
      00128A 2C               [12] 1367 	add	a,r4
      00128B F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	src/lcd.c:331: for (uint8_t i = 0; i < size; i++)
      00128C 0D               [12] 1370 	inc	r5
      00128D 80 CC            [24] 1371 	sjmp	00103$
      00128F                       1372 00105$:
                                   1373 ;	src/lcd.c:336: }
      00128F 22               [24] 1374 	ret
                                   1375 ;------------------------------------------------------------
                                   1376 ;Allocation info for local variables in function 'glcdWriteString'
                                   1377 ;------------------------------------------------------------
                                   1378 ;page                      Allocated with name '_glcdWriteString_PARM_2'
                                   1379 ;string                    Allocated with name '_glcdWriteString_PARM_3'
                                   1380 ;column                    Allocated with name '_glcdWriteString_column_65536_68'
                                   1381 ;i                         Allocated with name '_glcdWriteString_i_65536_69'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	src/lcd.c:345: void glcdWriteString(uint8_t column, uint8_t page, char string[])
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function glcdWriteString
                                   1386 ;	-----------------------------------------
      001290                       1387 _glcdWriteString:
      001290 E5 82            [12] 1388 	mov	a,dpl
      001292 90 00 6B         [24] 1389 	mov	dptr,#_glcdWriteString_column_65536_68
      001295 F0               [24] 1390 	movx	@dptr,a
                                   1391 ;	src/lcd.c:348: while (string[i] != '\0')
      001296 90 00 67         [24] 1392 	mov	dptr,#_glcdWriteString_PARM_2
      001299 E0               [24] 1393 	movx	a,@dptr
      00129A FF               [12] 1394 	mov	r7,a
      00129B 90 00 68         [24] 1395 	mov	dptr,#_glcdWriteString_PARM_3
      00129E E0               [24] 1396 	movx	a,@dptr
      00129F FC               [12] 1397 	mov	r4,a
      0012A0 A3               [24] 1398 	inc	dptr
      0012A1 E0               [24] 1399 	movx	a,@dptr
      0012A2 FD               [12] 1400 	mov	r5,a
      0012A3 A3               [24] 1401 	inc	dptr
      0012A4 E0               [24] 1402 	movx	a,@dptr
      0012A5 FE               [12] 1403 	mov	r6,a
      0012A6 7B 00            [12] 1404 	mov	r3,#0x00
      0012A8                       1405 00101$:
      0012A8 EB               [12] 1406 	mov	a,r3
      0012A9 2C               [12] 1407 	add	a,r4
      0012AA F8               [12] 1408 	mov	r0,a
      0012AB E4               [12] 1409 	clr	a
      0012AC 3D               [12] 1410 	addc	a,r5
      0012AD F9               [12] 1411 	mov	r1,a
      0012AE 8E 02            [24] 1412 	mov	ar2,r6
      0012B0 88 82            [24] 1413 	mov	dpl,r0
      0012B2 89 83            [24] 1414 	mov	dph,r1
      0012B4 8A F0            [24] 1415 	mov	b,r2
      0012B6 12 49 AE         [24] 1416 	lcall	__gptrget
      0012B9 FA               [12] 1417 	mov	r2,a
      0012BA 60 36            [24] 1418 	jz	00104$
                                   1419 ;	src/lcd.c:350: glcdWriteChar(column, page, string[i]);
      0012BC 90 00 6B         [24] 1420 	mov	dptr,#_glcdWriteString_column_65536_68
      0012BF E0               [24] 1421 	movx	a,@dptr
      0012C0 F9               [12] 1422 	mov	r1,a
      0012C1 90 00 61         [24] 1423 	mov	dptr,#_glcdWriteChar_PARM_2
      0012C4 EF               [12] 1424 	mov	a,r7
      0012C5 F0               [24] 1425 	movx	@dptr,a
      0012C6 90 00 62         [24] 1426 	mov	dptr,#_glcdWriteChar_PARM_3
      0012C9 EA               [12] 1427 	mov	a,r2
      0012CA F0               [24] 1428 	movx	@dptr,a
      0012CB 89 82            [24] 1429 	mov	dpl,r1
      0012CD C0 07            [24] 1430 	push	ar7
      0012CF C0 06            [24] 1431 	push	ar6
      0012D1 C0 05            [24] 1432 	push	ar5
      0012D3 C0 04            [24] 1433 	push	ar4
      0012D5 C0 03            [24] 1434 	push	ar3
      0012D7 C0 01            [24] 1435 	push	ar1
      0012D9 12 11 DE         [24] 1436 	lcall	_glcdWriteChar
      0012DC D0 01            [24] 1437 	pop	ar1
      0012DE D0 03            [24] 1438 	pop	ar3
      0012E0 D0 04            [24] 1439 	pop	ar4
      0012E2 D0 05            [24] 1440 	pop	ar5
      0012E4 D0 06            [24] 1441 	pop	ar6
      0012E6 D0 07            [24] 1442 	pop	ar7
                                   1443 ;	src/lcd.c:352: i++;
      0012E8 0B               [12] 1444 	inc	r3
                                   1445 ;	src/lcd.c:353: column += CHARACTER_WIDTH + 1;
      0012E9 90 00 6B         [24] 1446 	mov	dptr,#_glcdWriteString_column_65536_68
      0012EC 74 04            [12] 1447 	mov	a,#0x04
      0012EE 29               [12] 1448 	add	a,r1
      0012EF F0               [24] 1449 	movx	@dptr,a
      0012F0 80 B6            [24] 1450 	sjmp	00101$
      0012F2                       1451 00104$:
                                   1452 ;	src/lcd.c:355: }
      0012F2 22               [24] 1453 	ret
                                   1454 ;------------------------------------------------------------
                                   1455 ;Allocation info for local variables in function 'absolute'
                                   1456 ;------------------------------------------------------------
                                   1457 ;value2                    Allocated with name '_absolute_PARM_2'
                                   1458 ;value1                    Allocated with name '_absolute_value1_65536_71'
                                   1459 ;result                    Allocated with name '_absolute_result_65536_72'
                                   1460 ;------------------------------------------------------------
                                   1461 ;	src/lcd.c:364: uint8_t absolute(int value1, int value2)
                                   1462 ;	-----------------------------------------
                                   1463 ;	 function absolute
                                   1464 ;	-----------------------------------------
      0012F3                       1465 _absolute:
      0012F3 AF 83            [24] 1466 	mov	r7,dph
      0012F5 E5 82            [12] 1467 	mov	a,dpl
      0012F7 90 00 6E         [24] 1468 	mov	dptr,#_absolute_value1_65536_71
      0012FA F0               [24] 1469 	movx	@dptr,a
      0012FB EF               [12] 1470 	mov	a,r7
      0012FC A3               [24] 1471 	inc	dptr
      0012FD F0               [24] 1472 	movx	@dptr,a
                                   1473 ;	src/lcd.c:367: if (value1 > value2)
      0012FE 90 00 6E         [24] 1474 	mov	dptr,#_absolute_value1_65536_71
      001301 E0               [24] 1475 	movx	a,@dptr
      001302 FE               [12] 1476 	mov	r6,a
      001303 A3               [24] 1477 	inc	dptr
      001304 E0               [24] 1478 	movx	a,@dptr
      001305 FF               [12] 1479 	mov	r7,a
      001306 90 00 6C         [24] 1480 	mov	dptr,#_absolute_PARM_2
      001309 E0               [24] 1481 	movx	a,@dptr
      00130A FC               [12] 1482 	mov	r4,a
      00130B A3               [24] 1483 	inc	dptr
      00130C E0               [24] 1484 	movx	a,@dptr
      00130D FD               [12] 1485 	mov	r5,a
      00130E C3               [12] 1486 	clr	c
      00130F EC               [12] 1487 	mov	a,r4
      001310 9E               [12] 1488 	subb	a,r6
      001311 ED               [12] 1489 	mov	a,r5
      001312 64 80            [12] 1490 	xrl	a,#0x80
      001314 8F F0            [24] 1491 	mov	b,r7
      001316 63 F0 80         [24] 1492 	xrl	b,#0x80
      001319 95 F0            [12] 1493 	subb	a,b
      00131B 50 0D            [24] 1494 	jnc	00102$
                                   1495 ;	src/lcd.c:369: result = value1 - value2;
      00131D 8E 03            [24] 1496 	mov	ar3,r6
      00131F 8C 02            [24] 1497 	mov	ar2,r4
      001321 90 00 70         [24] 1498 	mov	dptr,#_absolute_result_65536_72
      001324 EB               [12] 1499 	mov	a,r3
      001325 C3               [12] 1500 	clr	c
      001326 9A               [12] 1501 	subb	a,r2
      001327 F0               [24] 1502 	movx	@dptr,a
      001328 80 07            [24] 1503 	sjmp	00103$
      00132A                       1504 00102$:
                                   1505 ;	src/lcd.c:373: result = value2 - value1;
      00132A 90 00 70         [24] 1506 	mov	dptr,#_absolute_result_65536_72
      00132D EC               [12] 1507 	mov	a,r4
      00132E C3               [12] 1508 	clr	c
      00132F 9E               [12] 1509 	subb	a,r6
      001330 F0               [24] 1510 	movx	@dptr,a
      001331                       1511 00103$:
                                   1512 ;	src/lcd.c:375: return result;
      001331 90 00 70         [24] 1513 	mov	dptr,#_absolute_result_65536_72
      001334 E0               [24] 1514 	movx	a,@dptr
                                   1515 ;	src/lcd.c:376: }
      001335 F5 82            [12] 1516 	mov	dpl,a
      001337 22               [24] 1517 	ret
                                   1518 ;------------------------------------------------------------
                                   1519 ;Allocation info for local variables in function 'glcdDrawGraph'
                                   1520 ;------------------------------------------------------------
                                   1521 ;sloc0                     Allocated with name '_glcdDrawGraph_sloc0_1_0'
                                   1522 ;sloc1                     Allocated with name '_glcdDrawGraph_sloc1_1_0'
                                   1523 ;sloc2                     Allocated with name '_glcdDrawGraph_sloc2_1_0'
                                   1524 ;y1                        Allocated with name '_glcdDrawGraph_PARM_2'
                                   1525 ;x2                        Allocated with name '_glcdDrawGraph_PARM_3'
                                   1526 ;y2                        Allocated with name '_glcdDrawGraph_PARM_4'
                                   1527 ;x1                        Allocated with name '_glcdDrawGraph_x1_65536_75'
                                   1528 ;slope                     Allocated with name '_glcdDrawGraph_slope_65536_76'
                                   1529 ;temp                      Allocated with name '_glcdDrawGraph_temp_131072_77'
                                   1530 ;temp                      Allocated with name '_glcdDrawGraph_temp_131072_78'
                                   1531 ;deltaX                    Allocated with name '_glcdDrawGraph_deltaX_65537_79'
                                   1532 ;deltaY                    Allocated with name '_glcdDrawGraph_deltaY_65537_79'
                                   1533 ;error                     Allocated with name '_glcdDrawGraph_error_65537_79'
                                   1534 ;yStep                     Allocated with name '_glcdDrawGraph_yStep_65537_79'
                                   1535 ;y                         Allocated with name '_glcdDrawGraph_y_65538_82'
                                   1536 ;x                         Allocated with name '_glcdDrawGraph_x_131074_83'
                                   1537 ;------------------------------------------------------------
                                   1538 ;	src/lcd.c:386: void glcdDrawGraph(int x1, int y1, int x2, int y2)
                                   1539 ;	-----------------------------------------
                                   1540 ;	 function glcdDrawGraph
                                   1541 ;	-----------------------------------------
      001338                       1542 _glcdDrawGraph:
      001338 AF 83            [24] 1543 	mov	r7,dph
      00133A E5 82            [12] 1544 	mov	a,dpl
      00133C 90 00 77         [24] 1545 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      00133F F0               [24] 1546 	movx	@dptr,a
      001340 EF               [12] 1547 	mov	a,r7
      001341 A3               [24] 1548 	inc	dptr
      001342 F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	src/lcd.c:388: int slope = absolute(y1, y2) - absolute(x1, x2);
      001343 90 00 71         [24] 1551 	mov	dptr,#_glcdDrawGraph_PARM_2
      001346 E0               [24] 1552 	movx	a,@dptr
      001347 FE               [12] 1553 	mov	r6,a
      001348 A3               [24] 1554 	inc	dptr
      001349 E0               [24] 1555 	movx	a,@dptr
      00134A FF               [12] 1556 	mov	r7,a
      00134B 90 00 75         [24] 1557 	mov	dptr,#_glcdDrawGraph_PARM_4
      00134E E0               [24] 1558 	movx	a,@dptr
      00134F FC               [12] 1559 	mov	r4,a
      001350 A3               [24] 1560 	inc	dptr
      001351 E0               [24] 1561 	movx	a,@dptr
      001352 FD               [12] 1562 	mov	r5,a
      001353 90 00 6C         [24] 1563 	mov	dptr,#_absolute_PARM_2
      001356 EC               [12] 1564 	mov	a,r4
      001357 F0               [24] 1565 	movx	@dptr,a
      001358 ED               [12] 1566 	mov	a,r5
      001359 A3               [24] 1567 	inc	dptr
      00135A F0               [24] 1568 	movx	@dptr,a
      00135B 8E 82            [24] 1569 	mov	dpl,r6
      00135D 8F 83            [24] 1570 	mov	dph,r7
      00135F C0 07            [24] 1571 	push	ar7
      001361 C0 06            [24] 1572 	push	ar6
      001363 C0 05            [24] 1573 	push	ar5
      001365 C0 04            [24] 1574 	push	ar4
      001367 12 12 F3         [24] 1575 	lcall	_absolute
      00136A AB 82            [24] 1576 	mov	r3,dpl
      00136C 8B 0A            [24] 1577 	mov	_glcdDrawGraph_sloc1_1_0,r3
      00136E 75 0B 00         [24] 1578 	mov	(_glcdDrawGraph_sloc1_1_0 + 1),#0x00
      001371 90 00 77         [24] 1579 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      001374 E0               [24] 1580 	movx	a,@dptr
      001375 F8               [12] 1581 	mov	r0,a
      001376 A3               [24] 1582 	inc	dptr
      001377 E0               [24] 1583 	movx	a,@dptr
      001378 F9               [12] 1584 	mov	r1,a
      001379 90 00 73         [24] 1585 	mov	dptr,#_glcdDrawGraph_PARM_3
      00137C E0               [24] 1586 	movx	a,@dptr
      00137D F5 08            [12] 1587 	mov	_glcdDrawGraph_sloc0_1_0,a
      00137F A3               [24] 1588 	inc	dptr
      001380 E0               [24] 1589 	movx	a,@dptr
      001381 F5 09            [12] 1590 	mov	(_glcdDrawGraph_sloc0_1_0 + 1),a
      001383 90 00 6C         [24] 1591 	mov	dptr,#_absolute_PARM_2
      001386 E5 08            [12] 1592 	mov	a,_glcdDrawGraph_sloc0_1_0
      001388 F0               [24] 1593 	movx	@dptr,a
      001389 E5 09            [12] 1594 	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
      00138B A3               [24] 1595 	inc	dptr
      00138C F0               [24] 1596 	movx	@dptr,a
      00138D 88 82            [24] 1597 	mov	dpl,r0
      00138F 89 83            [24] 1598 	mov	dph,r1
      001391 C0 01            [24] 1599 	push	ar1
      001393 C0 00            [24] 1600 	push	ar0
      001395 12 12 F3         [24] 1601 	lcall	_absolute
      001398 AB 82            [24] 1602 	mov	r3,dpl
      00139A D0 00            [24] 1603 	pop	ar0
      00139C D0 01            [24] 1604 	pop	ar1
      00139E D0 04            [24] 1605 	pop	ar4
      0013A0 D0 05            [24] 1606 	pop	ar5
      0013A2 D0 06            [24] 1607 	pop	ar6
      0013A4 D0 07            [24] 1608 	pop	ar7
      0013A6 7A 00            [12] 1609 	mov	r2,#0x00
      0013A8 E5 0A            [12] 1610 	mov	a,_glcdDrawGraph_sloc1_1_0
      0013AA C3               [12] 1611 	clr	c
      0013AB 9B               [12] 1612 	subb	a,r3
      0013AC FB               [12] 1613 	mov	r3,a
      0013AD E5 0B            [12] 1614 	mov	a,(_glcdDrawGraph_sloc1_1_0 + 1)
      0013AF 9A               [12] 1615 	subb	a,r2
      0013B0 FA               [12] 1616 	mov	r2,a
                                   1617 ;	src/lcd.c:389: if (slope > 0)
      0013B1 C3               [12] 1618 	clr	c
      0013B2 E4               [12] 1619 	clr	a
      0013B3 9B               [12] 1620 	subb	a,r3
      0013B4 74 80            [12] 1621 	mov	a,#(0x00 ^ 0x80)
      0013B6 8A F0            [24] 1622 	mov	b,r2
      0013B8 63 F0 80         [24] 1623 	xrl	b,#0x80
      0013BB 95 F0            [12] 1624 	subb	a,b
      0013BD E4               [12] 1625 	clr	a
      0013BE 33               [12] 1626 	rlc	a
      0013BF FB               [12] 1627 	mov	r3,a
      0013C0 60 42            [24] 1628 	jz	00102$
                                   1629 ;	src/lcd.c:393: temp = x1;
      0013C2 90 00 79         [24] 1630 	mov	dptr,#_glcdDrawGraph_temp_131072_77
      0013C5 E8               [12] 1631 	mov	a,r0
      0013C6 F0               [24] 1632 	movx	@dptr,a
      0013C7 E9               [12] 1633 	mov	a,r1
      0013C8 A3               [24] 1634 	inc	dptr
      0013C9 F0               [24] 1635 	movx	@dptr,a
                                   1636 ;	src/lcd.c:394: x1 = y1;
      0013CA 90 00 77         [24] 1637 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      0013CD EE               [12] 1638 	mov	a,r6
      0013CE F0               [24] 1639 	movx	@dptr,a
      0013CF EF               [12] 1640 	mov	a,r7
      0013D0 A3               [24] 1641 	inc	dptr
      0013D1 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	src/lcd.c:395: y1 = temp;
      0013D2 90 00 79         [24] 1644 	mov	dptr,#_glcdDrawGraph_temp_131072_77
      0013D5 E0               [24] 1645 	movx	a,@dptr
      0013D6 FE               [12] 1646 	mov	r6,a
      0013D7 A3               [24] 1647 	inc	dptr
      0013D8 E0               [24] 1648 	movx	a,@dptr
      0013D9 FF               [12] 1649 	mov	r7,a
      0013DA 90 00 71         [24] 1650 	mov	dptr,#_glcdDrawGraph_PARM_2
      0013DD EE               [12] 1651 	mov	a,r6
      0013DE F0               [24] 1652 	movx	@dptr,a
      0013DF EF               [12] 1653 	mov	a,r7
      0013E0 A3               [24] 1654 	inc	dptr
      0013E1 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	src/lcd.c:398: temp = x2;
      0013E2 90 00 79         [24] 1657 	mov	dptr,#_glcdDrawGraph_temp_131072_77
      0013E5 E5 08            [12] 1658 	mov	a,_glcdDrawGraph_sloc0_1_0
      0013E7 F0               [24] 1659 	movx	@dptr,a
      0013E8 E5 09            [12] 1660 	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
      0013EA A3               [24] 1661 	inc	dptr
      0013EB F0               [24] 1662 	movx	@dptr,a
                                   1663 ;	src/lcd.c:399: x2 = y2;
      0013EC 90 00 73         [24] 1664 	mov	dptr,#_glcdDrawGraph_PARM_3
      0013EF EC               [12] 1665 	mov	a,r4
      0013F0 F0               [24] 1666 	movx	@dptr,a
      0013F1 ED               [12] 1667 	mov	a,r5
      0013F2 A3               [24] 1668 	inc	dptr
      0013F3 F0               [24] 1669 	movx	@dptr,a
                                   1670 ;	src/lcd.c:400: y2 = temp;
      0013F4 90 00 79         [24] 1671 	mov	dptr,#_glcdDrawGraph_temp_131072_77
      0013F7 E0               [24] 1672 	movx	a,@dptr
      0013F8 FE               [12] 1673 	mov	r6,a
      0013F9 A3               [24] 1674 	inc	dptr
      0013FA E0               [24] 1675 	movx	a,@dptr
      0013FB FF               [12] 1676 	mov	r7,a
      0013FC 90 00 75         [24] 1677 	mov	dptr,#_glcdDrawGraph_PARM_4
      0013FF EE               [12] 1678 	mov	a,r6
      001400 F0               [24] 1679 	movx	@dptr,a
      001401 EF               [12] 1680 	mov	a,r7
      001402 A3               [24] 1681 	inc	dptr
      001403 F0               [24] 1682 	movx	@dptr,a
      001404                       1683 00102$:
                                   1684 ;	src/lcd.c:403: if (x1 > x2)
      001404 90 00 77         [24] 1685 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      001407 E0               [24] 1686 	movx	a,@dptr
      001408 FE               [12] 1687 	mov	r6,a
      001409 A3               [24] 1688 	inc	dptr
      00140A E0               [24] 1689 	movx	a,@dptr
      00140B FF               [12] 1690 	mov	r7,a
      00140C 90 00 73         [24] 1691 	mov	dptr,#_glcdDrawGraph_PARM_3
      00140F E0               [24] 1692 	movx	a,@dptr
      001410 FC               [12] 1693 	mov	r4,a
      001411 A3               [24] 1694 	inc	dptr
      001412 E0               [24] 1695 	movx	a,@dptr
      001413 FD               [12] 1696 	mov	r5,a
      001414 C3               [12] 1697 	clr	c
      001415 EC               [12] 1698 	mov	a,r4
      001416 9E               [12] 1699 	subb	a,r6
      001417 ED               [12] 1700 	mov	a,r5
      001418 64 80            [12] 1701 	xrl	a,#0x80
      00141A 8F F0            [24] 1702 	mov	b,r7
      00141C 63 F0 80         [24] 1703 	xrl	b,#0x80
      00141F 95 F0            [12] 1704 	subb	a,b
      001421 50 50            [24] 1705 	jnc	00104$
                                   1706 ;	src/lcd.c:407: temp = x1;
      001423 90 00 7B         [24] 1707 	mov	dptr,#_glcdDrawGraph_temp_131072_78
      001426 EE               [12] 1708 	mov	a,r6
      001427 F0               [24] 1709 	movx	@dptr,a
      001428 EF               [12] 1710 	mov	a,r7
      001429 A3               [24] 1711 	inc	dptr
      00142A F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	src/lcd.c:408: x1 = x2;
      00142B 90 00 77         [24] 1714 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      00142E EC               [12] 1715 	mov	a,r4
      00142F F0               [24] 1716 	movx	@dptr,a
      001430 ED               [12] 1717 	mov	a,r5
      001431 A3               [24] 1718 	inc	dptr
      001432 F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	src/lcd.c:409: x2 = temp;
      001433 90 00 7B         [24] 1721 	mov	dptr,#_glcdDrawGraph_temp_131072_78
      001436 E0               [24] 1722 	movx	a,@dptr
      001437 FE               [12] 1723 	mov	r6,a
      001438 A3               [24] 1724 	inc	dptr
      001439 E0               [24] 1725 	movx	a,@dptr
      00143A FF               [12] 1726 	mov	r7,a
      00143B 90 00 73         [24] 1727 	mov	dptr,#_glcdDrawGraph_PARM_3
      00143E EE               [12] 1728 	mov	a,r6
      00143F F0               [24] 1729 	movx	@dptr,a
      001440 EF               [12] 1730 	mov	a,r7
      001441 A3               [24] 1731 	inc	dptr
      001442 F0               [24] 1732 	movx	@dptr,a
                                   1733 ;	src/lcd.c:412: temp = y1;
      001443 90 00 71         [24] 1734 	mov	dptr,#_glcdDrawGraph_PARM_2
      001446 E0               [24] 1735 	movx	a,@dptr
      001447 FE               [12] 1736 	mov	r6,a
      001448 A3               [24] 1737 	inc	dptr
      001449 E0               [24] 1738 	movx	a,@dptr
      00144A FF               [12] 1739 	mov	r7,a
      00144B 90 00 7B         [24] 1740 	mov	dptr,#_glcdDrawGraph_temp_131072_78
      00144E EE               [12] 1741 	mov	a,r6
      00144F F0               [24] 1742 	movx	@dptr,a
      001450 EF               [12] 1743 	mov	a,r7
      001451 A3               [24] 1744 	inc	dptr
      001452 F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	src/lcd.c:413: y1 = y2;
      001453 90 00 75         [24] 1747 	mov	dptr,#_glcdDrawGraph_PARM_4
      001456 E0               [24] 1748 	movx	a,@dptr
      001457 FE               [12] 1749 	mov	r6,a
      001458 A3               [24] 1750 	inc	dptr
      001459 E0               [24] 1751 	movx	a,@dptr
      00145A FF               [12] 1752 	mov	r7,a
      00145B 90 00 71         [24] 1753 	mov	dptr,#_glcdDrawGraph_PARM_2
      00145E EE               [12] 1754 	mov	a,r6
      00145F F0               [24] 1755 	movx	@dptr,a
      001460 EF               [12] 1756 	mov	a,r7
      001461 A3               [24] 1757 	inc	dptr
      001462 F0               [24] 1758 	movx	@dptr,a
                                   1759 ;	src/lcd.c:414: y2 = temp;
      001463 90 00 7B         [24] 1760 	mov	dptr,#_glcdDrawGraph_temp_131072_78
      001466 E0               [24] 1761 	movx	a,@dptr
      001467 FE               [12] 1762 	mov	r6,a
      001468 A3               [24] 1763 	inc	dptr
      001469 E0               [24] 1764 	movx	a,@dptr
      00146A FF               [12] 1765 	mov	r7,a
      00146B 90 00 75         [24] 1766 	mov	dptr,#_glcdDrawGraph_PARM_4
      00146E EE               [12] 1767 	mov	a,r6
      00146F F0               [24] 1768 	movx	@dptr,a
      001470 EF               [12] 1769 	mov	a,r7
      001471 A3               [24] 1770 	inc	dptr
      001472 F0               [24] 1771 	movx	@dptr,a
      001473                       1772 00104$:
                                   1773 ;	src/lcd.c:417: int deltaX = x2 - x1;
      001473 90 00 77         [24] 1774 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      001476 E0               [24] 1775 	movx	a,@dptr
      001477 FE               [12] 1776 	mov	r6,a
      001478 A3               [24] 1777 	inc	dptr
      001479 E0               [24] 1778 	movx	a,@dptr
      00147A FF               [12] 1779 	mov	r7,a
      00147B 90 00 73         [24] 1780 	mov	dptr,#_glcdDrawGraph_PARM_3
      00147E E0               [24] 1781 	movx	a,@dptr
      00147F FC               [12] 1782 	mov	r4,a
      001480 A3               [24] 1783 	inc	dptr
      001481 E0               [24] 1784 	movx	a,@dptr
      001482 FD               [12] 1785 	mov	r5,a
      001483 EC               [12] 1786 	mov	a,r4
      001484 C3               [12] 1787 	clr	c
      001485 9E               [12] 1788 	subb	a,r6
      001486 FE               [12] 1789 	mov	r6,a
      001487 ED               [12] 1790 	mov	a,r5
      001488 9F               [12] 1791 	subb	a,r7
      001489 FF               [12] 1792 	mov	r7,a
                                   1793 ;	src/lcd.c:418: int deltaY = absolute(y2, y1);
      00148A 90 00 75         [24] 1794 	mov	dptr,#_glcdDrawGraph_PARM_4
      00148D E0               [24] 1795 	movx	a,@dptr
      00148E FC               [12] 1796 	mov	r4,a
      00148F A3               [24] 1797 	inc	dptr
      001490 E0               [24] 1798 	movx	a,@dptr
      001491 FD               [12] 1799 	mov	r5,a
      001492 90 00 71         [24] 1800 	mov	dptr,#_glcdDrawGraph_PARM_2
      001495 E0               [24] 1801 	movx	a,@dptr
      001496 F9               [12] 1802 	mov	r1,a
      001497 A3               [24] 1803 	inc	dptr
      001498 E0               [24] 1804 	movx	a,@dptr
      001499 FA               [12] 1805 	mov	r2,a
      00149A 90 00 6C         [24] 1806 	mov	dptr,#_absolute_PARM_2
      00149D E9               [12] 1807 	mov	a,r1
      00149E F0               [24] 1808 	movx	@dptr,a
      00149F EA               [12] 1809 	mov	a,r2
      0014A0 A3               [24] 1810 	inc	dptr
      0014A1 F0               [24] 1811 	movx	@dptr,a
      0014A2 8C 82            [24] 1812 	mov	dpl,r4
      0014A4 8D 83            [24] 1813 	mov	dph,r5
      0014A6 C0 07            [24] 1814 	push	ar7
      0014A8 C0 06            [24] 1815 	push	ar6
      0014AA C0 05            [24] 1816 	push	ar5
      0014AC C0 04            [24] 1817 	push	ar4
      0014AE C0 03            [24] 1818 	push	ar3
      0014B0 C0 02            [24] 1819 	push	ar2
      0014B2 C0 01            [24] 1820 	push	ar1
      0014B4 12 12 F3         [24] 1821 	lcall	_absolute
      0014B7 A8 82            [24] 1822 	mov	r0,dpl
      0014B9 D0 01            [24] 1823 	pop	ar1
      0014BB D0 02            [24] 1824 	pop	ar2
      0014BD D0 03            [24] 1825 	pop	ar3
      0014BF D0 04            [24] 1826 	pop	ar4
      0014C1 D0 05            [24] 1827 	pop	ar5
      0014C3 D0 06            [24] 1828 	pop	ar6
      0014C5 D0 07            [24] 1829 	pop	ar7
      0014C7 88 0A            [24] 1830 	mov	_glcdDrawGraph_sloc1_1_0,r0
      0014C9 75 0B 00         [24] 1831 	mov	(_glcdDrawGraph_sloc1_1_0 + 1),#0x00
                                   1832 ;	src/lcd.c:419: int error = deltaX / 2;
      0014CC 90 01 EA         [24] 1833 	mov	dptr,#__divsint_PARM_2
      0014CF 74 02            [12] 1834 	mov	a,#0x02
      0014D1 F0               [24] 1835 	movx	@dptr,a
      0014D2 E4               [12] 1836 	clr	a
      0014D3 A3               [24] 1837 	inc	dptr
      0014D4 F0               [24] 1838 	movx	@dptr,a
      0014D5 8E 82            [24] 1839 	mov	dpl,r6
      0014D7 8F 83            [24] 1840 	mov	dph,r7
      0014D9 C0 07            [24] 1841 	push	ar7
      0014DB C0 06            [24] 1842 	push	ar6
      0014DD C0 05            [24] 1843 	push	ar5
      0014DF C0 04            [24] 1844 	push	ar4
      0014E1 C0 03            [24] 1845 	push	ar3
      0014E3 C0 02            [24] 1846 	push	ar2
      0014E5 C0 01            [24] 1847 	push	ar1
      0014E7 12 3D F3         [24] 1848 	lcall	__divsint
      0014EA E5 82            [12] 1849 	mov	a,dpl
      0014EC 85 83 F0         [24] 1850 	mov	b,dph
      0014EF D0 01            [24] 1851 	pop	ar1
      0014F1 D0 02            [24] 1852 	pop	ar2
      0014F3 D0 03            [24] 1853 	pop	ar3
      0014F5 D0 04            [24] 1854 	pop	ar4
      0014F7 D0 05            [24] 1855 	pop	ar5
      0014F9 D0 06            [24] 1856 	pop	ar6
      0014FB D0 07            [24] 1857 	pop	ar7
      0014FD 90 00 7D         [24] 1858 	mov	dptr,#_glcdDrawGraph_error_65537_79
      001500 F0               [24] 1859 	movx	@dptr,a
      001501 E5 F0            [12] 1860 	mov	a,b
      001503 A3               [24] 1861 	inc	dptr
      001504 F0               [24] 1862 	movx	@dptr,a
                                   1863 ;	src/lcd.c:421: if (y1 < y2)
      001505 C3               [12] 1864 	clr	c
      001506 E9               [12] 1865 	mov	a,r1
      001507 9C               [12] 1866 	subb	a,r4
      001508 EA               [12] 1867 	mov	a,r2
      001509 64 80            [12] 1868 	xrl	a,#0x80
      00150B 8D F0            [24] 1869 	mov	b,r5
      00150D 63 F0 80         [24] 1870 	xrl	b,#0x80
      001510 95 F0            [12] 1871 	subb	a,b
      001512 50 0B            [24] 1872 	jnc	00106$
                                   1873 ;	src/lcd.c:423: yStep = 1;
      001514 90 00 7F         [24] 1874 	mov	dptr,#_glcdDrawGraph_yStep_65537_79
      001517 74 01            [12] 1875 	mov	a,#0x01
      001519 F0               [24] 1876 	movx	@dptr,a
      00151A E4               [12] 1877 	clr	a
      00151B A3               [24] 1878 	inc	dptr
      00151C F0               [24] 1879 	movx	@dptr,a
      00151D 80 08            [24] 1880 	sjmp	00107$
      00151F                       1881 00106$:
                                   1882 ;	src/lcd.c:427: yStep = -1;
      00151F 90 00 7F         [24] 1883 	mov	dptr,#_glcdDrawGraph_yStep_65537_79
      001522 74 FF            [12] 1884 	mov	a,#0xff
      001524 F0               [24] 1885 	movx	@dptr,a
      001525 A3               [24] 1886 	inc	dptr
      001526 F0               [24] 1887 	movx	@dptr,a
      001527                       1888 00107$:
                                   1889 ;	src/lcd.c:430: int y = y1;
      001527 90 00 71         [24] 1890 	mov	dptr,#_glcdDrawGraph_PARM_2
      00152A E0               [24] 1891 	movx	a,@dptr
      00152B FC               [12] 1892 	mov	r4,a
      00152C A3               [24] 1893 	inc	dptr
      00152D E0               [24] 1894 	movx	a,@dptr
      00152E FD               [12] 1895 	mov	r5,a
      00152F 90 00 81         [24] 1896 	mov	dptr,#_glcdDrawGraph_y_65538_82
      001532 EC               [12] 1897 	mov	a,r4
      001533 F0               [24] 1898 	movx	@dptr,a
      001534 ED               [12] 1899 	mov	a,r5
      001535 A3               [24] 1900 	inc	dptr
      001536 F0               [24] 1901 	movx	@dptr,a
                                   1902 ;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
      001537 90 00 77         [24] 1903 	mov	dptr,#_glcdDrawGraph_x1_65536_75
      00153A E0               [24] 1904 	movx	a,@dptr
      00153B FC               [12] 1905 	mov	r4,a
      00153C A3               [24] 1906 	inc	dptr
      00153D E0               [24] 1907 	movx	a,@dptr
      00153E FD               [12] 1908 	mov	r5,a
      00153F 90 00 7F         [24] 1909 	mov	dptr,#_glcdDrawGraph_yStep_65537_79
      001542 E0               [24] 1910 	movx	a,@dptr
      001543 F9               [12] 1911 	mov	r1,a
      001544 A3               [24] 1912 	inc	dptr
      001545 E0               [24] 1913 	movx	a,@dptr
      001546 FA               [12] 1914 	mov	r2,a
      001547 90 00 73         [24] 1915 	mov	dptr,#_glcdDrawGraph_PARM_3
      00154A E0               [24] 1916 	movx	a,@dptr
      00154B F5 08            [12] 1917 	mov	_glcdDrawGraph_sloc0_1_0,a
      00154D A3               [24] 1918 	inc	dptr
      00154E E0               [24] 1919 	movx	a,@dptr
      00154F F5 09            [12] 1920 	mov	(_glcdDrawGraph_sloc0_1_0 + 1),a
      001551                       1921 00115$:
      001551 C3               [12] 1922 	clr	c
      001552 E5 08            [12] 1923 	mov	a,_glcdDrawGraph_sloc0_1_0
      001554 9C               [12] 1924 	subb	a,r4
      001555 E5 09            [12] 1925 	mov	a,(_glcdDrawGraph_sloc0_1_0 + 1)
      001557 64 80            [12] 1926 	xrl	a,#0x80
      001559 8D F0            [24] 1927 	mov	b,r5
      00155B 63 F0 80         [24] 1928 	xrl	b,#0x80
      00155E 95 F0            [12] 1929 	subb	a,b
      001560 50 01            [24] 1930 	jnc	00151$
      001562 22               [24] 1931 	ret
      001563                       1932 00151$:
                                   1933 ;	src/lcd.c:433: if (slope > 0)
      001563 EB               [12] 1934 	mov	a,r3
      001564 60 40            [24] 1935 	jz	00109$
                                   1936 ;	src/lcd.c:435: setPixel(x, y, 1);
      001566 C0 01            [24] 1937 	push	ar1
      001568 C0 02            [24] 1938 	push	ar2
      00156A 8C 00            [24] 1939 	mov	ar0,r4
      00156C 90 00 81         [24] 1940 	mov	dptr,#_glcdDrawGraph_y_65538_82
      00156F E0               [24] 1941 	movx	a,@dptr
      001570 F9               [12] 1942 	mov	r1,a
      001571 A3               [24] 1943 	inc	dptr
      001572 E0               [24] 1944 	movx	a,@dptr
      001573 FA               [12] 1945 	mov	r2,a
      001574 90 00 5D         [24] 1946 	mov	dptr,#_setPixel_PARM_2
      001577 E9               [12] 1947 	mov	a,r1
      001578 F0               [24] 1948 	movx	@dptr,a
      001579 90 00 5E         [24] 1949 	mov	dptr,#_setPixel_PARM_3
      00157C 74 01            [12] 1950 	mov	a,#0x01
      00157E F0               [24] 1951 	movx	@dptr,a
      00157F 88 82            [24] 1952 	mov	dpl,r0
      001581 C0 07            [24] 1953 	push	ar7
      001583 C0 06            [24] 1954 	push	ar6
      001585 C0 05            [24] 1955 	push	ar5
      001587 C0 04            [24] 1956 	push	ar4
      001589 C0 03            [24] 1957 	push	ar3
      00158B C0 02            [24] 1958 	push	ar2
      00158D C0 01            [24] 1959 	push	ar1
      00158F 12 10 F8         [24] 1960 	lcall	_setPixel
      001592 D0 01            [24] 1961 	pop	ar1
      001594 D0 02            [24] 1962 	pop	ar2
      001596 D0 03            [24] 1963 	pop	ar3
      001598 D0 04            [24] 1964 	pop	ar4
      00159A D0 05            [24] 1965 	pop	ar5
      00159C D0 06            [24] 1966 	pop	ar6
      00159E D0 07            [24] 1967 	pop	ar7
      0015A0 D0 02            [24] 1968 	pop	ar2
      0015A2 D0 01            [24] 1969 	pop	ar1
      0015A4 80 3C            [24] 1970 	sjmp	00110$
      0015A6                       1971 00109$:
                                   1972 ;	src/lcd.c:439: setPixel(y, x, 1);
      0015A6 C0 01            [24] 1973 	push	ar1
      0015A8 C0 02            [24] 1974 	push	ar2
      0015AA 90 00 81         [24] 1975 	mov	dptr,#_glcdDrawGraph_y_65538_82
      0015AD E0               [24] 1976 	movx	a,@dptr
      0015AE F8               [12] 1977 	mov	r0,a
      0015AF A3               [24] 1978 	inc	dptr
      0015B0 E0               [24] 1979 	movx	a,@dptr
      0015B1 FA               [12] 1980 	mov	r2,a
      0015B2 90 00 5D         [24] 1981 	mov	dptr,#_setPixel_PARM_2
      0015B5 EC               [12] 1982 	mov	a,r4
      0015B6 F0               [24] 1983 	movx	@dptr,a
      0015B7 90 00 5E         [24] 1984 	mov	dptr,#_setPixel_PARM_3
      0015BA 74 01            [12] 1985 	mov	a,#0x01
      0015BC F0               [24] 1986 	movx	@dptr,a
      0015BD 88 82            [24] 1987 	mov	dpl,r0
      0015BF C0 07            [24] 1988 	push	ar7
      0015C1 C0 06            [24] 1989 	push	ar6
      0015C3 C0 05            [24] 1990 	push	ar5
      0015C5 C0 04            [24] 1991 	push	ar4
      0015C7 C0 03            [24] 1992 	push	ar3
      0015C9 C0 02            [24] 1993 	push	ar2
      0015CB C0 01            [24] 1994 	push	ar1
      0015CD 12 10 F8         [24] 1995 	lcall	_setPixel
      0015D0 D0 01            [24] 1996 	pop	ar1
      0015D2 D0 02            [24] 1997 	pop	ar2
      0015D4 D0 03            [24] 1998 	pop	ar3
      0015D6 D0 04            [24] 1999 	pop	ar4
      0015D8 D0 05            [24] 2000 	pop	ar5
      0015DA D0 06            [24] 2001 	pop	ar6
      0015DC D0 07            [24] 2002 	pop	ar7
                                   2003 ;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
      0015DE D0 02            [24] 2004 	pop	ar2
      0015E0 D0 01            [24] 2005 	pop	ar1
                                   2006 ;	src/lcd.c:439: setPixel(y, x, 1);
      0015E2                       2007 00110$:
                                   2008 ;	src/lcd.c:441: error = error - deltaY;
      0015E2 C0 01            [24] 2009 	push	ar1
      0015E4 C0 02            [24] 2010 	push	ar2
      0015E6 90 00 7D         [24] 2011 	mov	dptr,#_glcdDrawGraph_error_65537_79
      0015E9 E0               [24] 2012 	movx	a,@dptr
      0015EA F8               [12] 2013 	mov	r0,a
      0015EB A3               [24] 2014 	inc	dptr
      0015EC E0               [24] 2015 	movx	a,@dptr
      0015ED FA               [12] 2016 	mov	r2,a
      0015EE 90 00 7D         [24] 2017 	mov	dptr,#_glcdDrawGraph_error_65537_79
      0015F1 E8               [12] 2018 	mov	a,r0
      0015F2 C3               [12] 2019 	clr	c
      0015F3 95 0A            [12] 2020 	subb	a,_glcdDrawGraph_sloc1_1_0
      0015F5 F0               [24] 2021 	movx	@dptr,a
      0015F6 EA               [12] 2022 	mov	a,r2
      0015F7 95 0B            [12] 2023 	subb	a,(_glcdDrawGraph_sloc1_1_0 + 1)
      0015F9 A3               [24] 2024 	inc	dptr
      0015FA F0               [24] 2025 	movx	@dptr,a
                                   2026 ;	src/lcd.c:442: if (error < 0)
      0015FB 90 00 7D         [24] 2027 	mov	dptr,#_glcdDrawGraph_error_65537_79
      0015FE E0               [24] 2028 	movx	a,@dptr
      0015FF F5 0C            [12] 2029 	mov	_glcdDrawGraph_sloc2_1_0,a
      001601 A3               [24] 2030 	inc	dptr
      001602 E0               [24] 2031 	movx	a,@dptr
      001603 F5 0D            [12] 2032 	mov	(_glcdDrawGraph_sloc2_1_0 + 1),a
      001605 D0 02            [24] 2033 	pop	ar2
      001607 D0 01            [24] 2034 	pop	ar1
      001609 30 E7 22         [24] 2035 	jnb	acc.7,00116$
                                   2036 ;	src/lcd.c:444: y = y + yStep;
      00160C C0 03            [24] 2037 	push	ar3
      00160E 90 00 81         [24] 2038 	mov	dptr,#_glcdDrawGraph_y_65538_82
      001611 E0               [24] 2039 	movx	a,@dptr
      001612 F8               [12] 2040 	mov	r0,a
      001613 A3               [24] 2041 	inc	dptr
      001614 E0               [24] 2042 	movx	a,@dptr
      001615 FB               [12] 2043 	mov	r3,a
      001616 90 00 81         [24] 2044 	mov	dptr,#_glcdDrawGraph_y_65538_82
      001619 E9               [12] 2045 	mov	a,r1
      00161A 28               [12] 2046 	add	a,r0
      00161B F0               [24] 2047 	movx	@dptr,a
      00161C EA               [12] 2048 	mov	a,r2
      00161D 3B               [12] 2049 	addc	a,r3
      00161E A3               [24] 2050 	inc	dptr
      00161F F0               [24] 2051 	movx	@dptr,a
                                   2052 ;	src/lcd.c:445: error = error + deltaX;
      001620 90 00 7D         [24] 2053 	mov	dptr,#_glcdDrawGraph_error_65537_79
      001623 EE               [12] 2054 	mov	a,r6
      001624 25 0C            [12] 2055 	add	a,_glcdDrawGraph_sloc2_1_0
      001626 F0               [24] 2056 	movx	@dptr,a
      001627 EF               [12] 2057 	mov	a,r7
      001628 35 0D            [12] 2058 	addc	a,(_glcdDrawGraph_sloc2_1_0 + 1)
      00162A A3               [24] 2059 	inc	dptr
      00162B F0               [24] 2060 	movx	@dptr,a
                                   2061 ;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
      00162C D0 03            [24] 2062 	pop	ar3
                                   2063 ;	src/lcd.c:445: error = error + deltaX;
      00162E                       2064 00116$:
                                   2065 ;	src/lcd.c:431: for (int x = x1; x <= x2; x++)
      00162E 0C               [12] 2066 	inc	r4
      00162F BC 00 01         [24] 2067 	cjne	r4,#0x00,00154$
      001632 0D               [12] 2068 	inc	r5
      001633                       2069 00154$:
                                   2070 ;	src/lcd.c:448: }
      001633 02 15 51         [24] 2071 	ljmp	00115$
                                   2072 ;------------------------------------------------------------
                                   2073 ;Allocation info for local variables in function 'itoa'
                                   2074 ;------------------------------------------------------------
                                   2075 ;sloc0                     Allocated with name '_itoa_sloc0_1_0'
                                   2076 ;result                    Allocated with name '_itoa_PARM_2'
                                   2077 ;val                       Allocated with name '_itoa_val_65536_88'
                                   2078 ;count                     Allocated with name '_itoa_count_65537_91'
                                   2079 ;digits                    Allocated with name '_itoa_digits_65537_91'
                                   2080 ;i                         Allocated with name '_itoa_i_65538_93'
                                   2081 ;j                         Allocated with name '_itoa_j_131074_94'
                                   2082 ;------------------------------------------------------------
                                   2083 ;	src/lcd.c:457: uint8_t itoa(uint8_t val, char result[])
                                   2084 ;	-----------------------------------------
                                   2085 ;	 function itoa
                                   2086 ;	-----------------------------------------
      001636                       2087 _itoa:
      001636 E5 82            [12] 2088 	mov	a,dpl
      001638 90 00 86         [24] 2089 	mov	dptr,#_itoa_val_65536_88
      00163B F0               [24] 2090 	movx	@dptr,a
                                   2091 ;	src/lcd.c:459: if (val == 0)
      00163C E0               [24] 2092 	movx	a,@dptr
      00163D 70 1A            [24] 2093 	jnz	00114$
                                   2094 ;	src/lcd.c:461: result[0] = '0';
      00163F 90 00 83         [24] 2095 	mov	dptr,#_itoa_PARM_2
      001642 E0               [24] 2096 	movx	a,@dptr
      001643 FD               [12] 2097 	mov	r5,a
      001644 A3               [24] 2098 	inc	dptr
      001645 E0               [24] 2099 	movx	a,@dptr
      001646 FE               [12] 2100 	mov	r6,a
      001647 A3               [24] 2101 	inc	dptr
      001648 E0               [24] 2102 	movx	a,@dptr
      001649 FF               [12] 2103 	mov	r7,a
      00164A 8D 82            [24] 2104 	mov	dpl,r5
      00164C 8E 83            [24] 2105 	mov	dph,r6
      00164E 8F F0            [24] 2106 	mov	b,r7
      001650 74 30            [12] 2107 	mov	a,#0x30
      001652 12 3B 9B         [24] 2108 	lcall	__gptrput
                                   2109 ;	src/lcd.c:462: return 1;
      001655 75 82 01         [24] 2110 	mov	dpl,#0x01
      001658 22               [24] 2111 	ret
                                   2112 ;	src/lcd.c:467: while (val != 0)
      001659                       2113 00114$:
      001659 7F 00            [12] 2114 	mov	r7,#0x00
      00165B                       2115 00103$:
      00165B 90 00 86         [24] 2116 	mov	dptr,#_itoa_val_65536_88
      00165E E0               [24] 2117 	movx	a,@dptr
      00165F FE               [12] 2118 	mov	r6,a
      001660 E0               [24] 2119 	movx	a,@dptr
      001661 60 52            [24] 2120 	jz	00105$
                                   2121 ;	src/lcd.c:470: digits[count] = val % 10;
      001663 EF               [12] 2122 	mov	a,r7
      001664 24 87            [12] 2123 	add	a,#_itoa_digits_65537_91
      001666 FC               [12] 2124 	mov	r4,a
      001667 E4               [12] 2125 	clr	a
      001668 34 00            [12] 2126 	addc	a,#(_itoa_digits_65537_91 >> 8)
      00166A FD               [12] 2127 	mov	r5,a
      00166B 7B 00            [12] 2128 	mov	r3,#0x00
      00166D 90 01 E1         [24] 2129 	mov	dptr,#__modsint_PARM_2
      001670 74 0A            [12] 2130 	mov	a,#0x0a
      001672 F0               [24] 2131 	movx	@dptr,a
      001673 E4               [12] 2132 	clr	a
      001674 A3               [24] 2133 	inc	dptr
      001675 F0               [24] 2134 	movx	@dptr,a
      001676 8E 82            [24] 2135 	mov	dpl,r6
      001678 8B 83            [24] 2136 	mov	dph,r3
      00167A C0 07            [24] 2137 	push	ar7
      00167C C0 06            [24] 2138 	push	ar6
      00167E C0 05            [24] 2139 	push	ar5
      001680 C0 04            [24] 2140 	push	ar4
      001682 C0 03            [24] 2141 	push	ar3
      001684 12 3C DF         [24] 2142 	lcall	__modsint
      001687 A9 82            [24] 2143 	mov	r1,dpl
      001689 D0 03            [24] 2144 	pop	ar3
      00168B D0 04            [24] 2145 	pop	ar4
      00168D D0 05            [24] 2146 	pop	ar5
      00168F D0 06            [24] 2147 	pop	ar6
      001691 8C 82            [24] 2148 	mov	dpl,r4
      001693 8D 83            [24] 2149 	mov	dph,r5
      001695 E9               [12] 2150 	mov	a,r1
      001696 F0               [24] 2151 	movx	@dptr,a
                                   2152 ;	src/lcd.c:472: val = val / 10;
      001697 90 01 EA         [24] 2153 	mov	dptr,#__divsint_PARM_2
      00169A 74 0A            [12] 2154 	mov	a,#0x0a
      00169C F0               [24] 2155 	movx	@dptr,a
      00169D E4               [12] 2156 	clr	a
      00169E A3               [24] 2157 	inc	dptr
      00169F F0               [24] 2158 	movx	@dptr,a
      0016A0 8E 82            [24] 2159 	mov	dpl,r6
      0016A2 8B 83            [24] 2160 	mov	dph,r3
      0016A4 12 3D F3         [24] 2161 	lcall	__divsint
      0016A7 AD 82            [24] 2162 	mov	r5,dpl
      0016A9 AE 83            [24] 2163 	mov	r6,dph
      0016AB D0 07            [24] 2164 	pop	ar7
      0016AD 90 00 86         [24] 2165 	mov	dptr,#_itoa_val_65536_88
      0016B0 ED               [12] 2166 	mov	a,r5
      0016B1 F0               [24] 2167 	movx	@dptr,a
                                   2168 ;	src/lcd.c:473: count++;
      0016B2 0F               [12] 2169 	inc	r7
      0016B3 80 A6            [24] 2170 	sjmp	00103$
      0016B5                       2171 00105$:
                                   2172 ;	src/lcd.c:478: for (int j = count - 1; j >= 0; j--)
      0016B5 8F 06            [24] 2173 	mov	ar6,r7
      0016B7 7D 00            [12] 2174 	mov	r5,#0x00
      0016B9 1F               [12] 2175 	dec	r7
      0016BA BF FF 01         [24] 2176 	cjne	r7,#0xff,00136$
      0016BD 1D               [12] 2177 	dec	r5
      0016BE                       2178 00136$:
      0016BE 90 00 83         [24] 2179 	mov	dptr,#_itoa_PARM_2
      0016C1 E0               [24] 2180 	movx	a,@dptr
      0016C2 F5 0E            [12] 2181 	mov	_itoa_sloc0_1_0,a
      0016C4 A3               [24] 2182 	inc	dptr
      0016C5 E0               [24] 2183 	movx	a,@dptr
      0016C6 F5 0F            [12] 2184 	mov	(_itoa_sloc0_1_0 + 1),a
      0016C8 A3               [24] 2185 	inc	dptr
      0016C9 E0               [24] 2186 	movx	a,@dptr
      0016CA F5 10            [12] 2187 	mov	(_itoa_sloc0_1_0 + 2),a
      0016CC 79 00            [12] 2188 	mov	r1,#0x00
      0016CE                       2189 00108$:
      0016CE ED               [12] 2190 	mov	a,r5
      0016CF 20 E7 2D         [24] 2191 	jb	acc.7,00106$
                                   2192 ;	src/lcd.c:480: result[i] = '0' + digits[j];
      0016D2 C0 06            [24] 2193 	push	ar6
      0016D4 E9               [12] 2194 	mov	a,r1
      0016D5 25 0E            [12] 2195 	add	a,_itoa_sloc0_1_0
      0016D7 F8               [12] 2196 	mov	r0,a
      0016D8 E4               [12] 2197 	clr	a
      0016D9 35 0F            [12] 2198 	addc	a,(_itoa_sloc0_1_0 + 1)
      0016DB FC               [12] 2199 	mov	r4,a
      0016DC AE 10            [24] 2200 	mov	r6,(_itoa_sloc0_1_0 + 2)
      0016DE EF               [12] 2201 	mov	a,r7
      0016DF 24 87            [12] 2202 	add	a,#_itoa_digits_65537_91
      0016E1 F5 82            [12] 2203 	mov	dpl,a
      0016E3 ED               [12] 2204 	mov	a,r5
      0016E4 34 00            [12] 2205 	addc	a,#(_itoa_digits_65537_91 >> 8)
      0016E6 F5 83            [12] 2206 	mov	dph,a
      0016E8 E0               [24] 2207 	movx	a,@dptr
      0016E9 24 30            [12] 2208 	add	a,#0x30
      0016EB FB               [12] 2209 	mov	r3,a
      0016EC 88 82            [24] 2210 	mov	dpl,r0
      0016EE 8C 83            [24] 2211 	mov	dph,r4
      0016F0 8E F0            [24] 2212 	mov	b,r6
      0016F2 12 3B 9B         [24] 2213 	lcall	__gptrput
                                   2214 ;	src/lcd.c:481: i++;
      0016F5 09               [12] 2215 	inc	r1
                                   2216 ;	src/lcd.c:478: for (int j = count - 1; j >= 0; j--)
      0016F6 1F               [12] 2217 	dec	r7
      0016F7 BF FF 01         [24] 2218 	cjne	r7,#0xff,00138$
      0016FA 1D               [12] 2219 	dec	r5
      0016FB                       2220 00138$:
      0016FB D0 06            [24] 2221 	pop	ar6
      0016FD 80 CF            [24] 2222 	sjmp	00108$
      0016FF                       2223 00106$:
                                   2224 ;	src/lcd.c:484: return count;
      0016FF 8E 82            [24] 2225 	mov	dpl,r6
                                   2226 ;	src/lcd.c:485: }
      001701 22               [24] 2227 	ret
                                   2228 ;------------------------------------------------------------
                                   2229 ;Allocation info for local variables in function 'glcdUpdateSpo2'
                                   2230 ;------------------------------------------------------------
                                   2231 ;oxygen                    Allocated with name '_glcdUpdateSpo2_oxygen_65536_96'
                                   2232 ;oxygenLevel               Allocated with name '_glcdUpdateSpo2_oxygenLevel_65536_97'
                                   2233 ;size                      Allocated with name '_glcdUpdateSpo2_size_65536_97'
                                   2234 ;------------------------------------------------------------
                                   2235 ;	src/lcd.c:492: void glcdUpdateSpo2(uint8_t oxygen)
                                   2236 ;	-----------------------------------------
                                   2237 ;	 function glcdUpdateSpo2
                                   2238 ;	-----------------------------------------
      001702                       2239 _glcdUpdateSpo2:
      001702 E5 82            [12] 2240 	mov	a,dpl
      001704 90 00 8A         [24] 2241 	mov	dptr,#_glcdUpdateSpo2_oxygen_65536_96
      001707 F0               [24] 2242 	movx	@dptr,a
                                   2243 ;	src/lcd.c:495: uint8_t size = itoa(oxygen, oxygenLevel);
      001708 E0               [24] 2244 	movx	a,@dptr
      001709 FF               [12] 2245 	mov	r7,a
      00170A 90 00 83         [24] 2246 	mov	dptr,#_itoa_PARM_2
      00170D 74 8B            [12] 2247 	mov	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
      00170F F0               [24] 2248 	movx	@dptr,a
      001710 74 00            [12] 2249 	mov	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
      001712 A3               [24] 2250 	inc	dptr
      001713 F0               [24] 2251 	movx	@dptr,a
      001714 E4               [12] 2252 	clr	a
      001715 A3               [24] 2253 	inc	dptr
      001716 F0               [24] 2254 	movx	@dptr,a
      001717 8F 82            [24] 2255 	mov	dpl,r7
      001719 12 16 36         [24] 2256 	lcall	_itoa
                                   2257 ;	src/lcd.c:496: oxygenLevel[size] = '%';
      00171C E5 82            [12] 2258 	mov	a,dpl
      00171E FF               [12] 2259 	mov	r7,a
      00171F 24 8B            [12] 2260 	add	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
      001721 F5 82            [12] 2261 	mov	dpl,a
      001723 E4               [12] 2262 	clr	a
      001724 34 00            [12] 2263 	addc	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
      001726 F5 83            [12] 2264 	mov	dph,a
      001728 74 25            [12] 2265 	mov	a,#0x25
      00172A F0               [24] 2266 	movx	@dptr,a
                                   2267 ;	src/lcd.c:497: oxygenLevel[size + 1] = '\0';
      00172B 0F               [12] 2268 	inc	r7
      00172C EF               [12] 2269 	mov	a,r7
      00172D 33               [12] 2270 	rlc	a
      00172E 95 E0            [12] 2271 	subb	a,acc
      001730 FE               [12] 2272 	mov	r6,a
      001731 EF               [12] 2273 	mov	a,r7
      001732 24 8B            [12] 2274 	add	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
      001734 F5 82            [12] 2275 	mov	dpl,a
      001736 EE               [12] 2276 	mov	a,r6
      001737 34 00            [12] 2277 	addc	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
      001739 F5 83            [12] 2278 	mov	dph,a
      00173B E4               [12] 2279 	clr	a
      00173C F0               [24] 2280 	movx	@dptr,a
                                   2281 ;	src/lcd.c:498: gcldClearString(SPO2_X_LOC, 1, 5);
      00173D 90 00 64         [24] 2282 	mov	dptr,#_gcldClearString_PARM_2
      001740 04               [12] 2283 	inc	a
      001741 F0               [24] 2284 	movx	@dptr,a
      001742 90 00 65         [24] 2285 	mov	dptr,#_gcldClearString_PARM_3
      001745 74 05            [12] 2286 	mov	a,#0x05
      001747 F0               [24] 2287 	movx	@dptr,a
      001748 75 82 46         [24] 2288 	mov	dpl,#0x46
      00174B 12 12 49         [24] 2289 	lcall	_gcldClearString
                                   2290 ;	src/lcd.c:499: glcdWriteString(SPO2_X_LOC, 1, oxygenLevel);
      00174E 90 00 67         [24] 2291 	mov	dptr,#_glcdWriteString_PARM_2
      001751 74 01            [12] 2292 	mov	a,#0x01
      001753 F0               [24] 2293 	movx	@dptr,a
      001754 90 00 68         [24] 2294 	mov	dptr,#_glcdWriteString_PARM_3
      001757 74 8B            [12] 2295 	mov	a,#_glcdUpdateSpo2_oxygenLevel_65536_97
      001759 F0               [24] 2296 	movx	@dptr,a
      00175A 74 00            [12] 2297 	mov	a,#(_glcdUpdateSpo2_oxygenLevel_65536_97 >> 8)
      00175C A3               [24] 2298 	inc	dptr
      00175D F0               [24] 2299 	movx	@dptr,a
      00175E E4               [12] 2300 	clr	a
      00175F A3               [24] 2301 	inc	dptr
      001760 F0               [24] 2302 	movx	@dptr,a
      001761 75 82 46         [24] 2303 	mov	dpl,#0x46
                                   2304 ;	src/lcd.c:500: }
      001764 02 12 90         [24] 2305 	ljmp	_glcdWriteString
                                   2306 ;------------------------------------------------------------
                                   2307 ;Allocation info for local variables in function 'glcdUpdateBpm'
                                   2308 ;------------------------------------------------------------
                                   2309 ;bpm                       Allocated with name '_glcdUpdateBpm_bpm_65536_98'
                                   2310 ;bpmString                 Allocated with name '_glcdUpdateBpm_bpmString_65536_99'
                                   2311 ;size                      Allocated with name '_glcdUpdateBpm_size_65536_99'
                                   2312 ;------------------------------------------------------------
                                   2313 ;	src/lcd.c:507: void glcdUpdateBpm(uint8_t bpm)
                                   2314 ;	-----------------------------------------
                                   2315 ;	 function glcdUpdateBpm
                                   2316 ;	-----------------------------------------
      001767                       2317 _glcdUpdateBpm:
      001767 E5 82            [12] 2318 	mov	a,dpl
      001769 90 00 90         [24] 2319 	mov	dptr,#_glcdUpdateBpm_bpm_65536_98
      00176C F0               [24] 2320 	movx	@dptr,a
                                   2321 ;	src/lcd.c:510: uint8_t size = itoa(bpm, bpmString);
      00176D E0               [24] 2322 	movx	a,@dptr
      00176E FF               [12] 2323 	mov	r7,a
      00176F 90 00 83         [24] 2324 	mov	dptr,#_itoa_PARM_2
      001772 74 91            [12] 2325 	mov	a,#_glcdUpdateBpm_bpmString_65536_99
      001774 F0               [24] 2326 	movx	@dptr,a
      001775 74 00            [12] 2327 	mov	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
      001777 A3               [24] 2328 	inc	dptr
      001778 F0               [24] 2329 	movx	@dptr,a
      001779 E4               [12] 2330 	clr	a
      00177A A3               [24] 2331 	inc	dptr
      00177B F0               [24] 2332 	movx	@dptr,a
      00177C 8F 82            [24] 2333 	mov	dpl,r7
      00177E 12 16 36         [24] 2334 	lcall	_itoa
                                   2335 ;	src/lcd.c:511: bpmString[size] = '\0';
      001781 E5 82            [12] 2336 	mov	a,dpl
      001783 24 91            [12] 2337 	add	a,#_glcdUpdateBpm_bpmString_65536_99
      001785 F5 82            [12] 2338 	mov	dpl,a
      001787 E4               [12] 2339 	clr	a
      001788 34 00            [12] 2340 	addc	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
      00178A F5 83            [12] 2341 	mov	dph,a
      00178C E4               [12] 2342 	clr	a
      00178D F0               [24] 2343 	movx	@dptr,a
                                   2344 ;	src/lcd.c:512: gcldClearString(BPM_X_LOC, 1, 5);
      00178E 90 00 64         [24] 2345 	mov	dptr,#_gcldClearString_PARM_2
      001791 04               [12] 2346 	inc	a
      001792 F0               [24] 2347 	movx	@dptr,a
      001793 90 00 65         [24] 2348 	mov	dptr,#_gcldClearString_PARM_3
      001796 74 05            [12] 2349 	mov	a,#0x05
      001798 F0               [24] 2350 	movx	@dptr,a
      001799 75 82 64         [24] 2351 	mov	dpl,#0x64
      00179C 12 12 49         [24] 2352 	lcall	_gcldClearString
                                   2353 ;	src/lcd.c:513: glcdWriteString(BPM_X_LOC, 1, bpmString);
      00179F 90 00 67         [24] 2354 	mov	dptr,#_glcdWriteString_PARM_2
      0017A2 74 01            [12] 2355 	mov	a,#0x01
      0017A4 F0               [24] 2356 	movx	@dptr,a
      0017A5 90 00 68         [24] 2357 	mov	dptr,#_glcdWriteString_PARM_3
      0017A8 74 91            [12] 2358 	mov	a,#_glcdUpdateBpm_bpmString_65536_99
      0017AA F0               [24] 2359 	movx	@dptr,a
      0017AB 74 00            [12] 2360 	mov	a,#(_glcdUpdateBpm_bpmString_65536_99 >> 8)
      0017AD A3               [24] 2361 	inc	dptr
      0017AE F0               [24] 2362 	movx	@dptr,a
      0017AF E4               [12] 2363 	clr	a
      0017B0 A3               [24] 2364 	inc	dptr
      0017B1 F0               [24] 2365 	movx	@dptr,a
      0017B2 75 82 64         [24] 2366 	mov	dpl,#0x64
                                   2367 ;	src/lcd.c:514: }
      0017B5 02 12 90         [24] 2368 	ljmp	_glcdWriteString
                                   2369 ;------------------------------------------------------------
                                   2370 ;Allocation info for local variables in function 'glcdUpdateStatus'
                                   2371 ;------------------------------------------------------------
                                   2372 ;status                    Allocated with name '_glcdUpdateStatus_status_65536_100'
                                   2373 ;------------------------------------------------------------
                                   2374 ;	src/lcd.c:521: void glcdUpdateStatus(char* status)
                                   2375 ;	-----------------------------------------
                                   2376 ;	 function glcdUpdateStatus
                                   2377 ;	-----------------------------------------
      0017B8                       2378 _glcdUpdateStatus:
      0017B8 AF F0            [24] 2379 	mov	r7,b
      0017BA AE 83            [24] 2380 	mov	r6,dph
      0017BC E5 82            [12] 2381 	mov	a,dpl
      0017BE 90 00 95         [24] 2382 	mov	dptr,#_glcdUpdateStatus_status_65536_100
      0017C1 F0               [24] 2383 	movx	@dptr,a
      0017C2 EE               [12] 2384 	mov	a,r6
      0017C3 A3               [24] 2385 	inc	dptr
      0017C4 F0               [24] 2386 	movx	@dptr,a
      0017C5 EF               [12] 2387 	mov	a,r7
      0017C6 A3               [24] 2388 	inc	dptr
      0017C7 F0               [24] 2389 	movx	@dptr,a
                                   2390 ;	src/lcd.c:523: gcldClearString(STATUS_X_LOC, 1, 15);
      0017C8 90 00 64         [24] 2391 	mov	dptr,#_gcldClearString_PARM_2
      0017CB 74 01            [12] 2392 	mov	a,#0x01
      0017CD F0               [24] 2393 	movx	@dptr,a
      0017CE 90 00 65         [24] 2394 	mov	dptr,#_gcldClearString_PARM_3
      0017D1 74 0F            [12] 2395 	mov	a,#0x0f
      0017D3 F0               [24] 2396 	movx	@dptr,a
      0017D4 75 82 02         [24] 2397 	mov	dpl,#0x02
      0017D7 12 12 49         [24] 2398 	lcall	_gcldClearString
                                   2399 ;	src/lcd.c:524: glcdWriteString(STATUS_X_LOC, 1, status);
      0017DA 90 00 95         [24] 2400 	mov	dptr,#_glcdUpdateStatus_status_65536_100
      0017DD E0               [24] 2401 	movx	a,@dptr
      0017DE FD               [12] 2402 	mov	r5,a
      0017DF A3               [24] 2403 	inc	dptr
      0017E0 E0               [24] 2404 	movx	a,@dptr
      0017E1 FE               [12] 2405 	mov	r6,a
      0017E2 A3               [24] 2406 	inc	dptr
      0017E3 E0               [24] 2407 	movx	a,@dptr
      0017E4 FF               [12] 2408 	mov	r7,a
      0017E5 90 00 67         [24] 2409 	mov	dptr,#_glcdWriteString_PARM_2
      0017E8 74 01            [12] 2410 	mov	a,#0x01
      0017EA F0               [24] 2411 	movx	@dptr,a
      0017EB 90 00 68         [24] 2412 	mov	dptr,#_glcdWriteString_PARM_3
      0017EE ED               [12] 2413 	mov	a,r5
      0017EF F0               [24] 2414 	movx	@dptr,a
      0017F0 EE               [12] 2415 	mov	a,r6
      0017F1 A3               [24] 2416 	inc	dptr
      0017F2 F0               [24] 2417 	movx	@dptr,a
      0017F3 EF               [12] 2418 	mov	a,r7
      0017F4 A3               [24] 2419 	inc	dptr
      0017F5 F0               [24] 2420 	movx	@dptr,a
      0017F6 75 82 02         [24] 2421 	mov	dpl,#0x02
                                   2422 ;	src/lcd.c:525: }
      0017F9 02 12 90         [24] 2423 	ljmp	_glcdWriteString
                                   2424 ;------------------------------------------------------------
                                   2425 ;Allocation info for local variables in function 'glcdInit'
                                   2426 ;------------------------------------------------------------
                                   2427 ;	src/lcd.c:531: void glcdInit()
                                   2428 ;	-----------------------------------------
                                   2429 ;	 function glcdInit
                                   2430 ;	-----------------------------------------
      0017FC                       2431 _glcdInit:
                                   2432 ;	src/lcd.c:533: GLCD_RESET = 0;
                                   2433 ;	assignBit
      0017FC C2 91            [12] 2434 	clr	_P1_1
                                   2435 ;	src/lcd.c:534: delay(1000);
      0017FE 90 03 E8         [24] 2436 	mov	dptr,#0x03e8
      001801 12 0F 17         [24] 2437 	lcall	_delay
                                   2438 ;	src/lcd.c:535: GLCD_RESET = 1;
                                   2439 ;	assignBit
      001804 D2 91            [12] 2440 	setb	_P1_1
                                   2441 ;	src/lcd.c:537: gLcdWriteToRegister(COMMAND_WRITE, 0xB8); // select first page 0
      001806 90 00 50         [24] 2442 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      001809 74 B8            [12] 2443 	mov	a,#0xb8
      00180B F0               [24] 2444 	movx	@dptr,a
      00180C 75 82 00         [24] 2445 	mov	dpl,#0x00
      00180F 12 0F 46         [24] 2446 	lcall	_gLcdWriteToRegister
                                   2447 ;	src/lcd.c:538: delay(100);
      001812 90 00 64         [24] 2448 	mov	dptr,#0x0064
      001815 12 0F 17         [24] 2449 	lcall	_delay
                                   2450 ;	src/lcd.c:540: gLcdWriteToRegister(COMMAND_WRITE, 0x40); // select row 0
      001818 90 00 50         [24] 2451 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      00181B 74 40            [12] 2452 	mov	a,#0x40
      00181D F0               [24] 2453 	movx	@dptr,a
      00181E 75 82 00         [24] 2454 	mov	dpl,#0x00
      001821 12 0F 46         [24] 2455 	lcall	_gLcdWriteToRegister
                                   2456 ;	src/lcd.c:541: delay(100);
      001824 90 00 64         [24] 2457 	mov	dptr,#0x0064
      001827 12 0F 17         [24] 2458 	lcall	_delay
                                   2459 ;	src/lcd.c:543: gLcdWriteToRegister(COMMAND_WRITE, 0x3F); // display on
      00182A 90 00 50         [24] 2460 	mov	dptr,#_gLcdWriteToRegister_PARM_2
      00182D 74 3F            [12] 2461 	mov	a,#0x3f
      00182F F0               [24] 2462 	movx	@dptr,a
      001830 75 82 00         [24] 2463 	mov	dpl,#0x00
      001833 12 0F 46         [24] 2464 	lcall	_gLcdWriteToRegister
                                   2465 ;	src/lcd.c:544: delay(100);
      001836 90 00 64         [24] 2466 	mov	dptr,#0x0064
      001839 12 0F 17         [24] 2467 	lcall	_delay
                                   2468 ;	src/lcd.c:546: glcdClear();
      00183C 12 11 AC         [24] 2469 	lcall	_glcdClear
                                   2470 ;	src/lcd.c:548: glcdWriteString(STATUS_X_LOC, 0, "STATUS");
      00183F 90 00 67         [24] 2471 	mov	dptr,#_glcdWriteString_PARM_2
      001842 E4               [12] 2472 	clr	a
      001843 F0               [24] 2473 	movx	@dptr,a
      001844 90 00 68         [24] 2474 	mov	dptr,#_glcdWriteString_PARM_3
      001847 74 CD            [12] 2475 	mov	a,#___str_3
      001849 F0               [24] 2476 	movx	@dptr,a
      00184A 74 4F            [12] 2477 	mov	a,#(___str_3 >> 8)
      00184C A3               [24] 2478 	inc	dptr
      00184D F0               [24] 2479 	movx	@dptr,a
      00184E 74 80            [12] 2480 	mov	a,#0x80
      001850 A3               [24] 2481 	inc	dptr
      001851 F0               [24] 2482 	movx	@dptr,a
      001852 75 82 02         [24] 2483 	mov	dpl,#0x02
      001855 12 12 90         [24] 2484 	lcall	_glcdWriteString
                                   2485 ;	src/lcd.c:549: glcdWriteString(SPO2_X_LOC, 0, "SPO2");
      001858 90 00 67         [24] 2486 	mov	dptr,#_glcdWriteString_PARM_2
      00185B E4               [12] 2487 	clr	a
      00185C F0               [24] 2488 	movx	@dptr,a
      00185D 90 00 68         [24] 2489 	mov	dptr,#_glcdWriteString_PARM_3
      001860 74 D4            [12] 2490 	mov	a,#___str_4
      001862 F0               [24] 2491 	movx	@dptr,a
      001863 74 4F            [12] 2492 	mov	a,#(___str_4 >> 8)
      001865 A3               [24] 2493 	inc	dptr
      001866 F0               [24] 2494 	movx	@dptr,a
      001867 74 80            [12] 2495 	mov	a,#0x80
      001869 A3               [24] 2496 	inc	dptr
      00186A F0               [24] 2497 	movx	@dptr,a
      00186B 75 82 46         [24] 2498 	mov	dpl,#0x46
      00186E 12 12 90         [24] 2499 	lcall	_glcdWriteString
                                   2500 ;	src/lcd.c:550: glcdWriteString(BPM_X_LOC, 0, "BPM");
      001871 90 00 67         [24] 2501 	mov	dptr,#_glcdWriteString_PARM_2
      001874 E4               [12] 2502 	clr	a
      001875 F0               [24] 2503 	movx	@dptr,a
      001876 90 00 68         [24] 2504 	mov	dptr,#_glcdWriteString_PARM_3
      001879 74 D9            [12] 2505 	mov	a,#___str_5
      00187B F0               [24] 2506 	movx	@dptr,a
      00187C 74 4F            [12] 2507 	mov	a,#(___str_5 >> 8)
      00187E A3               [24] 2508 	inc	dptr
      00187F F0               [24] 2509 	movx	@dptr,a
      001880 74 80            [12] 2510 	mov	a,#0x80
      001882 A3               [24] 2511 	inc	dptr
      001883 F0               [24] 2512 	movx	@dptr,a
      001884 75 82 64         [24] 2513 	mov	dpl,#0x64
                                   2514 ;	src/lcd.c:551: }
      001887 02 12 90         [24] 2515 	ljmp	_glcdWriteString
                                   2516 ;------------------------------------------------------------
                                   2517 ;Allocation info for local variables in function 'glcdPlotIrValue'
                                   2518 ;------------------------------------------------------------
                                   2519 ;sloc0                     Allocated with name '_glcdPlotIrValue_sloc0_1_0'
                                   2520 ;IrValue                   Allocated with name '_glcdPlotIrValue_IrValue_65536_103'
                                   2521 ;y                         Allocated with name '_glcdPlotIrValue_y_65536_104'
                                   2522 ;x                         Allocated with name '_glcdPlotIrValue_x_65536_104'
                                   2523 ;page                      Allocated with name '_glcdPlotIrValue_page_131072_105'
                                   2524 ;------------------------------------------------------------
                                   2525 ;	src/lcd.c:562: void glcdPlotIrValue(uint8_t IrValue)
                                   2526 ;	-----------------------------------------
                                   2527 ;	 function glcdPlotIrValue
                                   2528 ;	-----------------------------------------
      00188A                       2529 _glcdPlotIrValue:
      00188A E5 82            [12] 2530 	mov	a,dpl
      00188C 90 00 9A         [24] 2531 	mov	dptr,#_glcdPlotIrValue_IrValue_65536_103
      00188F F0               [24] 2532 	movx	@dptr,a
                                   2533 ;	src/lcd.c:565: uint8_t y = IrValue >> 3;
      001890 E0               [24] 2534 	movx	a,@dptr
      001891 C4               [12] 2535 	swap	a
      001892 23               [12] 2536 	rl	a
      001893 54 1F            [12] 2537 	anl	a,#0x1f
      001895 FF               [12] 2538 	mov	r7,a
                                   2539 ;	src/lcd.c:566: uint8_t x = previousReadingX + 2;
      001896 90 00 98         [24] 2540 	mov	dptr,#_previousReadingX
      001899 E0               [24] 2541 	movx	a,@dptr
      00189A FE               [12] 2542 	mov	r6,a
      00189B 90 00 9B         [24] 2543 	mov	dptr,#_glcdPlotIrValue_x_65536_104
      00189E 74 02            [12] 2544 	mov	a,#0x02
      0018A0 2E               [12] 2545 	add	a,r6
      0018A1 F0               [24] 2546 	movx	@dptr,a
                                   2547 ;	src/lcd.c:569: for (uint8_t page = 2; page < 8; page++)
      0018A2 7E 02            [12] 2548 	mov	r6,#0x02
      0018A4                       2549 00106$:
      0018A4 BE 08 00         [24] 2550 	cjne	r6,#0x08,00123$
      0018A7                       2551 00123$:
      0018A7 50 3A            [24] 2552 	jnc	00101$
                                   2553 ;	src/lcd.c:571: glcdWrite(previousReadingX + 1, page, 0x00);
      0018A9 90 00 98         [24] 2554 	mov	dptr,#_previousReadingX
      0018AC E0               [24] 2555 	movx	a,@dptr
      0018AD FD               [12] 2556 	mov	r5,a
      0018AE 0D               [12] 2557 	inc	r5
      0018AF 90 00 57         [24] 2558 	mov	dptr,#_glcdWrite_PARM_2
      0018B2 EE               [12] 2559 	mov	a,r6
      0018B3 F0               [24] 2560 	movx	@dptr,a
      0018B4 90 00 58         [24] 2561 	mov	dptr,#_glcdWrite_PARM_3
      0018B7 E4               [12] 2562 	clr	a
      0018B8 F0               [24] 2563 	movx	@dptr,a
      0018B9 8D 82            [24] 2564 	mov	dpl,r5
      0018BB C0 07            [24] 2565 	push	ar7
      0018BD C0 06            [24] 2566 	push	ar6
      0018BF 12 10 53         [24] 2567 	lcall	_glcdWrite
      0018C2 D0 06            [24] 2568 	pop	ar6
                                   2569 ;	src/lcd.c:572: glcdWrite(previousReadingX + 2, page, 0x00);
      0018C4 90 00 98         [24] 2570 	mov	dptr,#_previousReadingX
      0018C7 E0               [24] 2571 	movx	a,@dptr
      0018C8 FD               [12] 2572 	mov	r5,a
      0018C9 0D               [12] 2573 	inc	r5
      0018CA 0D               [12] 2574 	inc	r5
      0018CB 90 00 57         [24] 2575 	mov	dptr,#_glcdWrite_PARM_2
      0018CE EE               [12] 2576 	mov	a,r6
      0018CF F0               [24] 2577 	movx	@dptr,a
      0018D0 90 00 58         [24] 2578 	mov	dptr,#_glcdWrite_PARM_3
      0018D3 E4               [12] 2579 	clr	a
      0018D4 F0               [24] 2580 	movx	@dptr,a
      0018D5 8D 82            [24] 2581 	mov	dpl,r5
      0018D7 C0 06            [24] 2582 	push	ar6
      0018D9 12 10 53         [24] 2583 	lcall	_glcdWrite
      0018DC D0 06            [24] 2584 	pop	ar6
      0018DE D0 07            [24] 2585 	pop	ar7
                                   2586 ;	src/lcd.c:569: for (uint8_t page = 2; page < 8; page++)
      0018E0 0E               [12] 2587 	inc	r6
      0018E1 80 C1            [24] 2588 	sjmp	00106$
      0018E3                       2589 00101$:
                                   2590 ;	src/lcd.c:576: glcdDrawGraph(previousReadingX, previousReadingY, x, y);
      0018E3 90 00 98         [24] 2591 	mov	dptr,#_previousReadingX
      0018E6 E0               [24] 2592 	movx	a,@dptr
      0018E7 FE               [12] 2593 	mov	r6,a
      0018E8 7D 00            [12] 2594 	mov	r5,#0x00
      0018EA 90 00 99         [24] 2595 	mov	dptr,#_previousReadingY
      0018ED E0               [24] 2596 	movx	a,@dptr
      0018EE FC               [12] 2597 	mov	r4,a
      0018EF 7B 00            [12] 2598 	mov	r3,#0x00
      0018F1 90 00 9B         [24] 2599 	mov	dptr,#_glcdPlotIrValue_x_65536_104
      0018F4 E0               [24] 2600 	movx	a,@dptr
      0018F5 FA               [12] 2601 	mov	r2,a
      0018F6 8A 11            [24] 2602 	mov	_glcdPlotIrValue_sloc0_1_0,r2
                                   2603 ;	1-genFromRTrack replaced	mov	(_glcdPlotIrValue_sloc0_1_0 + 1),#0x00
      0018F8 8D 12            [24] 2604 	mov	(_glcdPlotIrValue_sloc0_1_0 + 1),r5
      0018FA 8F 00            [24] 2605 	mov	ar0,r7
      0018FC 79 00            [12] 2606 	mov	r1,#0x00
      0018FE 90 00 71         [24] 2607 	mov	dptr,#_glcdDrawGraph_PARM_2
      001901 EC               [12] 2608 	mov	a,r4
      001902 F0               [24] 2609 	movx	@dptr,a
      001903 EB               [12] 2610 	mov	a,r3
      001904 A3               [24] 2611 	inc	dptr
      001905 F0               [24] 2612 	movx	@dptr,a
      001906 90 00 73         [24] 2613 	mov	dptr,#_glcdDrawGraph_PARM_3
      001909 E5 11            [12] 2614 	mov	a,_glcdPlotIrValue_sloc0_1_0
      00190B F0               [24] 2615 	movx	@dptr,a
      00190C E5 12            [12] 2616 	mov	a,(_glcdPlotIrValue_sloc0_1_0 + 1)
      00190E A3               [24] 2617 	inc	dptr
      00190F F0               [24] 2618 	movx	@dptr,a
      001910 90 00 75         [24] 2619 	mov	dptr,#_glcdDrawGraph_PARM_4
      001913 E8               [12] 2620 	mov	a,r0
      001914 F0               [24] 2621 	movx	@dptr,a
      001915 E9               [12] 2622 	mov	a,r1
      001916 A3               [24] 2623 	inc	dptr
      001917 F0               [24] 2624 	movx	@dptr,a
      001918 8E 82            [24] 2625 	mov	dpl,r6
      00191A 8D 83            [24] 2626 	mov	dph,r5
      00191C C0 07            [24] 2627 	push	ar7
      00191E C0 02            [24] 2628 	push	ar2
      001920 12 13 38         [24] 2629 	lcall	_glcdDrawGraph
      001923 D0 02            [24] 2630 	pop	ar2
      001925 D0 07            [24] 2631 	pop	ar7
                                   2632 ;	src/lcd.c:578: if(previousReadingX == 126)
      001927 90 00 98         [24] 2633 	mov	dptr,#_previousReadingX
      00192A E0               [24] 2634 	movx	a,@dptr
      00192B FE               [12] 2635 	mov	r6,a
      00192C BE 7E 0A         [24] 2636 	cjne	r6,#0x7e,00103$
                                   2637 ;	src/lcd.c:580: previousReadingX = 0;
      00192F 90 00 98         [24] 2638 	mov	dptr,#_previousReadingX
      001932 E4               [12] 2639 	clr	a
      001933 F0               [24] 2640 	movx	@dptr,a
                                   2641 ;	src/lcd.c:581: previousReadingY = 0;
      001934 90 00 99         [24] 2642 	mov	dptr,#_previousReadingY
      001937 F0               [24] 2643 	movx	@dptr,a
      001938 22               [24] 2644 	ret
      001939                       2645 00103$:
                                   2646 ;	src/lcd.c:585: previousReadingX = x;
      001939 90 00 98         [24] 2647 	mov	dptr,#_previousReadingX
      00193C EA               [12] 2648 	mov	a,r2
      00193D F0               [24] 2649 	movx	@dptr,a
                                   2650 ;	src/lcd.c:586: previousReadingY = y;
      00193E 90 00 99         [24] 2651 	mov	dptr,#_previousReadingY
      001941 EF               [12] 2652 	mov	a,r7
      001942 F0               [24] 2653 	movx	@dptr,a
                                   2654 ;	src/lcd.c:588: }
      001943 22               [24] 2655 	ret
                                   2656 ;------------------------------------------------------------
                                   2657 ;Allocation info for local variables in function 'generateRandom'
                                   2658 ;------------------------------------------------------------
                                   2659 ;max                       Allocated with name '_generateRandom_PARM_2'
                                   2660 ;min                       Allocated with name '_generateRandom_min_65536_109'
                                   2661 ;------------------------------------------------------------
                                   2662 ;	src/lcd.c:596: int generateRandom(int min, int max)
                                   2663 ;	-----------------------------------------
                                   2664 ;	 function generateRandom
                                   2665 ;	-----------------------------------------
      001944                       2666 _generateRandom:
      001944 AF 83            [24] 2667 	mov	r7,dph
      001946 E5 82            [12] 2668 	mov	a,dpl
      001948 90 00 9E         [24] 2669 	mov	dptr,#_generateRandom_min_65536_109
      00194B F0               [24] 2670 	movx	@dptr,a
      00194C EF               [12] 2671 	mov	a,r7
      00194D A3               [24] 2672 	inc	dptr
      00194E F0               [24] 2673 	movx	@dptr,a
                                   2674 ;	src/lcd.c:598: return min + rand() % (max - min + 1);
      00194F 12 3A FB         [24] 2675 	lcall	_rand
      001952 AE 82            [24] 2676 	mov	r6,dpl
      001954 AF 83            [24] 2677 	mov	r7,dph
      001956 90 00 9E         [24] 2678 	mov	dptr,#_generateRandom_min_65536_109
      001959 E0               [24] 2679 	movx	a,@dptr
      00195A FC               [12] 2680 	mov	r4,a
      00195B A3               [24] 2681 	inc	dptr
      00195C E0               [24] 2682 	movx	a,@dptr
      00195D FD               [12] 2683 	mov	r5,a
      00195E 90 00 9C         [24] 2684 	mov	dptr,#_generateRandom_PARM_2
      001961 E0               [24] 2685 	movx	a,@dptr
      001962 FA               [12] 2686 	mov	r2,a
      001963 A3               [24] 2687 	inc	dptr
      001964 E0               [24] 2688 	movx	a,@dptr
      001965 FB               [12] 2689 	mov	r3,a
      001966 EA               [12] 2690 	mov	a,r2
      001967 C3               [12] 2691 	clr	c
      001968 9C               [12] 2692 	subb	a,r4
      001969 FA               [12] 2693 	mov	r2,a
      00196A EB               [12] 2694 	mov	a,r3
      00196B 9D               [12] 2695 	subb	a,r5
      00196C FB               [12] 2696 	mov	r3,a
      00196D 90 01 E1         [24] 2697 	mov	dptr,#__modsint_PARM_2
      001970 74 01            [12] 2698 	mov	a,#0x01
      001972 2A               [12] 2699 	add	a,r2
      001973 F0               [24] 2700 	movx	@dptr,a
      001974 E4               [12] 2701 	clr	a
      001975 3B               [12] 2702 	addc	a,r3
      001976 A3               [24] 2703 	inc	dptr
      001977 F0               [24] 2704 	movx	@dptr,a
      001978 8E 82            [24] 2705 	mov	dpl,r6
      00197A 8F 83            [24] 2706 	mov	dph,r7
      00197C C0 05            [24] 2707 	push	ar5
      00197E C0 04            [24] 2708 	push	ar4
      001980 12 3C DF         [24] 2709 	lcall	__modsint
      001983 AE 82            [24] 2710 	mov	r6,dpl
      001985 AF 83            [24] 2711 	mov	r7,dph
      001987 D0 04            [24] 2712 	pop	ar4
      001989 D0 05            [24] 2713 	pop	ar5
      00198B EE               [12] 2714 	mov	a,r6
      00198C 2C               [12] 2715 	add	a,r4
      00198D FC               [12] 2716 	mov	r4,a
      00198E EF               [12] 2717 	mov	a,r7
      00198F 3D               [12] 2718 	addc	a,r5
                                   2719 ;	src/lcd.c:599: }
      001990 8C 82            [24] 2720 	mov	dpl,r4
      001992 F5 83            [12] 2721 	mov	dph,a
      001994 22               [24] 2722 	ret
                                   2723 ;------------------------------------------------------------
                                   2724 ;Allocation info for local variables in function 'lcdTest'
                                   2725 ;------------------------------------------------------------
                                   2726 ;x1                        Allocated with name '_lcdTest_x1_65537_112'
                                   2727 ;y1                        Allocated with name '_lcdTest_y1_65537_112'
                                   2728 ;------------------------------------------------------------
                                   2729 ;	src/lcd.c:605: void lcdTest()
                                   2730 ;	-----------------------------------------
                                   2731 ;	 function lcdTest
                                   2732 ;	-----------------------------------------
      001995                       2733 _lcdTest:
                                   2734 ;	src/lcd.c:607: INFO_LOG("LCD Testing");
      001995 74 DD            [12] 2735 	mov	a,#___str_6
      001997 C0 E0            [24] 2736 	push	acc
      001999 74 4F            [12] 2737 	mov	a,#(___str_6 >> 8)
      00199B C0 E0            [24] 2738 	push	acc
      00199D 74 80            [12] 2739 	mov	a,#0x80
      00199F C0 E0            [24] 2740 	push	acc
      0019A1 12 3E BF         [24] 2741 	lcall	_printf
      0019A4 15 81            [12] 2742 	dec	sp
      0019A6 15 81            [12] 2743 	dec	sp
      0019A8 15 81            [12] 2744 	dec	sp
      0019AA 74 A5            [12] 2745 	mov	a,#___str_1
      0019AC C0 E0            [24] 2746 	push	acc
      0019AE 74 4F            [12] 2747 	mov	a,#(___str_1 >> 8)
      0019B0 C0 E0            [24] 2748 	push	acc
      0019B2 12 3B B6         [24] 2749 	lcall	_printf_tiny
      0019B5 15 81            [12] 2750 	dec	sp
      0019B7 15 81            [12] 2751 	dec	sp
                                   2752 ;	src/lcd.c:610: glcdWriteString(32, 0, "SPO2");
      0019B9 90 00 67         [24] 2753 	mov	dptr,#_glcdWriteString_PARM_2
      0019BC E4               [12] 2754 	clr	a
      0019BD F0               [24] 2755 	movx	@dptr,a
      0019BE 90 00 68         [24] 2756 	mov	dptr,#_glcdWriteString_PARM_3
      0019C1 74 D4            [12] 2757 	mov	a,#___str_4
      0019C3 F0               [24] 2758 	movx	@dptr,a
      0019C4 74 4F            [12] 2759 	mov	a,#(___str_4 >> 8)
      0019C6 A3               [24] 2760 	inc	dptr
      0019C7 F0               [24] 2761 	movx	@dptr,a
      0019C8 74 80            [12] 2762 	mov	a,#0x80
      0019CA A3               [24] 2763 	inc	dptr
      0019CB F0               [24] 2764 	movx	@dptr,a
      0019CC 75 82 20         [24] 2765 	mov	dpl,#0x20
      0019CF 12 12 90         [24] 2766 	lcall	_glcdWriteString
                                   2767 ;	src/lcd.c:612: glcdWriteString(94, 0, "BPM");
      0019D2 90 00 67         [24] 2768 	mov	dptr,#_glcdWriteString_PARM_2
      0019D5 E4               [12] 2769 	clr	a
      0019D6 F0               [24] 2770 	movx	@dptr,a
      0019D7 90 00 68         [24] 2771 	mov	dptr,#_glcdWriteString_PARM_3
      0019DA 74 D9            [12] 2772 	mov	a,#___str_5
      0019DC F0               [24] 2773 	movx	@dptr,a
      0019DD 74 4F            [12] 2774 	mov	a,#(___str_5 >> 8)
      0019DF A3               [24] 2775 	inc	dptr
      0019E0 F0               [24] 2776 	movx	@dptr,a
      0019E1 74 80            [12] 2777 	mov	a,#0x80
      0019E3 A3               [24] 2778 	inc	dptr
      0019E4 F0               [24] 2779 	movx	@dptr,a
      0019E5 75 82 5E         [24] 2780 	mov	dpl,#0x5e
      0019E8 12 12 90         [24] 2781 	lcall	_glcdWriteString
                                   2782 ;	src/lcd.c:629: while(1)
      0019EB                       2783 00102$:
                                   2784 ;	src/lcd.c:631: glcdPlotIrValue(generateRandom(40,160));
      0019EB 90 00 9C         [24] 2785 	mov	dptr,#_generateRandom_PARM_2
      0019EE 74 A0            [12] 2786 	mov	a,#0xa0
      0019F0 F0               [24] 2787 	movx	@dptr,a
      0019F1 E4               [12] 2788 	clr	a
      0019F2 A3               [24] 2789 	inc	dptr
      0019F3 F0               [24] 2790 	movx	@dptr,a
      0019F4 90 00 28         [24] 2791 	mov	dptr,#0x0028
      0019F7 12 19 44         [24] 2792 	lcall	_generateRandom
      0019FA 12 18 8A         [24] 2793 	lcall	_glcdPlotIrValue
                                   2794 ;	src/lcd.c:632: delay(500);
      0019FD 90 01 F4         [24] 2795 	mov	dptr,#0x01f4
      001A00 12 0F 17         [24] 2796 	lcall	_delay
                                   2797 ;	src/lcd.c:637: while (1)
                                   2798 ;	src/lcd.c:639: }
      001A03 80 E6            [24] 2799 	sjmp	00102$
                                   2800 	.area CSEG    (CODE)
                                   2801 	.area CONST   (CODE)
      004D9B                       2802 _font:
      004D9B 00                    2803 	.db #0x00	; 0
      004D9C 00                    2804 	.db #0x00	; 0
      004D9D 00                    2805 	.db #0x00	; 0
      004D9E 00                    2806 	.db #0x00	; 0
      004D9F 5F                    2807 	.db #0x5f	; 95
      004DA0 00                    2808 	.db #0x00	; 0
      004DA1 00                    2809 	.db #0x00	; 0
      004DA2 07                    2810 	.db #0x07	; 7
      004DA3 00                    2811 	.db #0x00	; 0
      004DA4 14                    2812 	.db #0x14	; 20
      004DA5 7F                    2813 	.db #0x7f	; 127
      004DA6 14                    2814 	.db #0x14	; 20
      004DA7 24                    2815 	.db #0x24	; 36
      004DA8 2A                    2816 	.db #0x2a	; 42
      004DA9 7F                    2817 	.db #0x7f	; 127
      004DAA 28                    2818 	.db #0x28	; 40
      004DAB 20                    2819 	.db #0x20	; 32
      004DAC 90                    2820 	.db #0x90	; 144
      004DAD 36                    2821 	.db #0x36	; 54	'6'
      004DAE 49                    2822 	.db #0x49	; 73	'I'
      004DAF 55                    2823 	.db #0x55	; 85	'U'
      004DB0 00                    2824 	.db #0x00	; 0
      004DB1 05                    2825 	.db #0x05	; 5
      004DB2 03                    2826 	.db #0x03	; 3
      004DB3 00                    2827 	.db #0x00	; 0
      004DB4 1C                    2828 	.db #0x1c	; 28
      004DB5 22                    2829 	.db #0x22	; 34
      004DB6 00                    2830 	.db #0x00	; 0
      004DB7 41                    2831 	.db #0x41	; 65	'A'
      004DB8 22                    2832 	.db #0x22	; 34
      004DB9 08                    2833 	.db #0x08	; 8
      004DBA 2A                    2834 	.db #0x2a	; 42
      004DBB 1C                    2835 	.db #0x1c	; 28
      004DBC 20                    2836 	.db #0x20	; 32
      004DBD 70                    2837 	.db #0x70	; 112	'p'
      004DBE 20                    2838 	.db #0x20	; 32
      004DBF 00                    2839 	.db #0x00	; 0
      004DC0 50                    2840 	.db #0x50	; 80	'P'
      004DC1 30                    2841 	.db #0x30	; 48	'0'
      004DC2 20                    2842 	.db #0x20	; 32
      004DC3 20                    2843 	.db #0x20	; 32
      004DC4 20                    2844 	.db #0x20	; 32
      004DC5 00                    2845 	.db #0x00	; 0
      004DC6 60                    2846 	.db #0x60	; 96
      004DC7 60                    2847 	.db #0x60	; 96
      004DC8 20                    2848 	.db #0x20	; 32
      004DC9 10                    2849 	.db #0x10	; 16
      004DCA 08                    2850 	.db #0x08	; 8
      004DCB F8                    2851 	.db #0xf8	; 248
      004DCC 88                    2852 	.db #0x88	; 136
      004DCD F8                    2853 	.db #0xf8	; 248
      004DCE 90                    2854 	.db #0x90	; 144
      004DCF F8                    2855 	.db #0xf8	; 248
      004DD0 80                    2856 	.db #0x80	; 128
      004DD1 E8                    2857 	.db #0xe8	; 232
      004DD2 A8                    2858 	.db #0xa8	; 168
      004DD3 B8                    2859 	.db #0xb8	; 184
      004DD4 A8                    2860 	.db #0xa8	; 168
      004DD5 A8                    2861 	.db #0xa8	; 168
      004DD6 F8                    2862 	.db #0xf8	; 248
      004DD7 78                    2863 	.db #0x78	; 120	'x'
      004DD8 40                    2864 	.db #0x40	; 64
      004DD9 E0                    2865 	.db #0xe0	; 224
      004DDA B8                    2866 	.db #0xb8	; 184
      004DDB A8                    2867 	.db #0xa8	; 168
      004DDC E8                    2868 	.db #0xe8	; 232
      004DDD F8                    2869 	.db #0xf8	; 248
      004DDE A8                    2870 	.db #0xa8	; 168
      004DDF E8                    2871 	.db #0xe8	; 232
      004DE0 18                    2872 	.db #0x18	; 24
      004DE1 08                    2873 	.db #0x08	; 8
      004DE2 F8                    2874 	.db #0xf8	; 248
      004DE3 F8                    2875 	.db #0xf8	; 248
      004DE4 A8                    2876 	.db #0xa8	; 168
      004DE5 F8                    2877 	.db #0xf8	; 248
      004DE6 B8                    2878 	.db #0xb8	; 184
      004DE7 A8                    2879 	.db #0xa8	; 168
      004DE8 F8                    2880 	.db #0xf8	; 248
      004DE9 00                    2881 	.db #0x00	; 0
      004DEA 50                    2882 	.db #0x50	; 80	'P'
      004DEB 00                    2883 	.db #0x00	; 0
      004DEC 00                    2884 	.db #0x00	; 0
      004DED 56                    2885 	.db #0x56	; 86	'V'
      004DEE 36                    2886 	.db #0x36	; 54	'6'
      004DEF 00                    2887 	.db #0x00	; 0
      004DF0 08                    2888 	.db #0x08	; 8
      004DF1 14                    2889 	.db #0x14	; 20
      004DF2 50                    2890 	.db #0x50	; 80	'P'
      004DF3 50                    2891 	.db #0x50	; 80	'P'
      004DF4 50                    2892 	.db #0x50	; 80	'P'
      004DF5 41                    2893 	.db #0x41	; 65	'A'
      004DF6 22                    2894 	.db #0x22	; 34
      004DF7 14                    2895 	.db #0x14	; 20
      004DF8 02                    2896 	.db #0x02	; 2
      004DF9 01                    2897 	.db #0x01	; 1
      004DFA 51                    2898 	.db #0x51	; 81	'Q'
      004DFB 32                    2899 	.db #0x32	; 50	'2'
      004DFC 49                    2900 	.db #0x49	; 73	'I'
      004DFD 79                    2901 	.db #0x79	; 121	'y'
      004DFE F8                    2902 	.db #0xf8	; 248
      004DFF 28                    2903 	.db #0x28	; 40
      004E00 F8                    2904 	.db #0xf8	; 248
      004E01 F8                    2905 	.db #0xf8	; 248
      004E02 A8                    2906 	.db #0xa8	; 168
      004E03 70                    2907 	.db #0x70	; 112	'p'
      004E04 F8                    2908 	.db #0xf8	; 248
      004E05 88                    2909 	.db #0x88	; 136
      004E06 88                    2910 	.db #0x88	; 136
      004E07 F8                    2911 	.db #0xf8	; 248
      004E08 88                    2912 	.db #0x88	; 136
      004E09 70                    2913 	.db #0x70	; 112	'p'
      004E0A F8                    2914 	.db #0xf8	; 248
      004E0B A8                    2915 	.db #0xa8	; 168
      004E0C A8                    2916 	.db #0xa8	; 168
      004E0D F8                    2917 	.db #0xf8	; 248
      004E0E 28                    2918 	.db #0x28	; 40
      004E0F 28                    2919 	.db #0x28	; 40
      004E10 F8                    2920 	.db #0xf8	; 248
      004E11 88                    2921 	.db #0x88	; 136
      004E12 C8                    2922 	.db #0xc8	; 200
      004E13 F8                    2923 	.db #0xf8	; 248
      004E14 20                    2924 	.db #0x20	; 32
      004E15 F8                    2925 	.db #0xf8	; 248
      004E16 88                    2926 	.db #0x88	; 136
      004E17 F8                    2927 	.db #0xf8	; 248
      004E18 88                    2928 	.db #0x88	; 136
      004E19 88                    2929 	.db #0x88	; 136
      004E1A F8                    2930 	.db #0xf8	; 248
      004E1B 88                    2931 	.db #0x88	; 136
      004E1C F8                    2932 	.db #0xf8	; 248
      004E1D 20                    2933 	.db #0x20	; 32
      004E1E 88                    2934 	.db #0x88	; 136
      004E1F F8                    2935 	.db #0xf8	; 248
      004E20 80                    2936 	.db #0x80	; 128
      004E21 80                    2937 	.db #0x80	; 128
      004E22 F8                    2938 	.db #0xf8	; 248
      004E23 10                    2939 	.db #0x10	; 16
      004E24 F8                    2940 	.db #0xf8	; 248
      004E25 F8                    2941 	.db #0xf8	; 248
      004E26 10                    2942 	.db #0x10	; 16
      004E27 F8                    2943 	.db #0xf8	; 248
      004E28 F8                    2944 	.db #0xf8	; 248
      004E29 88                    2945 	.db #0x88	; 136
      004E2A F8                    2946 	.db #0xf8	; 248
      004E2B F8                    2947 	.db #0xf8	; 248
      004E2C 28                    2948 	.db #0x28	; 40
      004E2D 38                    2949 	.db #0x38	; 56	'8'
      004E2E 3E                    2950 	.db #0x3e	; 62
      004E2F 41                    2951 	.db #0x41	; 65	'A'
      004E30 51                    2952 	.db #0x51	; 81	'Q'
      004E31 F8                    2953 	.db #0xf8	; 248
      004E32 68                    2954 	.db #0x68	; 104	'h'
      004E33 B8                    2955 	.db #0xb8	; 184
      004E34 B8                    2956 	.db #0xb8	; 184
      004E35 A8                    2957 	.db #0xa8	; 168
      004E36 E8                    2958 	.db #0xe8	; 232
      004E37 08                    2959 	.db #0x08	; 8
      004E38 F8                    2960 	.db #0xf8	; 248
      004E39 08                    2961 	.db #0x08	; 8
      004E3A F8                    2962 	.db #0xf8	; 248
      004E3B 80                    2963 	.db #0x80	; 128
      004E3C F8                    2964 	.db #0xf8	; 248
      004E3D 78                    2965 	.db #0x78	; 120	'x'
      004E3E 80                    2966 	.db #0x80	; 128
      004E3F 78                    2967 	.db #0x78	; 120	'x'
      004E40 7F                    2968 	.db #0x7f	; 127
      004E41 20                    2969 	.db #0x20	; 32
      004E42 18                    2970 	.db #0x18	; 24
      004E43 63                    2971 	.db #0x63	; 99	'c'
      004E44 14                    2972 	.db #0x14	; 20
      004E45 08                    2973 	.db #0x08	; 8
      004E46 03                    2974 	.db #0x03	; 3
      004E47 04                    2975 	.db #0x04	; 4
      004E48 78                    2976 	.db #0x78	; 120	'x'
      004E49 61                    2977 	.db #0x61	; 97	'a'
      004E4A 51                    2978 	.db #0x51	; 81	'Q'
      004E4B 49                    2979 	.db #0x49	; 73	'I'
      004E4C 00                    2980 	.db #0x00	; 0
      004E4D 00                    2981 	.db #0x00	; 0
      004E4E 7F                    2982 	.db #0x7f	; 127
      004E4F 02                    2983 	.db #0x02	; 2
      004E50 04                    2984 	.db #0x04	; 4
      004E51 08                    2985 	.db #0x08	; 8
      004E52 41                    2986 	.db #0x41	; 65	'A'
      004E53 41                    2987 	.db #0x41	; 65	'A'
      004E54 7F                    2988 	.db #0x7f	; 127
      004E55 04                    2989 	.db #0x04	; 4
      004E56 02                    2990 	.db #0x02	; 2
      004E57 01                    2991 	.db #0x01	; 1
      004E58 40                    2992 	.db #0x40	; 64
      004E59 40                    2993 	.db #0x40	; 64
      004E5A 40                    2994 	.db #0x40	; 64
      004E5B 00                    2995 	.db #0x00	; 0
      004E5C 01                    2996 	.db #0x01	; 1
      004E5D 02                    2997 	.db #0x02	; 2
      004E5E 78                    2998 	.db #0x78	; 120	'x'
      004E5F 80                    2999 	.db #0x80	; 128
      004E60 78                    3000 	.db #0x78	; 120	'x'
      004E61 F8                    3001 	.db #0xf8	; 248
      004E62 A0                    3002 	.db #0xa0	; 160
      004E63 E0                    3003 	.db #0xe0	; 224
      004E64 F8                    3004 	.db #0xf8	; 248
      004E65 A0                    3005 	.db #0xa0	; 160
      004E66 E0                    3006 	.db #0xe0	; 224
      004E67 F0                    3007 	.db #0xf0	; 240
      004E68 90                    3008 	.db #0x90	; 144
      004E69 F8                    3009 	.db #0xf8	; 248
      004E6A F8                    3010 	.db #0xf8	; 248
      004E6B A8                    3011 	.db #0xa8	; 168
      004E6C B8                    3012 	.db #0xb8	; 184
      004E6D 20                    3013 	.db #0x20	; 32
      004E6E F8                    3014 	.db #0xf8	; 248
      004E6F 28                    3015 	.db #0x28	; 40
      004E70 08                    3016 	.db #0x08	; 8
      004E71 14                    3017 	.db #0x14	; 20
      004E72 54                    3018 	.db #0x54	; 84	'T'
      004E73 7F                    3019 	.db #0x7f	; 127
      004E74 08                    3020 	.db #0x08	; 8
      004E75 04                    3021 	.db #0x04	; 4
      004E76 00                    3022 	.db #0x00	; 0
      004E77 44                    3023 	.db #0x44	; 68	'D'
      004E78 7D                    3024 	.db #0x7d	; 125
      004E79 20                    3025 	.db #0x20	; 32
      004E7A 40                    3026 	.db #0x40	; 64
      004E7B 44                    3027 	.db #0x44	; 68	'D'
      004E7C 00                    3028 	.db #0x00	; 0
      004E7D 7F                    3029 	.db #0x7f	; 127
      004E7E 10                    3030 	.db #0x10	; 16
      004E7F 00                    3031 	.db #0x00	; 0
      004E80 41                    3032 	.db #0x41	; 65	'A'
      004E81 7F                    3033 	.db #0x7f	; 127
      004E82 7C                    3034 	.db #0x7c	; 124
      004E83 04                    3035 	.db #0x04	; 4
      004E84 18                    3036 	.db #0x18	; 24
      004E85 7C                    3037 	.db #0x7c	; 124
      004E86 08                    3038 	.db #0x08	; 8
      004E87 04                    3039 	.db #0x04	; 4
      004E88 38                    3040 	.db #0x38	; 56	'8'
      004E89 44                    3041 	.db #0x44	; 68	'D'
      004E8A 44                    3042 	.db #0x44	; 68	'D'
      004E8B 7C                    3043 	.db #0x7c	; 124
      004E8C 14                    3044 	.db #0x14	; 20
      004E8D 14                    3045 	.db #0x14	; 20
      004E8E 08                    3046 	.db #0x08	; 8
      004E8F 14                    3047 	.db #0x14	; 20
      004E90 14                    3048 	.db #0x14	; 20
      004E91 7C                    3049 	.db #0x7c	; 124
      004E92 08                    3050 	.db #0x08	; 8
      004E93 04                    3051 	.db #0x04	; 4
      004E94 48                    3052 	.db #0x48	; 72	'H'
      004E95 54                    3053 	.db #0x54	; 84	'T'
      004E96 54                    3054 	.db #0x54	; 84	'T'
      004E97 04                    3055 	.db #0x04	; 4
      004E98 3F                    3056 	.db #0x3f	; 63
      004E99 44                    3057 	.db #0x44	; 68	'D'
      004E9A 3C                    3058 	.db #0x3c	; 60
      004E9B 40                    3059 	.db #0x40	; 64
      004E9C 40                    3060 	.db #0x40	; 64
      004E9D 1C                    3061 	.db #0x1c	; 28
      004E9E 20                    3062 	.db #0x20	; 32
      004E9F 40                    3063 	.db #0x40	; 64
      004EA0 3C                    3064 	.db #0x3c	; 60
      004EA1 40                    3065 	.db #0x40	; 64
      004EA2 30                    3066 	.db #0x30	; 48	'0'
      004EA3 44                    3067 	.db #0x44	; 68	'D'
      004EA4 28                    3068 	.db #0x28	; 40
      004EA5 10                    3069 	.db #0x10	; 16
      004EA6 0C                    3070 	.db #0x0c	; 12
      004EA7 50                    3071 	.db #0x50	; 80	'P'
      004EA8 50                    3072 	.db #0x50	; 80	'P'
      004EA9 44                    3073 	.db #0x44	; 68	'D'
      004EAA 64                    3074 	.db #0x64	; 100	'd'
      004EAB 54                    3075 	.db #0x54	; 84	'T'
      004EAC 44                    3076 	.db #0x44	; 68	'D'
      004EAD 64                    3077 	.db #0x64	; 100	'd'
      004EAE 54                    3078 	.db #0x54	; 84	'T'
      004EAF 00                    3079 	.db #0x00	; 0
      004EB0 F8                    3080 	.db #0xf8	; 248
      004EB1 00                    3081 	.db #0x00	; 0
      004EB2 00                    3082 	.db 0x00
      004EB3 00                    3083 	.db 0x00
      004EB4 00                    3084 	.db 0x00
      004EB5 00                    3085 	.db 0x00
      004EB6 00                    3086 	.db 0x00
      004EB7 00                    3087 	.db 0x00
      004EB8 00                    3088 	.db 0x00
      004EB9 00                    3089 	.db 0x00
      004EBA 00                    3090 	.db 0x00
      004EBB 00                    3091 	.db 0x00
      004EBC 00                    3092 	.db 0x00
      004EBD 00                    3093 	.db 0x00
      004EBE 00                    3094 	.db 0x00
      004EBF 00                    3095 	.db 0x00
      004EC0 00                    3096 	.db 0x00
      004EC1 00                    3097 	.db 0x00
      004EC2 00                    3098 	.db 0x00
      004EC3 00                    3099 	.db 0x00
      004EC4 00                    3100 	.db 0x00
      004EC5 00                    3101 	.db 0x00
      004EC6 00                    3102 	.db 0x00
      004EC7 00                    3103 	.db 0x00
      004EC8 00                    3104 	.db 0x00
      004EC9 00                    3105 	.db 0x00
      004ECA 00                    3106 	.db 0x00
      004ECB 00                    3107 	.db 0x00
      004ECC 00                    3108 	.db 0x00
      004ECD 00                    3109 	.db 0x00
      004ECE 00                    3110 	.db 0x00
      004ECF 00                    3111 	.db 0x00
      004ED0 00                    3112 	.db 0x00
      004ED1 00                    3113 	.db 0x00
      004ED2 00                    3114 	.db 0x00
      004ED3 00                    3115 	.db 0x00
      004ED4 00                    3116 	.db 0x00
      004ED5 00                    3117 	.db 0x00
      004ED6 00                    3118 	.db 0x00
      004ED7 00                    3119 	.db 0x00
      004ED8 00                    3120 	.db 0x00
      004ED9 00                    3121 	.db 0x00
      004EDA 00                    3122 	.db 0x00
      004EDB 00                    3123 	.db 0x00
      004EDC 00                    3124 	.db 0x00
      004EDD 00                    3125 	.db 0x00
      004EDE 00                    3126 	.db 0x00
      004EDF 00                    3127 	.db 0x00
      004EE0 00                    3128 	.db 0x00
      004EE1 00                    3129 	.db 0x00
      004EE2 00                    3130 	.db 0x00
      004EE3 00                    3131 	.db 0x00
      004EE4 00                    3132 	.db 0x00
      004EE5 00                    3133 	.db 0x00
      004EE6 00                    3134 	.db 0x00
      004EE7 00                    3135 	.db 0x00
      004EE8 00                    3136 	.db 0x00
      004EE9 00                    3137 	.db 0x00
      004EEA 00                    3138 	.db 0x00
      004EEB 00                    3139 	.db 0x00
      004EEC 00                    3140 	.db 0x00
      004EED 00                    3141 	.db 0x00
      004EEE 00                    3142 	.db 0x00
      004EEF 00                    3143 	.db 0x00
      004EF0 00                    3144 	.db 0x00
      004EF1 00                    3145 	.db 0x00
      004EF2 00                    3146 	.db 0x00
      004EF3 00                    3147 	.db 0x00
      004EF4 00                    3148 	.db 0x00
      004EF5 00                    3149 	.db 0x00
      004EF6 00                    3150 	.db 0x00
      004EF7 00                    3151 	.db 0x00
      004EF8 00                    3152 	.db 0x00
      004EF9 00                    3153 	.db 0x00
      004EFA 00                    3154 	.db 0x00
      004EFB 00                    3155 	.db 0x00
      004EFC 00                    3156 	.db 0x00
      004EFD 00                    3157 	.db 0x00
      004EFE 00                    3158 	.db 0x00
      004EFF 00                    3159 	.db 0x00
      004F00 00                    3160 	.db 0x00
      004F01 00                    3161 	.db 0x00
      004F02 00                    3162 	.db 0x00
      004F03 00                    3163 	.db 0x00
      004F04 00                    3164 	.db 0x00
      004F05 00                    3165 	.db 0x00
      004F06 00                    3166 	.db 0x00
      004F07 00                    3167 	.db 0x00
      004F08 00                    3168 	.db 0x00
      004F09 00                    3169 	.db 0x00
      004F0A 00                    3170 	.db 0x00
      004F0B 00                    3171 	.db 0x00
      004F0C 00                    3172 	.db 0x00
      004F0D 00                    3173 	.db 0x00
      004F0E 00                    3174 	.db 0x00
      004F0F 00                    3175 	.db 0x00
      004F10 00                    3176 	.db 0x00
      004F11 00                    3177 	.db 0x00
      004F12 00                    3178 	.db 0x00
      004F13 00                    3179 	.db 0x00
      004F14 00                    3180 	.db 0x00
      004F15 00                    3181 	.db 0x00
      004F16 00                    3182 	.db 0x00
      004F17 00                    3183 	.db 0x00
      004F18 00                    3184 	.db 0x00
      004F19 00                    3185 	.db 0x00
      004F1A 00                    3186 	.db 0x00
      004F1B 00                    3187 	.db 0x00
      004F1C 00                    3188 	.db 0x00
      004F1D 00                    3189 	.db 0x00
      004F1E 00                    3190 	.db 0x00
      004F1F 00                    3191 	.db 0x00
      004F20 00                    3192 	.db 0x00
      004F21 00                    3193 	.db 0x00
      004F22 00                    3194 	.db 0x00
      004F23 00                    3195 	.db 0x00
      004F24 00                    3196 	.db 0x00
      004F25 00                    3197 	.db 0x00
      004F26 00                    3198 	.db 0x00
      004F27 00                    3199 	.db 0x00
      004F28 00                    3200 	.db 0x00
      004F29 00                    3201 	.db 0x00
      004F2A 00                    3202 	.db 0x00
      004F2B 00                    3203 	.db 0x00
      004F2C 00                    3204 	.db 0x00
      004F2D 00                    3205 	.db 0x00
      004F2E 00                    3206 	.db 0x00
      004F2F 00                    3207 	.db 0x00
      004F30 00                    3208 	.db 0x00
      004F31 00                    3209 	.db 0x00
      004F32 00                    3210 	.db 0x00
      004F33 00                    3211 	.db 0x00
      004F34 00                    3212 	.db 0x00
      004F35 00                    3213 	.db 0x00
      004F36 00                    3214 	.db 0x00
      004F37 00                    3215 	.db 0x00
      004F38 00                    3216 	.db 0x00
      004F39 00                    3217 	.db 0x00
      004F3A 00                    3218 	.db 0x00
      004F3B 00                    3219 	.db 0x00
      004F3C 00                    3220 	.db 0x00
      004F3D 00                    3221 	.db 0x00
      004F3E 00                    3222 	.db 0x00
      004F3F 00                    3223 	.db 0x00
      004F40 00                    3224 	.db 0x00
      004F41 00                    3225 	.db 0x00
      004F42 00                    3226 	.db 0x00
      004F43 00                    3227 	.db 0x00
      004F44 00                    3228 	.db 0x00
      004F45 00                    3229 	.db 0x00
      004F46 00                    3230 	.db 0x00
      004F47 00                    3231 	.db 0x00
      004F48 00                    3232 	.db 0x00
      004F49 00                    3233 	.db 0x00
      004F4A 00                    3234 	.db 0x00
      004F4B 00                    3235 	.db 0x00
      004F4C 00                    3236 	.db 0x00
      004F4D 00                    3237 	.db 0x00
      004F4E 00                    3238 	.db 0x00
      004F4F 00                    3239 	.db 0x00
      004F50 00                    3240 	.db 0x00
      004F51 00                    3241 	.db 0x00
      004F52 00                    3242 	.db 0x00
      004F53 00                    3243 	.db 0x00
      004F54 00                    3244 	.db 0x00
      004F55 00                    3245 	.db 0x00
      004F56 00                    3246 	.db 0x00
      004F57 00                    3247 	.db 0x00
      004F58 00                    3248 	.db 0x00
      004F59 00                    3249 	.db 0x00
      004F5A 00                    3250 	.db 0x00
      004F5B 00                    3251 	.db 0x00
      004F5C 00                    3252 	.db 0x00
      004F5D 00                    3253 	.db 0x00
      004F5E 00                    3254 	.db 0x00
      004F5F 00                    3255 	.db 0x00
      004F60 00                    3256 	.db 0x00
      004F61 00                    3257 	.db 0x00
      004F62 00                    3258 	.db 0x00
      004F63 00                    3259 	.db 0x00
      004F64 00                    3260 	.db 0x00
      004F65 00                    3261 	.db 0x00
      004F66 00                    3262 	.db 0x00
      004F67 00                    3263 	.db 0x00
      004F68 00                    3264 	.db 0x00
      004F69 00                    3265 	.db 0x00
      004F6A 00                    3266 	.db 0x00
      004F6B 00                    3267 	.db 0x00
      004F6C 00                    3268 	.db 0x00
      004F6D 00                    3269 	.db 0x00
      004F6E 00                    3270 	.db 0x00
      004F6F 00                    3271 	.db 0x00
      004F70 00                    3272 	.db 0x00
      004F71 00                    3273 	.db 0x00
      004F72 00                    3274 	.db 0x00
      004F73 00                    3275 	.db 0x00
      004F74 00                    3276 	.db 0x00
      004F75 00                    3277 	.db 0x00
      004F76 00                    3278 	.db 0x00
      004F77 00                    3279 	.db 0x00
      004F78 00                    3280 	.db 0x00
      004F79 00                    3281 	.db 0x00
      004F7A 00                    3282 	.db 0x00
                                   3283 	.area CONST   (CODE)
      004F7B                       3284 ___str_0:
      004F7B 0A                    3285 	.db 0x0a
      004F7C 0D                    3286 	.db 0x0d
      004F7D 1B                    3287 	.db 0x1b
      004F7E 5B 31 3B 33 31 6D 45  3288 	.ascii "[1;31mERROR: Unknown Memory Addr! = %d"
             52 52 4F 52 3A 20 55
             6E 6B 6E 6F 77 6E 20
             4D 65 6D 6F 72 79 20
             41 64 64 72 21 20 3D
             20 25 64
      004FA4 00                    3289 	.db 0x00
                                   3290 	.area CSEG    (CODE)
                                   3291 	.area CONST   (CODE)
      004FA5                       3292 ___str_1:
      004FA5 1B                    3293 	.db 0x1b
      004FA6 5B 30 6D              3294 	.ascii "[0m"
      004FA9 00                    3295 	.db 0x00
                                   3296 	.area CSEG    (CODE)
                                   3297 	.area CONST   (CODE)
      004FAA                       3298 ___str_2:
      004FAA 0A                    3299 	.db 0x0a
      004FAB 0D                    3300 	.db 0x0d
      004FAC 1B                    3301 	.db 0x1b
      004FAD 5B 31 3B 33 31 6D 45  3302 	.ascii "[1;31mERROR: UNKNOWN CONTROLLER"
             52 52 4F 52 3A 20 55
             4E 4B 4E 4F 57 4E 20
             43 4F 4E 54 52 4F 4C
             4C 45 52
      004FCC 00                    3303 	.db 0x00
                                   3304 	.area CSEG    (CODE)
                                   3305 	.area CONST   (CODE)
      004FCD                       3306 ___str_3:
      004FCD 53 54 41 54 55 53     3307 	.ascii "STATUS"
      004FD3 00                    3308 	.db 0x00
                                   3309 	.area CSEG    (CODE)
                                   3310 	.area CONST   (CODE)
      004FD4                       3311 ___str_4:
      004FD4 53 50 4F 32           3312 	.ascii "SPO2"
      004FD8 00                    3313 	.db 0x00
                                   3314 	.area CSEG    (CODE)
                                   3315 	.area CONST   (CODE)
      004FD9                       3316 ___str_5:
      004FD9 42 50 4D              3317 	.ascii "BPM"
      004FDC 00                    3318 	.db 0x00
                                   3319 	.area CSEG    (CODE)
                                   3320 	.area CONST   (CODE)
      004FDD                       3321 ___str_6:
      004FDD 0A                    3322 	.db 0x0a
      004FDE 0D                    3323 	.db 0x0d
      004FDF 1B                    3324 	.db 0x1b
      004FE0 5B 33 38 3B 35 3B 32  3325 	.ascii "[38;5;214mLCD Testing"
             31 34 6D 4C 43 44 20
             54 65 73 74 69 6E 67
      004FF5 00                    3326 	.db 0x00
                                   3327 	.area CSEG    (CODE)
                                   3328 	.area XINIT   (CODE)
                                   3329 	.area CABS    (ABS,CODE)
