                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module datareceiver
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
                                    209 	.globl _readBiodata_PARM_2
                                    210 	.globl _getStatusString
                                    211 	.globl _readBiodata
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0	=	0x0080
                           000081   218 _SP	=	0x0081
                           000082   219 _DPL	=	0x0082
                           000083   220 _DPH	=	0x0083
                           000087   221 _PCON	=	0x0087
                           000088   222 _TCON	=	0x0088
                           000089   223 _TMOD	=	0x0089
                           00008A   224 _TL0	=	0x008a
                           00008B   225 _TL1	=	0x008b
                           00008C   226 _TH0	=	0x008c
                           00008D   227 _TH1	=	0x008d
                           000090   228 _P1	=	0x0090
                           000098   229 _SCON	=	0x0098
                           000099   230 _SBUF	=	0x0099
                           0000A0   231 _P2	=	0x00a0
                           0000A8   232 _IE	=	0x00a8
                           0000B0   233 _P3	=	0x00b0
                           0000B8   234 _IP	=	0x00b8
                           0000D0   235 _PSW	=	0x00d0
                           0000E0   236 _ACC	=	0x00e0
                           0000F0   237 _B	=	0x00f0
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                                    289 ;--------------------------------------------------------
                                    290 ; special function bits
                                    291 ;--------------------------------------------------------
                                    292 	.area RSEG    (ABS,DATA)
      000000                        293 	.org 0x0000
                           000080   294 _P0_0	=	0x0080
                           000081   295 _P0_1	=	0x0081
                           000082   296 _P0_2	=	0x0082
                           000083   297 _P0_3	=	0x0083
                           000084   298 _P0_4	=	0x0084
                           000085   299 _P0_5	=	0x0085
                           000086   300 _P0_6	=	0x0086
                           000087   301 _P0_7	=	0x0087
                           000088   302 _IT0	=	0x0088
                           000089   303 _IE0	=	0x0089
                           00008A   304 _IT1	=	0x008a
                           00008B   305 _IE1	=	0x008b
                           00008C   306 _TR0	=	0x008c
                           00008D   307 _TF0	=	0x008d
                           00008E   308 _TR1	=	0x008e
                           00008F   309 _TF1	=	0x008f
                           000090   310 _P1_0	=	0x0090
                           000091   311 _P1_1	=	0x0091
                           000092   312 _P1_2	=	0x0092
                           000093   313 _P1_3	=	0x0093
                           000094   314 _P1_4	=	0x0094
                           000095   315 _P1_5	=	0x0095
                           000096   316 _P1_6	=	0x0096
                           000097   317 _P1_7	=	0x0097
                           000098   318 _RI	=	0x0098
                           000099   319 _TI	=	0x0099
                           00009A   320 _RB8	=	0x009a
                           00009B   321 _TB8	=	0x009b
                           00009C   322 _REN	=	0x009c
                           00009D   323 _SM2	=	0x009d
                           00009E   324 _SM1	=	0x009e
                           00009F   325 _SM0	=	0x009f
                           0000A0   326 _P2_0	=	0x00a0
                           0000A1   327 _P2_1	=	0x00a1
                           0000A2   328 _P2_2	=	0x00a2
                           0000A3   329 _P2_3	=	0x00a3
                           0000A4   330 _P2_4	=	0x00a4
                           0000A5   331 _P2_5	=	0x00a5
                           0000A6   332 _P2_6	=	0x00a6
                           0000A7   333 _P2_7	=	0x00a7
                           0000A8   334 _EX0	=	0x00a8
                           0000A9   335 _ET0	=	0x00a9
                           0000AA   336 _EX1	=	0x00aa
                           0000AB   337 _ET1	=	0x00ab
                           0000AC   338 _ES	=	0x00ac
                           0000AF   339 _EA	=	0x00af
                           0000B0   340 _P3_0	=	0x00b0
                           0000B1   341 _P3_1	=	0x00b1
                           0000B2   342 _P3_2	=	0x00b2
                           0000B3   343 _P3_3	=	0x00b3
                           0000B4   344 _P3_4	=	0x00b4
                           0000B5   345 _P3_5	=	0x00b5
                           0000B6   346 _P3_6	=	0x00b6
                           0000B7   347 _P3_7	=	0x00b7
                           0000B0   348 _RXD	=	0x00b0
                           0000B1   349 _TXD	=	0x00b1
                           0000B2   350 _INT0	=	0x00b2
                           0000B3   351 _INT1	=	0x00b3
                           0000B4   352 _T0	=	0x00b4
                           0000B5   353 _T1	=	0x00b5
                           0000B6   354 _WR	=	0x00b6
                           0000B7   355 _RD	=	0x00b7
                           0000B8   356 _PX0	=	0x00b8
                           0000B9   357 _PT0	=	0x00b9
                           0000BA   358 _PX1	=	0x00ba
                           0000BB   359 _PT1	=	0x00bb
                           0000BC   360 _PS	=	0x00bc
                           0000D0   361 _P	=	0x00d0
                           0000D1   362 _F1	=	0x00d1
                           0000D2   363 _OV	=	0x00d2
                           0000D3   364 _RS0	=	0x00d3
                           0000D4   365 _RS1	=	0x00d4
                           0000D5   366 _F0	=	0x00d5
                           0000D6   367 _AC	=	0x00d6
                           0000D7   368 _CY	=	0x00d7
                           0000AD   369 _ET2	=	0x00ad
                           0000BD   370 _PT2	=	0x00bd
                           0000C8   371 _T2CON_0	=	0x00c8
                           0000C9   372 _T2CON_1	=	0x00c9
                           0000CA   373 _T2CON_2	=	0x00ca
                           0000CB   374 _T2CON_3	=	0x00cb
                           0000CC   375 _T2CON_4	=	0x00cc
                           0000CD   376 _T2CON_5	=	0x00cd
                           0000CE   377 _T2CON_6	=	0x00ce
                           0000CF   378 _T2CON_7	=	0x00cf
                           0000C8   379 _CP_RL2	=	0x00c8
                           0000C9   380 _C_T2	=	0x00c9
                           0000CA   381 _TR2	=	0x00ca
                           0000CB   382 _EXEN2	=	0x00cb
                           0000CC   383 _TCLK	=	0x00cc
                           0000CD   384 _RCLK	=	0x00cd
                           0000CE   385 _EXF2	=	0x00ce
                           0000CF   386 _TF2	=	0x00cf
                           0000DF   387 _CF	=	0x00df
                           0000DE   388 _CR	=	0x00de
                           0000DC   389 _CCF4	=	0x00dc
                           0000DB   390 _CCF3	=	0x00db
                           0000DA   391 _CCF2	=	0x00da
                           0000D9   392 _CCF1	=	0x00d9
                           0000D8   393 _CCF0	=	0x00d8
                           0000AE   394 _EC	=	0x00ae
                           0000BE   395 _PPCL	=	0x00be
                           0000BD   396 _PT2L	=	0x00bd
                           0000BC   397 _PSL	=	0x00bc
                           0000BB   398 _PT1L	=	0x00bb
                           0000BA   399 _PX1L	=	0x00ba
                           0000B9   400 _PT0L	=	0x00b9
                           0000B8   401 _PX0L	=	0x00b8
                           0000C0   402 _P4_0	=	0x00c0
                           0000C1   403 _P4_1	=	0x00c1
                           0000C2   404 _P4_2	=	0x00c2
                           0000C3   405 _P4_3	=	0x00c3
                           0000C4   406 _P4_4	=	0x00c4
                           0000C5   407 _P4_5	=	0x00c5
                           0000C6   408 _P4_6	=	0x00c6
                           0000C7   409 _P4_7	=	0x00c7
                           0000E8   410 _P5_0	=	0x00e8
                           0000E9   411 _P5_1	=	0x00e9
                           0000EA   412 _P5_2	=	0x00ea
                           0000EB   413 _P5_3	=	0x00eb
                           0000EC   414 _P5_4	=	0x00ec
                           0000ED   415 _P5_5	=	0x00ed
                           0000EE   416 _P5_6	=	0x00ee
                           0000EF   417 _P5_7	=	0x00ef
                                    418 ;--------------------------------------------------------
                                    419 ; overlayable register banks
                                    420 ;--------------------------------------------------------
                                    421 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable items in internal ram
                                    429 ;--------------------------------------------------------
                                    430 ;--------------------------------------------------------
                                    431 ; indirectly addressable internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area ISEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; absolute internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area IABS    (ABS,DATA)
                                    438 	.area IABS    (ABS,DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; bit data
                                    441 ;--------------------------------------------------------
                                    442 	.area BSEG    (BIT)
                                    443 ;--------------------------------------------------------
                                    444 ; paged external ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area PSEG    (PAG,XDATA)
                                    447 ;--------------------------------------------------------
                                    448 ; external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area XSEG    (XDATA)
      000018                        451 _getStatusString_status_65536_46:
      000018                        452 	.ds 1
      000019                        453 _readBiodata_PARM_2:
      000019                        454 	.ds 3
      00001C                        455 _readBiodata_input_65536_49:
      00001C                        456 	.ds 3
      00001F                        457 _readBiodata_status_65536_50:
      00001F                        458 	.ds 1
      000020                        459 _readBiodata_bpm_65536_50:
      000020                        460 	.ds 1
      000021                        461 _readBiodata_spo2_65536_50:
      000021                        462 	.ds 1
      000022                        463 _readBiodata_irled_65536_50:
      000022                        464 	.ds 1
                                    465 ;--------------------------------------------------------
                                    466 ; absolute external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XABS    (ABS,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external initialized ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XISEG   (XDATA)
                                    473 	.area HOME    (CODE)
                                    474 	.area GSINIT0 (CODE)
                                    475 	.area GSINIT1 (CODE)
                                    476 	.area GSINIT2 (CODE)
                                    477 	.area GSINIT3 (CODE)
                                    478 	.area GSINIT4 (CODE)
                                    479 	.area GSINIT5 (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area CSEG    (CODE)
                                    483 ;--------------------------------------------------------
                                    484 ; global & static initialisations
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
                                    487 	.area GSINIT  (CODE)
                                    488 	.area GSFINAL (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; Home
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
                                    494 	.area HOME    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; code
                                    497 ;--------------------------------------------------------
                                    498 	.area CSEG    (CODE)
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'getStatusString'
                                    501 ;------------------------------------------------------------
                                    502 ;status                    Allocated with name '_getStatusString_status_65536_46'
                                    503 ;------------------------------------------------------------
                                    504 ;	src/datareceiver.c:36: const char* getStatusString(FingerStatus status)
                                    505 ;	-----------------------------------------
                                    506 ;	 function getStatusString
                                    507 ;	-----------------------------------------
      000180                        508 _getStatusString:
                           000007   509 	ar7 = 0x07
                           000006   510 	ar6 = 0x06
                           000005   511 	ar5 = 0x05
                           000004   512 	ar4 = 0x04
                           000003   513 	ar3 = 0x03
                           000002   514 	ar2 = 0x02
                           000001   515 	ar1 = 0x01
                           000000   516 	ar0 = 0x00
      000180 E5 82            [12]  517 	mov	a,dpl
      000182 90 00 18         [24]  518 	mov	dptr,#_getStatusString_status_65536_46
      000185 F0               [24]  519 	movx	@dptr,a
                                    520 ;	src/datareceiver.c:38: switch (status)
      000186 E0               [24]  521 	movx	a,@dptr
      000187 FF               [12]  522 	mov  r7,a
      000188 24 FC            [12]  523 	add	a,#0xff - 0x03
      00018A 40 2A            [24]  524 	jc	00105$
      00018C EF               [12]  525 	mov	a,r7
      00018D 2F               [12]  526 	add	a,r7
                                    527 ;	src/datareceiver.c:40: case NO_READING:
      00018E 90 01 92         [24]  528 	mov	dptr,#00114$
      000191 73               [24]  529 	jmp	@a+dptr
      000192                        530 00114$:
      000192 80 06            [24]  531 	sjmp	00101$
      000194 80 0B            [24]  532 	sjmp	00102$
      000196 80 10            [24]  533 	sjmp	00103$
      000198 80 15            [24]  534 	sjmp	00104$
      00019A                        535 00101$:
                                    536 ;	src/datareceiver.c:41: return "NO READING";
      00019A 90 4A B1         [24]  537 	mov	dptr,#___str_0
      00019D 75 F0 80         [24]  538 	mov	b,#0x80
                                    539 ;	src/datareceiver.c:42: case NOT_READY:
      0001A0 22               [24]  540 	ret
      0001A1                        541 00102$:
                                    542 ;	src/datareceiver.c:43: return "NOT READY";
      0001A1 90 4A BC         [24]  543 	mov	dptr,#___str_1
      0001A4 75 F0 80         [24]  544 	mov	b,#0x80
                                    545 ;	src/datareceiver.c:44: case OBJECT_DETECTED:
      0001A7 22               [24]  546 	ret
      0001A8                        547 00103$:
                                    548 ;	src/datareceiver.c:45: return "OBJECT DETECTED";
      0001A8 90 4A C6         [24]  549 	mov	dptr,#___str_2
      0001AB 75 F0 80         [24]  550 	mov	b,#0x80
                                    551 ;	src/datareceiver.c:46: case FINGER_DETECTED:
      0001AE 22               [24]  552 	ret
      0001AF                        553 00104$:
                                    554 ;	src/datareceiver.c:47: return "FINGER DETECTED";
      0001AF 90 4A D6         [24]  555 	mov	dptr,#___str_3
      0001B2 75 F0 80         [24]  556 	mov	b,#0x80
                                    557 ;	src/datareceiver.c:48: default:
      0001B5 22               [24]  558 	ret
      0001B6                        559 00105$:
                                    560 ;	src/datareceiver.c:49: return "UNKNOWN";
      0001B6 90 4A E6         [24]  561 	mov	dptr,#___str_4
      0001B9 75 F0 80         [24]  562 	mov	b,#0x80
                                    563 ;	src/datareceiver.c:50: }
                                    564 ;	src/datareceiver.c:51: }
      0001BC 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'readBiodata'
                                    568 ;------------------------------------------------------------
                                    569 ;data                      Allocated with name '_readBiodata_PARM_2'
                                    570 ;input                     Allocated with name '_readBiodata_input_65536_49'
                                    571 ;status                    Allocated with name '_readBiodata_status_65536_50'
                                    572 ;idx                       Allocated with name '_readBiodata_idx_65536_50'
                                    573 ;bpm                       Allocated with name '_readBiodata_bpm_65536_50'
                                    574 ;spo2                      Allocated with name '_readBiodata_spo2_65536_50'
                                    575 ;irled                     Allocated with name '_readBiodata_irled_65536_50'
                                    576 ;digit                     Allocated with name '_readBiodata_digit_131072_51'
                                    577 ;digit                     Allocated with name '_readBiodata_digit_131072_52'
                                    578 ;digit                     Allocated with name '_readBiodata_digit_131072_53'
                                    579 ;digit                     Allocated with name '_readBiodata_digit_131072_54'
                                    580 ;------------------------------------------------------------
                                    581 ;	src/datareceiver.c:59: void readBiodata(char input[], BioData* data)
                                    582 ;	-----------------------------------------
                                    583 ;	 function readBiodata
                                    584 ;	-----------------------------------------
      0001BD                        585 _readBiodata:
      0001BD AF F0            [24]  586 	mov	r7,b
      0001BF AE 83            [24]  587 	mov	r6,dph
      0001C1 E5 82            [12]  588 	mov	a,dpl
      0001C3 90 00 1C         [24]  589 	mov	dptr,#_readBiodata_input_65536_49
      0001C6 F0               [24]  590 	movx	@dptr,a
      0001C7 EE               [12]  591 	mov	a,r6
      0001C8 A3               [24]  592 	inc	dptr
      0001C9 F0               [24]  593 	movx	@dptr,a
      0001CA EF               [12]  594 	mov	a,r7
      0001CB A3               [24]  595 	inc	dptr
      0001CC F0               [24]  596 	movx	@dptr,a
                                    597 ;	src/datareceiver.c:61: uint8_t status = 0;
      0001CD 90 00 1F         [24]  598 	mov	dptr,#_readBiodata_status_65536_50
      0001D0 E4               [12]  599 	clr	a
      0001D1 F0               [24]  600 	movx	@dptr,a
                                    601 ;	src/datareceiver.c:63: uint8_t bpm = 0;
      0001D2 90 00 20         [24]  602 	mov	dptr,#_readBiodata_bpm_65536_50
      0001D5 F0               [24]  603 	movx	@dptr,a
                                    604 ;	src/datareceiver.c:64: uint8_t spo2 = 0;
      0001D6 90 00 21         [24]  605 	mov	dptr,#_readBiodata_spo2_65536_50
      0001D9 F0               [24]  606 	movx	@dptr,a
                                    607 ;	src/datareceiver.c:65: uint8_t irled = 0;
      0001DA 90 00 22         [24]  608 	mov	dptr,#_readBiodata_irled_65536_50
      0001DD F0               [24]  609 	movx	@dptr,a
                                    610 ;	src/datareceiver.c:67: while(input[idx] != '#')
      0001DE 90 00 1C         [24]  611 	mov	dptr,#_readBiodata_input_65536_49
      0001E1 E0               [24]  612 	movx	a,@dptr
      0001E2 FD               [12]  613 	mov	r5,a
      0001E3 A3               [24]  614 	inc	dptr
      0001E4 E0               [24]  615 	movx	a,@dptr
      0001E5 FE               [12]  616 	mov	r6,a
      0001E6 A3               [24]  617 	inc	dptr
      0001E7 E0               [24]  618 	movx	a,@dptr
      0001E8 FF               [12]  619 	mov	r7,a
      0001E9 7C 00            [12]  620 	mov	r4,#0x00
      0001EB                        621 00101$:
      0001EB EC               [12]  622 	mov	a,r4
      0001EC 2D               [12]  623 	add	a,r5
      0001ED F9               [12]  624 	mov	r1,a
      0001EE E4               [12]  625 	clr	a
      0001EF 3E               [12]  626 	addc	a,r6
      0001F0 FA               [12]  627 	mov	r2,a
      0001F1 8F 03            [24]  628 	mov	ar3,r7
      0001F3 89 82            [24]  629 	mov	dpl,r1
      0001F5 8A 83            [24]  630 	mov	dph,r2
      0001F7 8B F0            [24]  631 	mov	b,r3
      0001F9 12 49 AE         [24]  632 	lcall	__gptrget
      0001FC FB               [12]  633 	mov	r3,a
      0001FD BB 23 02         [24]  634 	cjne	r3,#0x23,00151$
      000200 80 12            [24]  635 	sjmp	00103$
      000202                        636 00151$:
                                    637 ;	src/datareceiver.c:70: uint8_t digit = input[idx] - '0';
      000202 EB               [12]  638 	mov	a,r3
      000203 24 D0            [12]  639 	add	a,#0xd0
      000205 FB               [12]  640 	mov	r3,a
                                    641 ;	src/datareceiver.c:71: status = status*10 + digit;
      000206 90 00 1F         [24]  642 	mov	dptr,#_readBiodata_status_65536_50
      000209 E0               [24]  643 	movx	a,@dptr
      00020A 75 F0 0A         [24]  644 	mov	b,#0x0a
      00020D A4               [48]  645 	mul	ab
      00020E FA               [12]  646 	mov	r2,a
      00020F 2B               [12]  647 	add	a,r3
      000210 F0               [24]  648 	movx	@dptr,a
                                    649 ;	src/datareceiver.c:72: idx++;
      000211 0C               [12]  650 	inc	r4
      000212 80 D7            [24]  651 	sjmp	00101$
      000214                        652 00103$:
                                    653 ;	src/datareceiver.c:74: idx++;
      000214 0C               [12]  654 	inc	r4
                                    655 ;	src/datareceiver.c:75: INFO_LOG("%s: Status = %d", __func__, status);
      000215 90 00 1F         [24]  656 	mov	dptr,#_readBiodata_status_65536_50
      000218 E0               [24]  657 	movx	a,@dptr
      000219 FF               [12]  658 	mov	r7,a
      00021A 7E 00            [12]  659 	mov	r6,#0x00
      00021C C0 04            [24]  660 	push	ar4
      00021E C0 07            [24]  661 	push	ar7
      000220 C0 06            [24]  662 	push	ar6
      000222 74 0B            [12]  663 	mov	a,#___str_6
      000224 C0 E0            [24]  664 	push	acc
      000226 74 4B            [12]  665 	mov	a,#(___str_6 >> 8)
      000228 C0 E0            [24]  666 	push	acc
      00022A 74 80            [12]  667 	mov	a,#0x80
      00022C C0 E0            [24]  668 	push	acc
      00022E 74 EE            [12]  669 	mov	a,#___str_5
      000230 C0 E0            [24]  670 	push	acc
      000232 74 4A            [12]  671 	mov	a,#(___str_5 >> 8)
      000234 C0 E0            [24]  672 	push	acc
      000236 74 80            [12]  673 	mov	a,#0x80
      000238 C0 E0            [24]  674 	push	acc
      00023A 12 3E BF         [24]  675 	lcall	_printf
      00023D E5 81            [12]  676 	mov	a,sp
      00023F 24 F8            [12]  677 	add	a,#0xf8
      000241 F5 81            [12]  678 	mov	sp,a
      000243 74 17            [12]  679 	mov	a,#___str_7
      000245 C0 E0            [24]  680 	push	acc
      000247 74 4B            [12]  681 	mov	a,#(___str_7 >> 8)
      000249 C0 E0            [24]  682 	push	acc
      00024B 12 3B B6         [24]  683 	lcall	_printf_tiny
      00024E 15 81            [12]  684 	dec	sp
      000250 15 81            [12]  685 	dec	sp
      000252 D0 04            [24]  686 	pop	ar4
                                    687 ;	src/datareceiver.c:77: while(input[idx] != '#')
      000254 90 00 1C         [24]  688 	mov	dptr,#_readBiodata_input_65536_49
      000257 E0               [24]  689 	movx	a,@dptr
      000258 FD               [12]  690 	mov	r5,a
      000259 A3               [24]  691 	inc	dptr
      00025A E0               [24]  692 	movx	a,@dptr
      00025B FE               [12]  693 	mov	r6,a
      00025C A3               [24]  694 	inc	dptr
      00025D E0               [24]  695 	movx	a,@dptr
      00025E FF               [12]  696 	mov	r7,a
      00025F                        697 00104$:
      00025F EC               [12]  698 	mov	a,r4
      000260 2D               [12]  699 	add	a,r5
      000261 F9               [12]  700 	mov	r1,a
      000262 E4               [12]  701 	clr	a
      000263 3E               [12]  702 	addc	a,r6
      000264 FA               [12]  703 	mov	r2,a
      000265 8F 03            [24]  704 	mov	ar3,r7
      000267 89 82            [24]  705 	mov	dpl,r1
      000269 8A 83            [24]  706 	mov	dph,r2
      00026B 8B F0            [24]  707 	mov	b,r3
      00026D 12 49 AE         [24]  708 	lcall	__gptrget
      000270 FB               [12]  709 	mov	r3,a
      000271 BB 23 02         [24]  710 	cjne	r3,#0x23,00152$
      000274 80 12            [24]  711 	sjmp	00106$
      000276                        712 00152$:
                                    713 ;	src/datareceiver.c:80: uint8_t digit = input[idx] - '0';
      000276 EB               [12]  714 	mov	a,r3
      000277 24 D0            [12]  715 	add	a,#0xd0
      000279 FB               [12]  716 	mov	r3,a
                                    717 ;	src/datareceiver.c:81: bpm = bpm*10 + digit;
      00027A 90 00 20         [24]  718 	mov	dptr,#_readBiodata_bpm_65536_50
      00027D E0               [24]  719 	movx	a,@dptr
      00027E 75 F0 0A         [24]  720 	mov	b,#0x0a
      000281 A4               [48]  721 	mul	ab
      000282 FA               [12]  722 	mov	r2,a
      000283 2B               [12]  723 	add	a,r3
      000284 F0               [24]  724 	movx	@dptr,a
                                    725 ;	src/datareceiver.c:82: idx++;
      000285 0C               [12]  726 	inc	r4
      000286 80 D7            [24]  727 	sjmp	00104$
      000288                        728 00106$:
                                    729 ;	src/datareceiver.c:84: idx++;
      000288 0C               [12]  730 	inc	r4
                                    731 ;	src/datareceiver.c:86: INFO_LOG("%s: BPM = %d", __func__, bpm);
      000289 90 00 20         [24]  732 	mov	dptr,#_readBiodata_bpm_65536_50
      00028C E0               [24]  733 	movx	a,@dptr
      00028D FF               [12]  734 	mov	r7,a
      00028E 7E 00            [12]  735 	mov	r6,#0x00
      000290 C0 04            [24]  736 	push	ar4
      000292 C0 07            [24]  737 	push	ar7
      000294 C0 06            [24]  738 	push	ar6
      000296 74 0B            [12]  739 	mov	a,#___str_6
      000298 C0 E0            [24]  740 	push	acc
      00029A 74 4B            [12]  741 	mov	a,#(___str_6 >> 8)
      00029C C0 E0            [24]  742 	push	acc
      00029E 74 80            [12]  743 	mov	a,#0x80
      0002A0 C0 E0            [24]  744 	push	acc
      0002A2 74 1C            [12]  745 	mov	a,#___str_8
      0002A4 C0 E0            [24]  746 	push	acc
      0002A6 74 4B            [12]  747 	mov	a,#(___str_8 >> 8)
      0002A8 C0 E0            [24]  748 	push	acc
      0002AA 74 80            [12]  749 	mov	a,#0x80
      0002AC C0 E0            [24]  750 	push	acc
      0002AE 12 3E BF         [24]  751 	lcall	_printf
      0002B1 E5 81            [12]  752 	mov	a,sp
      0002B3 24 F8            [12]  753 	add	a,#0xf8
      0002B5 F5 81            [12]  754 	mov	sp,a
      0002B7 74 17            [12]  755 	mov	a,#___str_7
      0002B9 C0 E0            [24]  756 	push	acc
      0002BB 74 4B            [12]  757 	mov	a,#(___str_7 >> 8)
      0002BD C0 E0            [24]  758 	push	acc
      0002BF 12 3B B6         [24]  759 	lcall	_printf_tiny
      0002C2 15 81            [12]  760 	dec	sp
      0002C4 15 81            [12]  761 	dec	sp
      0002C6 D0 04            [24]  762 	pop	ar4
                                    763 ;	src/datareceiver.c:88: while(input[idx] != '#')
      0002C8 90 00 1C         [24]  764 	mov	dptr,#_readBiodata_input_65536_49
      0002CB E0               [24]  765 	movx	a,@dptr
      0002CC FD               [12]  766 	mov	r5,a
      0002CD A3               [24]  767 	inc	dptr
      0002CE E0               [24]  768 	movx	a,@dptr
      0002CF FE               [12]  769 	mov	r6,a
      0002D0 A3               [24]  770 	inc	dptr
      0002D1 E0               [24]  771 	movx	a,@dptr
      0002D2 FF               [12]  772 	mov	r7,a
      0002D3                        773 00107$:
      0002D3 EC               [12]  774 	mov	a,r4
      0002D4 2D               [12]  775 	add	a,r5
      0002D5 F9               [12]  776 	mov	r1,a
      0002D6 E4               [12]  777 	clr	a
      0002D7 3E               [12]  778 	addc	a,r6
      0002D8 FA               [12]  779 	mov	r2,a
      0002D9 8F 03            [24]  780 	mov	ar3,r7
      0002DB 89 82            [24]  781 	mov	dpl,r1
      0002DD 8A 83            [24]  782 	mov	dph,r2
      0002DF 8B F0            [24]  783 	mov	b,r3
      0002E1 12 49 AE         [24]  784 	lcall	__gptrget
      0002E4 FB               [12]  785 	mov	r3,a
      0002E5 BB 23 02         [24]  786 	cjne	r3,#0x23,00153$
      0002E8 80 12            [24]  787 	sjmp	00109$
      0002EA                        788 00153$:
                                    789 ;	src/datareceiver.c:90: uint8_t digit = input[idx] - '0';
      0002EA EB               [12]  790 	mov	a,r3
      0002EB 24 D0            [12]  791 	add	a,#0xd0
      0002ED FB               [12]  792 	mov	r3,a
                                    793 ;	src/datareceiver.c:92: spo2 = spo2*10 + digit;
      0002EE 90 00 21         [24]  794 	mov	dptr,#_readBiodata_spo2_65536_50
      0002F1 E0               [24]  795 	movx	a,@dptr
      0002F2 75 F0 0A         [24]  796 	mov	b,#0x0a
      0002F5 A4               [48]  797 	mul	ab
      0002F6 FA               [12]  798 	mov	r2,a
      0002F7 2B               [12]  799 	add	a,r3
      0002F8 F0               [24]  800 	movx	@dptr,a
                                    801 ;	src/datareceiver.c:93: idx++;
      0002F9 0C               [12]  802 	inc	r4
      0002FA 80 D7            [24]  803 	sjmp	00107$
      0002FC                        804 00109$:
                                    805 ;	src/datareceiver.c:95: idx++;
      0002FC 0C               [12]  806 	inc	r4
                                    807 ;	src/datareceiver.c:96: INFO_LOG("%s: SPO2 = %d", __func__, spo2);
      0002FD 90 00 21         [24]  808 	mov	dptr,#_readBiodata_spo2_65536_50
      000300 E0               [24]  809 	movx	a,@dptr
      000301 FF               [12]  810 	mov	r7,a
      000302 7E 00            [12]  811 	mov	r6,#0x00
      000304 C0 04            [24]  812 	push	ar4
      000306 C0 07            [24]  813 	push	ar7
      000308 C0 06            [24]  814 	push	ar6
      00030A 74 0B            [12]  815 	mov	a,#___str_6
      00030C C0 E0            [24]  816 	push	acc
      00030E 74 4B            [12]  817 	mov	a,#(___str_6 >> 8)
      000310 C0 E0            [24]  818 	push	acc
      000312 74 80            [12]  819 	mov	a,#0x80
      000314 C0 E0            [24]  820 	push	acc
      000316 74 36            [12]  821 	mov	a,#___str_9
      000318 C0 E0            [24]  822 	push	acc
      00031A 74 4B            [12]  823 	mov	a,#(___str_9 >> 8)
      00031C C0 E0            [24]  824 	push	acc
      00031E 74 80            [12]  825 	mov	a,#0x80
      000320 C0 E0            [24]  826 	push	acc
      000322 12 3E BF         [24]  827 	lcall	_printf
      000325 E5 81            [12]  828 	mov	a,sp
      000327 24 F8            [12]  829 	add	a,#0xf8
      000329 F5 81            [12]  830 	mov	sp,a
      00032B 74 17            [12]  831 	mov	a,#___str_7
      00032D C0 E0            [24]  832 	push	acc
      00032F 74 4B            [12]  833 	mov	a,#(___str_7 >> 8)
      000331 C0 E0            [24]  834 	push	acc
      000333 12 3B B6         [24]  835 	lcall	_printf_tiny
      000336 15 81            [12]  836 	dec	sp
      000338 15 81            [12]  837 	dec	sp
      00033A D0 04            [24]  838 	pop	ar4
                                    839 ;	src/datareceiver.c:98: while(input[idx] != '#')
      00033C 90 00 1C         [24]  840 	mov	dptr,#_readBiodata_input_65536_49
      00033F E0               [24]  841 	movx	a,@dptr
      000340 FD               [12]  842 	mov	r5,a
      000341 A3               [24]  843 	inc	dptr
      000342 E0               [24]  844 	movx	a,@dptr
      000343 FE               [12]  845 	mov	r6,a
      000344 A3               [24]  846 	inc	dptr
      000345 E0               [24]  847 	movx	a,@dptr
      000346 FF               [12]  848 	mov	r7,a
      000347                        849 00110$:
      000347 EC               [12]  850 	mov	a,r4
      000348 2D               [12]  851 	add	a,r5
      000349 F9               [12]  852 	mov	r1,a
      00034A E4               [12]  853 	clr	a
      00034B 3E               [12]  854 	addc	a,r6
      00034C FA               [12]  855 	mov	r2,a
      00034D 8F 03            [24]  856 	mov	ar3,r7
      00034F 89 82            [24]  857 	mov	dpl,r1
      000351 8A 83            [24]  858 	mov	dph,r2
      000353 8B F0            [24]  859 	mov	b,r3
      000355 12 49 AE         [24]  860 	lcall	__gptrget
      000358 FB               [12]  861 	mov	r3,a
      000359 BB 23 02         [24]  862 	cjne	r3,#0x23,00154$
      00035C 80 12            [24]  863 	sjmp	00112$
      00035E                        864 00154$:
                                    865 ;	src/datareceiver.c:100: uint8_t digit = input[idx] - '0';
      00035E EB               [12]  866 	mov	a,r3
      00035F 24 D0            [12]  867 	add	a,#0xd0
      000361 FB               [12]  868 	mov	r3,a
                                    869 ;	src/datareceiver.c:101: irled = irled*10 + digit;
      000362 90 00 22         [24]  870 	mov	dptr,#_readBiodata_irled_65536_50
      000365 E0               [24]  871 	movx	a,@dptr
      000366 75 F0 0A         [24]  872 	mov	b,#0x0a
      000369 A4               [48]  873 	mul	ab
      00036A FA               [12]  874 	mov	r2,a
      00036B 2B               [12]  875 	add	a,r3
      00036C F0               [24]  876 	movx	@dptr,a
                                    877 ;	src/datareceiver.c:102: idx++;
      00036D 0C               [12]  878 	inc	r4
      00036E 80 D7            [24]  879 	sjmp	00110$
      000370                        880 00112$:
                                    881 ;	src/datareceiver.c:104: INFO_LOG("%s: IRLED = %d", __func__, irled);
      000370 90 00 22         [24]  882 	mov	dptr,#_readBiodata_irled_65536_50
      000373 E0               [24]  883 	movx	a,@dptr
      000374 FF               [12]  884 	mov	r7,a
      000375 FD               [12]  885 	mov	r5,a
      000376 7E 00            [12]  886 	mov	r6,#0x00
      000378 C0 07            [24]  887 	push	ar7
      00037A C0 05            [24]  888 	push	ar5
      00037C C0 06            [24]  889 	push	ar6
      00037E 74 0B            [12]  890 	mov	a,#___str_6
      000380 C0 E0            [24]  891 	push	acc
      000382 74 4B            [12]  892 	mov	a,#(___str_6 >> 8)
      000384 C0 E0            [24]  893 	push	acc
      000386 74 80            [12]  894 	mov	a,#0x80
      000388 C0 E0            [24]  895 	push	acc
      00038A 74 51            [12]  896 	mov	a,#___str_10
      00038C C0 E0            [24]  897 	push	acc
      00038E 74 4B            [12]  898 	mov	a,#(___str_10 >> 8)
      000390 C0 E0            [24]  899 	push	acc
      000392 74 80            [12]  900 	mov	a,#0x80
      000394 C0 E0            [24]  901 	push	acc
      000396 12 3E BF         [24]  902 	lcall	_printf
      000399 E5 81            [12]  903 	mov	a,sp
      00039B 24 F8            [12]  904 	add	a,#0xf8
      00039D F5 81            [12]  905 	mov	sp,a
      00039F 74 17            [12]  906 	mov	a,#___str_7
      0003A1 C0 E0            [24]  907 	push	acc
      0003A3 74 4B            [12]  908 	mov	a,#(___str_7 >> 8)
      0003A5 C0 E0            [24]  909 	push	acc
      0003A7 12 3B B6         [24]  910 	lcall	_printf_tiny
      0003AA 15 81            [12]  911 	dec	sp
      0003AC 15 81            [12]  912 	dec	sp
      0003AE D0 07            [24]  913 	pop	ar7
                                    914 ;	src/datareceiver.c:106: data->status = status;
      0003B0 90 00 19         [24]  915 	mov	dptr,#_readBiodata_PARM_2
      0003B3 E0               [24]  916 	movx	a,@dptr
      0003B4 FC               [12]  917 	mov	r4,a
      0003B5 A3               [24]  918 	inc	dptr
      0003B6 E0               [24]  919 	movx	a,@dptr
      0003B7 FD               [12]  920 	mov	r5,a
      0003B8 A3               [24]  921 	inc	dptr
      0003B9 E0               [24]  922 	movx	a,@dptr
      0003BA FE               [12]  923 	mov	r6,a
      0003BB 90 00 1F         [24]  924 	mov	dptr,#_readBiodata_status_65536_50
      0003BE E0               [24]  925 	movx	a,@dptr
      0003BF 8C 82            [24]  926 	mov	dpl,r4
      0003C1 8D 83            [24]  927 	mov	dph,r5
      0003C3 8E F0            [24]  928 	mov	b,r6
      0003C5 12 3B 9B         [24]  929 	lcall	__gptrput
                                    930 ;	src/datareceiver.c:107: data->bpm = bpm;
      0003C8 74 01            [12]  931 	mov	a,#0x01
      0003CA 2C               [12]  932 	add	a,r4
      0003CB F9               [12]  933 	mov	r1,a
      0003CC E4               [12]  934 	clr	a
      0003CD 3D               [12]  935 	addc	a,r5
      0003CE FA               [12]  936 	mov	r2,a
      0003CF 8E 03            [24]  937 	mov	ar3,r6
      0003D1 90 00 20         [24]  938 	mov	dptr,#_readBiodata_bpm_65536_50
      0003D4 E0               [24]  939 	movx	a,@dptr
      0003D5 89 82            [24]  940 	mov	dpl,r1
      0003D7 8A 83            [24]  941 	mov	dph,r2
      0003D9 8B F0            [24]  942 	mov	b,r3
      0003DB 12 3B 9B         [24]  943 	lcall	__gptrput
                                    944 ;	src/datareceiver.c:108: data->spo2 = spo2;
      0003DE 74 02            [12]  945 	mov	a,#0x02
      0003E0 2C               [12]  946 	add	a,r4
      0003E1 F9               [12]  947 	mov	r1,a
      0003E2 E4               [12]  948 	clr	a
      0003E3 3D               [12]  949 	addc	a,r5
      0003E4 FA               [12]  950 	mov	r2,a
      0003E5 8E 03            [24]  951 	mov	ar3,r6
      0003E7 90 00 21         [24]  952 	mov	dptr,#_readBiodata_spo2_65536_50
      0003EA E0               [24]  953 	movx	a,@dptr
      0003EB 89 82            [24]  954 	mov	dpl,r1
      0003ED 8A 83            [24]  955 	mov	dph,r2
      0003EF 8B F0            [24]  956 	mov	b,r3
      0003F1 12 3B 9B         [24]  957 	lcall	__gptrput
                                    958 ;	src/datareceiver.c:109: data->irled = irled;
      0003F4 74 03            [12]  959 	mov	a,#0x03
      0003F6 2C               [12]  960 	add	a,r4
      0003F7 FC               [12]  961 	mov	r4,a
      0003F8 E4               [12]  962 	clr	a
      0003F9 3D               [12]  963 	addc	a,r5
      0003FA FD               [12]  964 	mov	r5,a
      0003FB 8C 82            [24]  965 	mov	dpl,r4
      0003FD 8D 83            [24]  966 	mov	dph,r5
      0003FF 8E F0            [24]  967 	mov	b,r6
      000401 EF               [12]  968 	mov	a,r7
                                    969 ;	src/datareceiver.c:110: }
      000402 02 3B 9B         [24]  970 	ljmp	__gptrput
                                    971 	.area CSEG    (CODE)
                                    972 	.area CONST   (CODE)
                                    973 	.area CONST   (CODE)
      004AB1                        974 ___str_0:
      004AB1 4E 4F 20 52 45 41 44   975 	.ascii "NO READING"
             49 4E 47
      004ABB 00                     976 	.db 0x00
                                    977 	.area CSEG    (CODE)
                                    978 	.area CONST   (CODE)
      004ABC                        979 ___str_1:
      004ABC 4E 4F 54 20 52 45 41   980 	.ascii "NOT READY"
             44 59
      004AC5 00                     981 	.db 0x00
                                    982 	.area CSEG    (CODE)
                                    983 	.area CONST   (CODE)
      004AC6                        984 ___str_2:
      004AC6 4F 42 4A 45 43 54 20   985 	.ascii "OBJECT DETECTED"
             44 45 54 45 43 54 45
             44
      004AD5 00                     986 	.db 0x00
                                    987 	.area CSEG    (CODE)
                                    988 	.area CONST   (CODE)
      004AD6                        989 ___str_3:
      004AD6 46 49 4E 47 45 52 20   990 	.ascii "FINGER DETECTED"
             44 45 54 45 43 54 45
             44
      004AE5 00                     991 	.db 0x00
                                    992 	.area CSEG    (CODE)
                                    993 	.area CONST   (CODE)
      004AE6                        994 ___str_4:
      004AE6 55 4E 4B 4E 4F 57 4E   995 	.ascii "UNKNOWN"
      004AED 00                     996 	.db 0x00
                                    997 	.area CSEG    (CODE)
                                    998 	.area CONST   (CODE)
      004AEE                        999 ___str_5:
      004AEE 0A                    1000 	.db 0x0a
      004AEF 0D                    1001 	.db 0x0d
      004AF0 1B                    1002 	.db 0x1b
      004AF1 5B 33 38 3B 35 3B 32  1003 	.ascii "[38;5;214m%s: Status = %d"
             31 34 6D 25 73 3A 20
             53 74 61 74 75 73 20
             3D 20 25 64
      004B0A 00                    1004 	.db 0x00
                                   1005 	.area CSEG    (CODE)
                                   1006 	.area CONST   (CODE)
      004B0B                       1007 ___str_6:
      004B0B 72 65 61 64 42 69 6F  1008 	.ascii "readBiodata"
             64 61 74 61
      004B16 00                    1009 	.db 0x00
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
      004B17                       1012 ___str_7:
      004B17 1B                    1013 	.db 0x1b
      004B18 5B 30 6D              1014 	.ascii "[0m"
      004B1B 00                    1015 	.db 0x00
                                   1016 	.area CSEG    (CODE)
                                   1017 	.area CONST   (CODE)
      004B1C                       1018 ___str_8:
      004B1C 0A                    1019 	.db 0x0a
      004B1D 0D                    1020 	.db 0x0d
      004B1E 1B                    1021 	.db 0x1b
      004B1F 5B 33 38 3B 35 3B 32  1022 	.ascii "[38;5;214m%s: BPM = %d"
             31 34 6D 25 73 3A 20
             42 50 4D 20 3D 20 25
             64
      004B35 00                    1023 	.db 0x00
                                   1024 	.area CSEG    (CODE)
                                   1025 	.area CONST   (CODE)
      004B36                       1026 ___str_9:
      004B36 0A                    1027 	.db 0x0a
      004B37 0D                    1028 	.db 0x0d
      004B38 1B                    1029 	.db 0x1b
      004B39 5B 33 38 3B 35 3B 32  1030 	.ascii "[38;5;214m%s: SPO2 = %d"
             31 34 6D 25 73 3A 20
             53 50 4F 32 20 3D 20
             25 64
      004B50 00                    1031 	.db 0x00
                                   1032 	.area CSEG    (CODE)
                                   1033 	.area CONST   (CODE)
      004B51                       1034 ___str_10:
      004B51 0A                    1035 	.db 0x0a
      004B52 0D                    1036 	.db 0x0d
      004B53 1B                    1037 	.db 0x1b
      004B54 5B 33 38 3B 35 3B 32  1038 	.ascii "[38;5;214m%s: IRLED = %d"
             31 34 6D 25 73 3A 20
             49 52 4C 45 44 20 3D
             20 25 64
      004B6C 00                    1039 	.db 0x00
                                   1040 	.area CSEG    (CODE)
                                   1041 	.area XINIT   (CODE)
                                   1042 	.area CABS    (ABS,CODE)
