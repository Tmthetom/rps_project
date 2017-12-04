                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 07 17:57:28 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _timer0
                             13 	.globl _main
                             14 	.globl _TimerInit
                             15 	.globl _CCF0
                             16 	.globl _CCF1
                             17 	.globl _CCF2
                             18 	.globl _CCF3
                             19 	.globl _CCF4
                             20 	.globl _CR
                             21 	.globl _CF
                             22 	.globl _ECAN
                             23 	.globl _EADC
                             24 	.globl _ETIM
                             25 	.globl _ESPI
                             26 	.globl _EX0
                             27 	.globl _ET0
                             28 	.globl _EX1
                             29 	.globl _ET1
                             30 	.globl _ES
                             31 	.globl _ET2
                             32 	.globl _EC
                             33 	.globl _EA
                             34 	.globl _RI
                             35 	.globl _TI
                             36 	.globl _RB8
                             37 	.globl _TB8
                             38 	.globl _REN
                             39 	.globl _SM2
                             40 	.globl _SM1
                             41 	.globl _FE
                             42 	.globl _SM0
                             43 	.globl _CP_RL2
                             44 	.globl _C_T2
                             45 	.globl _TR2
                             46 	.globl _EXEN2
                             47 	.globl _TCLK
                             48 	.globl _RCLK
                             49 	.globl _EXF2
                             50 	.globl _TF2
                             51 	.globl _IT0
                             52 	.globl _IE0
                             53 	.globl _IT1
                             54 	.globl _IE1
                             55 	.globl _TR0
                             56 	.globl _TF0
                             57 	.globl _TR1
                             58 	.globl _TF1
                             59 	.globl _ACC_7
                             60 	.globl _ACC_6
                             61 	.globl _ACC_5
                             62 	.globl _ACC_4
                             63 	.globl _ACC_3
                             64 	.globl _ACC_2
                             65 	.globl _ACC_1
                             66 	.globl _ACC_0
                             67 	.globl _P
                             68 	.globl _UD
                             69 	.globl _OV
                             70 	.globl _RS0
                             71 	.globl _RS1
                             72 	.globl _F0
                             73 	.globl _AC
                             74 	.globl _CY
                             75 	.globl _P4_7
                             76 	.globl _P4_6
                             77 	.globl _P4_5
                             78 	.globl _P4_4
                             79 	.globl _P4_3
                             80 	.globl _P4_2
                             81 	.globl _P4_1
                             82 	.globl _P4_0
                             83 	.globl _RXD
                             84 	.globl _TXD
                             85 	.globl _INT0
                             86 	.globl _INT1
                             87 	.globl _T0
                             88 	.globl _T1
                             89 	.globl _WR
                             90 	.globl _RD
                             91 	.globl _P3_0
                             92 	.globl _P3_1
                             93 	.globl _P3_2
                             94 	.globl _P3_3
                             95 	.globl _P3_4
                             96 	.globl _P3_5
                             97 	.globl _P3_6
                             98 	.globl _P3_7
                             99 	.globl _P2_0
                            100 	.globl _P2_1
                            101 	.globl _P2_2
                            102 	.globl _P2_3
                            103 	.globl _P2_4
                            104 	.globl _P2_5
                            105 	.globl _P2_6
                            106 	.globl _P2_7
                            107 	.globl _P1_0
                            108 	.globl _P1_1
                            109 	.globl _P1_2
                            110 	.globl _P1_3
                            111 	.globl _P1_4
                            112 	.globl _P1_5
                            113 	.globl _P1_6
                            114 	.globl _P1_7
                            115 	.globl _P0_0
                            116 	.globl _P0_1
                            117 	.globl _P0_2
                            118 	.globl _P0_3
                            119 	.globl _P0_4
                            120 	.globl _P0_5
                            121 	.globl _P0_6
                            122 	.globl _P0_7
                            123 	.globl _SPDAT
                            124 	.globl _SPSCR
                            125 	.globl _SPCON
                            126 	.globl _CANEN2
                            127 	.globl _CANEN1
                            128 	.globl _CANIDM4
                            129 	.globl _CANIDM3
                            130 	.globl _CANIDM2
                            131 	.globl _CANIDM1
                            132 	.globl _CANIE2
                            133 	.globl _CANIE1
                            134 	.globl _CANGIE
                            135 	.globl _CANIDT4
                            136 	.globl _CANIDT3
                            137 	.globl _CANIDT2
                            138 	.globl _CANIDT1
                            139 	.globl _CANSIT2
                            140 	.globl _CANSIT1
                            141 	.globl _CANBT3
                            142 	.globl _CANBT2
                            143 	.globl _CANBT1
                            144 	.globl _CANCONCH
                            145 	.globl _CANSTCH
                            146 	.globl _CANPAGE
                            147 	.globl _CANSTMPH
                            148 	.globl _CANSTMPL
                            149 	.globl _CANTIMH
                            150 	.globl _CANTIML
                            151 	.globl _CANGCON
                            152 	.globl _CANGSTA
                            153 	.globl _CANTTCH
                            154 	.globl _CANTTCL
                            155 	.globl _CANMSG
                            156 	.globl _CANTCON
                            157 	.globl _CANREC
                            158 	.globl _CANTEC
                            159 	.globl _CANGIT
                            160 	.globl _CCAPM4
                            161 	.globl _CCAP4L
                            162 	.globl _CCAP4H
                            163 	.globl _CCAPM3
                            164 	.globl _CCAP3L
                            165 	.globl _CCAP3H
                            166 	.globl _CCAPM2
                            167 	.globl _CCAP2L
                            168 	.globl _CCAP2H
                            169 	.globl _CCAPM1
                            170 	.globl _CCAP1L
                            171 	.globl _CCAP1H
                            172 	.globl _CCAPM0
                            173 	.globl _CCAP0L
                            174 	.globl _CCAP0H
                            175 	.globl _CL
                            176 	.globl _CH
                            177 	.globl _CMOD
                            178 	.globl _CCON
                            179 	.globl _IEN1
                            180 	.globl _IPH0
                            181 	.globl _IPL0
                            182 	.globl _IE
                            183 	.globl _IEN
                            184 	.globl _IEN0
                            185 	.globl _IPH1
                            186 	.globl _IPL1
                            187 	.globl _AUXR1
                            188 	.globl _AUXR
                            189 	.globl _EECON
                            190 	.globl _FSTA
                            191 	.globl _FCON
                            192 	.globl _ADCF
                            193 	.globl _ADDH
                            194 	.globl _ADDL
                            195 	.globl _ADCON
                            196 	.globl _ADCLK
                            197 	.globl _SADDR
                            198 	.globl _SADEN
                            199 	.globl _SBUF
                            200 	.globl _SCON
                            201 	.globl _WDTPRG
                            202 	.globl _WDTRST
                            203 	.globl _RCAP2H
                            204 	.globl _RCAP2L
                            205 	.globl _TH2
                            206 	.globl _TH1
                            207 	.globl _TH0
                            208 	.globl _TL2
                            209 	.globl _TL1
                            210 	.globl _TL0
                            211 	.globl _T2MOD
                            212 	.globl _T2CON
                            213 	.globl _TMOD
                            214 	.globl _TCON
                            215 	.globl _CKCON1
                            216 	.globl _CKCON0
                            217 	.globl _CKCON
                            218 	.globl _PCON
                            219 	.globl _DPTR
                            220 	.globl _DPH
                            221 	.globl _DPL
                            222 	.globl _SP
                            223 	.globl _B
                            224 	.globl _ACC
                            225 	.globl _PSW
                            226 	.globl _P4
                            227 	.globl _P3
                            228 	.globl _P2
                            229 	.globl _P1
                            230 	.globl _P0
                            231 	.globl _valAD
                            232 	.globl _cnt_ticks
                            233 ;--------------------------------------------------------
                            234 ; special function registers
                            235 ;--------------------------------------------------------
                            236 	.area RSEG    (ABS,DATA)
   0000                     237 	.org 0x0000
                    0080    238 G$P0$0$0 == 0x0080
                    0080    239 _P0	=	0x0080
                    0090    240 G$P1$0$0 == 0x0090
                    0090    241 _P1	=	0x0090
                    00A0    242 G$P2$0$0 == 0x00a0
                    00A0    243 _P2	=	0x00a0
                    00B0    244 G$P3$0$0 == 0x00b0
                    00B0    245 _P3	=	0x00b0
                    00C0    246 G$P4$0$0 == 0x00c0
                    00C0    247 _P4	=	0x00c0
                    00D0    248 G$PSW$0$0 == 0x00d0
                    00D0    249 _PSW	=	0x00d0
                    00E0    250 G$ACC$0$0 == 0x00e0
                    00E0    251 _ACC	=	0x00e0
                    00F0    252 G$B$0$0 == 0x00f0
                    00F0    253 _B	=	0x00f0
                    0081    254 G$SP$0$0 == 0x0081
                    0081    255 _SP	=	0x0081
                    0082    256 G$DPL$0$0 == 0x0082
                    0082    257 _DPL	=	0x0082
                    0083    258 G$DPH$0$0 == 0x0083
                    0083    259 _DPH	=	0x0083
                    8382    260 G$DPTR$0$0 == 0x8382
                    8382    261 _DPTR	=	0x8382
                    0087    262 G$PCON$0$0 == 0x0087
                    0087    263 _PCON	=	0x0087
                    008F    264 G$CKCON$0$0 == 0x008f
                    008F    265 _CKCON	=	0x008f
                    008F    266 G$CKCON0$0$0 == 0x008f
                    008F    267 _CKCON0	=	0x008f
                    009F    268 G$CKCON1$0$0 == 0x009f
                    009F    269 _CKCON1	=	0x009f
                    0088    270 G$TCON$0$0 == 0x0088
                    0088    271 _TCON	=	0x0088
                    0089    272 G$TMOD$0$0 == 0x0089
                    0089    273 _TMOD	=	0x0089
                    00C8    274 G$T2CON$0$0 == 0x00c8
                    00C8    275 _T2CON	=	0x00c8
                    00C9    276 G$T2MOD$0$0 == 0x00c9
                    00C9    277 _T2MOD	=	0x00c9
                    008A    278 G$TL0$0$0 == 0x008a
                    008A    279 _TL0	=	0x008a
                    008B    280 G$TL1$0$0 == 0x008b
                    008B    281 _TL1	=	0x008b
                    00CC    282 G$TL2$0$0 == 0x00cc
                    00CC    283 _TL2	=	0x00cc
                    008C    284 G$TH0$0$0 == 0x008c
                    008C    285 _TH0	=	0x008c
                    008D    286 G$TH1$0$0 == 0x008d
                    008D    287 _TH1	=	0x008d
                    00CD    288 G$TH2$0$0 == 0x00cd
                    00CD    289 _TH2	=	0x00cd
                    00CA    290 G$RCAP2L$0$0 == 0x00ca
                    00CA    291 _RCAP2L	=	0x00ca
                    00CB    292 G$RCAP2H$0$0 == 0x00cb
                    00CB    293 _RCAP2H	=	0x00cb
                    00A6    294 G$WDTRST$0$0 == 0x00a6
                    00A6    295 _WDTRST	=	0x00a6
                    00A7    296 G$WDTPRG$0$0 == 0x00a7
                    00A7    297 _WDTPRG	=	0x00a7
                    0098    298 G$SCON$0$0 == 0x0098
                    0098    299 _SCON	=	0x0098
                    0099    300 G$SBUF$0$0 == 0x0099
                    0099    301 _SBUF	=	0x0099
                    00B9    302 G$SADEN$0$0 == 0x00b9
                    00B9    303 _SADEN	=	0x00b9
                    00A9    304 G$SADDR$0$0 == 0x00a9
                    00A9    305 _SADDR	=	0x00a9
                    00F2    306 G$ADCLK$0$0 == 0x00f2
                    00F2    307 _ADCLK	=	0x00f2
                    00F3    308 G$ADCON$0$0 == 0x00f3
                    00F3    309 _ADCON	=	0x00f3
                    00F4    310 G$ADDL$0$0 == 0x00f4
                    00F4    311 _ADDL	=	0x00f4
                    00F5    312 G$ADDH$0$0 == 0x00f5
                    00F5    313 _ADDH	=	0x00f5
                    00F6    314 G$ADCF$0$0 == 0x00f6
                    00F6    315 _ADCF	=	0x00f6
                    00D1    316 G$FCON$0$0 == 0x00d1
                    00D1    317 _FCON	=	0x00d1
                    00D3    318 G$FSTA$0$0 == 0x00d3
                    00D3    319 _FSTA	=	0x00d3
                    00D2    320 G$EECON$0$0 == 0x00d2
                    00D2    321 _EECON	=	0x00d2
                    008E    322 G$AUXR$0$0 == 0x008e
                    008E    323 _AUXR	=	0x008e
                    00A2    324 G$AUXR1$0$0 == 0x00a2
                    00A2    325 _AUXR1	=	0x00a2
                    00F8    326 G$IPL1$0$0 == 0x00f8
                    00F8    327 _IPL1	=	0x00f8
                    00F7    328 G$IPH1$0$0 == 0x00f7
                    00F7    329 _IPH1	=	0x00f7
                    00A8    330 G$IEN0$0$0 == 0x00a8
                    00A8    331 _IEN0	=	0x00a8
                    00A8    332 G$IEN$0$0 == 0x00a8
                    00A8    333 _IEN	=	0x00a8
                    00A8    334 G$IE$0$0 == 0x00a8
                    00A8    335 _IE	=	0x00a8
                    00B8    336 G$IPL0$0$0 == 0x00b8
                    00B8    337 _IPL0	=	0x00b8
                    00B7    338 G$IPH0$0$0 == 0x00b7
                    00B7    339 _IPH0	=	0x00b7
                    00E8    340 G$IEN1$0$0 == 0x00e8
                    00E8    341 _IEN1	=	0x00e8
                    00D8    342 G$CCON$0$0 == 0x00d8
                    00D8    343 _CCON	=	0x00d8
                    00D9    344 G$CMOD$0$0 == 0x00d9
                    00D9    345 _CMOD	=	0x00d9
                    00F9    346 G$CH$0$0 == 0x00f9
                    00F9    347 _CH	=	0x00f9
                    00E9    348 G$CL$0$0 == 0x00e9
                    00E9    349 _CL	=	0x00e9
                    00FA    350 G$CCAP0H$0$0 == 0x00fa
                    00FA    351 _CCAP0H	=	0x00fa
                    00EA    352 G$CCAP0L$0$0 == 0x00ea
                    00EA    353 _CCAP0L	=	0x00ea
                    00DA    354 G$CCAPM0$0$0 == 0x00da
                    00DA    355 _CCAPM0	=	0x00da
                    00FB    356 G$CCAP1H$0$0 == 0x00fb
                    00FB    357 _CCAP1H	=	0x00fb
                    00EB    358 G$CCAP1L$0$0 == 0x00eb
                    00EB    359 _CCAP1L	=	0x00eb
                    00DB    360 G$CCAPM1$0$0 == 0x00db
                    00DB    361 _CCAPM1	=	0x00db
                    00FC    362 G$CCAP2H$0$0 == 0x00fc
                    00FC    363 _CCAP2H	=	0x00fc
                    00EC    364 G$CCAP2L$0$0 == 0x00ec
                    00EC    365 _CCAP2L	=	0x00ec
                    00DC    366 G$CCAPM2$0$0 == 0x00dc
                    00DC    367 _CCAPM2	=	0x00dc
                    00FD    368 G$CCAP3H$0$0 == 0x00fd
                    00FD    369 _CCAP3H	=	0x00fd
                    00ED    370 G$CCAP3L$0$0 == 0x00ed
                    00ED    371 _CCAP3L	=	0x00ed
                    00DD    372 G$CCAPM3$0$0 == 0x00dd
                    00DD    373 _CCAPM3	=	0x00dd
                    00FE    374 G$CCAP4H$0$0 == 0x00fe
                    00FE    375 _CCAP4H	=	0x00fe
                    00EE    376 G$CCAP4L$0$0 == 0x00ee
                    00EE    377 _CCAP4L	=	0x00ee
                    00DE    378 G$CCAPM4$0$0 == 0x00de
                    00DE    379 _CCAPM4	=	0x00de
                    009B    380 G$CANGIT$0$0 == 0x009b
                    009B    381 _CANGIT	=	0x009b
                    009C    382 G$CANTEC$0$0 == 0x009c
                    009C    383 _CANTEC	=	0x009c
                    009D    384 G$CANREC$0$0 == 0x009d
                    009D    385 _CANREC	=	0x009d
                    00A1    386 G$CANTCON$0$0 == 0x00a1
                    00A1    387 _CANTCON	=	0x00a1
                    00A3    388 G$CANMSG$0$0 == 0x00a3
                    00A3    389 _CANMSG	=	0x00a3
                    00A4    390 G$CANTTCL$0$0 == 0x00a4
                    00A4    391 _CANTTCL	=	0x00a4
                    00A5    392 G$CANTTCH$0$0 == 0x00a5
                    00A5    393 _CANTTCH	=	0x00a5
                    00AA    394 G$CANGSTA$0$0 == 0x00aa
                    00AA    395 _CANGSTA	=	0x00aa
                    00AB    396 G$CANGCON$0$0 == 0x00ab
                    00AB    397 _CANGCON	=	0x00ab
                    00AC    398 G$CANTIML$0$0 == 0x00ac
                    00AC    399 _CANTIML	=	0x00ac
                    00AD    400 G$CANTIMH$0$0 == 0x00ad
                    00AD    401 _CANTIMH	=	0x00ad
                    00AE    402 G$CANSTMPL$0$0 == 0x00ae
                    00AE    403 _CANSTMPL	=	0x00ae
                    00AF    404 G$CANSTMPH$0$0 == 0x00af
                    00AF    405 _CANSTMPH	=	0x00af
                    00B1    406 G$CANPAGE$0$0 == 0x00b1
                    00B1    407 _CANPAGE	=	0x00b1
                    00B2    408 G$CANSTCH$0$0 == 0x00b2
                    00B2    409 _CANSTCH	=	0x00b2
                    00B3    410 G$CANCONCH$0$0 == 0x00b3
                    00B3    411 _CANCONCH	=	0x00b3
                    00B4    412 G$CANBT1$0$0 == 0x00b4
                    00B4    413 _CANBT1	=	0x00b4
                    00B5    414 G$CANBT2$0$0 == 0x00b5
                    00B5    415 _CANBT2	=	0x00b5
                    00B6    416 G$CANBT3$0$0 == 0x00b6
                    00B6    417 _CANBT3	=	0x00b6
                    00BA    418 G$CANSIT1$0$0 == 0x00ba
                    00BA    419 _CANSIT1	=	0x00ba
                    00BB    420 G$CANSIT2$0$0 == 0x00bb
                    00BB    421 _CANSIT2	=	0x00bb
                    00BC    422 G$CANIDT1$0$0 == 0x00bc
                    00BC    423 _CANIDT1	=	0x00bc
                    00BD    424 G$CANIDT2$0$0 == 0x00bd
                    00BD    425 _CANIDT2	=	0x00bd
                    00BE    426 G$CANIDT3$0$0 == 0x00be
                    00BE    427 _CANIDT3	=	0x00be
                    00BF    428 G$CANIDT4$0$0 == 0x00bf
                    00BF    429 _CANIDT4	=	0x00bf
                    00C1    430 G$CANGIE$0$0 == 0x00c1
                    00C1    431 _CANGIE	=	0x00c1
                    00C2    432 G$CANIE1$0$0 == 0x00c2
                    00C2    433 _CANIE1	=	0x00c2
                    00C3    434 G$CANIE2$0$0 == 0x00c3
                    00C3    435 _CANIE2	=	0x00c3
                    00C4    436 G$CANIDM1$0$0 == 0x00c4
                    00C4    437 _CANIDM1	=	0x00c4
                    00C5    438 G$CANIDM2$0$0 == 0x00c5
                    00C5    439 _CANIDM2	=	0x00c5
                    00C6    440 G$CANIDM3$0$0 == 0x00c6
                    00C6    441 _CANIDM3	=	0x00c6
                    00C7    442 G$CANIDM4$0$0 == 0x00c7
                    00C7    443 _CANIDM4	=	0x00c7
                    00CE    444 G$CANEN1$0$0 == 0x00ce
                    00CE    445 _CANEN1	=	0x00ce
                    00CF    446 G$CANEN2$0$0 == 0x00cf
                    00CF    447 _CANEN2	=	0x00cf
                    00D4    448 G$SPCON$0$0 == 0x00d4
                    00D4    449 _SPCON	=	0x00d4
                    00D5    450 G$SPSCR$0$0 == 0x00d5
                    00D5    451 _SPSCR	=	0x00d5
                    00D6    452 G$SPDAT$0$0 == 0x00d6
                    00D6    453 _SPDAT	=	0x00d6
                            454 ;--------------------------------------------------------
                            455 ; special function bits
                            456 ;--------------------------------------------------------
                            457 	.area RSEG    (ABS,DATA)
   0000                     458 	.org 0x0000
                    0087    459 G$P0_7$0$0 == 0x0087
                    0087    460 _P0_7	=	0x0087
                    0086    461 G$P0_6$0$0 == 0x0086
                    0086    462 _P0_6	=	0x0086
                    0085    463 G$P0_5$0$0 == 0x0085
                    0085    464 _P0_5	=	0x0085
                    0084    465 G$P0_4$0$0 == 0x0084
                    0084    466 _P0_4	=	0x0084
                    0083    467 G$P0_3$0$0 == 0x0083
                    0083    468 _P0_3	=	0x0083
                    0082    469 G$P0_2$0$0 == 0x0082
                    0082    470 _P0_2	=	0x0082
                    0081    471 G$P0_1$0$0 == 0x0081
                    0081    472 _P0_1	=	0x0081
                    0080    473 G$P0_0$0$0 == 0x0080
                    0080    474 _P0_0	=	0x0080
                    0097    475 G$P1_7$0$0 == 0x0097
                    0097    476 _P1_7	=	0x0097
                    0096    477 G$P1_6$0$0 == 0x0096
                    0096    478 _P1_6	=	0x0096
                    0095    479 G$P1_5$0$0 == 0x0095
                    0095    480 _P1_5	=	0x0095
                    0094    481 G$P1_4$0$0 == 0x0094
                    0094    482 _P1_4	=	0x0094
                    0093    483 G$P1_3$0$0 == 0x0093
                    0093    484 _P1_3	=	0x0093
                    0092    485 G$P1_2$0$0 == 0x0092
                    0092    486 _P1_2	=	0x0092
                    0091    487 G$P1_1$0$0 == 0x0091
                    0091    488 _P1_1	=	0x0091
                    0090    489 G$P1_0$0$0 == 0x0090
                    0090    490 _P1_0	=	0x0090
                    00A7    491 G$P2_7$0$0 == 0x00a7
                    00A7    492 _P2_7	=	0x00a7
                    00A6    493 G$P2_6$0$0 == 0x00a6
                    00A6    494 _P2_6	=	0x00a6
                    00A5    495 G$P2_5$0$0 == 0x00a5
                    00A5    496 _P2_5	=	0x00a5
                    00A4    497 G$P2_4$0$0 == 0x00a4
                    00A4    498 _P2_4	=	0x00a4
                    00A3    499 G$P2_3$0$0 == 0x00a3
                    00A3    500 _P2_3	=	0x00a3
                    00A2    501 G$P2_2$0$0 == 0x00a2
                    00A2    502 _P2_2	=	0x00a2
                    00A1    503 G$P2_1$0$0 == 0x00a1
                    00A1    504 _P2_1	=	0x00a1
                    00A0    505 G$P2_0$0$0 == 0x00a0
                    00A0    506 _P2_0	=	0x00a0
                    00B7    507 G$P3_7$0$0 == 0x00b7
                    00B7    508 _P3_7	=	0x00b7
                    00B6    509 G$P3_6$0$0 == 0x00b6
                    00B6    510 _P3_6	=	0x00b6
                    00B5    511 G$P3_5$0$0 == 0x00b5
                    00B5    512 _P3_5	=	0x00b5
                    00B4    513 G$P3_4$0$0 == 0x00b4
                    00B4    514 _P3_4	=	0x00b4
                    00B3    515 G$P3_3$0$0 == 0x00b3
                    00B3    516 _P3_3	=	0x00b3
                    00B2    517 G$P3_2$0$0 == 0x00b2
                    00B2    518 _P3_2	=	0x00b2
                    00B1    519 G$P3_1$0$0 == 0x00b1
                    00B1    520 _P3_1	=	0x00b1
                    00B0    521 G$P3_0$0$0 == 0x00b0
                    00B0    522 _P3_0	=	0x00b0
                    00B7    523 G$RD$0$0 == 0x00b7
                    00B7    524 _RD	=	0x00b7
                    00B6    525 G$WR$0$0 == 0x00b6
                    00B6    526 _WR	=	0x00b6
                    00B5    527 G$T1$0$0 == 0x00b5
                    00B5    528 _T1	=	0x00b5
                    00B4    529 G$T0$0$0 == 0x00b4
                    00B4    530 _T0	=	0x00b4
                    00B3    531 G$INT1$0$0 == 0x00b3
                    00B3    532 _INT1	=	0x00b3
                    00B2    533 G$INT0$0$0 == 0x00b2
                    00B2    534 _INT0	=	0x00b2
                    00B1    535 G$TXD$0$0 == 0x00b1
                    00B1    536 _TXD	=	0x00b1
                    00B0    537 G$RXD$0$0 == 0x00b0
                    00B0    538 _RXD	=	0x00b0
                    00C0    539 G$P4_0$0$0 == 0x00c0
                    00C0    540 _P4_0	=	0x00c0
                    00C1    541 G$P4_1$0$0 == 0x00c1
                    00C1    542 _P4_1	=	0x00c1
                    00C2    543 G$P4_2$0$0 == 0x00c2
                    00C2    544 _P4_2	=	0x00c2
                    00C3    545 G$P4_3$0$0 == 0x00c3
                    00C3    546 _P4_3	=	0x00c3
                    00C4    547 G$P4_4$0$0 == 0x00c4
                    00C4    548 _P4_4	=	0x00c4
                    00C5    549 G$P4_5$0$0 == 0x00c5
                    00C5    550 _P4_5	=	0x00c5
                    00C6    551 G$P4_6$0$0 == 0x00c6
                    00C6    552 _P4_6	=	0x00c6
                    00C7    553 G$P4_7$0$0 == 0x00c7
                    00C7    554 _P4_7	=	0x00c7
                    00D7    555 G$CY$0$0 == 0x00d7
                    00D7    556 _CY	=	0x00d7
                    00D6    557 G$AC$0$0 == 0x00d6
                    00D6    558 _AC	=	0x00d6
                    00D5    559 G$F0$0$0 == 0x00d5
                    00D5    560 _F0	=	0x00d5
                    00D4    561 G$RS1$0$0 == 0x00d4
                    00D4    562 _RS1	=	0x00d4
                    00D3    563 G$RS0$0$0 == 0x00d3
                    00D3    564 _RS0	=	0x00d3
                    00D2    565 G$OV$0$0 == 0x00d2
                    00D2    566 _OV	=	0x00d2
                    00D1    567 G$UD$0$0 == 0x00d1
                    00D1    568 _UD	=	0x00d1
                    00D0    569 G$P$0$0 == 0x00d0
                    00D0    570 _P	=	0x00d0
                    00E0    571 G$ACC_0$0$0 == 0x00e0
                    00E0    572 _ACC_0	=	0x00e0
                    00E1    573 G$ACC_1$0$0 == 0x00e1
                    00E1    574 _ACC_1	=	0x00e1
                    00E2    575 G$ACC_2$0$0 == 0x00e2
                    00E2    576 _ACC_2	=	0x00e2
                    00E3    577 G$ACC_3$0$0 == 0x00e3
                    00E3    578 _ACC_3	=	0x00e3
                    00E4    579 G$ACC_4$0$0 == 0x00e4
                    00E4    580 _ACC_4	=	0x00e4
                    00E5    581 G$ACC_5$0$0 == 0x00e5
                    00E5    582 _ACC_5	=	0x00e5
                    00E6    583 G$ACC_6$0$0 == 0x00e6
                    00E6    584 _ACC_6	=	0x00e6
                    00E7    585 G$ACC_7$0$0 == 0x00e7
                    00E7    586 _ACC_7	=	0x00e7
                    008F    587 G$TF1$0$0 == 0x008f
                    008F    588 _TF1	=	0x008f
                    008E    589 G$TR1$0$0 == 0x008e
                    008E    590 _TR1	=	0x008e
                    008D    591 G$TF0$0$0 == 0x008d
                    008D    592 _TF0	=	0x008d
                    008C    593 G$TR0$0$0 == 0x008c
                    008C    594 _TR0	=	0x008c
                    008B    595 G$IE1$0$0 == 0x008b
                    008B    596 _IE1	=	0x008b
                    008A    597 G$IT1$0$0 == 0x008a
                    008A    598 _IT1	=	0x008a
                    0089    599 G$IE0$0$0 == 0x0089
                    0089    600 _IE0	=	0x0089
                    0088    601 G$IT0$0$0 == 0x0088
                    0088    602 _IT0	=	0x0088
                    00CF    603 G$TF2$0$0 == 0x00cf
                    00CF    604 _TF2	=	0x00cf
                    00CE    605 G$EXF2$0$0 == 0x00ce
                    00CE    606 _EXF2	=	0x00ce
                    00CD    607 G$RCLK$0$0 == 0x00cd
                    00CD    608 _RCLK	=	0x00cd
                    00CC    609 G$TCLK$0$0 == 0x00cc
                    00CC    610 _TCLK	=	0x00cc
                    00CB    611 G$EXEN2$0$0 == 0x00cb
                    00CB    612 _EXEN2	=	0x00cb
                    00CA    613 G$TR2$0$0 == 0x00ca
                    00CA    614 _TR2	=	0x00ca
                    00C9    615 G$C_T2$0$0 == 0x00c9
                    00C9    616 _C_T2	=	0x00c9
                    00C8    617 G$CP_RL2$0$0 == 0x00c8
                    00C8    618 _CP_RL2	=	0x00c8
                    009F    619 G$SM0$0$0 == 0x009f
                    009F    620 _SM0	=	0x009f
                    009F    621 G$FE$0$0 == 0x009f
                    009F    622 _FE	=	0x009f
                    009E    623 G$SM1$0$0 == 0x009e
                    009E    624 _SM1	=	0x009e
                    009D    625 G$SM2$0$0 == 0x009d
                    009D    626 _SM2	=	0x009d
                    009C    627 G$REN$0$0 == 0x009c
                    009C    628 _REN	=	0x009c
                    009B    629 G$TB8$0$0 == 0x009b
                    009B    630 _TB8	=	0x009b
                    009A    631 G$RB8$0$0 == 0x009a
                    009A    632 _RB8	=	0x009a
                    0099    633 G$TI$0$0 == 0x0099
                    0099    634 _TI	=	0x0099
                    0098    635 G$RI$0$0 == 0x0098
                    0098    636 _RI	=	0x0098
                    00AF    637 G$EA$0$0 == 0x00af
                    00AF    638 _EA	=	0x00af
                    00AE    639 G$EC$0$0 == 0x00ae
                    00AE    640 _EC	=	0x00ae
                    00AD    641 G$ET2$0$0 == 0x00ad
                    00AD    642 _ET2	=	0x00ad
                    00AC    643 G$ES$0$0 == 0x00ac
                    00AC    644 _ES	=	0x00ac
                    00AB    645 G$ET1$0$0 == 0x00ab
                    00AB    646 _ET1	=	0x00ab
                    00AA    647 G$EX1$0$0 == 0x00aa
                    00AA    648 _EX1	=	0x00aa
                    00A9    649 G$ET0$0$0 == 0x00a9
                    00A9    650 _ET0	=	0x00a9
                    00A8    651 G$EX0$0$0 == 0x00a8
                    00A8    652 _EX0	=	0x00a8
                    00EB    653 G$ESPI$0$0 == 0x00eb
                    00EB    654 _ESPI	=	0x00eb
                    00EA    655 G$ETIM$0$0 == 0x00ea
                    00EA    656 _ETIM	=	0x00ea
                    00E9    657 G$EADC$0$0 == 0x00e9
                    00E9    658 _EADC	=	0x00e9
                    00E8    659 G$ECAN$0$0 == 0x00e8
                    00E8    660 _ECAN	=	0x00e8
                    00DF    661 G$CF$0$0 == 0x00df
                    00DF    662 _CF	=	0x00df
                    00DE    663 G$CR$0$0 == 0x00de
                    00DE    664 _CR	=	0x00de
                    00DC    665 G$CCF4$0$0 == 0x00dc
                    00DC    666 _CCF4	=	0x00dc
                    00DB    667 G$CCF3$0$0 == 0x00db
                    00DB    668 _CCF3	=	0x00db
                    00DA    669 G$CCF2$0$0 == 0x00da
                    00DA    670 _CCF2	=	0x00da
                    00D9    671 G$CCF1$0$0 == 0x00d9
                    00D9    672 _CCF1	=	0x00d9
                    00D8    673 G$CCF0$0$0 == 0x00d8
                    00D8    674 _CCF0	=	0x00d8
                            675 ;--------------------------------------------------------
                            676 ; overlayable register banks
                            677 ;--------------------------------------------------------
                            678 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     679 	.ds 8
                            680 ;--------------------------------------------------------
                            681 ; overlayable bit register bank
                            682 ;--------------------------------------------------------
                            683 	.area BIT_BANK	(REL,OVR,DATA)
   0022                     684 bits:
   0022                     685 	.ds 1
                    8000    686 	b0 = bits[0]
                    8100    687 	b1 = bits[1]
                    8200    688 	b2 = bits[2]
                    8300    689 	b3 = bits[3]
                    8400    690 	b4 = bits[4]
                    8500    691 	b5 = bits[5]
                    8600    692 	b6 = bits[6]
                    8700    693 	b7 = bits[7]
                            694 ;--------------------------------------------------------
                            695 ; internal ram data
                            696 ;--------------------------------------------------------
                            697 	.area DSEG    (DATA)
                    0000    698 G$cnt_ticks$0$0==.
   0008                     699 _cnt_ticks::
   0008                     700 	.ds 1
                    0001    701 G$valAD$0$0==.
   0009                     702 _valAD::
   0009                     703 	.ds 2
                            704 ;--------------------------------------------------------
                            705 ; overlayable items in internal ram 
                            706 ;--------------------------------------------------------
                            707 	.area OSEG    (OVR,DATA)
                            708 ;--------------------------------------------------------
                            709 ; Stack segment in internal ram 
                            710 ;--------------------------------------------------------
                            711 	.area	SSEG	(DATA)
   003C                     712 __start__stack:
   003C                     713 	.ds	1
                            714 
                            715 ;--------------------------------------------------------
                            716 ; indirectly addressable internal ram data
                            717 ;--------------------------------------------------------
                            718 	.area ISEG    (DATA)
                            719 ;--------------------------------------------------------
                            720 ; absolute internal ram data
                            721 ;--------------------------------------------------------
                            722 	.area IABS    (ABS,DATA)
                            723 	.area IABS    (ABS,DATA)
                            724 ;--------------------------------------------------------
                            725 ; bit data
                            726 ;--------------------------------------------------------
                            727 	.area BSEG    (BIT)
                            728 ;--------------------------------------------------------
                            729 ; paged external ram data
                            730 ;--------------------------------------------------------
                            731 	.area PSEG    (PAG,XDATA)
                            732 ;--------------------------------------------------------
                            733 ; external ram data
                            734 ;--------------------------------------------------------
                            735 	.area XSEG    (XDATA)
                            736 ;--------------------------------------------------------
                            737 ; absolute external ram data
                            738 ;--------------------------------------------------------
                            739 	.area XABS    (ABS,XDATA)
                            740 ;--------------------------------------------------------
                            741 ; external initialized ram data
                            742 ;--------------------------------------------------------
                            743 	.area XISEG   (XDATA)
                            744 	.area HOME    (CODE)
                            745 	.area GSINIT0 (CODE)
                            746 	.area GSINIT1 (CODE)
                            747 	.area GSINIT2 (CODE)
                            748 	.area GSINIT3 (CODE)
                            749 	.area GSINIT4 (CODE)
                            750 	.area GSINIT5 (CODE)
                            751 	.area GSINIT  (CODE)
                            752 	.area GSFINAL (CODE)
                            753 	.area CSEG    (CODE)
                            754 ;--------------------------------------------------------
                            755 ; interrupt vector 
                            756 ;--------------------------------------------------------
                            757 	.area HOME    (CODE)
   0000                     758 __interrupt_vect:
   0000 02 00 13            759 	ljmp	__sdcc_gsinit_startup
   0003 32                  760 	reti
   0004                     761 	.ds	7
   000B 02 00 A9            762 	ljmp	_timer0
                            763 ;--------------------------------------------------------
                            764 ; global & static initialisations
                            765 ;--------------------------------------------------------
                            766 	.area HOME    (CODE)
                            767 	.area GSINIT  (CODE)
                            768 	.area GSFINAL (CODE)
                            769 	.area GSINIT  (CODE)
                            770 	.globl __sdcc_gsinit_startup
                            771 	.globl __sdcc_program_startup
                            772 	.globl __start__stack
                            773 	.globl __mcs51_genXINIT
                            774 	.globl __mcs51_genXRAMCLEAR
                            775 	.globl __mcs51_genRAMCLEAR
                            776 	.area GSFINAL (CODE)
   006C 02 00 0E            777 	ljmp	__sdcc_program_startup
                            778 ;--------------------------------------------------------
                            779 ; Home
                            780 ;--------------------------------------------------------
                            781 	.area HOME    (CODE)
                            782 	.area HOME    (CODE)
   000E                     783 __sdcc_program_startup:
   000E 12 00 7C            784 	lcall	_main
                            785 ;	return from main will lock up
   0011 80 FE               786 	sjmp .
                            787 ;--------------------------------------------------------
                            788 ; code
                            789 ;--------------------------------------------------------
                            790 	.area CSEG    (CODE)
                            791 ;------------------------------------------------------------
                            792 ;Allocation info for local variables in function 'TimerInit'
                            793 ;------------------------------------------------------------
                            794 ;------------------------------------------------------------
                    0000    795 	G$TimerInit$0$0 ==.
                    0000    796 	C$main.c$29$0$0 ==.
                            797 ;	main.c:29: void TimerInit()
                            798 ;	-----------------------------------------
                            799 ;	 function TimerInit
                            800 ;	-----------------------------------------
   006F                     801 _TimerInit:
                    0002    802 	ar2 = 0x02
                    0003    803 	ar3 = 0x03
                    0004    804 	ar4 = 0x04
                    0005    805 	ar5 = 0x05
                    0006    806 	ar6 = 0x06
                    0007    807 	ar7 = 0x07
                    0000    808 	ar0 = 0x00
                    0001    809 	ar1 = 0x01
                    0000    810 	C$main.c$31$1$1 ==.
                            811 ;	main.c:31: TMOD=0x21;
   006F 75 89 21            812 	mov	_TMOD,#0x21
                    0003    813 	C$main.c$32$1$1 ==.
                            814 ;	main.c:32: TR0=1;
   0072 D2 8C               815 	setb	_TR0
                    0005    816 	C$main.c$33$1$1 ==.
                            817 ;	main.c:33: EA=1;
   0074 D2 AF               818 	setb	_EA
                    0007    819 	C$main.c$34$1$1 ==.
                            820 ;	main.c:34: ET0=1;
   0076 D2 A9               821 	setb	_ET0
                    0009    822 	C$main.c$35$1$1 ==.
                            823 ;	main.c:35: cnt_ticks=0;
   0078 75 08 00            824 	mov	_cnt_ticks,#0x00
                    000C    825 	C$main.c$37$1$1 ==.
                    000C    826 	XG$TimerInit$0$0 ==.
   007B 22                  827 	ret
                            828 ;------------------------------------------------------------
                            829 ;Allocation info for local variables in function 'main'
                            830 ;------------------------------------------------------------
                            831 ;------------------------------------------------------------
                    000D    832 	G$main$0$0 ==.
                    000D    833 	C$main.c$43$1$1 ==.
                            834 ;	main.c:43: void main(void)
                            835 ;	-----------------------------------------
                            836 ;	 function main
                            837 ;	-----------------------------------------
   007C                     838 _main:
                    000D    839 	C$main.c$45$1$1 ==.
                            840 ;	main.c:45: LcdInit();
   007C 12 02 D0            841 	lcall	_LcdInit
                    0010    842 	C$main.c$46$1$1 ==.
                            843 ;	main.c:46: AdcInit(1<<CHANNEL0);
   007F 75 82 01            844 	mov	dpl,#0x01
   0082 12 01 34            845 	lcall	_AdcInit
                    0016    846 	C$main.c$47$1$1 ==.
                            847 ;	main.c:47: LBarInit();
   0085 12 03 F3            848 	lcall	_LBarInit
                    0019    849 	C$main.c$48$1$1 ==.
                            850 ;	main.c:48: CanInit();
   0088 12 01 71            851 	lcall	_CanInit
                    001C    852 	C$main.c$49$1$1 ==.
                            853 ;	main.c:49: TimerInit();
   008B 12 00 6F            854 	lcall	_TimerInit
                    001F    855 	C$main.c$51$1$1 ==.
                            856 ;	main.c:51: while(1)
   008E                     857 00107$:
                    001F    858 	C$main.c$53$2$2 ==.
                            859 ;	main.c:53: CANPAGE = 1 << 4;
   008E 75 B1 10            860 	mov	_CANPAGE,#0x10
                    0022    861 	C$main.c$54$2$2 ==.
                            862 ;	main.c:54: if(CANSTCH & MSK_CANSTCH_RxOk)
   0091 E5 B2               863 	mov	a,_CANSTCH
   0093 30 E5 F8            864 	jnb	acc.5,00107$
                    0027    865 	C$main.c$58$3$3 ==.
                            866 ;	main.c:58: if (CANMSG & 1) LED_G = 0;
   0096 E5 A3               867 	mov	a,_CANMSG
   0098 30 E0 04            868 	jnb	acc.0,00102$
   009B C2 C4               869 	clr	_P4_4
   009D 80 02               870 	sjmp	00103$
   009F                     871 00102$:
                    0030    872 	C$main.c$59$3$3 ==.
                            873 ;	main.c:59: else  LED_G = 1;
   009F D2 C4               874 	setb	_P4_4
   00A1                     875 00103$:
                    0032    876 	C$main.c$60$3$3 ==.
                            877 ;	main.c:60: CANSTCH = 0;
   00A1 75 B2 00            878 	mov	_CANSTCH,#0x00
                    0035    879 	C$main.c$61$3$3 ==.
                            880 ;	main.c:61: CANCONCH = DLC_ONE_BYTE | CH_RxENA ;
   00A4 75 B3 81            881 	mov	_CANCONCH,#0x81
                    0038    882 	C$main.c$65$1$1 ==.
                    0038    883 	XG$main$0$0 ==.
   00A7 80 E5               884 	sjmp	00107$
                            885 ;------------------------------------------------------------
                            886 ;Allocation info for local variables in function 'timer0'
                            887 ;------------------------------------------------------------
                            888 ;page                      Allocated to registers r2 
                            889 ;------------------------------------------------------------
                    003A    890 	G$timer0$0$0 ==.
                    003A    891 	C$main.c$67$1$1 ==.
                            892 ;	main.c:67: void timer0() __interrupt 1
                            893 ;	-----------------------------------------
                            894 ;	 function timer0
                            895 ;	-----------------------------------------
   00A9                     896 _timer0:
   00A9 C0 22               897 	push	bits
   00AB C0 E0               898 	push	acc
   00AD C0 F0               899 	push	b
   00AF C0 82               900 	push	dpl
   00B1 C0 83               901 	push	dph
   00B3 C0 02               902 	push	(0+2)
   00B5 C0 03               903 	push	(0+3)
   00B7 C0 04               904 	push	(0+4)
   00B9 C0 05               905 	push	(0+5)
   00BB C0 06               906 	push	(0+6)
   00BD C0 07               907 	push	(0+7)
   00BF C0 00               908 	push	(0+0)
   00C1 C0 01               909 	push	(0+1)
   00C3 C0 D0               910 	push	psw
   00C5 75 D0 00            911 	mov	psw,#0x00
                    0059    912 	C$main.c$69$1$1 ==.
                            913 ;	main.c:69: byte page = CANPAGE;
   00C8 AA B1               914 	mov	r2,_CANPAGE
                    005B    915 	C$main.c$70$1$1 ==.
                            916 ;	main.c:70: TH0=(word)(-T_30MS)>>8;
   00CA 75 8C 3C            917 	mov	_TH0,#0x3C
                    005E    918 	C$main.c$71$1$1 ==.
                            919 ;	main.c:71: TL0=(byte)(-T_30MS);
   00CD 75 8A B0            920 	mov	_TL0,#0xB0
                    0061    921 	C$main.c$72$1$1 ==.
                            922 ;	main.c:72: if(++cnt_ticks == N_TICKS)
   00D0 05 08               923 	inc	_cnt_ticks
   00D2 74 06               924 	mov	a,#0x06
   00D4 B5 08 3E            925 	cjne	a,_cnt_ticks,00102$
                    0068    926 	C$main.c$74$2$2 ==.
                            927 ;	main.c:74: cnt_ticks=0;
   00D7 75 08 00            928 	mov	_cnt_ticks,#0x00
                    006B    929 	C$main.c$75$2$2 ==.
                            930 ;	main.c:75: valAD=AdcConv(CHANNEL0);
   00DA 75 82 00            931 	mov	dpl,#0x00
   00DD C0 02               932 	push	ar2
   00DF 12 01 3E            933 	lcall	_AdcConv
                    0073    934 	C$main.c$76$2$2 ==.
                            935 ;	main.c:76: LedBar(valAD);
   00E2 85 82 09            936 	mov	_valAD,dpl
   00E5 85 83 0A            937 	mov	(_valAD + 1),dph
   00E8 85 0A 83            938 	mov	dph,(_valAD + 1)
   00EB 12 04 12            939 	lcall	_LedBar
                    007F    940 	C$main.c$78$2$2 ==.
                            941 ;	main.c:78: CANPAGE = 0 << 4;
   00EE 75 B1 00            942 	mov	_CANPAGE,#0x00
                    0082    943 	C$main.c$80$2$2 ==.
                            944 ;	main.c:80: CANMSG = valAD;
   00F1 85 09 A3            945 	mov	_CANMSG,_valAD
                    0085    946 	C$main.c$81$2$2 ==.
                            947 ;	main.c:81: CANMSG = valAD>>8;
   00F4 85 0A A3            948 	mov	_CANMSG,(_valAD + 1)
                    0088    949 	C$main.c$83$2$2 ==.
                            950 ;	main.c:83: printf("Vyslani %d \n",valAD);
   00F7 C0 09               951 	push	_valAD
   00F9 C0 0A               952 	push	(_valAD + 1)
   00FB 74 52               953 	mov	a,#__str_0
   00FD C0 E0               954 	push	acc
   00FF 74 0A               955 	mov	a,#(__str_0 >> 8)
   0101 C0 E0               956 	push	acc
   0103 74 80               957 	mov	a,#0x80
   0105 C0 E0               958 	push	acc
   0107 12 04 63            959 	lcall	_printf
   010A E5 81               960 	mov	a,sp
   010C 24 FB               961 	add	a,#0xfb
   010E F5 81               962 	mov	sp,a
   0110 D0 02               963 	pop	ar2
                    00A3    964 	C$main.c$84$2$2 ==.
                            965 ;	main.c:84: CANCONCH = DLC_TWO_BYTES | CH_TxENA; ;
   0112 75 B3 42            966 	mov	_CANCONCH,#0x42
   0115                     967 00102$:
                    00A6    968 	C$main.c$87$1$1 ==.
                            969 ;	main.c:87: CANPAGE = page;
   0115 8A B1               970 	mov	_CANPAGE,r2
   0117 D0 D0               971 	pop	psw
   0119 D0 01               972 	pop	(0+1)
   011B D0 00               973 	pop	(0+0)
   011D D0 07               974 	pop	(0+7)
   011F D0 06               975 	pop	(0+6)
   0121 D0 05               976 	pop	(0+5)
   0123 D0 04               977 	pop	(0+4)
   0125 D0 03               978 	pop	(0+3)
   0127 D0 02               979 	pop	(0+2)
   0129 D0 83               980 	pop	dph
   012B D0 82               981 	pop	dpl
   012D D0 F0               982 	pop	b
   012F D0 E0               983 	pop	acc
   0131 D0 22               984 	pop	bits
                    00C4    985 	C$main.c$89$1$1 ==.
                    00C4    986 	XG$timer0$0$0 ==.
   0133 32                  987 	reti
                            988 	.area CSEG    (CODE)
                            989 	.area CONST   (CODE)
                    0000    990 Fmain$_str_0$0$0 == .
   0A52                     991 __str_0:
   0A52 56 79 73 6C 61 6E   992 	.ascii "Vyslani %d "
        69 20 25 64 20
   0A5D 0A                  993 	.db 0x0A
   0A5E 00                  994 	.db 0x00
                            995 	.area XINIT   (CODE)
                            996 	.area CABS    (ABS,CODE)
