                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 23 17:14:08 2015
                              5 ;--------------------------------------------------------
                              6 	.module ledbar
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _LedBar
                             13 	.globl _LBarInit
                             14 	.globl _CCF0
                             15 	.globl _CCF1
                             16 	.globl _CCF2
                             17 	.globl _CCF3
                             18 	.globl _CCF4
                             19 	.globl _CR
                             20 	.globl _CF
                             21 	.globl _ECAN
                             22 	.globl _EADC
                             23 	.globl _ETIM
                             24 	.globl _ESPI
                             25 	.globl _EX0
                             26 	.globl _ET0
                             27 	.globl _EX1
                             28 	.globl _ET1
                             29 	.globl _ES
                             30 	.globl _ET2
                             31 	.globl _EC
                             32 	.globl _EA
                             33 	.globl _RI
                             34 	.globl _TI
                             35 	.globl _RB8
                             36 	.globl _TB8
                             37 	.globl _REN
                             38 	.globl _SM2
                             39 	.globl _SM1
                             40 	.globl _FE
                             41 	.globl _SM0
                             42 	.globl _CP_RL2
                             43 	.globl _C_T2
                             44 	.globl _TR2
                             45 	.globl _EXEN2
                             46 	.globl _TCLK
                             47 	.globl _RCLK
                             48 	.globl _EXF2
                             49 	.globl _TF2
                             50 	.globl _IT0
                             51 	.globl _IE0
                             52 	.globl _IT1
                             53 	.globl _IE1
                             54 	.globl _TR0
                             55 	.globl _TF0
                             56 	.globl _TR1
                             57 	.globl _TF1
                             58 	.globl _ACC_7
                             59 	.globl _ACC_6
                             60 	.globl _ACC_5
                             61 	.globl _ACC_4
                             62 	.globl _ACC_3
                             63 	.globl _ACC_2
                             64 	.globl _ACC_1
                             65 	.globl _ACC_0
                             66 	.globl _P
                             67 	.globl _UD
                             68 	.globl _OV
                             69 	.globl _RS0
                             70 	.globl _RS1
                             71 	.globl _F0
                             72 	.globl _AC
                             73 	.globl _CY
                             74 	.globl _P4_7
                             75 	.globl _P4_6
                             76 	.globl _P4_5
                             77 	.globl _P4_4
                             78 	.globl _P4_3
                             79 	.globl _P4_2
                             80 	.globl _P4_1
                             81 	.globl _P4_0
                             82 	.globl _RXD
                             83 	.globl _TXD
                             84 	.globl _INT0
                             85 	.globl _INT1
                             86 	.globl _T0
                             87 	.globl _T1
                             88 	.globl _WR
                             89 	.globl _RD
                             90 	.globl _P3_0
                             91 	.globl _P3_1
                             92 	.globl _P3_2
                             93 	.globl _P3_3
                             94 	.globl _P3_4
                             95 	.globl _P3_5
                             96 	.globl _P3_6
                             97 	.globl _P3_7
                             98 	.globl _P2_0
                             99 	.globl _P2_1
                            100 	.globl _P2_2
                            101 	.globl _P2_3
                            102 	.globl _P2_4
                            103 	.globl _P2_5
                            104 	.globl _P2_6
                            105 	.globl _P2_7
                            106 	.globl _P1_0
                            107 	.globl _P1_1
                            108 	.globl _P1_2
                            109 	.globl _P1_3
                            110 	.globl _P1_4
                            111 	.globl _P1_5
                            112 	.globl _P1_6
                            113 	.globl _P1_7
                            114 	.globl _P0_0
                            115 	.globl _P0_1
                            116 	.globl _P0_2
                            117 	.globl _P0_3
                            118 	.globl _P0_4
                            119 	.globl _P0_5
                            120 	.globl _P0_6
                            121 	.globl _P0_7
                            122 	.globl _SPDAT
                            123 	.globl _SPSCR
                            124 	.globl _SPCON
                            125 	.globl _CANEN2
                            126 	.globl _CANEN1
                            127 	.globl _CANIDM4
                            128 	.globl _CANIDM3
                            129 	.globl _CANIDM2
                            130 	.globl _CANIDM1
                            131 	.globl _CANIE2
                            132 	.globl _CANIE1
                            133 	.globl _CANGIE
                            134 	.globl _CANIDT4
                            135 	.globl _CANIDT3
                            136 	.globl _CANIDT2
                            137 	.globl _CANIDT1
                            138 	.globl _CANSIT2
                            139 	.globl _CANSIT1
                            140 	.globl _CANBT3
                            141 	.globl _CANBT2
                            142 	.globl _CANBT1
                            143 	.globl _CANCONCH
                            144 	.globl _CANSTCH
                            145 	.globl _CANPAGE
                            146 	.globl _CANSTMPH
                            147 	.globl _CANSTMPL
                            148 	.globl _CANTIMH
                            149 	.globl _CANTIML
                            150 	.globl _CANGCON
                            151 	.globl _CANGSTA
                            152 	.globl _CANTTCH
                            153 	.globl _CANTTCL
                            154 	.globl _CANMSG
                            155 	.globl _CANTCON
                            156 	.globl _CANREC
                            157 	.globl _CANTEC
                            158 	.globl _CANGIT
                            159 	.globl _CCAPM4
                            160 	.globl _CCAP4L
                            161 	.globl _CCAP4H
                            162 	.globl _CCAPM3
                            163 	.globl _CCAP3L
                            164 	.globl _CCAP3H
                            165 	.globl _CCAPM2
                            166 	.globl _CCAP2L
                            167 	.globl _CCAP2H
                            168 	.globl _CCAPM1
                            169 	.globl _CCAP1L
                            170 	.globl _CCAP1H
                            171 	.globl _CCAPM0
                            172 	.globl _CCAP0L
                            173 	.globl _CCAP0H
                            174 	.globl _CL
                            175 	.globl _CH
                            176 	.globl _CMOD
                            177 	.globl _CCON
                            178 	.globl _IEN1
                            179 	.globl _IPH0
                            180 	.globl _IPL0
                            181 	.globl _IE
                            182 	.globl _IEN
                            183 	.globl _IEN0
                            184 	.globl _IPH1
                            185 	.globl _IPL1
                            186 	.globl _AUXR1
                            187 	.globl _AUXR
                            188 	.globl _EECON
                            189 	.globl _FSTA
                            190 	.globl _FCON
                            191 	.globl _ADCF
                            192 	.globl _ADDH
                            193 	.globl _ADDL
                            194 	.globl _ADCON
                            195 	.globl _ADCLK
                            196 	.globl _SADDR
                            197 	.globl _SADEN
                            198 	.globl _SBUF
                            199 	.globl _SCON
                            200 	.globl _WDTPRG
                            201 	.globl _WDTRST
                            202 	.globl _RCAP2H
                            203 	.globl _RCAP2L
                            204 	.globl _TH2
                            205 	.globl _TH1
                            206 	.globl _TH0
                            207 	.globl _TL2
                            208 	.globl _TL1
                            209 	.globl _TL0
                            210 	.globl _T2MOD
                            211 	.globl _T2CON
                            212 	.globl _TMOD
                            213 	.globl _TCON
                            214 	.globl _CKCON1
                            215 	.globl _CKCON0
                            216 	.globl _CKCON
                            217 	.globl _PCON
                            218 	.globl _DPTR
                            219 	.globl _DPH
                            220 	.globl _DPL
                            221 	.globl _SP
                            222 	.globl _B
                            223 	.globl _ACC
                            224 	.globl _PSW
                            225 	.globl _P4
                            226 	.globl _P3
                            227 	.globl _P2
                            228 	.globl _P1
                            229 	.globl _P0
                            230 ;--------------------------------------------------------
                            231 ; special function registers
                            232 ;--------------------------------------------------------
                            233 	.area RSEG    (ABS,DATA)
   0000                     234 	.org 0x0000
                    0080    235 G$P0$0$0 == 0x0080
                    0080    236 _P0	=	0x0080
                    0090    237 G$P1$0$0 == 0x0090
                    0090    238 _P1	=	0x0090
                    00A0    239 G$P2$0$0 == 0x00a0
                    00A0    240 _P2	=	0x00a0
                    00B0    241 G$P3$0$0 == 0x00b0
                    00B0    242 _P3	=	0x00b0
                    00C0    243 G$P4$0$0 == 0x00c0
                    00C0    244 _P4	=	0x00c0
                    00D0    245 G$PSW$0$0 == 0x00d0
                    00D0    246 _PSW	=	0x00d0
                    00E0    247 G$ACC$0$0 == 0x00e0
                    00E0    248 _ACC	=	0x00e0
                    00F0    249 G$B$0$0 == 0x00f0
                    00F0    250 _B	=	0x00f0
                    0081    251 G$SP$0$0 == 0x0081
                    0081    252 _SP	=	0x0081
                    0082    253 G$DPL$0$0 == 0x0082
                    0082    254 _DPL	=	0x0082
                    0083    255 G$DPH$0$0 == 0x0083
                    0083    256 _DPH	=	0x0083
                    8382    257 G$DPTR$0$0 == 0x8382
                    8382    258 _DPTR	=	0x8382
                    0087    259 G$PCON$0$0 == 0x0087
                    0087    260 _PCON	=	0x0087
                    008F    261 G$CKCON$0$0 == 0x008f
                    008F    262 _CKCON	=	0x008f
                    008F    263 G$CKCON0$0$0 == 0x008f
                    008F    264 _CKCON0	=	0x008f
                    009F    265 G$CKCON1$0$0 == 0x009f
                    009F    266 _CKCON1	=	0x009f
                    0088    267 G$TCON$0$0 == 0x0088
                    0088    268 _TCON	=	0x0088
                    0089    269 G$TMOD$0$0 == 0x0089
                    0089    270 _TMOD	=	0x0089
                    00C8    271 G$T2CON$0$0 == 0x00c8
                    00C8    272 _T2CON	=	0x00c8
                    00C9    273 G$T2MOD$0$0 == 0x00c9
                    00C9    274 _T2MOD	=	0x00c9
                    008A    275 G$TL0$0$0 == 0x008a
                    008A    276 _TL0	=	0x008a
                    008B    277 G$TL1$0$0 == 0x008b
                    008B    278 _TL1	=	0x008b
                    00CC    279 G$TL2$0$0 == 0x00cc
                    00CC    280 _TL2	=	0x00cc
                    008C    281 G$TH0$0$0 == 0x008c
                    008C    282 _TH0	=	0x008c
                    008D    283 G$TH1$0$0 == 0x008d
                    008D    284 _TH1	=	0x008d
                    00CD    285 G$TH2$0$0 == 0x00cd
                    00CD    286 _TH2	=	0x00cd
                    00CA    287 G$RCAP2L$0$0 == 0x00ca
                    00CA    288 _RCAP2L	=	0x00ca
                    00CB    289 G$RCAP2H$0$0 == 0x00cb
                    00CB    290 _RCAP2H	=	0x00cb
                    00A6    291 G$WDTRST$0$0 == 0x00a6
                    00A6    292 _WDTRST	=	0x00a6
                    00A7    293 G$WDTPRG$0$0 == 0x00a7
                    00A7    294 _WDTPRG	=	0x00a7
                    0098    295 G$SCON$0$0 == 0x0098
                    0098    296 _SCON	=	0x0098
                    0099    297 G$SBUF$0$0 == 0x0099
                    0099    298 _SBUF	=	0x0099
                    00B9    299 G$SADEN$0$0 == 0x00b9
                    00B9    300 _SADEN	=	0x00b9
                    00A9    301 G$SADDR$0$0 == 0x00a9
                    00A9    302 _SADDR	=	0x00a9
                    00F2    303 G$ADCLK$0$0 == 0x00f2
                    00F2    304 _ADCLK	=	0x00f2
                    00F3    305 G$ADCON$0$0 == 0x00f3
                    00F3    306 _ADCON	=	0x00f3
                    00F4    307 G$ADDL$0$0 == 0x00f4
                    00F4    308 _ADDL	=	0x00f4
                    00F5    309 G$ADDH$0$0 == 0x00f5
                    00F5    310 _ADDH	=	0x00f5
                    00F6    311 G$ADCF$0$0 == 0x00f6
                    00F6    312 _ADCF	=	0x00f6
                    00D1    313 G$FCON$0$0 == 0x00d1
                    00D1    314 _FCON	=	0x00d1
                    00D3    315 G$FSTA$0$0 == 0x00d3
                    00D3    316 _FSTA	=	0x00d3
                    00D2    317 G$EECON$0$0 == 0x00d2
                    00D2    318 _EECON	=	0x00d2
                    008E    319 G$AUXR$0$0 == 0x008e
                    008E    320 _AUXR	=	0x008e
                    00A2    321 G$AUXR1$0$0 == 0x00a2
                    00A2    322 _AUXR1	=	0x00a2
                    00F8    323 G$IPL1$0$0 == 0x00f8
                    00F8    324 _IPL1	=	0x00f8
                    00F7    325 G$IPH1$0$0 == 0x00f7
                    00F7    326 _IPH1	=	0x00f7
                    00A8    327 G$IEN0$0$0 == 0x00a8
                    00A8    328 _IEN0	=	0x00a8
                    00A8    329 G$IEN$0$0 == 0x00a8
                    00A8    330 _IEN	=	0x00a8
                    00A8    331 G$IE$0$0 == 0x00a8
                    00A8    332 _IE	=	0x00a8
                    00B8    333 G$IPL0$0$0 == 0x00b8
                    00B8    334 _IPL0	=	0x00b8
                    00B7    335 G$IPH0$0$0 == 0x00b7
                    00B7    336 _IPH0	=	0x00b7
                    00E8    337 G$IEN1$0$0 == 0x00e8
                    00E8    338 _IEN1	=	0x00e8
                    00D8    339 G$CCON$0$0 == 0x00d8
                    00D8    340 _CCON	=	0x00d8
                    00D9    341 G$CMOD$0$0 == 0x00d9
                    00D9    342 _CMOD	=	0x00d9
                    00F9    343 G$CH$0$0 == 0x00f9
                    00F9    344 _CH	=	0x00f9
                    00E9    345 G$CL$0$0 == 0x00e9
                    00E9    346 _CL	=	0x00e9
                    00FA    347 G$CCAP0H$0$0 == 0x00fa
                    00FA    348 _CCAP0H	=	0x00fa
                    00EA    349 G$CCAP0L$0$0 == 0x00ea
                    00EA    350 _CCAP0L	=	0x00ea
                    00DA    351 G$CCAPM0$0$0 == 0x00da
                    00DA    352 _CCAPM0	=	0x00da
                    00FB    353 G$CCAP1H$0$0 == 0x00fb
                    00FB    354 _CCAP1H	=	0x00fb
                    00EB    355 G$CCAP1L$0$0 == 0x00eb
                    00EB    356 _CCAP1L	=	0x00eb
                    00DB    357 G$CCAPM1$0$0 == 0x00db
                    00DB    358 _CCAPM1	=	0x00db
                    00FC    359 G$CCAP2H$0$0 == 0x00fc
                    00FC    360 _CCAP2H	=	0x00fc
                    00EC    361 G$CCAP2L$0$0 == 0x00ec
                    00EC    362 _CCAP2L	=	0x00ec
                    00DC    363 G$CCAPM2$0$0 == 0x00dc
                    00DC    364 _CCAPM2	=	0x00dc
                    00FD    365 G$CCAP3H$0$0 == 0x00fd
                    00FD    366 _CCAP3H	=	0x00fd
                    00ED    367 G$CCAP3L$0$0 == 0x00ed
                    00ED    368 _CCAP3L	=	0x00ed
                    00DD    369 G$CCAPM3$0$0 == 0x00dd
                    00DD    370 _CCAPM3	=	0x00dd
                    00FE    371 G$CCAP4H$0$0 == 0x00fe
                    00FE    372 _CCAP4H	=	0x00fe
                    00EE    373 G$CCAP4L$0$0 == 0x00ee
                    00EE    374 _CCAP4L	=	0x00ee
                    00DE    375 G$CCAPM4$0$0 == 0x00de
                    00DE    376 _CCAPM4	=	0x00de
                    009B    377 G$CANGIT$0$0 == 0x009b
                    009B    378 _CANGIT	=	0x009b
                    009C    379 G$CANTEC$0$0 == 0x009c
                    009C    380 _CANTEC	=	0x009c
                    009D    381 G$CANREC$0$0 == 0x009d
                    009D    382 _CANREC	=	0x009d
                    00A1    383 G$CANTCON$0$0 == 0x00a1
                    00A1    384 _CANTCON	=	0x00a1
                    00A3    385 G$CANMSG$0$0 == 0x00a3
                    00A3    386 _CANMSG	=	0x00a3
                    00A4    387 G$CANTTCL$0$0 == 0x00a4
                    00A4    388 _CANTTCL	=	0x00a4
                    00A5    389 G$CANTTCH$0$0 == 0x00a5
                    00A5    390 _CANTTCH	=	0x00a5
                    00AA    391 G$CANGSTA$0$0 == 0x00aa
                    00AA    392 _CANGSTA	=	0x00aa
                    00AB    393 G$CANGCON$0$0 == 0x00ab
                    00AB    394 _CANGCON	=	0x00ab
                    00AC    395 G$CANTIML$0$0 == 0x00ac
                    00AC    396 _CANTIML	=	0x00ac
                    00AD    397 G$CANTIMH$0$0 == 0x00ad
                    00AD    398 _CANTIMH	=	0x00ad
                    00AE    399 G$CANSTMPL$0$0 == 0x00ae
                    00AE    400 _CANSTMPL	=	0x00ae
                    00AF    401 G$CANSTMPH$0$0 == 0x00af
                    00AF    402 _CANSTMPH	=	0x00af
                    00B1    403 G$CANPAGE$0$0 == 0x00b1
                    00B1    404 _CANPAGE	=	0x00b1
                    00B2    405 G$CANSTCH$0$0 == 0x00b2
                    00B2    406 _CANSTCH	=	0x00b2
                    00B3    407 G$CANCONCH$0$0 == 0x00b3
                    00B3    408 _CANCONCH	=	0x00b3
                    00B4    409 G$CANBT1$0$0 == 0x00b4
                    00B4    410 _CANBT1	=	0x00b4
                    00B5    411 G$CANBT2$0$0 == 0x00b5
                    00B5    412 _CANBT2	=	0x00b5
                    00B6    413 G$CANBT3$0$0 == 0x00b6
                    00B6    414 _CANBT3	=	0x00b6
                    00BA    415 G$CANSIT1$0$0 == 0x00ba
                    00BA    416 _CANSIT1	=	0x00ba
                    00BB    417 G$CANSIT2$0$0 == 0x00bb
                    00BB    418 _CANSIT2	=	0x00bb
                    00BC    419 G$CANIDT1$0$0 == 0x00bc
                    00BC    420 _CANIDT1	=	0x00bc
                    00BD    421 G$CANIDT2$0$0 == 0x00bd
                    00BD    422 _CANIDT2	=	0x00bd
                    00BE    423 G$CANIDT3$0$0 == 0x00be
                    00BE    424 _CANIDT3	=	0x00be
                    00BF    425 G$CANIDT4$0$0 == 0x00bf
                    00BF    426 _CANIDT4	=	0x00bf
                    00C1    427 G$CANGIE$0$0 == 0x00c1
                    00C1    428 _CANGIE	=	0x00c1
                    00C2    429 G$CANIE1$0$0 == 0x00c2
                    00C2    430 _CANIE1	=	0x00c2
                    00C3    431 G$CANIE2$0$0 == 0x00c3
                    00C3    432 _CANIE2	=	0x00c3
                    00C4    433 G$CANIDM1$0$0 == 0x00c4
                    00C4    434 _CANIDM1	=	0x00c4
                    00C5    435 G$CANIDM2$0$0 == 0x00c5
                    00C5    436 _CANIDM2	=	0x00c5
                    00C6    437 G$CANIDM3$0$0 == 0x00c6
                    00C6    438 _CANIDM3	=	0x00c6
                    00C7    439 G$CANIDM4$0$0 == 0x00c7
                    00C7    440 _CANIDM4	=	0x00c7
                    00CE    441 G$CANEN1$0$0 == 0x00ce
                    00CE    442 _CANEN1	=	0x00ce
                    00CF    443 G$CANEN2$0$0 == 0x00cf
                    00CF    444 _CANEN2	=	0x00cf
                    00D4    445 G$SPCON$0$0 == 0x00d4
                    00D4    446 _SPCON	=	0x00d4
                    00D5    447 G$SPSCR$0$0 == 0x00d5
                    00D5    448 _SPSCR	=	0x00d5
                    00D6    449 G$SPDAT$0$0 == 0x00d6
                    00D6    450 _SPDAT	=	0x00d6
                            451 ;--------------------------------------------------------
                            452 ; special function bits
                            453 ;--------------------------------------------------------
                            454 	.area RSEG    (ABS,DATA)
   0000                     455 	.org 0x0000
                    0087    456 G$P0_7$0$0 == 0x0087
                    0087    457 _P0_7	=	0x0087
                    0086    458 G$P0_6$0$0 == 0x0086
                    0086    459 _P0_6	=	0x0086
                    0085    460 G$P0_5$0$0 == 0x0085
                    0085    461 _P0_5	=	0x0085
                    0084    462 G$P0_4$0$0 == 0x0084
                    0084    463 _P0_4	=	0x0084
                    0083    464 G$P0_3$0$0 == 0x0083
                    0083    465 _P0_3	=	0x0083
                    0082    466 G$P0_2$0$0 == 0x0082
                    0082    467 _P0_2	=	0x0082
                    0081    468 G$P0_1$0$0 == 0x0081
                    0081    469 _P0_1	=	0x0081
                    0080    470 G$P0_0$0$0 == 0x0080
                    0080    471 _P0_0	=	0x0080
                    0097    472 G$P1_7$0$0 == 0x0097
                    0097    473 _P1_7	=	0x0097
                    0096    474 G$P1_6$0$0 == 0x0096
                    0096    475 _P1_6	=	0x0096
                    0095    476 G$P1_5$0$0 == 0x0095
                    0095    477 _P1_5	=	0x0095
                    0094    478 G$P1_4$0$0 == 0x0094
                    0094    479 _P1_4	=	0x0094
                    0093    480 G$P1_3$0$0 == 0x0093
                    0093    481 _P1_3	=	0x0093
                    0092    482 G$P1_2$0$0 == 0x0092
                    0092    483 _P1_2	=	0x0092
                    0091    484 G$P1_1$0$0 == 0x0091
                    0091    485 _P1_1	=	0x0091
                    0090    486 G$P1_0$0$0 == 0x0090
                    0090    487 _P1_0	=	0x0090
                    00A7    488 G$P2_7$0$0 == 0x00a7
                    00A7    489 _P2_7	=	0x00a7
                    00A6    490 G$P2_6$0$0 == 0x00a6
                    00A6    491 _P2_6	=	0x00a6
                    00A5    492 G$P2_5$0$0 == 0x00a5
                    00A5    493 _P2_5	=	0x00a5
                    00A4    494 G$P2_4$0$0 == 0x00a4
                    00A4    495 _P2_4	=	0x00a4
                    00A3    496 G$P2_3$0$0 == 0x00a3
                    00A3    497 _P2_3	=	0x00a3
                    00A2    498 G$P2_2$0$0 == 0x00a2
                    00A2    499 _P2_2	=	0x00a2
                    00A1    500 G$P2_1$0$0 == 0x00a1
                    00A1    501 _P2_1	=	0x00a1
                    00A0    502 G$P2_0$0$0 == 0x00a0
                    00A0    503 _P2_0	=	0x00a0
                    00B7    504 G$P3_7$0$0 == 0x00b7
                    00B7    505 _P3_7	=	0x00b7
                    00B6    506 G$P3_6$0$0 == 0x00b6
                    00B6    507 _P3_6	=	0x00b6
                    00B5    508 G$P3_5$0$0 == 0x00b5
                    00B5    509 _P3_5	=	0x00b5
                    00B4    510 G$P3_4$0$0 == 0x00b4
                    00B4    511 _P3_4	=	0x00b4
                    00B3    512 G$P3_3$0$0 == 0x00b3
                    00B3    513 _P3_3	=	0x00b3
                    00B2    514 G$P3_2$0$0 == 0x00b2
                    00B2    515 _P3_2	=	0x00b2
                    00B1    516 G$P3_1$0$0 == 0x00b1
                    00B1    517 _P3_1	=	0x00b1
                    00B0    518 G$P3_0$0$0 == 0x00b0
                    00B0    519 _P3_0	=	0x00b0
                    00B7    520 G$RD$0$0 == 0x00b7
                    00B7    521 _RD	=	0x00b7
                    00B6    522 G$WR$0$0 == 0x00b6
                    00B6    523 _WR	=	0x00b6
                    00B5    524 G$T1$0$0 == 0x00b5
                    00B5    525 _T1	=	0x00b5
                    00B4    526 G$T0$0$0 == 0x00b4
                    00B4    527 _T0	=	0x00b4
                    00B3    528 G$INT1$0$0 == 0x00b3
                    00B3    529 _INT1	=	0x00b3
                    00B2    530 G$INT0$0$0 == 0x00b2
                    00B2    531 _INT0	=	0x00b2
                    00B1    532 G$TXD$0$0 == 0x00b1
                    00B1    533 _TXD	=	0x00b1
                    00B0    534 G$RXD$0$0 == 0x00b0
                    00B0    535 _RXD	=	0x00b0
                    00C0    536 G$P4_0$0$0 == 0x00c0
                    00C0    537 _P4_0	=	0x00c0
                    00C1    538 G$P4_1$0$0 == 0x00c1
                    00C1    539 _P4_1	=	0x00c1
                    00C2    540 G$P4_2$0$0 == 0x00c2
                    00C2    541 _P4_2	=	0x00c2
                    00C3    542 G$P4_3$0$0 == 0x00c3
                    00C3    543 _P4_3	=	0x00c3
                    00C4    544 G$P4_4$0$0 == 0x00c4
                    00C4    545 _P4_4	=	0x00c4
                    00C5    546 G$P4_5$0$0 == 0x00c5
                    00C5    547 _P4_5	=	0x00c5
                    00C6    548 G$P4_6$0$0 == 0x00c6
                    00C6    549 _P4_6	=	0x00c6
                    00C7    550 G$P4_7$0$0 == 0x00c7
                    00C7    551 _P4_7	=	0x00c7
                    00D7    552 G$CY$0$0 == 0x00d7
                    00D7    553 _CY	=	0x00d7
                    00D6    554 G$AC$0$0 == 0x00d6
                    00D6    555 _AC	=	0x00d6
                    00D5    556 G$F0$0$0 == 0x00d5
                    00D5    557 _F0	=	0x00d5
                    00D4    558 G$RS1$0$0 == 0x00d4
                    00D4    559 _RS1	=	0x00d4
                    00D3    560 G$RS0$0$0 == 0x00d3
                    00D3    561 _RS0	=	0x00d3
                    00D2    562 G$OV$0$0 == 0x00d2
                    00D2    563 _OV	=	0x00d2
                    00D1    564 G$UD$0$0 == 0x00d1
                    00D1    565 _UD	=	0x00d1
                    00D0    566 G$P$0$0 == 0x00d0
                    00D0    567 _P	=	0x00d0
                    00E0    568 G$ACC_0$0$0 == 0x00e0
                    00E0    569 _ACC_0	=	0x00e0
                    00E1    570 G$ACC_1$0$0 == 0x00e1
                    00E1    571 _ACC_1	=	0x00e1
                    00E2    572 G$ACC_2$0$0 == 0x00e2
                    00E2    573 _ACC_2	=	0x00e2
                    00E3    574 G$ACC_3$0$0 == 0x00e3
                    00E3    575 _ACC_3	=	0x00e3
                    00E4    576 G$ACC_4$0$0 == 0x00e4
                    00E4    577 _ACC_4	=	0x00e4
                    00E5    578 G$ACC_5$0$0 == 0x00e5
                    00E5    579 _ACC_5	=	0x00e5
                    00E6    580 G$ACC_6$0$0 == 0x00e6
                    00E6    581 _ACC_6	=	0x00e6
                    00E7    582 G$ACC_7$0$0 == 0x00e7
                    00E7    583 _ACC_7	=	0x00e7
                    008F    584 G$TF1$0$0 == 0x008f
                    008F    585 _TF1	=	0x008f
                    008E    586 G$TR1$0$0 == 0x008e
                    008E    587 _TR1	=	0x008e
                    008D    588 G$TF0$0$0 == 0x008d
                    008D    589 _TF0	=	0x008d
                    008C    590 G$TR0$0$0 == 0x008c
                    008C    591 _TR0	=	0x008c
                    008B    592 G$IE1$0$0 == 0x008b
                    008B    593 _IE1	=	0x008b
                    008A    594 G$IT1$0$0 == 0x008a
                    008A    595 _IT1	=	0x008a
                    0089    596 G$IE0$0$0 == 0x0089
                    0089    597 _IE0	=	0x0089
                    0088    598 G$IT0$0$0 == 0x0088
                    0088    599 _IT0	=	0x0088
                    00CF    600 G$TF2$0$0 == 0x00cf
                    00CF    601 _TF2	=	0x00cf
                    00CE    602 G$EXF2$0$0 == 0x00ce
                    00CE    603 _EXF2	=	0x00ce
                    00CD    604 G$RCLK$0$0 == 0x00cd
                    00CD    605 _RCLK	=	0x00cd
                    00CC    606 G$TCLK$0$0 == 0x00cc
                    00CC    607 _TCLK	=	0x00cc
                    00CB    608 G$EXEN2$0$0 == 0x00cb
                    00CB    609 _EXEN2	=	0x00cb
                    00CA    610 G$TR2$0$0 == 0x00ca
                    00CA    611 _TR2	=	0x00ca
                    00C9    612 G$C_T2$0$0 == 0x00c9
                    00C9    613 _C_T2	=	0x00c9
                    00C8    614 G$CP_RL2$0$0 == 0x00c8
                    00C8    615 _CP_RL2	=	0x00c8
                    009F    616 G$SM0$0$0 == 0x009f
                    009F    617 _SM0	=	0x009f
                    009F    618 G$FE$0$0 == 0x009f
                    009F    619 _FE	=	0x009f
                    009E    620 G$SM1$0$0 == 0x009e
                    009E    621 _SM1	=	0x009e
                    009D    622 G$SM2$0$0 == 0x009d
                    009D    623 _SM2	=	0x009d
                    009C    624 G$REN$0$0 == 0x009c
                    009C    625 _REN	=	0x009c
                    009B    626 G$TB8$0$0 == 0x009b
                    009B    627 _TB8	=	0x009b
                    009A    628 G$RB8$0$0 == 0x009a
                    009A    629 _RB8	=	0x009a
                    0099    630 G$TI$0$0 == 0x0099
                    0099    631 _TI	=	0x0099
                    0098    632 G$RI$0$0 == 0x0098
                    0098    633 _RI	=	0x0098
                    00AF    634 G$EA$0$0 == 0x00af
                    00AF    635 _EA	=	0x00af
                    00AE    636 G$EC$0$0 == 0x00ae
                    00AE    637 _EC	=	0x00ae
                    00AD    638 G$ET2$0$0 == 0x00ad
                    00AD    639 _ET2	=	0x00ad
                    00AC    640 G$ES$0$0 == 0x00ac
                    00AC    641 _ES	=	0x00ac
                    00AB    642 G$ET1$0$0 == 0x00ab
                    00AB    643 _ET1	=	0x00ab
                    00AA    644 G$EX1$0$0 == 0x00aa
                    00AA    645 _EX1	=	0x00aa
                    00A9    646 G$ET0$0$0 == 0x00a9
                    00A9    647 _ET0	=	0x00a9
                    00A8    648 G$EX0$0$0 == 0x00a8
                    00A8    649 _EX0	=	0x00a8
                    00EB    650 G$ESPI$0$0 == 0x00eb
                    00EB    651 _ESPI	=	0x00eb
                    00EA    652 G$ETIM$0$0 == 0x00ea
                    00EA    653 _ETIM	=	0x00ea
                    00E9    654 G$EADC$0$0 == 0x00e9
                    00E9    655 _EADC	=	0x00e9
                    00E8    656 G$ECAN$0$0 == 0x00e8
                    00E8    657 _ECAN	=	0x00e8
                    00DF    658 G$CF$0$0 == 0x00df
                    00DF    659 _CF	=	0x00df
                    00DE    660 G$CR$0$0 == 0x00de
                    00DE    661 _CR	=	0x00de
                    00DC    662 G$CCF4$0$0 == 0x00dc
                    00DC    663 _CCF4	=	0x00dc
                    00DB    664 G$CCF3$0$0 == 0x00db
                    00DB    665 _CCF3	=	0x00db
                    00DA    666 G$CCF2$0$0 == 0x00da
                    00DA    667 _CCF2	=	0x00da
                    00D9    668 G$CCF1$0$0 == 0x00d9
                    00D9    669 _CCF1	=	0x00d9
                    00D8    670 G$CCF0$0$0 == 0x00d8
                    00D8    671 _CCF0	=	0x00d8
                            672 ;--------------------------------------------------------
                            673 ; overlayable register banks
                            674 ;--------------------------------------------------------
                            675 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     676 	.ds 8
                            677 ;--------------------------------------------------------
                            678 ; internal ram data
                            679 ;--------------------------------------------------------
                            680 	.area DSEG    (DATA)
                            681 ;--------------------------------------------------------
                            682 ; overlayable items in internal ram 
                            683 ;--------------------------------------------------------
                            684 	.area	OSEG    (OVR,DATA)
                            685 	.area	OSEG    (OVR,DATA)
                            686 ;--------------------------------------------------------
                            687 ; indirectly addressable internal ram data
                            688 ;--------------------------------------------------------
                            689 	.area ISEG    (DATA)
                            690 ;--------------------------------------------------------
                            691 ; absolute internal ram data
                            692 ;--------------------------------------------------------
                            693 	.area IABS    (ABS,DATA)
                            694 	.area IABS    (ABS,DATA)
                            695 ;--------------------------------------------------------
                            696 ; bit data
                            697 ;--------------------------------------------------------
                            698 	.area BSEG    (BIT)
                            699 ;--------------------------------------------------------
                            700 ; paged external ram data
                            701 ;--------------------------------------------------------
                            702 	.area PSEG    (PAG,XDATA)
                            703 ;--------------------------------------------------------
                            704 ; external ram data
                            705 ;--------------------------------------------------------
                            706 	.area XSEG    (XDATA)
                            707 ;--------------------------------------------------------
                            708 ; absolute external ram data
                            709 ;--------------------------------------------------------
                            710 	.area XABS    (ABS,XDATA)
                            711 ;--------------------------------------------------------
                            712 ; external initialized ram data
                            713 ;--------------------------------------------------------
                            714 	.area XISEG   (XDATA)
                            715 	.area HOME    (CODE)
                            716 	.area GSINIT0 (CODE)
                            717 	.area GSINIT1 (CODE)
                            718 	.area GSINIT2 (CODE)
                            719 	.area GSINIT3 (CODE)
                            720 	.area GSINIT4 (CODE)
                            721 	.area GSINIT5 (CODE)
                            722 	.area GSINIT  (CODE)
                            723 	.area GSFINAL (CODE)
                            724 	.area CSEG    (CODE)
                            725 ;--------------------------------------------------------
                            726 ; global & static initialisations
                            727 ;--------------------------------------------------------
                            728 	.area HOME    (CODE)
                            729 	.area GSINIT  (CODE)
                            730 	.area GSFINAL (CODE)
                            731 	.area GSINIT  (CODE)
                            732 ;--------------------------------------------------------
                            733 ; Home
                            734 ;--------------------------------------------------------
                            735 	.area HOME    (CODE)
                            736 	.area HOME    (CODE)
                            737 ;--------------------------------------------------------
                            738 ; code
                            739 ;--------------------------------------------------------
                            740 	.area CSEG    (CODE)
                            741 ;------------------------------------------------------------
                            742 ;Allocation info for local variables in function 'LBarInit'
                            743 ;------------------------------------------------------------
                            744 ;i                         Allocated to registers r2 
                            745 ;------------------------------------------------------------
                    0000    746 	G$LBarInit$0$0 ==.
                    0000    747 	C$ledbar.c$13$0$0 ==.
                            748 ;	ledbar.c:13: void LBarInit(void)
                            749 ;	-----------------------------------------
                            750 ;	 function LBarInit
                            751 ;	-----------------------------------------
   0533                     752 _LBarInit:
                    0002    753 	ar2 = 0x02
                    0003    754 	ar3 = 0x03
                    0004    755 	ar4 = 0x04
                    0005    756 	ar5 = 0x05
                    0006    757 	ar6 = 0x06
                    0007    758 	ar7 = 0x07
                    0000    759 	ar0 = 0x00
                    0001    760 	ar1 = 0x01
                    0000    761 	C$ledbar.c$16$1$1 ==.
                            762 ;	ledbar.c:16: LB_ST=0;
   0533 C2 96               763 	clr	_P1_6
                    0002    764 	C$ledbar.c$17$1$1 ==.
                            765 ;	ledbar.c:17: LB_SH=0;
   0535 C2 94               766 	clr	_P1_4
                    0004    767 	C$ledbar.c$18$1$1 ==.
                            768 ;	ledbar.c:18: LB_MR=0;
   0537 C2 95               769 	clr	_P1_5
                    0006    770 	C$ledbar.c$19$1$1 ==.
                            771 ;	ledbar.c:19: LB_DS=1;
   0539 D2 93               772 	setb	_P1_3
                    0008    773 	C$ledbar.c$20$1$1 ==.
                            774 ;	ledbar.c:20: LB_MR=1;
   053B D2 95               775 	setb	_P1_5
                    000A    776 	C$ledbar.c$21$1$1 ==.
                            777 ;	ledbar.c:21: for(i=0;i<16;i++)
   053D 7A 00               778 	mov	r2,#0x00
   053F                     779 00101$:
   053F BA 10 00            780 	cjne	r2,#0x10,00110$
   0542                     781 00110$:
   0542 50 07               782 	jnc	00104$
                    0011    783 	C$ledbar.c$23$2$2 ==.
                            784 ;	ledbar.c:23: LB_SH=1;
   0544 D2 94               785 	setb	_P1_4
                    0013    786 	C$ledbar.c$24$2$2 ==.
                            787 ;	ledbar.c:24: LB_SH=0;
   0546 C2 94               788 	clr	_P1_4
                    0015    789 	C$ledbar.c$21$1$1 ==.
                            790 ;	ledbar.c:21: for(i=0;i<16;i++)
   0548 0A                  791 	inc	r2
   0549 80 F4               792 	sjmp	00101$
   054B                     793 00104$:
                    0018    794 	C$ledbar.c$27$1$1 ==.
                            795 ;	ledbar.c:27: LB_ST=1;
   054B D2 96               796 	setb	_P1_6
                    001A    797 	C$ledbar.c$28$1$1 ==.
                            798 ;	ledbar.c:28: LB_ST=0;
   054D C2 96               799 	clr	_P1_6
                    001C    800 	C$ledbar.c$29$1$1 ==.
                            801 ;	ledbar.c:29: LB_OE=0;
   054F C2 97               802 	clr	_P1_7
                    001E    803 	C$ledbar.c$30$1$1 ==.
                    001E    804 	XG$LBarInit$0$0 ==.
   0551 22                  805 	ret
                            806 ;------------------------------------------------------------
                            807 ;Allocation info for local variables in function 'LedBar'
                            808 ;------------------------------------------------------------
                            809 ;val                       Allocated to registers r2 r3 
                            810 ;i                         Allocated to registers r4 
                            811 ;------------------------------------------------------------
                    001F    812 	G$LedBar$0$0 ==.
                    001F    813 	C$ledbar.c$33$1$1 ==.
                            814 ;	ledbar.c:33: void LedBar(word val)
                            815 ;	-----------------------------------------
                            816 ;	 function LedBar
                            817 ;	-----------------------------------------
   0552                     818 _LedBar:
   0552 AA 82               819 	mov	r2,dpl
   0554 AB 83               820 	mov	r3,dph
                    0023    821 	C$ledbar.c$37$1$1 ==.
                            822 ;	ledbar.c:37: LB_MR=0;
   0556 C2 95               823 	clr	_P1_5
                    0025    824 	C$ledbar.c$38$1$1 ==.
                            825 ;	ledbar.c:38: LB_MR=1;
   0558 D2 95               826 	setb	_P1_5
                    0027    827 	C$ledbar.c$40$1$1 ==.
                            828 ;	ledbar.c:40: for(i=0;i<10;i++)
   055A 7C 00               829 	mov	r4,#0x00
   055C                     830 00101$:
   055C BC 0A 00            831 	cjne	r4,#0x0A,00110$
   055F                     832 00110$:
   055F 50 18               833 	jnc	00104$
                    002E    834 	C$ledbar.c$42$2$2 ==.
                            835 ;	ledbar.c:42: LB_DS=!(val & 0x200);
   0561 EB                  836 	mov	a,r3
   0562 03                  837 	rr	a
   0563 54 01               838 	anl	a,#0x01
   0565 FD                  839 	mov	r5,a
   0566 B4 01 00            840 	cjne	a,#0x01,00112$
   0569                     841 00112$:
   0569 92 93               842 	mov	_P1_3,c
                    0038    843 	C$ledbar.c$43$2$2 ==.
                            844 ;	ledbar.c:43: val <<= 1;
   056B EB                  845 	mov	a,r3
   056C CA                  846 	xch	a,r2
   056D 25 E0               847 	add	a,acc
   056F CA                  848 	xch	a,r2
   0570 33                  849 	rlc	a
   0571 FB                  850 	mov	r3,a
                    003F    851 	C$ledbar.c$44$2$2 ==.
                            852 ;	ledbar.c:44: LB_SH=1;
   0572 D2 94               853 	setb	_P1_4
                    0041    854 	C$ledbar.c$45$2$2 ==.
                            855 ;	ledbar.c:45: LB_SH=0;
   0574 C2 94               856 	clr	_P1_4
                    0043    857 	C$ledbar.c$40$1$1 ==.
                            858 ;	ledbar.c:40: for(i=0;i<10;i++)
   0576 0C                  859 	inc	r4
   0577 80 E3               860 	sjmp	00101$
   0579                     861 00104$:
                    0046    862 	C$ledbar.c$47$1$1 ==.
                            863 ;	ledbar.c:47: LB_ST=1;
   0579 D2 96               864 	setb	_P1_6
                    0048    865 	C$ledbar.c$48$1$1 ==.
                            866 ;	ledbar.c:48: LB_ST=0;
   057B C2 96               867 	clr	_P1_6
                    004A    868 	C$ledbar.c$49$1$1 ==.
                    004A    869 	XG$LedBar$0$0 ==.
   057D 22                  870 	ret
                            871 	.area CSEG    (CODE)
                            872 	.area CONST   (CODE)
                            873 	.area XINIT   (CODE)
                            874 	.area CABS    (ABS,CODE)
