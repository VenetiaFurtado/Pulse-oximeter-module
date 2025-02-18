                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module io
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _getUserHexInput_PARM_2
                                    209 	.globl _getUserNumberInput_PARM_2
                                    210 	.globl _putchar
                                    211 	.globl _getchar
                                    212 	.globl _getUserNumberInput
                                    213 	.globl _getUserHexInput
                                    214 ;--------------------------------------------------------
                                    215 ; special function registers
                                    216 ;--------------------------------------------------------
                                    217 	.area RSEG    (ABS,DATA)
      000000                        218 	.org 0x0000
                           000080   219 _P0	=	0x0080
                           000081   220 _SP	=	0x0081
                           000082   221 _DPL	=	0x0082
                           000083   222 _DPH	=	0x0083
                           000087   223 _PCON	=	0x0087
                           000088   224 _TCON	=	0x0088
                           000089   225 _TMOD	=	0x0089
                           00008A   226 _TL0	=	0x008a
                           00008B   227 _TL1	=	0x008b
                           00008C   228 _TH0	=	0x008c
                           00008D   229 _TH1	=	0x008d
                           000090   230 _P1	=	0x0090
                           000098   231 _SCON	=	0x0098
                           000099   232 _SBUF	=	0x0099
                           0000A0   233 _P2	=	0x00a0
                           0000A8   234 _IE	=	0x00a8
                           0000B0   235 _P3	=	0x00b0
                           0000B8   236 _IP	=	0x00b8
                           0000D0   237 _PSW	=	0x00d0
                           0000E0   238 _ACC	=	0x00e0
                           0000F0   239 _B	=	0x00f0
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                                    291 ;--------------------------------------------------------
                                    292 ; special function bits
                                    293 ;--------------------------------------------------------
                                    294 	.area RSEG    (ABS,DATA)
      000000                        295 	.org 0x0000
                           000080   296 _P0_0	=	0x0080
                           000081   297 _P0_1	=	0x0081
                           000082   298 _P0_2	=	0x0082
                           000083   299 _P0_3	=	0x0083
                           000084   300 _P0_4	=	0x0084
                           000085   301 _P0_5	=	0x0085
                           000086   302 _P0_6	=	0x0086
                           000087   303 _P0_7	=	0x0087
                           000088   304 _IT0	=	0x0088
                           000089   305 _IE0	=	0x0089
                           00008A   306 _IT1	=	0x008a
                           00008B   307 _IE1	=	0x008b
                           00008C   308 _TR0	=	0x008c
                           00008D   309 _TF0	=	0x008d
                           00008E   310 _TR1	=	0x008e
                           00008F   311 _TF1	=	0x008f
                           000090   312 _P1_0	=	0x0090
                           000091   313 _P1_1	=	0x0091
                           000092   314 _P1_2	=	0x0092
                           000093   315 _P1_3	=	0x0093
                           000094   316 _P1_4	=	0x0094
                           000095   317 _P1_5	=	0x0095
                           000096   318 _P1_6	=	0x0096
                           000097   319 _P1_7	=	0x0097
                           000098   320 _RI	=	0x0098
                           000099   321 _TI	=	0x0099
                           00009A   322 _RB8	=	0x009a
                           00009B   323 _TB8	=	0x009b
                           00009C   324 _REN	=	0x009c
                           00009D   325 _SM2	=	0x009d
                           00009E   326 _SM1	=	0x009e
                           00009F   327 _SM0	=	0x009f
                           0000A0   328 _P2_0	=	0x00a0
                           0000A1   329 _P2_1	=	0x00a1
                           0000A2   330 _P2_2	=	0x00a2
                           0000A3   331 _P2_3	=	0x00a3
                           0000A4   332 _P2_4	=	0x00a4
                           0000A5   333 _P2_5	=	0x00a5
                           0000A6   334 _P2_6	=	0x00a6
                           0000A7   335 _P2_7	=	0x00a7
                           0000A8   336 _EX0	=	0x00a8
                           0000A9   337 _ET0	=	0x00a9
                           0000AA   338 _EX1	=	0x00aa
                           0000AB   339 _ET1	=	0x00ab
                           0000AC   340 _ES	=	0x00ac
                           0000AF   341 _EA	=	0x00af
                           0000B0   342 _P3_0	=	0x00b0
                           0000B1   343 _P3_1	=	0x00b1
                           0000B2   344 _P3_2	=	0x00b2
                           0000B3   345 _P3_3	=	0x00b3
                           0000B4   346 _P3_4	=	0x00b4
                           0000B5   347 _P3_5	=	0x00b5
                           0000B6   348 _P3_6	=	0x00b6
                           0000B7   349 _P3_7	=	0x00b7
                           0000B0   350 _RXD	=	0x00b0
                           0000B1   351 _TXD	=	0x00b1
                           0000B2   352 _INT0	=	0x00b2
                           0000B3   353 _INT1	=	0x00b3
                           0000B4   354 _T0	=	0x00b4
                           0000B5   355 _T1	=	0x00b5
                           0000B6   356 _WR	=	0x00b6
                           0000B7   357 _RD	=	0x00b7
                           0000B8   358 _PX0	=	0x00b8
                           0000B9   359 _PT0	=	0x00b9
                           0000BA   360 _PX1	=	0x00ba
                           0000BB   361 _PT1	=	0x00bb
                           0000BC   362 _PS	=	0x00bc
                           0000D0   363 _P	=	0x00d0
                           0000D1   364 _F1	=	0x00d1
                           0000D2   365 _OV	=	0x00d2
                           0000D3   366 _RS0	=	0x00d3
                           0000D4   367 _RS1	=	0x00d4
                           0000D5   368 _F0	=	0x00d5
                           0000D6   369 _AC	=	0x00d6
                           0000D7   370 _CY	=	0x00d7
                           0000AD   371 _ET2	=	0x00ad
                           0000BD   372 _PT2	=	0x00bd
                           0000C8   373 _T2CON_0	=	0x00c8
                           0000C9   374 _T2CON_1	=	0x00c9
                           0000CA   375 _T2CON_2	=	0x00ca
                           0000CB   376 _T2CON_3	=	0x00cb
                           0000CC   377 _T2CON_4	=	0x00cc
                           0000CD   378 _T2CON_5	=	0x00cd
                           0000CE   379 _T2CON_6	=	0x00ce
                           0000CF   380 _T2CON_7	=	0x00cf
                           0000C8   381 _CP_RL2	=	0x00c8
                           0000C9   382 _C_T2	=	0x00c9
                           0000CA   383 _TR2	=	0x00ca
                           0000CB   384 _EXEN2	=	0x00cb
                           0000CC   385 _TCLK	=	0x00cc
                           0000CD   386 _RCLK	=	0x00cd
                           0000CE   387 _EXF2	=	0x00ce
                           0000CF   388 _TF2	=	0x00cf
                           0000DF   389 _CF	=	0x00df
                           0000DE   390 _CR	=	0x00de
                           0000DC   391 _CCF4	=	0x00dc
                           0000DB   392 _CCF3	=	0x00db
                           0000DA   393 _CCF2	=	0x00da
                           0000D9   394 _CCF1	=	0x00d9
                           0000D8   395 _CCF0	=	0x00d8
                           0000AE   396 _EC	=	0x00ae
                           0000BE   397 _PPCL	=	0x00be
                           0000BD   398 _PT2L	=	0x00bd
                           0000BC   399 _PSL	=	0x00bc
                           0000BB   400 _PT1L	=	0x00bb
                           0000BA   401 _PX1L	=	0x00ba
                           0000B9   402 _PT0L	=	0x00b9
                           0000B8   403 _PX0L	=	0x00b8
                           0000C0   404 _P4_0	=	0x00c0
                           0000C1   405 _P4_1	=	0x00c1
                           0000C2   406 _P4_2	=	0x00c2
                           0000C3   407 _P4_3	=	0x00c3
                           0000C4   408 _P4_4	=	0x00c4
                           0000C5   409 _P4_5	=	0x00c5
                           0000C6   410 _P4_6	=	0x00c6
                           0000C7   411 _P4_7	=	0x00c7
                           0000E8   412 _P5_0	=	0x00e8
                           0000E9   413 _P5_1	=	0x00e9
                           0000EA   414 _P5_2	=	0x00ea
                           0000EB   415 _P5_3	=	0x00eb
                           0000EC   416 _P5_4	=	0x00ec
                           0000ED   417 _P5_5	=	0x00ed
                           0000EE   418 _P5_6	=	0x00ee
                           0000EF   419 _P5_7	=	0x00ef
                                    420 ;--------------------------------------------------------
                                    421 ; overlayable register banks
                                    422 ;--------------------------------------------------------
                                    423 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        424 	.ds 8
                                    425 ;--------------------------------------------------------
                                    426 ; internal ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area DSEG    (DATA)
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable items in internal ram
                                    431 ;--------------------------------------------------------
                                    432 ;--------------------------------------------------------
                                    433 ; indirectly addressable internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area ISEG    (DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; absolute internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area IABS    (ABS,DATA)
                                    440 	.area IABS    (ABS,DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; bit data
                                    443 ;--------------------------------------------------------
                                    444 	.area BSEG    (BIT)
                                    445 ;--------------------------------------------------------
                                    446 ; paged external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area PSEG    (PAG,XDATA)
                                    449 ;--------------------------------------------------------
                                    450 ; external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XSEG    (XDATA)
      00003F                        453 _putchar_c_65536_17:
      00003F                        454 	.ds 2
      000041                        455 _getUserNumberInput_PARM_2:
      000041                        456 	.ds 2
      000043                        457 _getUserNumberInput_maxDigits_65536_21:
      000043                        458 	.ds 1
      000044                        459 _getUserNumberInput_value_65536_22:
      000044                        460 	.ds 2
      000046                        461 _getUserNumberInput_fail_131073_24:
      000046                        462 	.ds 1
      000047                        463 _getUserHexInput_PARM_2:
      000047                        464 	.ds 2
      000049                        465 _getUserHexInput_maxChar_65536_32:
      000049                        466 	.ds 1
      00004A                        467 _getUserHexInput_value_65536_33:
      00004A                        468 	.ds 2
      00004C                        469 _getUserHexInput_fail_131073_35:
      00004C                        470 	.ds 1
      00004D                        471 _getUserHexInput_x_262146_39:
      00004D                        472 	.ds 1
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external initialized ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; Home
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area HOME    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'putchar'
                                    509 ;------------------------------------------------------------
                                    510 ;c                         Allocated with name '_putchar_c_65536_17'
                                    511 ;------------------------------------------------------------
                                    512 ;	src/io.c:34: int putchar(int c)
                                    513 ;	-----------------------------------------
                                    514 ;	 function putchar
                                    515 ;	-----------------------------------------
      000B4B                        516 _putchar:
                           000007   517 	ar7 = 0x07
                           000006   518 	ar6 = 0x06
                           000005   519 	ar5 = 0x05
                           000004   520 	ar4 = 0x04
                           000003   521 	ar3 = 0x03
                           000002   522 	ar2 = 0x02
                           000001   523 	ar1 = 0x01
                           000000   524 	ar0 = 0x00
      000B4B AF 83            [24]  525 	mov	r7,dph
      000B4D E5 82            [12]  526 	mov	a,dpl
      000B4F 90 00 3F         [24]  527 	mov	dptr,#_putchar_c_65536_17
      000B52 F0               [24]  528 	movx	@dptr,a
      000B53 EF               [12]  529 	mov	a,r7
      000B54 A3               [24]  530 	inc	dptr
      000B55 F0               [24]  531 	movx	@dptr,a
                                    532 ;	src/io.c:36: while (TI != 1);       // Waits until TI flag is ready to transmit data, set by hardware
      000B56                        533 00101$:
                                    534 ;	src/io.c:37: TI = 0;               // Once data has been transmitted, TI flag is cleared by software
                                    535 ;	assignBit
      000B56 10 99 02         [24]  536 	jbc	_TI,00114$
      000B59 80 FB            [24]  537 	sjmp	00101$
      000B5B                        538 00114$:
                                    539 ;	src/io.c:38: SBUF = c;             // Transmits the ASCII value of c on the serial line
      000B5B 90 00 3F         [24]  540 	mov	dptr,#_putchar_c_65536_17
      000B5E E0               [24]  541 	movx	a,@dptr
      000B5F FE               [12]  542 	mov	r6,a
      000B60 A3               [24]  543 	inc	dptr
      000B61 E0               [24]  544 	movx	a,@dptr
      000B62 FF               [12]  545 	mov	r7,a
      000B63 8E 99            [24]  546 	mov	_SBUF,r6
                                    547 ;	src/io.c:39: return c;
      000B65 8E 82            [24]  548 	mov	dpl,r6
      000B67 8F 83            [24]  549 	mov	dph,r7
                                    550 ;	src/io.c:40: }
      000B69 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'getchar'
                                    554 ;------------------------------------------------------------
                                    555 ;	src/io.c:48: int getchar(void)
                                    556 ;	-----------------------------------------
                                    557 ;	 function getchar
                                    558 ;	-----------------------------------------
      000B6A                        559 _getchar:
                                    560 ;	src/io.c:50: while (RI != 1);      // Waits until RI has received data
      000B6A                        561 00101$:
                                    562 ;	src/io.c:51: RI = 0;               // Once data has been received, software clears the RI flag
                                    563 ;	assignBit
      000B6A 10 98 02         [24]  564 	jbc	_RI,00114$
      000B6D 80 FB            [24]  565 	sjmp	00101$
      000B6F                        566 00114$:
                                    567 ;	src/io.c:52: return SBUF;          // Returns value in SBUF to the calling function
      000B6F AE 99            [24]  568 	mov	r6,_SBUF
      000B71 7F 00            [12]  569 	mov	r7,#0x00
      000B73 8E 82            [24]  570 	mov	dpl,r6
      000B75 8F 83            [24]  571 	mov	dph,r7
                                    572 ;	src/io.c:53: }
      000B77 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'getUserNumberInput'
                                    576 ;------------------------------------------------------------
                                    577 ;maxVal                    Allocated with name '_getUserNumberInput_PARM_2'
                                    578 ;maxDigits                 Allocated with name '_getUserNumberInput_maxDigits_65536_21'
                                    579 ;value                     Allocated with name '_getUserNumberInput_value_65536_22'
                                    580 ;fail                      Allocated with name '_getUserNumberInput_fail_131073_24'
                                    581 ;i                         Allocated with name '_getUserNumberInput_i_196609_25'
                                    582 ;c                         Allocated with name '_getUserNumberInput_c_262145_26'
                                    583 ;x                         Allocated with name '_getUserNumberInput_x_327681_28'
                                    584 ;------------------------------------------------------------
                                    585 ;	src/io.c:62: uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal) //max number of digits user can input
                                    586 ;	-----------------------------------------
                                    587 ;	 function getUserNumberInput
                                    588 ;	-----------------------------------------
      000B78                        589 _getUserNumberInput:
      000B78 E5 82            [12]  590 	mov	a,dpl
      000B7A 90 00 43         [24]  591 	mov	dptr,#_getUserNumberInput_maxDigits_65536_21
      000B7D F0               [24]  592 	movx	@dptr,a
                                    593 ;	src/io.c:66: while (1)
      000B7E 90 00 41         [24]  594 	mov	dptr,#_getUserNumberInput_PARM_2
      000B81 E0               [24]  595 	movx	a,@dptr
      000B82 FE               [12]  596 	mov	r6,a
      000B83 A3               [24]  597 	inc	dptr
      000B84 E0               [24]  598 	movx	a,@dptr
      000B85 FF               [12]  599 	mov	r7,a
      000B86 90 00 43         [24]  600 	mov	dptr,#_getUserNumberInput_maxDigits_65536_21
      000B89 E0               [24]  601 	movx	a,@dptr
      000B8A FD               [12]  602 	mov	r5,a
      000B8B                        603 00113$:
                                    604 ;	src/io.c:68: value = 0;
      000B8B 90 00 44         [24]  605 	mov	dptr,#_getUserNumberInput_value_65536_22
      000B8E E4               [12]  606 	clr	a
      000B8F F0               [24]  607 	movx	@dptr,a
      000B90 A3               [24]  608 	inc	dptr
      000B91 F0               [24]  609 	movx	@dptr,a
                                    610 ;	src/io.c:69: bool fail = false;
      000B92 90 00 46         [24]  611 	mov	dptr,#_getUserNumberInput_fail_131073_24
      000B95 F0               [24]  612 	movx	@dptr,a
                                    613 ;	src/io.c:70: printf_tiny("\n\rEnter a maximum %d digit number:", maxDigits);
      000B96 8D 03            [24]  614 	mov	ar3,r5
      000B98 7C 00            [12]  615 	mov	r4,#0x00
      000B9A C0 07            [24]  616 	push	ar7
      000B9C C0 06            [24]  617 	push	ar6
      000B9E C0 05            [24]  618 	push	ar5
      000BA0 C0 03            [24]  619 	push	ar3
      000BA2 C0 04            [24]  620 	push	ar4
      000BA4 74 78            [12]  621 	mov	a,#___str_0
      000BA6 C0 E0            [24]  622 	push	acc
      000BA8 74 4C            [12]  623 	mov	a,#(___str_0 >> 8)
      000BAA C0 E0            [24]  624 	push	acc
      000BAC 12 3B B6         [24]  625 	lcall	_printf_tiny
      000BAF E5 81            [12]  626 	mov	a,sp
      000BB1 24 FC            [12]  627 	add	a,#0xfc
      000BB3 F5 81            [12]  628 	mov	sp,a
      000BB5 D0 05            [24]  629 	pop	ar5
      000BB7 D0 06            [24]  630 	pop	ar6
      000BB9 D0 07            [24]  631 	pop	ar7
                                    632 ;	src/io.c:71: for (uint8_t i = 0; i < maxDigits; i++)
      000BBB 7C 00            [12]  633 	mov	r4,#0x00
      000BBD                        634 00116$:
      000BBD C3               [12]  635 	clr	c
      000BBE EC               [12]  636 	mov	a,r4
      000BBF 9D               [12]  637 	subb	a,r5
      000BC0 40 03            [24]  638 	jc	00152$
      000BC2 02 0C E0         [24]  639 	ljmp	00109$
      000BC5                        640 00152$:
                                    641 ;	src/io.c:73: char c = getchar();               //  take user input
      000BC5 C0 07            [24]  642 	push	ar7
      000BC7 C0 06            [24]  643 	push	ar6
      000BC9 C0 05            [24]  644 	push	ar5
      000BCB C0 04            [24]  645 	push	ar4
      000BCD 12 0B 6A         [24]  646 	lcall	_getchar
      000BD0 AA 82            [24]  647 	mov	r2,dpl
      000BD2 AB 83            [24]  648 	mov	r3,dph
      000BD4 D0 04            [24]  649 	pop	ar4
      000BD6 D0 05            [24]  650 	pop	ar5
      000BD8 D0 06            [24]  651 	pop	ar6
      000BDA D0 07            [24]  652 	pop	ar7
                                    653 ;	src/io.c:74: if (c == '\r')                    //user enters ENTER key
      000BDC BA 0D 03         [24]  654 	cjne	r2,#0x0d,00153$
      000BDF 02 0C E0         [24]  655 	ljmp	00109$
      000BE2                        656 00153$:
                                    657 ;	src/io.c:78: printf_tiny("%c", c);            //prints character on screen as user is typing
      000BE2 8A 01            [24]  658 	mov	ar1,r2
      000BE4 7B 00            [12]  659 	mov	r3,#0x00
      000BE6 C0 07            [24]  660 	push	ar7
      000BE8 C0 06            [24]  661 	push	ar6
      000BEA C0 05            [24]  662 	push	ar5
      000BEC C0 04            [24]  663 	push	ar4
      000BEE C0 02            [24]  664 	push	ar2
      000BF0 C0 01            [24]  665 	push	ar1
      000BF2 C0 03            [24]  666 	push	ar3
      000BF4 74 9B            [12]  667 	mov	a,#___str_1
      000BF6 C0 E0            [24]  668 	push	acc
      000BF8 74 4C            [12]  669 	mov	a,#(___str_1 >> 8)
      000BFA C0 E0            [24]  670 	push	acc
      000BFC 12 3B B6         [24]  671 	lcall	_printf_tiny
      000BFF E5 81            [12]  672 	mov	a,sp
      000C01 24 FC            [12]  673 	add	a,#0xfc
      000C03 F5 81            [12]  674 	mov	sp,a
      000C05 D0 02            [24]  675 	pop	ar2
      000C07 D0 04            [24]  676 	pop	ar4
      000C09 D0 05            [24]  677 	pop	ar5
      000C0B D0 06            [24]  678 	pop	ar6
      000C0D D0 07            [24]  679 	pop	ar7
                                    680 ;	src/io.c:79: if (c >= '0' && c <= '9')        // check if input is a number
      000C0F BA 30 00         [24]  681 	cjne	r2,#0x30,00154$
      000C12                        682 00154$:
      000C12 50 03            [24]  683 	jnc	00155$
      000C14 02 0C AA         [24]  684 	ljmp	00106$
      000C17                        685 00155$:
      000C17 EA               [12]  686 	mov	a,r2
      000C18 24 C6            [12]  687 	add	a,#0xff - 0x39
      000C1A 50 03            [24]  688 	jnc	00156$
      000C1C 02 0C AA         [24]  689 	ljmp	00106$
      000C1F                        690 00156$:
                                    691 ;	src/io.c:81: uint8_t x = c - '0';           //converts user input(ASCII) to int
      000C1F EA               [12]  692 	mov	a,r2
      000C20 24 D0            [12]  693 	add	a,#0xd0
      000C22 FA               [12]  694 	mov	r2,a
                                    695 ;	src/io.c:82: value = value * 10 + x;        //calculates multi-digit ASCII input
      000C23 90 00 44         [24]  696 	mov	dptr,#_getUserNumberInput_value_65536_22
      000C26 E0               [24]  697 	movx	a,@dptr
      000C27 F9               [12]  698 	mov	r1,a
      000C28 A3               [24]  699 	inc	dptr
      000C29 E0               [24]  700 	movx	a,@dptr
      000C2A FB               [12]  701 	mov	r3,a
      000C2B 90 01 DF         [24]  702 	mov	dptr,#__mulint_PARM_2
      000C2E E9               [12]  703 	mov	a,r1
      000C2F F0               [24]  704 	movx	@dptr,a
      000C30 EB               [12]  705 	mov	a,r3
      000C31 A3               [24]  706 	inc	dptr
      000C32 F0               [24]  707 	movx	@dptr,a
      000C33 90 00 0A         [24]  708 	mov	dptr,#0x000a
      000C36 C0 07            [24]  709 	push	ar7
      000C38 C0 06            [24]  710 	push	ar6
      000C3A C0 05            [24]  711 	push	ar5
      000C3C C0 04            [24]  712 	push	ar4
      000C3E C0 02            [24]  713 	push	ar2
      000C40 12 3C BF         [24]  714 	lcall	__mulint
      000C43 A9 82            [24]  715 	mov	r1,dpl
      000C45 AB 83            [24]  716 	mov	r3,dph
      000C47 D0 02            [24]  717 	pop	ar2
      000C49 D0 04            [24]  718 	pop	ar4
      000C4B D0 05            [24]  719 	pop	ar5
      000C4D D0 06            [24]  720 	pop	ar6
      000C4F D0 07            [24]  721 	pop	ar7
      000C51 8A 00            [24]  722 	mov	ar0,r2
      000C53 7A 00            [12]  723 	mov	r2,#0x00
      000C55 E8               [12]  724 	mov	a,r0
      000C56 29               [12]  725 	add	a,r1
      000C57 F9               [12]  726 	mov	r1,a
      000C58 EA               [12]  727 	mov	a,r2
      000C59 3B               [12]  728 	addc	a,r3
      000C5A FB               [12]  729 	mov	r3,a
      000C5B 90 00 44         [24]  730 	mov	dptr,#_getUserNumberInput_value_65536_22
      000C5E E9               [12]  731 	mov	a,r1
      000C5F F0               [24]  732 	movx	@dptr,a
      000C60 EB               [12]  733 	mov	a,r3
      000C61 A3               [24]  734 	inc	dptr
      000C62 F0               [24]  735 	movx	@dptr,a
                                    736 ;	src/io.c:83: if (value > maxVal)
      000C63 90 00 44         [24]  737 	mov	dptr,#_getUserNumberInput_value_65536_22
      000C66 E0               [24]  738 	movx	a,@dptr
      000C67 FA               [12]  739 	mov	r2,a
      000C68 A3               [24]  740 	inc	dptr
      000C69 E0               [24]  741 	movx	a,@dptr
      000C6A FB               [12]  742 	mov	r3,a
      000C6B C3               [12]  743 	clr	c
      000C6C EE               [12]  744 	mov	a,r6
      000C6D 9A               [12]  745 	subb	a,r2
      000C6E EF               [12]  746 	mov	a,r7
      000C6F 9B               [12]  747 	subb	a,r3
      000C70 50 6A            [24]  748 	jnc	00117$
                                    749 ;	src/io.c:85: ERROR_LOG("Value entered is beyond range %x", maxVal);
      000C72 C0 07            [24]  750 	push	ar7
      000C74 C0 06            [24]  751 	push	ar6
      000C76 C0 05            [24]  752 	push	ar5
      000C78 C0 06            [24]  753 	push	ar6
      000C7A C0 07            [24]  754 	push	ar7
      000C7C 74 9E            [12]  755 	mov	a,#___str_2
      000C7E C0 E0            [24]  756 	push	acc
      000C80 74 4C            [12]  757 	mov	a,#(___str_2 >> 8)
      000C82 C0 E0            [24]  758 	push	acc
      000C84 12 3B B6         [24]  759 	lcall	_printf_tiny
      000C87 E5 81            [12]  760 	mov	a,sp
      000C89 24 FC            [12]  761 	add	a,#0xfc
      000C8B F5 81            [12]  762 	mov	sp,a
      000C8D 74 CF            [12]  763 	mov	a,#___str_3
      000C8F C0 E0            [24]  764 	push	acc
      000C91 74 4C            [12]  765 	mov	a,#(___str_3 >> 8)
      000C93 C0 E0            [24]  766 	push	acc
      000C95 12 3B B6         [24]  767 	lcall	_printf_tiny
      000C98 15 81            [12]  768 	dec	sp
      000C9A 15 81            [12]  769 	dec	sp
      000C9C D0 05            [24]  770 	pop	ar5
      000C9E D0 06            [24]  771 	pop	ar6
      000CA0 D0 07            [24]  772 	pop	ar7
                                    773 ;	src/io.c:86: fail = true;
      000CA2 90 00 46         [24]  774 	mov	dptr,#_getUserNumberInput_fail_131073_24
      000CA5 74 01            [12]  775 	mov	a,#0x01
      000CA7 F0               [24]  776 	movx	@dptr,a
                                    777 ;	src/io.c:87: break;
      000CA8 80 36            [24]  778 	sjmp	00109$
      000CAA                        779 00106$:
                                    780 ;	src/io.c:92: ERROR_LOG("Enter only digit!");   //if user enters an other character than a number
      000CAA C0 07            [24]  781 	push	ar7
      000CAC C0 06            [24]  782 	push	ar6
      000CAE C0 05            [24]  783 	push	ar5
      000CB0 74 D4            [12]  784 	mov	a,#___str_4
      000CB2 C0 E0            [24]  785 	push	acc
      000CB4 74 4C            [12]  786 	mov	a,#(___str_4 >> 8)
      000CB6 C0 E0            [24]  787 	push	acc
      000CB8 12 3B B6         [24]  788 	lcall	_printf_tiny
      000CBB 15 81            [12]  789 	dec	sp
      000CBD 15 81            [12]  790 	dec	sp
      000CBF 74 CF            [12]  791 	mov	a,#___str_3
      000CC1 C0 E0            [24]  792 	push	acc
      000CC3 74 4C            [12]  793 	mov	a,#(___str_3 >> 8)
      000CC5 C0 E0            [24]  794 	push	acc
      000CC7 12 3B B6         [24]  795 	lcall	_printf_tiny
      000CCA 15 81            [12]  796 	dec	sp
      000CCC 15 81            [12]  797 	dec	sp
      000CCE D0 05            [24]  798 	pop	ar5
      000CD0 D0 06            [24]  799 	pop	ar6
      000CD2 D0 07            [24]  800 	pop	ar7
                                    801 ;	src/io.c:93: fail = true;
      000CD4 90 00 46         [24]  802 	mov	dptr,#_getUserNumberInput_fail_131073_24
      000CD7 74 01            [12]  803 	mov	a,#0x01
      000CD9 F0               [24]  804 	movx	@dptr,a
                                    805 ;	src/io.c:94: break;
      000CDA 80 04            [24]  806 	sjmp	00109$
      000CDC                        807 00117$:
                                    808 ;	src/io.c:71: for (uint8_t i = 0; i < maxDigits; i++)
      000CDC 0C               [12]  809 	inc	r4
      000CDD 02 0B BD         [24]  810 	ljmp	00116$
      000CE0                        811 00109$:
                                    812 ;	src/io.c:98: if (fail == false)                      //if no previous errors have occured, break while loop
      000CE0 90 00 46         [24]  813 	mov	dptr,#_getUserNumberInput_fail_131073_24
      000CE3 E0               [24]  814 	movx	a,@dptr
      000CE4 60 03            [24]  815 	jz	00158$
      000CE6 02 0B 8B         [24]  816 	ljmp	00113$
      000CE9                        817 00158$:
                                    818 ;	src/io.c:103: USER_INPUT_CHECK("User entered input = %d", value);
      000CE9 90 00 44         [24]  819 	mov	dptr,#_getUserNumberInput_value_65536_22
      000CEC E0               [24]  820 	movx	a,@dptr
      000CED FE               [12]  821 	mov	r6,a
      000CEE A3               [24]  822 	inc	dptr
      000CEF E0               [24]  823 	movx	a,@dptr
      000CF0 FF               [12]  824 	mov	r7,a
      000CF1 C0 07            [24]  825 	push	ar7
      000CF3 C0 06            [24]  826 	push	ar6
      000CF5 C0 06            [24]  827 	push	ar6
      000CF7 C0 07            [24]  828 	push	ar7
      000CF9 74 F6            [12]  829 	mov	a,#___str_5
      000CFB C0 E0            [24]  830 	push	acc
      000CFD 74 4C            [12]  831 	mov	a,#(___str_5 >> 8)
      000CFF C0 E0            [24]  832 	push	acc
      000D01 12 3B B6         [24]  833 	lcall	_printf_tiny
      000D04 E5 81            [12]  834 	mov	a,sp
      000D06 24 FC            [12]  835 	add	a,#0xfc
      000D08 F5 81            [12]  836 	mov	sp,a
      000D0A 74 CF            [12]  837 	mov	a,#___str_3
      000D0C C0 E0            [24]  838 	push	acc
      000D0E 74 4C            [12]  839 	mov	a,#(___str_3 >> 8)
      000D10 C0 E0            [24]  840 	push	acc
      000D12 12 3B B6         [24]  841 	lcall	_printf_tiny
      000D15 15 81            [12]  842 	dec	sp
      000D17 15 81            [12]  843 	dec	sp
      000D19 D0 06            [24]  844 	pop	ar6
      000D1B D0 07            [24]  845 	pop	ar7
                                    846 ;	src/io.c:104: return value;
      000D1D 8E 82            [24]  847 	mov	dpl,r6
      000D1F 8F 83            [24]  848 	mov	dph,r7
                                    849 ;	src/io.c:105: }
      000D21 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'getUserHexInput'
                                    853 ;------------------------------------------------------------
                                    854 ;maxVal                    Allocated with name '_getUserHexInput_PARM_2'
                                    855 ;maxChar                   Allocated with name '_getUserHexInput_maxChar_65536_32'
                                    856 ;value                     Allocated with name '_getUserHexInput_value_65536_33'
                                    857 ;fail                      Allocated with name '_getUserHexInput_fail_131073_35'
                                    858 ;i                         Allocated with name '_getUserHexInput_i_196609_36'
                                    859 ;c                         Allocated with name '_getUserHexInput_c_262145_37'
                                    860 ;x                         Allocated with name '_getUserHexInput_x_262146_39'
                                    861 ;------------------------------------------------------------
                                    862 ;	src/io.c:113: uint16_t getUserHexInput(uint8_t maxChar,uint16_t maxVal) //max number of digits user can input
                                    863 ;	-----------------------------------------
                                    864 ;	 function getUserHexInput
                                    865 ;	-----------------------------------------
      000D22                        866 _getUserHexInput:
      000D22 E5 82            [12]  867 	mov	a,dpl
      000D24 90 00 49         [24]  868 	mov	dptr,#_getUserHexInput_maxChar_65536_32
      000D27 F0               [24]  869 	movx	@dptr,a
                                    870 ;	src/io.c:117: while (1)
      000D28 90 00 47         [24]  871 	mov	dptr,#_getUserHexInput_PARM_2
      000D2B E0               [24]  872 	movx	a,@dptr
      000D2C FE               [12]  873 	mov	r6,a
      000D2D A3               [24]  874 	inc	dptr
      000D2E E0               [24]  875 	movx	a,@dptr
      000D2F FF               [12]  876 	mov	r7,a
      000D30 90 00 49         [24]  877 	mov	dptr,#_getUserHexInput_maxChar_65536_32
      000D33 E0               [24]  878 	movx	a,@dptr
      000D34 FD               [12]  879 	mov	r5,a
      000D35                        880 00137$:
                                    881 ;	src/io.c:119: value = 0;
      000D35 90 00 4A         [24]  882 	mov	dptr,#_getUserHexInput_value_65536_33
      000D38 E4               [12]  883 	clr	a
      000D39 F0               [24]  884 	movx	@dptr,a
      000D3A A3               [24]  885 	inc	dptr
      000D3B F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/io.c:120: bool fail = false;
      000D3C 90 00 4C         [24]  888 	mov	dptr,#_getUserHexInput_fail_131073_35
      000D3F F0               [24]  889 	movx	@dptr,a
                                    890 ;	src/io.c:121: printf_tiny("\n\rEnter a maximum %d character input:", maxChar);
      000D40 8D 03            [24]  891 	mov	ar3,r5
      000D42 7C 00            [12]  892 	mov	r4,#0x00
      000D44 C0 07            [24]  893 	push	ar7
      000D46 C0 06            [24]  894 	push	ar6
      000D48 C0 05            [24]  895 	push	ar5
      000D4A C0 03            [24]  896 	push	ar3
      000D4C C0 04            [24]  897 	push	ar4
      000D4E 74 17            [12]  898 	mov	a,#___str_6
      000D50 C0 E0            [24]  899 	push	acc
      000D52 74 4D            [12]  900 	mov	a,#(___str_6 >> 8)
      000D54 C0 E0            [24]  901 	push	acc
      000D56 12 3B B6         [24]  902 	lcall	_printf_tiny
      000D59 E5 81            [12]  903 	mov	a,sp
      000D5B 24 FC            [12]  904 	add	a,#0xfc
      000D5D F5 81            [12]  905 	mov	sp,a
      000D5F D0 05            [24]  906 	pop	ar5
      000D61 D0 06            [24]  907 	pop	ar6
      000D63 D0 07            [24]  908 	pop	ar7
                                    909 ;	src/io.c:122: for (uint8_t i = 0; i < maxChar; i++)
      000D65 7C 00            [12]  910 	mov	r4,#0x00
      000D67                        911 00140$:
      000D67 C3               [12]  912 	clr	c
      000D68 EC               [12]  913 	mov	a,r4
      000D69 9D               [12]  914 	subb	a,r5
      000D6A 40 03            [24]  915 	jc	00200$
      000D6C 02 0E D5         [24]  916 	ljmp	00133$
      000D6F                        917 00200$:
                                    918 ;	src/io.c:124: char c = getchar();               //  take user input
      000D6F C0 07            [24]  919 	push	ar7
      000D71 C0 06            [24]  920 	push	ar6
      000D73 C0 05            [24]  921 	push	ar5
      000D75 C0 04            [24]  922 	push	ar4
      000D77 12 0B 6A         [24]  923 	lcall	_getchar
      000D7A AA 82            [24]  924 	mov	r2,dpl
      000D7C AB 83            [24]  925 	mov	r3,dph
      000D7E D0 04            [24]  926 	pop	ar4
      000D80 D0 05            [24]  927 	pop	ar5
      000D82 D0 06            [24]  928 	pop	ar6
      000D84 D0 07            [24]  929 	pop	ar7
                                    930 ;	src/io.c:125: if (c == '\r')                    //user enters ENTER key
      000D86 BA 0D 03         [24]  931 	cjne	r2,#0x0d,00201$
      000D89 02 0E D5         [24]  932 	ljmp	00133$
      000D8C                        933 00201$:
                                    934 ;	src/io.c:129: printf_tiny("%c", c);            //prints character on screen as user is typing
      000D8C 8A 01            [24]  935 	mov	ar1,r2
      000D8E 7B 00            [12]  936 	mov	r3,#0x00
      000D90 C0 07            [24]  937 	push	ar7
      000D92 C0 06            [24]  938 	push	ar6
      000D94 C0 05            [24]  939 	push	ar5
      000D96 C0 04            [24]  940 	push	ar4
      000D98 C0 02            [24]  941 	push	ar2
      000D9A C0 01            [24]  942 	push	ar1
      000D9C C0 03            [24]  943 	push	ar3
      000D9E 74 9B            [12]  944 	mov	a,#___str_1
      000DA0 C0 E0            [24]  945 	push	acc
      000DA2 74 4C            [12]  946 	mov	a,#(___str_1 >> 8)
      000DA4 C0 E0            [24]  947 	push	acc
      000DA6 12 3B B6         [24]  948 	lcall	_printf_tiny
      000DA9 E5 81            [12]  949 	mov	a,sp
      000DAB 24 FC            [12]  950 	add	a,#0xfc
      000DAD F5 81            [12]  951 	mov	sp,a
      000DAF D0 02            [24]  952 	pop	ar2
      000DB1 D0 04            [24]  953 	pop	ar4
      000DB3 D0 05            [24]  954 	pop	ar5
      000DB5 D0 06            [24]  955 	pop	ar6
      000DB7 D0 07            [24]  956 	pop	ar7
                                    957 ;	src/io.c:131: if (c >= '0' && c <= '9')        // check if input is a number
      000DB9 BA 30 00         [24]  958 	cjne	r2,#0x30,00202$
      000DBC                        959 00202$:
      000DBC 40 11            [24]  960 	jc	00128$
      000DBE EA               [12]  961 	mov	a,r2
      000DBF 24 C6            [12]  962 	add	a,#0xff - 0x39
      000DC1 40 0C            [24]  963 	jc	00128$
                                    964 ;	src/io.c:133: x = c - '0';           //converts user input(ASCII) to int
      000DC3 8A 03            [24]  965 	mov	ar3,r2
      000DC5 EB               [12]  966 	mov	a,r3
      000DC6 24 D0            [12]  967 	add	a,#0xd0
      000DC8 90 00 4D         [24]  968 	mov	dptr,#_getUserHexInput_x_262146_39
      000DCB F0               [24]  969 	movx	@dptr,a
      000DCC 02 0E 62         [24]  970 	ljmp	00129$
      000DCF                        971 00128$:
                                    972 ;	src/io.c:135: else if (c == 'A' || c == 'a')
      000DCF BA 41 02         [24]  973 	cjne	r2,#0x41,00205$
      000DD2 80 03            [24]  974 	sjmp	00123$
      000DD4                        975 00205$:
      000DD4 BA 61 09         [24]  976 	cjne	r2,#0x61,00124$
      000DD7                        977 00123$:
                                    978 ;	src/io.c:137: x = 10;
      000DD7 90 00 4D         [24]  979 	mov	dptr,#_getUserHexInput_x_262146_39
      000DDA 74 0A            [12]  980 	mov	a,#0x0a
      000DDC F0               [24]  981 	movx	@dptr,a
      000DDD 02 0E 62         [24]  982 	ljmp	00129$
      000DE0                        983 00124$:
                                    984 ;	src/io.c:139: else if (c == 'B' || c == 'b')
      000DE0 BA 42 02         [24]  985 	cjne	r2,#0x42,00208$
      000DE3 80 03            [24]  986 	sjmp	00119$
      000DE5                        987 00208$:
      000DE5 BA 62 08         [24]  988 	cjne	r2,#0x62,00120$
      000DE8                        989 00119$:
                                    990 ;	src/io.c:141: x = 11;
      000DE8 90 00 4D         [24]  991 	mov	dptr,#_getUserHexInput_x_262146_39
      000DEB 74 0B            [12]  992 	mov	a,#0x0b
      000DED F0               [24]  993 	movx	@dptr,a
      000DEE 80 72            [24]  994 	sjmp	00129$
      000DF0                        995 00120$:
                                    996 ;	src/io.c:143: else if (c == 'C' || c == 'c')
      000DF0 BA 43 02         [24]  997 	cjne	r2,#0x43,00211$
      000DF3 80 03            [24]  998 	sjmp	00115$
      000DF5                        999 00211$:
      000DF5 BA 63 08         [24] 1000 	cjne	r2,#0x63,00116$
      000DF8                       1001 00115$:
                                   1002 ;	src/io.c:145: x = 12;
      000DF8 90 00 4D         [24] 1003 	mov	dptr,#_getUserHexInput_x_262146_39
      000DFB 74 0C            [12] 1004 	mov	a,#0x0c
      000DFD F0               [24] 1005 	movx	@dptr,a
      000DFE 80 62            [24] 1006 	sjmp	00129$
      000E00                       1007 00116$:
                                   1008 ;	src/io.c:147: else if (c == 'D' || c == 'd')
      000E00 BA 44 02         [24] 1009 	cjne	r2,#0x44,00214$
      000E03 80 03            [24] 1010 	sjmp	00111$
      000E05                       1011 00214$:
      000E05 BA 64 08         [24] 1012 	cjne	r2,#0x64,00112$
      000E08                       1013 00111$:
                                   1014 ;	src/io.c:149: x = 13;
      000E08 90 00 4D         [24] 1015 	mov	dptr,#_getUserHexInput_x_262146_39
      000E0B 74 0D            [12] 1016 	mov	a,#0x0d
      000E0D F0               [24] 1017 	movx	@dptr,a
      000E0E 80 52            [24] 1018 	sjmp	00129$
      000E10                       1019 00112$:
                                   1020 ;	src/io.c:151: else if (c == 'E' || c == 'e')
      000E10 BA 45 02         [24] 1021 	cjne	r2,#0x45,00217$
      000E13 80 03            [24] 1022 	sjmp	00107$
      000E15                       1023 00217$:
      000E15 BA 65 08         [24] 1024 	cjne	r2,#0x65,00108$
      000E18                       1025 00107$:
                                   1026 ;	src/io.c:153: x = 14;
      000E18 90 00 4D         [24] 1027 	mov	dptr,#_getUserHexInput_x_262146_39
      000E1B 74 0E            [12] 1028 	mov	a,#0x0e
      000E1D F0               [24] 1029 	movx	@dptr,a
      000E1E 80 42            [24] 1030 	sjmp	00129$
      000E20                       1031 00108$:
                                   1032 ;	src/io.c:155: else if (c == 'F' || c == 'f')
      000E20 BA 46 02         [24] 1033 	cjne	r2,#0x46,00220$
      000E23 80 03            [24] 1034 	sjmp	00103$
      000E25                       1035 00220$:
      000E25 BA 66 08         [24] 1036 	cjne	r2,#0x66,00104$
      000E28                       1037 00103$:
                                   1038 ;	src/io.c:157: x = 15;
      000E28 90 00 4D         [24] 1039 	mov	dptr,#_getUserHexInput_x_262146_39
      000E2B 74 0F            [12] 1040 	mov	a,#0x0f
      000E2D F0               [24] 1041 	movx	@dptr,a
      000E2E 80 32            [24] 1042 	sjmp	00129$
      000E30                       1043 00104$:
                                   1044 ;	src/io.c:161: ERROR_LOG("Enter only values between 0 to 9 and A to F!");   //if user enters an other character than a number
      000E30 C0 07            [24] 1045 	push	ar7
      000E32 C0 06            [24] 1046 	push	ar6
      000E34 C0 05            [24] 1047 	push	ar5
      000E36 74 3D            [12] 1048 	mov	a,#___str_7
      000E38 C0 E0            [24] 1049 	push	acc
      000E3A 74 4D            [12] 1050 	mov	a,#(___str_7 >> 8)
      000E3C C0 E0            [24] 1051 	push	acc
      000E3E 12 3B B6         [24] 1052 	lcall	_printf_tiny
      000E41 15 81            [12] 1053 	dec	sp
      000E43 15 81            [12] 1054 	dec	sp
      000E45 74 CF            [12] 1055 	mov	a,#___str_3
      000E47 C0 E0            [24] 1056 	push	acc
      000E49 74 4C            [12] 1057 	mov	a,#(___str_3 >> 8)
      000E4B C0 E0            [24] 1058 	push	acc
      000E4D 12 3B B6         [24] 1059 	lcall	_printf_tiny
      000E50 15 81            [12] 1060 	dec	sp
      000E52 15 81            [12] 1061 	dec	sp
      000E54 D0 05            [24] 1062 	pop	ar5
      000E56 D0 06            [24] 1063 	pop	ar6
      000E58 D0 07            [24] 1064 	pop	ar7
                                   1065 ;	src/io.c:162: fail = true;
      000E5A 90 00 4C         [24] 1066 	mov	dptr,#_getUserHexInput_fail_131073_35
      000E5D 74 01            [12] 1067 	mov	a,#0x01
      000E5F F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	src/io.c:163: break;
      000E60 80 73            [24] 1070 	sjmp	00133$
      000E62                       1071 00129$:
                                   1072 ;	src/io.c:165: value = value * 16 + x;        //calculates multi-digit ASCII input
      000E62 90 00 4A         [24] 1073 	mov	dptr,#_getUserHexInput_value_65536_33
      000E65 E0               [24] 1074 	movx	a,@dptr
      000E66 FA               [12] 1075 	mov	r2,a
      000E67 A3               [24] 1076 	inc	dptr
      000E68 E0               [24] 1077 	movx	a,@dptr
      000E69 C4               [12] 1078 	swap	a
      000E6A 54 F0            [12] 1079 	anl	a,#0xf0
      000E6C CA               [12] 1080 	xch	a,r2
      000E6D C4               [12] 1081 	swap	a
      000E6E CA               [12] 1082 	xch	a,r2
      000E6F 6A               [12] 1083 	xrl	a,r2
      000E70 CA               [12] 1084 	xch	a,r2
      000E71 54 F0            [12] 1085 	anl	a,#0xf0
      000E73 CA               [12] 1086 	xch	a,r2
      000E74 6A               [12] 1087 	xrl	a,r2
      000E75 FB               [12] 1088 	mov	r3,a
      000E76 90 00 4D         [24] 1089 	mov	dptr,#_getUserHexInput_x_262146_39
      000E79 E0               [24] 1090 	movx	a,@dptr
      000E7A F8               [12] 1091 	mov	r0,a
      000E7B 79 00            [12] 1092 	mov	r1,#0x00
      000E7D 2A               [12] 1093 	add	a,r2
      000E7E FA               [12] 1094 	mov	r2,a
      000E7F E9               [12] 1095 	mov	a,r1
      000E80 3B               [12] 1096 	addc	a,r3
      000E81 FB               [12] 1097 	mov	r3,a
      000E82 90 00 4A         [24] 1098 	mov	dptr,#_getUserHexInput_value_65536_33
      000E85 EA               [12] 1099 	mov	a,r2
      000E86 F0               [24] 1100 	movx	@dptr,a
      000E87 EB               [12] 1101 	mov	a,r3
      000E88 A3               [24] 1102 	inc	dptr
      000E89 F0               [24] 1103 	movx	@dptr,a
                                   1104 ;	src/io.c:166: if (value > maxVal)
      000E8A 90 00 4A         [24] 1105 	mov	dptr,#_getUserHexInput_value_65536_33
      000E8D E0               [24] 1106 	movx	a,@dptr
      000E8E FA               [12] 1107 	mov	r2,a
      000E8F A3               [24] 1108 	inc	dptr
      000E90 E0               [24] 1109 	movx	a,@dptr
      000E91 FB               [12] 1110 	mov	r3,a
      000E92 C3               [12] 1111 	clr	c
      000E93 EE               [12] 1112 	mov	a,r6
      000E94 9A               [12] 1113 	subb	a,r2
      000E95 EF               [12] 1114 	mov	a,r7
      000E96 9B               [12] 1115 	subb	a,r3
      000E97 50 38            [24] 1116 	jnc	00141$
                                   1117 ;	src/io.c:168: ERROR_LOG("Value entered is beyond range %x", maxVal);
      000E99 C0 07            [24] 1118 	push	ar7
      000E9B C0 06            [24] 1119 	push	ar6
      000E9D C0 05            [24] 1120 	push	ar5
      000E9F C0 06            [24] 1121 	push	ar6
      000EA1 C0 07            [24] 1122 	push	ar7
      000EA3 74 9E            [12] 1123 	mov	a,#___str_2
      000EA5 C0 E0            [24] 1124 	push	acc
      000EA7 74 4C            [12] 1125 	mov	a,#(___str_2 >> 8)
      000EA9 C0 E0            [24] 1126 	push	acc
      000EAB 12 3B B6         [24] 1127 	lcall	_printf_tiny
      000EAE E5 81            [12] 1128 	mov	a,sp
      000EB0 24 FC            [12] 1129 	add	a,#0xfc
      000EB2 F5 81            [12] 1130 	mov	sp,a
      000EB4 74 CF            [12] 1131 	mov	a,#___str_3
      000EB6 C0 E0            [24] 1132 	push	acc
      000EB8 74 4C            [12] 1133 	mov	a,#(___str_3 >> 8)
      000EBA C0 E0            [24] 1134 	push	acc
      000EBC 12 3B B6         [24] 1135 	lcall	_printf_tiny
      000EBF 15 81            [12] 1136 	dec	sp
      000EC1 15 81            [12] 1137 	dec	sp
      000EC3 D0 05            [24] 1138 	pop	ar5
      000EC5 D0 06            [24] 1139 	pop	ar6
      000EC7 D0 07            [24] 1140 	pop	ar7
                                   1141 ;	src/io.c:169: fail = true;
      000EC9 90 00 4C         [24] 1142 	mov	dptr,#_getUserHexInput_fail_131073_35
      000ECC 74 01            [12] 1143 	mov	a,#0x01
      000ECE F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	src/io.c:170: break;
      000ECF 80 04            [24] 1146 	sjmp	00133$
      000ED1                       1147 00141$:
                                   1148 ;	src/io.c:122: for (uint8_t i = 0; i < maxChar; i++)
      000ED1 0C               [12] 1149 	inc	r4
      000ED2 02 0D 67         [24] 1150 	ljmp	00140$
      000ED5                       1151 00133$:
                                   1152 ;	src/io.c:174: if (fail == false)                      //if no previous errors have occured, break while loop
      000ED5 90 00 4C         [24] 1153 	mov	dptr,#_getUserHexInput_fail_131073_35
      000ED8 E0               [24] 1154 	movx	a,@dptr
      000ED9 60 03            [24] 1155 	jz	00224$
      000EDB 02 0D 35         [24] 1156 	ljmp	00137$
      000EDE                       1157 00224$:
                                   1158 ;	src/io.c:179: USER_INPUT_CHECK("User entered input = %x", value);
      000EDE 90 00 4A         [24] 1159 	mov	dptr,#_getUserHexInput_value_65536_33
      000EE1 E0               [24] 1160 	movx	a,@dptr
      000EE2 FE               [12] 1161 	mov	r6,a
      000EE3 A3               [24] 1162 	inc	dptr
      000EE4 E0               [24] 1163 	movx	a,@dptr
      000EE5 FF               [12] 1164 	mov	r7,a
      000EE6 C0 07            [24] 1165 	push	ar7
      000EE8 C0 06            [24] 1166 	push	ar6
      000EEA C0 06            [24] 1167 	push	ar6
      000EEC C0 07            [24] 1168 	push	ar7
      000EEE 74 7A            [12] 1169 	mov	a,#___str_8
      000EF0 C0 E0            [24] 1170 	push	acc
      000EF2 74 4D            [12] 1171 	mov	a,#(___str_8 >> 8)
      000EF4 C0 E0            [24] 1172 	push	acc
      000EF6 12 3B B6         [24] 1173 	lcall	_printf_tiny
      000EF9 E5 81            [12] 1174 	mov	a,sp
      000EFB 24 FC            [12] 1175 	add	a,#0xfc
      000EFD F5 81            [12] 1176 	mov	sp,a
      000EFF 74 CF            [12] 1177 	mov	a,#___str_3
      000F01 C0 E0            [24] 1178 	push	acc
      000F03 74 4C            [12] 1179 	mov	a,#(___str_3 >> 8)
      000F05 C0 E0            [24] 1180 	push	acc
      000F07 12 3B B6         [24] 1181 	lcall	_printf_tiny
      000F0A 15 81            [12] 1182 	dec	sp
      000F0C 15 81            [12] 1183 	dec	sp
      000F0E D0 06            [24] 1184 	pop	ar6
      000F10 D0 07            [24] 1185 	pop	ar7
                                   1186 ;	src/io.c:180: return value;
      000F12 8E 82            [24] 1187 	mov	dpl,r6
      000F14 8F 83            [24] 1188 	mov	dph,r7
                                   1189 ;	src/io.c:181: }
      000F16 22               [24] 1190 	ret
                                   1191 	.area CSEG    (CODE)
                                   1192 	.area CONST   (CODE)
                                   1193 	.area CONST   (CODE)
      004C78                       1194 ___str_0:
      004C78 0A                    1195 	.db 0x0a
      004C79 0D                    1196 	.db 0x0d
      004C7A 45 6E 74 65 72 20 61  1197 	.ascii "Enter a maximum %d digit number:"
             20 6D 61 78 69 6D 75
             6D 20 25 64 20 64 69
             67 69 74 20 6E 75 6D
             62 65 72 3A
      004C9A 00                    1198 	.db 0x00
                                   1199 	.area CSEG    (CODE)
                                   1200 	.area CONST   (CODE)
      004C9B                       1201 ___str_1:
      004C9B 25 63                 1202 	.ascii "%c"
      004C9D 00                    1203 	.db 0x00
                                   1204 	.area CSEG    (CODE)
                                   1205 	.area CONST   (CODE)
      004C9E                       1206 ___str_2:
      004C9E 0A                    1207 	.db 0x0a
      004C9F 0D                    1208 	.db 0x0d
      004CA0 1B                    1209 	.db 0x1b
      004CA1 5B 31 3B 33 31 6D 45  1210 	.ascii "[1;31mERROR: Value entered is beyond range %x"
             52 52 4F 52 3A 20 56
             61 6C 75 65 20 65 6E
             74 65 72 65 64 20 69
             73 20 62 65 79 6F 6E
             64 20 72 61 6E 67 65
             20 25 78
      004CCE 00                    1211 	.db 0x00
                                   1212 	.area CSEG    (CODE)
                                   1213 	.area CONST   (CODE)
      004CCF                       1214 ___str_3:
      004CCF 1B                    1215 	.db 0x1b
      004CD0 5B 30 6D              1216 	.ascii "[0m"
      004CD3 00                    1217 	.db 0x00
                                   1218 	.area CSEG    (CODE)
                                   1219 	.area CONST   (CODE)
      004CD4                       1220 ___str_4:
      004CD4 0A                    1221 	.db 0x0a
      004CD5 0D                    1222 	.db 0x0d
      004CD6 1B                    1223 	.db 0x1b
      004CD7 5B 31 3B 33 31 6D 45  1224 	.ascii "[1;31mERROR: Enter only digit!"
             52 52 4F 52 3A 20 45
             6E 74 65 72 20 6F 6E
             6C 79 20 64 69 67 69
             74 21
      004CF5 00                    1225 	.db 0x00
                                   1226 	.area CSEG    (CODE)
                                   1227 	.area CONST   (CODE)
      004CF6                       1228 ___str_5:
      004CF6 0A                    1229 	.db 0x0a
      004CF7 0D                    1230 	.db 0x0d
      004CF8 1B                    1231 	.db 0x1b
      004CF9 5B 31 3B 33 33 6D 55  1232 	.ascii "[1;33mUser entered input = %d"
             73 65 72 20 65 6E 74
             65 72 65 64 20 69 6E
             70 75 74 20 3D 20 25
             64
      004D16 00                    1233 	.db 0x00
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      004D17                       1236 ___str_6:
      004D17 0A                    1237 	.db 0x0a
      004D18 0D                    1238 	.db 0x0d
      004D19 45 6E 74 65 72 20 61  1239 	.ascii "Enter a maximum %d character input:"
             20 6D 61 78 69 6D 75
             6D 20 25 64 20 63 68
             61 72 61 63 74 65 72
             20 69 6E 70 75 74 3A
      004D3C 00                    1240 	.db 0x00
                                   1241 	.area CSEG    (CODE)
                                   1242 	.area CONST   (CODE)
      004D3D                       1243 ___str_7:
      004D3D 0A                    1244 	.db 0x0a
      004D3E 0D                    1245 	.db 0x0d
      004D3F 1B                    1246 	.db 0x1b
      004D40 5B 31 3B 33 31 6D 45  1247 	.ascii "[1;31mERROR: Enter only values between 0 to 9 and A to F!"
             52 52 4F 52 3A 20 45
             6E 74 65 72 20 6F 6E
             6C 79 20 76 61 6C 75
             65 73 20 62 65 74 77
             65 65 6E 20 30 20 74
             6F 20 39 20 61 6E 64
             20 41 20 74 6F 20 46
             21
      004D79 00                    1248 	.db 0x00
                                   1249 	.area CSEG    (CODE)
                                   1250 	.area CONST   (CODE)
      004D7A                       1251 ___str_8:
      004D7A 0A                    1252 	.db 0x0a
      004D7B 0D                    1253 	.db 0x0d
      004D7C 1B                    1254 	.db 0x1b
      004D7D 5B 31 3B 33 33 6D 55  1255 	.ascii "[1;33mUser entered input = %x"
             73 65 72 20 65 6E 74
             65 72 65 64 20 69 6E
             70 75 74 20 3D 20 25
             78
      004D9A 00                    1256 	.db 0x00
                                   1257 	.area CSEG    (CODE)
                                   1258 	.area XINIT   (CODE)
                                   1259 	.area CABS    (ABS,CODE)
