                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _readBiodata
                                     13 	.globl _getStatusString
                                     14 	.globl _glcdPlotIrValue
                                     15 	.globl _glcdUpdateStatus
                                     16 	.globl _glcdUpdateBpm
                                     17 	.globl _glcdUpdateSpo2
                                     18 	.globl _glcdInit
                                     19 	.globl _hardware_init
                                     20 	.globl _printf_tiny
                                     21 	.globl _getchar
                                     22 	.globl _printf
                                     23 	.globl _P5_7
                                     24 	.globl _P5_6
                                     25 	.globl _P5_5
                                     26 	.globl _P5_4
                                     27 	.globl _P5_3
                                     28 	.globl _P5_2
                                     29 	.globl _P5_1
                                     30 	.globl _P5_0
                                     31 	.globl _P4_7
                                     32 	.globl _P4_6
                                     33 	.globl _P4_5
                                     34 	.globl _P4_4
                                     35 	.globl _P4_3
                                     36 	.globl _P4_2
                                     37 	.globl _P4_1
                                     38 	.globl _P4_0
                                     39 	.globl _PX0L
                                     40 	.globl _PT0L
                                     41 	.globl _PX1L
                                     42 	.globl _PT1L
                                     43 	.globl _PSL
                                     44 	.globl _PT2L
                                     45 	.globl _PPCL
                                     46 	.globl _EC
                                     47 	.globl _CCF0
                                     48 	.globl _CCF1
                                     49 	.globl _CCF2
                                     50 	.globl _CCF3
                                     51 	.globl _CCF4
                                     52 	.globl _CR
                                     53 	.globl _CF
                                     54 	.globl _TF2
                                     55 	.globl _EXF2
                                     56 	.globl _RCLK
                                     57 	.globl _TCLK
                                     58 	.globl _EXEN2
                                     59 	.globl _TR2
                                     60 	.globl _C_T2
                                     61 	.globl _CP_RL2
                                     62 	.globl _T2CON_7
                                     63 	.globl _T2CON_6
                                     64 	.globl _T2CON_5
                                     65 	.globl _T2CON_4
                                     66 	.globl _T2CON_3
                                     67 	.globl _T2CON_2
                                     68 	.globl _T2CON_1
                                     69 	.globl _T2CON_0
                                     70 	.globl _PT2
                                     71 	.globl _ET2
                                     72 	.globl _CY
                                     73 	.globl _AC
                                     74 	.globl _F0
                                     75 	.globl _RS1
                                     76 	.globl _RS0
                                     77 	.globl _OV
                                     78 	.globl _F1
                                     79 	.globl _P
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _RD
                                     86 	.globl _WR
                                     87 	.globl _T1
                                     88 	.globl _T0
                                     89 	.globl _INT1
                                     90 	.globl _INT0
                                     91 	.globl _TXD
                                     92 	.globl _RXD
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _P2_7
                                    108 	.globl _P2_6
                                    109 	.globl _P2_5
                                    110 	.globl _P2_4
                                    111 	.globl _P2_3
                                    112 	.globl _P2_2
                                    113 	.globl _P2_1
                                    114 	.globl _P2_0
                                    115 	.globl _SM0
                                    116 	.globl _SM1
                                    117 	.globl _SM2
                                    118 	.globl _REN
                                    119 	.globl _TB8
                                    120 	.globl _RB8
                                    121 	.globl _TI
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _EECON
                                    148 	.globl _KBF
                                    149 	.globl _KBE
                                    150 	.globl _KBLS
                                    151 	.globl _BRL
                                    152 	.globl _BDRCON
                                    153 	.globl _T2MOD
                                    154 	.globl _SPDAT
                                    155 	.globl _SPSTA
                                    156 	.globl _SPCON
                                    157 	.globl _SADEN
                                    158 	.globl _SADDR
                                    159 	.globl _WDTPRG
                                    160 	.globl _WDTRST
                                    161 	.globl _P5
                                    162 	.globl _P4
                                    163 	.globl _IPH1
                                    164 	.globl _IPL1
                                    165 	.globl _IPH0
                                    166 	.globl _IPL0
                                    167 	.globl _IEN1
                                    168 	.globl _IEN0
                                    169 	.globl _CMOD
                                    170 	.globl _CL
                                    171 	.globl _CH
                                    172 	.globl _CCON
                                    173 	.globl _CCAPM4
                                    174 	.globl _CCAPM3
                                    175 	.globl _CCAPM2
                                    176 	.globl _CCAPM1
                                    177 	.globl _CCAPM0
                                    178 	.globl _CCAP4L
                                    179 	.globl _CCAP3L
                                    180 	.globl _CCAP2L
                                    181 	.globl _CCAP1L
                                    182 	.globl _CCAP0L
                                    183 	.globl _CCAP4H
                                    184 	.globl _CCAP3H
                                    185 	.globl _CCAP2H
                                    186 	.globl _CCAP1H
                                    187 	.globl _CCAP0H
                                    188 	.globl _CKCON1
                                    189 	.globl _CKCON0
                                    190 	.globl _CKRL
                                    191 	.globl _AUXR1
                                    192 	.globl _AUXR
                                    193 	.globl _TH2
                                    194 	.globl _TL2
                                    195 	.globl _RCAP2H
                                    196 	.globl _RCAP2L
                                    197 	.globl _T2CON
                                    198 	.globl _B
                                    199 	.globl _ACC
                                    200 	.globl _PSW
                                    201 	.globl _IP
                                    202 	.globl _P3
                                    203 	.globl _IE
                                    204 	.globl _P2
                                    205 	.globl _SBUF
                                    206 	.globl _SCON
                                    207 	.globl _P1
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _PCON
                                    215 	.globl _DPH
                                    216 	.globl _DPL
                                    217 	.globl _SP
                                    218 	.globl _P0
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           00008A   231 _TL0	=	0x008a
                           00008B   232 _TL1	=	0x008b
                           00008C   233 _TH0	=	0x008c
                           00008D   234 _TH1	=	0x008d
                           000090   235 _P1	=	0x0090
                           000098   236 _SCON	=	0x0098
                           000099   237 _SBUF	=	0x0099
                           0000A0   238 _P2	=	0x00a0
                           0000A8   239 _IE	=	0x00a8
                           0000B0   240 _P3	=	0x00b0
                           0000B8   241 _IP	=	0x00b8
                           0000D0   242 _PSW	=	0x00d0
                           0000E0   243 _ACC	=	0x00e0
                           0000F0   244 _B	=	0x00f0
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0_0	=	0x0080
                           000081   302 _P0_1	=	0x0081
                           000082   303 _P0_2	=	0x0082
                           000083   304 _P0_3	=	0x0083
                           000084   305 _P0_4	=	0x0084
                           000085   306 _P0_5	=	0x0085
                           000086   307 _P0_6	=	0x0086
                           000087   308 _P0_7	=	0x0087
                           000088   309 _IT0	=	0x0088
                           000089   310 _IE0	=	0x0089
                           00008A   311 _IT1	=	0x008a
                           00008B   312 _IE1	=	0x008b
                           00008C   313 _TR0	=	0x008c
                           00008D   314 _TF0	=	0x008d
                           00008E   315 _TR1	=	0x008e
                           00008F   316 _TF1	=	0x008f
                           000090   317 _P1_0	=	0x0090
                           000091   318 _P1_1	=	0x0091
                           000092   319 _P1_2	=	0x0092
                           000093   320 _P1_3	=	0x0093
                           000094   321 _P1_4	=	0x0094
                           000095   322 _P1_5	=	0x0095
                           000096   323 _P1_6	=	0x0096
                           000097   324 _P1_7	=	0x0097
                           000098   325 _RI	=	0x0098
                           000099   326 _TI	=	0x0099
                           00009A   327 _RB8	=	0x009a
                           00009B   328 _TB8	=	0x009b
                           00009C   329 _REN	=	0x009c
                           00009D   330 _SM2	=	0x009d
                           00009E   331 _SM1	=	0x009e
                           00009F   332 _SM0	=	0x009f
                           0000A0   333 _P2_0	=	0x00a0
                           0000A1   334 _P2_1	=	0x00a1
                           0000A2   335 _P2_2	=	0x00a2
                           0000A3   336 _P2_3	=	0x00a3
                           0000A4   337 _P2_4	=	0x00a4
                           0000A5   338 _P2_5	=	0x00a5
                           0000A6   339 _P2_6	=	0x00a6
                           0000A7   340 _P2_7	=	0x00a7
                           0000A8   341 _EX0	=	0x00a8
                           0000A9   342 _ET0	=	0x00a9
                           0000AA   343 _EX1	=	0x00aa
                           0000AB   344 _ET1	=	0x00ab
                           0000AC   345 _ES	=	0x00ac
                           0000AF   346 _EA	=	0x00af
                           0000B0   347 _P3_0	=	0x00b0
                           0000B1   348 _P3_1	=	0x00b1
                           0000B2   349 _P3_2	=	0x00b2
                           0000B3   350 _P3_3	=	0x00b3
                           0000B4   351 _P3_4	=	0x00b4
                           0000B5   352 _P3_5	=	0x00b5
                           0000B6   353 _P3_6	=	0x00b6
                           0000B7   354 _P3_7	=	0x00b7
                           0000B0   355 _RXD	=	0x00b0
                           0000B1   356 _TXD	=	0x00b1
                           0000B2   357 _INT0	=	0x00b2
                           0000B3   358 _INT1	=	0x00b3
                           0000B4   359 _T0	=	0x00b4
                           0000B5   360 _T1	=	0x00b5
                           0000B6   361 _WR	=	0x00b6
                           0000B7   362 _RD	=	0x00b7
                           0000B8   363 _PX0	=	0x00b8
                           0000B9   364 _PT0	=	0x00b9
                           0000BA   365 _PX1	=	0x00ba
                           0000BB   366 _PT1	=	0x00bb
                           0000BC   367 _PS	=	0x00bc
                           0000D0   368 _P	=	0x00d0
                           0000D1   369 _F1	=	0x00d1
                           0000D2   370 _OV	=	0x00d2
                           0000D3   371 _RS0	=	0x00d3
                           0000D4   372 _RS1	=	0x00d4
                           0000D5   373 _F0	=	0x00d5
                           0000D6   374 _AC	=	0x00d6
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 _ET2	=	0x00ad
                           0000BD   377 _PT2	=	0x00bd
                           0000C8   378 _T2CON_0	=	0x00c8
                           0000C9   379 _T2CON_1	=	0x00c9
                           0000CA   380 _T2CON_2	=	0x00ca
                           0000CB   381 _T2CON_3	=	0x00cb
                           0000CC   382 _T2CON_4	=	0x00cc
                           0000CD   383 _T2CON_5	=	0x00cd
                           0000CE   384 _T2CON_6	=	0x00ce
                           0000CF   385 _T2CON_7	=	0x00cf
                           0000C8   386 _CP_RL2	=	0x00c8
                           0000C9   387 _C_T2	=	0x00c9
                           0000CA   388 _TR2	=	0x00ca
                           0000CB   389 _EXEN2	=	0x00cb
                           0000CC   390 _TCLK	=	0x00cc
                           0000CD   391 _RCLK	=	0x00cd
                           0000CE   392 _EXF2	=	0x00ce
                           0000CF   393 _TF2	=	0x00cf
                           0000DF   394 _CF	=	0x00df
                           0000DE   395 _CR	=	0x00de
                           0000DC   396 _CCF4	=	0x00dc
                           0000DB   397 _CCF3	=	0x00db
                           0000DA   398 _CCF2	=	0x00da
                           0000D9   399 _CCF1	=	0x00d9
                           0000D8   400 _CCF0	=	0x00d8
                           0000AE   401 _EC	=	0x00ae
                           0000BE   402 _PPCL	=	0x00be
                           0000BD   403 _PT2L	=	0x00bd
                           0000BC   404 _PSL	=	0x00bc
                           0000BB   405 _PT1L	=	0x00bb
                           0000BA   406 _PX1L	=	0x00ba
                           0000B9   407 _PT0L	=	0x00b9
                           0000B8   408 _PX0L	=	0x00b8
                           0000C0   409 _P4_0	=	0x00c0
                           0000C1   410 _P4_1	=	0x00c1
                           0000C2   411 _P4_2	=	0x00c2
                           0000C3   412 _P4_3	=	0x00c3
                           0000C4   413 _P4_4	=	0x00c4
                           0000C5   414 _P4_5	=	0x00c5
                           0000C6   415 _P4_6	=	0x00c6
                           0000C7   416 _P4_7	=	0x00c7
                           0000E8   417 _P5_0	=	0x00e8
                           0000E9   418 _P5_1	=	0x00e9
                           0000EA   419 _P5_2	=	0x00ea
                           0000EB   420 _P5_3	=	0x00eb
                           0000EC   421 _P5_4	=	0x00ec
                           0000ED   422 _P5_5	=	0x00ed
                           0000EE   423 _P5_6	=	0x00ee
                           0000EF   424 _P5_7	=	0x00ef
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; Stack segment in internal ram
                                    439 ;--------------------------------------------------------
                                    440 	.area	SSEG
      00002D                        441 __start__stack:
      00002D                        442 	.ds	1
                                    443 
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000000                        465 _main_input_131072_64:
      000000                        466 	.ds 20
      000014                        467 _main_data_131074_70:
      000014                        468 	.ds 4
                                    469 ;--------------------------------------------------------
                                    470 ; absolute external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XABS    (ABS,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; external initialized ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XISEG   (XDATA)
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT0 (CODE)
                                    479 	.area GSINIT1 (CODE)
                                    480 	.area GSINIT2 (CODE)
                                    481 	.area GSINIT3 (CODE)
                                    482 	.area GSINIT4 (CODE)
                                    483 	.area GSINIT5 (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area CSEG    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; interrupt vector
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
      000000                        491 __interrupt_vect:
      000000 02 00 06         [24]  492 	ljmp	__sdcc_gsinit_startup
                                    493 ;--------------------------------------------------------
                                    494 ; global & static initialisations
                                    495 ;--------------------------------------------------------
                                    496 	.area HOME    (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 	.globl __sdcc_gsinit_startup
                                    501 	.globl __sdcc_program_startup
                                    502 	.globl __start__stack
                                    503 	.globl __mcs51_genXINIT
                                    504 	.globl __mcs51_genXRAMCLEAR
                                    505 	.globl __mcs51_genRAMCLEAR
                                    506 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  507 	ljmp	__sdcc_program_startup
                                    508 ;--------------------------------------------------------
                                    509 ; Home
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area HOME    (CODE)
      000003                        513 __sdcc_program_startup:
      000003 02 00 62         [24]  514 	ljmp	_main
                                    515 ;	return from main will return to caller
                                    516 ;--------------------------------------------------------
                                    517 ; code
                                    518 ;--------------------------------------------------------
                                    519 	.area CSEG    (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'main'
                                    522 ;------------------------------------------------------------
                                    523 ;input                     Allocated with name '_main_input_131072_64'
                                    524 ;i                         Allocated with name '_main_i_196608_65'
                                    525 ;idx                       Allocated with name '_main_idx_131073_67'
                                    526 ;c                         Allocated with name '_main_c_196609_68'
                                    527 ;data                      Allocated with name '_main_data_131074_70'
                                    528 ;------------------------------------------------------------
                                    529 ;	src/main.c:40: int main()
                                    530 ;	-----------------------------------------
                                    531 ;	 function main
                                    532 ;	-----------------------------------------
      000062                        533 _main:
                           000007   534 	ar7 = 0x07
                           000006   535 	ar6 = 0x06
                           000005   536 	ar5 = 0x05
                           000004   537 	ar4 = 0x04
                           000003   538 	ar3 = 0x03
                           000002   539 	ar2 = 0x02
                           000001   540 	ar1 = 0x01
                           000000   541 	ar0 = 0x00
                                    542 ;	src/main.c:42: hardware_init();                // Function call to initialize hardware
      000062 12 0B 3D         [24]  543 	lcall	_hardware_init
                                    544 ;	src/main.c:44: glcdInit();
      000065 12 17 FC         [24]  545 	lcall	_glcdInit
                                    546 ;	src/main.c:46: testMaxHub();
      000068 12 32 14         [24]  547 	lcall	_testMaxHub
                                    548 ;	src/main.c:50: while (1)
      00006B                        549 00111$:
                                    550 ;	src/main.c:52: char input[20] = {0};
      00006B 90 00 00         [24]  551 	mov	dptr,#_main_input_131072_64
      00006E E4               [12]  552 	clr	a
      00006F F0               [24]  553 	movx	@dptr,a
      000070 90 00 01         [24]  554 	mov	dptr,#(_main_input_131072_64 + 0x0001)
      000073 F0               [24]  555 	movx	@dptr,a
      000074 90 00 02         [24]  556 	mov	dptr,#(_main_input_131072_64 + 0x0002)
      000077 F0               [24]  557 	movx	@dptr,a
      000078 90 00 03         [24]  558 	mov	dptr,#(_main_input_131072_64 + 0x0003)
      00007B F0               [24]  559 	movx	@dptr,a
      00007C 90 00 04         [24]  560 	mov	dptr,#(_main_input_131072_64 + 0x0004)
      00007F F0               [24]  561 	movx	@dptr,a
      000080 90 00 05         [24]  562 	mov	dptr,#(_main_input_131072_64 + 0x0005)
      000083 F0               [24]  563 	movx	@dptr,a
      000084 90 00 06         [24]  564 	mov	dptr,#(_main_input_131072_64 + 0x0006)
      000087 F0               [24]  565 	movx	@dptr,a
      000088 90 00 07         [24]  566 	mov	dptr,#(_main_input_131072_64 + 0x0007)
      00008B F0               [24]  567 	movx	@dptr,a
      00008C 90 00 08         [24]  568 	mov	dptr,#(_main_input_131072_64 + 0x0008)
      00008F F0               [24]  569 	movx	@dptr,a
      000090 90 00 09         [24]  570 	mov	dptr,#(_main_input_131072_64 + 0x0009)
      000093 F0               [24]  571 	movx	@dptr,a
      000094 90 00 0A         [24]  572 	mov	dptr,#(_main_input_131072_64 + 0x000a)
      000097 F0               [24]  573 	movx	@dptr,a
      000098 90 00 0B         [24]  574 	mov	dptr,#(_main_input_131072_64 + 0x000b)
      00009B F0               [24]  575 	movx	@dptr,a
      00009C 90 00 0C         [24]  576 	mov	dptr,#(_main_input_131072_64 + 0x000c)
      00009F F0               [24]  577 	movx	@dptr,a
      0000A0 90 00 0D         [24]  578 	mov	dptr,#(_main_input_131072_64 + 0x000d)
      0000A3 F0               [24]  579 	movx	@dptr,a
      0000A4 90 00 0E         [24]  580 	mov	dptr,#(_main_input_131072_64 + 0x000e)
      0000A7 F0               [24]  581 	movx	@dptr,a
      0000A8 90 00 0F         [24]  582 	mov	dptr,#(_main_input_131072_64 + 0x000f)
      0000AB F0               [24]  583 	movx	@dptr,a
      0000AC 90 00 10         [24]  584 	mov	dptr,#(_main_input_131072_64 + 0x0010)
      0000AF F0               [24]  585 	movx	@dptr,a
      0000B0 90 00 11         [24]  586 	mov	dptr,#(_main_input_131072_64 + 0x0011)
      0000B3 F0               [24]  587 	movx	@dptr,a
      0000B4 90 00 12         [24]  588 	mov	dptr,#(_main_input_131072_64 + 0x0012)
      0000B7 F0               [24]  589 	movx	@dptr,a
      0000B8 90 00 13         [24]  590 	mov	dptr,#(_main_input_131072_64 + 0x0013)
      0000BB F0               [24]  591 	movx	@dptr,a
                                    592 ;	src/main.c:53: for(uint8_t i = 0; i < 20; i++)
      0000BC 7F 00            [12]  593 	mov	r7,#0x00
      0000BE                        594 00114$:
      0000BE BF 14 00         [24]  595 	cjne	r7,#0x14,00148$
      0000C1                        596 00148$:
      0000C1 50 10            [24]  597 	jnc	00101$
                                    598 ;	src/main.c:55: input[i] = '|';
      0000C3 EF               [12]  599 	mov	a,r7
      0000C4 24 00            [12]  600 	add	a,#_main_input_131072_64
      0000C6 F5 82            [12]  601 	mov	dpl,a
      0000C8 E4               [12]  602 	clr	a
      0000C9 34 00            [12]  603 	addc	a,#(_main_input_131072_64 >> 8)
      0000CB F5 83            [12]  604 	mov	dph,a
      0000CD 74 7C            [12]  605 	mov	a,#0x7c
      0000CF F0               [24]  606 	movx	@dptr,a
                                    607 ;	src/main.c:53: for(uint8_t i = 0; i < 20; i++)
      0000D0 0F               [12]  608 	inc	r7
      0000D1 80 EB            [24]  609 	sjmp	00114$
      0000D3                        610 00101$:
                                    611 ;	src/main.c:62: while(1)
      0000D3 7F 00            [12]  612 	mov	r7,#0x00
      0000D5                        613 00106$:
                                    614 ;	src/main.c:64: char c = getchar();
      0000D5 C0 07            [24]  615 	push	ar7
      0000D7 12 0B 6A         [24]  616 	lcall	_getchar
      0000DA AD 82            [24]  617 	mov	r5,dpl
      0000DC AE 83            [24]  618 	mov	r6,dph
      0000DE D0 07            [24]  619 	pop	ar7
                                    620 ;	src/main.c:69: if (c == '\n' || c == '\r')
      0000E0 BD 0A 02         [24]  621 	cjne	r5,#0x0a,00150$
      0000E3 80 14            [24]  622 	sjmp	00107$
      0000E5                        623 00150$:
      0000E5 BD 0D 02         [24]  624 	cjne	r5,#0x0d,00151$
      0000E8 80 0F            [24]  625 	sjmp	00107$
      0000EA                        626 00151$:
                                    627 ;	src/main.c:74: input[idx] = c;
      0000EA EF               [12]  628 	mov	a,r7
      0000EB 24 00            [12]  629 	add	a,#_main_input_131072_64
      0000ED F5 82            [12]  630 	mov	dpl,a
      0000EF E4               [12]  631 	clr	a
      0000F0 34 00            [12]  632 	addc	a,#(_main_input_131072_64 >> 8)
      0000F2 F5 83            [12]  633 	mov	dph,a
      0000F4 ED               [12]  634 	mov	a,r5
      0000F5 F0               [24]  635 	movx	@dptr,a
                                    636 ;	src/main.c:75: idx++;
      0000F6 0F               [12]  637 	inc	r7
      0000F7 80 DC            [24]  638 	sjmp	00106$
      0000F9                        639 00107$:
                                    640 ;	src/main.c:87: readBiodata(input, &data);
      0000F9 90 00 19         [24]  641 	mov	dptr,#_readBiodata_PARM_2
      0000FC 74 14            [12]  642 	mov	a,#_main_data_131074_70
      0000FE F0               [24]  643 	movx	@dptr,a
      0000FF 74 00            [12]  644 	mov	a,#(_main_data_131074_70 >> 8)
      000101 A3               [24]  645 	inc	dptr
      000102 F0               [24]  646 	movx	@dptr,a
      000103 E4               [12]  647 	clr	a
      000104 A3               [24]  648 	inc	dptr
      000105 F0               [24]  649 	movx	@dptr,a
      000106 90 00 00         [24]  650 	mov	dptr,#_main_input_131072_64
      000109 75 F0 00         [24]  651 	mov	b,#0x00
      00010C 12 01 BD         [24]  652 	lcall	_readBiodata
                                    653 ;	src/main.c:88: INFO_LOG("BPM= %d SPO2=%d\n\r", data.bpm, data.spo2);
      00010F 90 00 16         [24]  654 	mov	dptr,#(_main_data_131074_70 + 0x0002)
      000112 E0               [24]  655 	movx	a,@dptr
      000113 FF               [12]  656 	mov	r7,a
      000114 7E 00            [12]  657 	mov	r6,#0x00
      000116 90 00 15         [24]  658 	mov	dptr,#(_main_data_131074_70 + 0x0001)
      000119 E0               [24]  659 	movx	a,@dptr
      00011A FD               [12]  660 	mov	r5,a
      00011B 7C 00            [12]  661 	mov	r4,#0x00
      00011D C0 07            [24]  662 	push	ar7
      00011F C0 06            [24]  663 	push	ar6
      000121 C0 05            [24]  664 	push	ar5
      000123 C0 04            [24]  665 	push	ar4
      000125 74 8D            [12]  666 	mov	a,#___str_0
      000127 C0 E0            [24]  667 	push	acc
      000129 74 4A            [12]  668 	mov	a,#(___str_0 >> 8)
      00012B C0 E0            [24]  669 	push	acc
      00012D 74 80            [12]  670 	mov	a,#0x80
      00012F C0 E0            [24]  671 	push	acc
      000131 12 3E BF         [24]  672 	lcall	_printf
      000134 E5 81            [12]  673 	mov	a,sp
      000136 24 F9            [12]  674 	add	a,#0xf9
      000138 F5 81            [12]  675 	mov	sp,a
      00013A 74 AC            [12]  676 	mov	a,#___str_1
      00013C C0 E0            [24]  677 	push	acc
      00013E 74 4A            [12]  678 	mov	a,#(___str_1 >> 8)
      000140 C0 E0            [24]  679 	push	acc
      000142 12 3B B6         [24]  680 	lcall	_printf_tiny
      000145 15 81            [12]  681 	dec	sp
      000147 15 81            [12]  682 	dec	sp
                                    683 ;	src/main.c:90: glcdUpdateStatus(getStatusString(data.status));
      000149 90 00 14         [24]  684 	mov	dptr,#_main_data_131074_70
      00014C E0               [24]  685 	movx	a,@dptr
      00014D F5 82            [12]  686 	mov	dpl,a
      00014F 12 01 80         [24]  687 	lcall	_getStatusString
      000152 12 17 B8         [24]  688 	lcall	_glcdUpdateStatus
                                    689 ;	src/main.c:91: if (data.status == FINGER_DETECTED)
      000155 90 00 14         [24]  690 	mov	dptr,#_main_data_131074_70
      000158 E0               [24]  691 	movx	a,@dptr
      000159 FF               [12]  692 	mov	r7,a
      00015A BF 03 02         [24]  693 	cjne	r7,#0x03,00152$
      00015D 80 03            [24]  694 	sjmp	00153$
      00015F                        695 00152$:
      00015F 02 00 6B         [24]  696 	ljmp	00111$
      000162                        697 00153$:
                                    698 ;	src/main.c:93: glcdUpdateSpo2(data.spo2);
      000162 90 00 16         [24]  699 	mov	dptr,#(_main_data_131074_70 + 0x0002)
      000165 E0               [24]  700 	movx	a,@dptr
      000166 F5 82            [12]  701 	mov	dpl,a
      000168 12 17 02         [24]  702 	lcall	_glcdUpdateSpo2
                                    703 ;	src/main.c:94: glcdUpdateBpm(data.bpm);
      00016B 90 00 15         [24]  704 	mov	dptr,#(_main_data_131074_70 + 0x0001)
      00016E E0               [24]  705 	movx	a,@dptr
      00016F F5 82            [12]  706 	mov	dpl,a
      000171 12 17 67         [24]  707 	lcall	_glcdUpdateBpm
                                    708 ;	src/main.c:95: glcdPlotIrValue(data.irled);
      000174 90 00 17         [24]  709 	mov	dptr,#(_main_data_131074_70 + 0x0003)
      000177 E0               [24]  710 	movx	a,@dptr
      000178 F5 82            [12]  711 	mov	dpl,a
      00017A 12 18 8A         [24]  712 	lcall	_glcdPlotIrValue
                                    713 ;	src/main.c:101: return 0;
                                    714 ;	src/main.c:102: }
      00017D 02 00 6B         [24]  715 	ljmp	00111$
                                    716 	.area CSEG    (CODE)
                                    717 	.area CONST   (CODE)
                                    718 	.area CONST   (CODE)
      004A8D                        719 ___str_0:
      004A8D 0A                     720 	.db 0x0a
      004A8E 0D                     721 	.db 0x0d
      004A8F 1B                     722 	.db 0x1b
      004A90 5B 33 38 3B 35 3B 32   723 	.ascii "[38;5;214mBPM= %d SPO2=%d"
             31 34 6D 42 50 4D 3D
             20 25 64 20 53 50 4F
             32 3D 25 64
      004AA9 0A                     724 	.db 0x0a
      004AAA 0D                     725 	.db 0x0d
      004AAB 00                     726 	.db 0x00
                                    727 	.area CSEG    (CODE)
                                    728 	.area CONST   (CODE)
      004AAC                        729 ___str_1:
      004AAC 1B                     730 	.db 0x1b
      004AAD 5B 30 6D               731 	.ascii "[0m"
      004AB0 00                     732 	.db 0x00
                                    733 	.area CSEG    (CODE)
                                    734 	.area XINIT   (CODE)
                                    735 	.area CABS    (ABS,CODE)
