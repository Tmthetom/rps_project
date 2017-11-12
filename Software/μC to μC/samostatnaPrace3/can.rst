                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 07 17:57:27 2015
                              5 ;--------------------------------------------------------
                              6 	.module can
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _CanInit
                             13 	.globl _CCF0
                             14 	.globl _CCF1
                             15 	.globl _CCF2
                             16 	.globl _CCF3
                             17 	.globl _CCF4
                             18 	.globl _CR
                             19 	.globl _CF
                             20 	.globl _ECAN
                             21 	.globl _EADC
                             22 	.globl _ETIM
                             23 	.globl _ESPI
                             24 	.globl _EX0
                             25 	.globl _ET0
                             26 	.globl _EX1
                             27 	.globl _ET1
                             28 	.globl _ES
                             29 	.globl _ET2
                             30 	.globl _EC
                             31 	.globl _EA
                             32 	.globl _RI
                             33 	.globl _TI
                             34 	.globl _RB8
                             35 	.globl _TB8
                             36 	.globl _REN
                             37 	.globl _SM2
                             38 	.globl _SM1
                             39 	.globl _FE
                             40 	.globl _SM0
                             41 	.globl _CP_RL2
                             42 	.globl _C_T2
                             43 	.globl _TR2
                             44 	.globl _EXEN2
                             45 	.globl _TCLK
                             46 	.globl _RCLK
                             47 	.globl _EXF2
                             48 	.globl _TF2
                             49 	.globl _IT0
                             50 	.globl _IE0
                             51 	.globl _IT1
                             52 	.globl _IE1
                             53 	.globl _TR0
                             54 	.globl _TF0
                             55 	.globl _TR1
                             56 	.globl _TF1
                             57 	.globl _ACC_7
                             58 	.globl _ACC_6
                             59 	.globl _ACC_5
                             60 	.globl _ACC_4
                             61 	.globl _ACC_3
                             62 	.globl _ACC_2
                             63 	.globl _ACC_1
                             64 	.globl _ACC_0
                             65 	.globl _P
                             66 	.globl _UD
                             67 	.globl _OV
                             68 	.globl _RS0
                             69 	.globl _RS1
                             70 	.globl _F0
                             71 	.globl _AC
                             72 	.globl _CY
                             73 	.globl _P4_7
                             74 	.globl _P4_6
                             75 	.globl _P4_5
                             76 	.globl _P4_4
                             77 	.globl _P4_3
                             78 	.globl _P4_2
                             79 	.globl _P4_1
                             80 	.globl _P4_0
                             81 	.globl _RXD
                             82 	.globl _TXD
                             83 	.globl _INT0
                             84 	.globl _INT1
                             85 	.globl _T0
                             86 	.globl _T1
                             87 	.globl _WR
                             88 	.globl _RD
                             89 	.globl _P3_0
                             90 	.globl _P3_1
                             91 	.globl _P3_2
                             92 	.globl _P3_3
                             93 	.globl _P3_4
                             94 	.globl _P3_5
                             95 	.globl _P3_6
                             96 	.globl _P3_7
                             97 	.globl _P2_0
                             98 	.globl _P2_1
                             99 	.globl _P2_2
                            100 	.globl _P2_3
                            101 	.globl _P2_4
                            102 	.globl _P2_5
                            103 	.globl _P2_6
                            104 	.globl _P2_7
                            105 	.globl _P1_0
                            106 	.globl _P1_1
                            107 	.globl _P1_2
                            108 	.globl _P1_3
                            109 	.globl _P1_4
                            110 	.globl _P1_5
                            111 	.globl _P1_6
                            112 	.globl _P1_7
                            113 	.globl _P0_0
                            114 	.globl _P0_1
                            115 	.globl _P0_2
                            116 	.globl _P0_3
                            117 	.globl _P0_4
                            118 	.globl _P0_5
                            119 	.globl _P0_6
                            120 	.globl _P0_7
                            121 	.globl _SPDAT
                            122 	.globl _SPSCR
                            123 	.globl _SPCON
                            124 	.globl _CANEN2
                            125 	.globl _CANEN1
                            126 	.globl _CANIDM4
                            127 	.globl _CANIDM3
                            128 	.globl _CANIDM2
                            129 	.globl _CANIDM1
                            130 	.globl _CANIE2
                            131 	.globl _CANIE1
                            132 	.globl _CANGIE
                            133 	.globl _CANIDT4
                            134 	.globl _CANIDT3
                            135 	.globl _CANIDT2
                            136 	.globl _CANIDT1
                            137 	.globl _CANSIT2
                            138 	.globl _CANSIT1
                            139 	.globl _CANBT3
                            140 	.globl _CANBT2
                            141 	.globl _CANBT1
                            142 	.globl _CANCONCH
                            143 	.globl _CANSTCH
                            144 	.globl _CANPAGE
                            145 	.globl _CANSTMPH
                            146 	.globl _CANSTMPL
                            147 	.globl _CANTIMH
                            148 	.globl _CANTIML
                            149 	.globl _CANGCON
                            150 	.globl _CANGSTA
                            151 	.globl _CANTTCH
                            152 	.globl _CANTTCL
                            153 	.globl _CANMSG
                            154 	.globl _CANTCON
                            155 	.globl _CANREC
                            156 	.globl _CANTEC
                            157 	.globl _CANGIT
                            158 	.globl _CCAPM4
                            159 	.globl _CCAP4L
                            160 	.globl _CCAP4H
                            161 	.globl _CCAPM3
                            162 	.globl _CCAP3L
                            163 	.globl _CCAP3H
                            164 	.globl _CCAPM2
                            165 	.globl _CCAP2L
                            166 	.globl _CCAP2H
                            167 	.globl _CCAPM1
                            168 	.globl _CCAP1L
                            169 	.globl _CCAP1H
                            170 	.globl _CCAPM0
                            171 	.globl _CCAP0L
                            172 	.globl _CCAP0H
                            173 	.globl _CL
                            174 	.globl _CH
                            175 	.globl _CMOD
                            176 	.globl _CCON
                            177 	.globl _IEN1
                            178 	.globl _IPH0
                            179 	.globl _IPL0
                            180 	.globl _IE
                            181 	.globl _IEN
                            182 	.globl _IEN0
                            183 	.globl _IPH1
                            184 	.globl _IPL1
                            185 	.globl _AUXR1
                            186 	.globl _AUXR
                            187 	.globl _EECON
                            188 	.globl _FSTA
                            189 	.globl _FCON
                            190 	.globl _ADCF
                            191 	.globl _ADDH
                            192 	.globl _ADDL
                            193 	.globl _ADCON
                            194 	.globl _ADCLK
                            195 	.globl _SADDR
                            196 	.globl _SADEN
                            197 	.globl _SBUF
                            198 	.globl _SCON
                            199 	.globl _WDTPRG
                            200 	.globl _WDTRST
                            201 	.globl _RCAP2H
                            202 	.globl _RCAP2L
                            203 	.globl _TH2
                            204 	.globl _TH1
                            205 	.globl _TH0
                            206 	.globl _TL2
                            207 	.globl _TL1
                            208 	.globl _TL0
                            209 	.globl _T2MOD
                            210 	.globl _T2CON
                            211 	.globl _TMOD
                            212 	.globl _TCON
                            213 	.globl _CKCON1
                            214 	.globl _CKCON0
                            215 	.globl _CKCON
                            216 	.globl _PCON
                            217 	.globl _DPTR
                            218 	.globl _DPH
                            219 	.globl _DPL
                            220 	.globl _SP
                            221 	.globl _B
                            222 	.globl _ACC
                            223 	.globl _PSW
                            224 	.globl _P4
                            225 	.globl _P3
                            226 	.globl _P2
                            227 	.globl _P1
                            228 	.globl _P0
                            229 	.globl _num_data
                            230 	.globl _num_channel
                            231 ;--------------------------------------------------------
                            232 ; special function registers
                            233 ;--------------------------------------------------------
                            234 	.area RSEG    (ABS,DATA)
   0000                     235 	.org 0x0000
                    0080    236 G$P0$0$0 == 0x0080
                    0080    237 _P0	=	0x0080
                    0090    238 G$P1$0$0 == 0x0090
                    0090    239 _P1	=	0x0090
                    00A0    240 G$P2$0$0 == 0x00a0
                    00A0    241 _P2	=	0x00a0
                    00B0    242 G$P3$0$0 == 0x00b0
                    00B0    243 _P3	=	0x00b0
                    00C0    244 G$P4$0$0 == 0x00c0
                    00C0    245 _P4	=	0x00c0
                    00D0    246 G$PSW$0$0 == 0x00d0
                    00D0    247 _PSW	=	0x00d0
                    00E0    248 G$ACC$0$0 == 0x00e0
                    00E0    249 _ACC	=	0x00e0
                    00F0    250 G$B$0$0 == 0x00f0
                    00F0    251 _B	=	0x00f0
                    0081    252 G$SP$0$0 == 0x0081
                    0081    253 _SP	=	0x0081
                    0082    254 G$DPL$0$0 == 0x0082
                    0082    255 _DPL	=	0x0082
                    0083    256 G$DPH$0$0 == 0x0083
                    0083    257 _DPH	=	0x0083
                    8382    258 G$DPTR$0$0 == 0x8382
                    8382    259 _DPTR	=	0x8382
                    0087    260 G$PCON$0$0 == 0x0087
                    0087    261 _PCON	=	0x0087
                    008F    262 G$CKCON$0$0 == 0x008f
                    008F    263 _CKCON	=	0x008f
                    008F    264 G$CKCON0$0$0 == 0x008f
                    008F    265 _CKCON0	=	0x008f
                    009F    266 G$CKCON1$0$0 == 0x009f
                    009F    267 _CKCON1	=	0x009f
                    0088    268 G$TCON$0$0 == 0x0088
                    0088    269 _TCON	=	0x0088
                    0089    270 G$TMOD$0$0 == 0x0089
                    0089    271 _TMOD	=	0x0089
                    00C8    272 G$T2CON$0$0 == 0x00c8
                    00C8    273 _T2CON	=	0x00c8
                    00C9    274 G$T2MOD$0$0 == 0x00c9
                    00C9    275 _T2MOD	=	0x00c9
                    008A    276 G$TL0$0$0 == 0x008a
                    008A    277 _TL0	=	0x008a
                    008B    278 G$TL1$0$0 == 0x008b
                    008B    279 _TL1	=	0x008b
                    00CC    280 G$TL2$0$0 == 0x00cc
                    00CC    281 _TL2	=	0x00cc
                    008C    282 G$TH0$0$0 == 0x008c
                    008C    283 _TH0	=	0x008c
                    008D    284 G$TH1$0$0 == 0x008d
                    008D    285 _TH1	=	0x008d
                    00CD    286 G$TH2$0$0 == 0x00cd
                    00CD    287 _TH2	=	0x00cd
                    00CA    288 G$RCAP2L$0$0 == 0x00ca
                    00CA    289 _RCAP2L	=	0x00ca
                    00CB    290 G$RCAP2H$0$0 == 0x00cb
                    00CB    291 _RCAP2H	=	0x00cb
                    00A6    292 G$WDTRST$0$0 == 0x00a6
                    00A6    293 _WDTRST	=	0x00a6
                    00A7    294 G$WDTPRG$0$0 == 0x00a7
                    00A7    295 _WDTPRG	=	0x00a7
                    0098    296 G$SCON$0$0 == 0x0098
                    0098    297 _SCON	=	0x0098
                    0099    298 G$SBUF$0$0 == 0x0099
                    0099    299 _SBUF	=	0x0099
                    00B9    300 G$SADEN$0$0 == 0x00b9
                    00B9    301 _SADEN	=	0x00b9
                    00A9    302 G$SADDR$0$0 == 0x00a9
                    00A9    303 _SADDR	=	0x00a9
                    00F2    304 G$ADCLK$0$0 == 0x00f2
                    00F2    305 _ADCLK	=	0x00f2
                    00F3    306 G$ADCON$0$0 == 0x00f3
                    00F3    307 _ADCON	=	0x00f3
                    00F4    308 G$ADDL$0$0 == 0x00f4
                    00F4    309 _ADDL	=	0x00f4
                    00F5    310 G$ADDH$0$0 == 0x00f5
                    00F5    311 _ADDH	=	0x00f5
                    00F6    312 G$ADCF$0$0 == 0x00f6
                    00F6    313 _ADCF	=	0x00f6
                    00D1    314 G$FCON$0$0 == 0x00d1
                    00D1    315 _FCON	=	0x00d1
                    00D3    316 G$FSTA$0$0 == 0x00d3
                    00D3    317 _FSTA	=	0x00d3
                    00D2    318 G$EECON$0$0 == 0x00d2
                    00D2    319 _EECON	=	0x00d2
                    008E    320 G$AUXR$0$0 == 0x008e
                    008E    321 _AUXR	=	0x008e
                    00A2    322 G$AUXR1$0$0 == 0x00a2
                    00A2    323 _AUXR1	=	0x00a2
                    00F8    324 G$IPL1$0$0 == 0x00f8
                    00F8    325 _IPL1	=	0x00f8
                    00F7    326 G$IPH1$0$0 == 0x00f7
                    00F7    327 _IPH1	=	0x00f7
                    00A8    328 G$IEN0$0$0 == 0x00a8
                    00A8    329 _IEN0	=	0x00a8
                    00A8    330 G$IEN$0$0 == 0x00a8
                    00A8    331 _IEN	=	0x00a8
                    00A8    332 G$IE$0$0 == 0x00a8
                    00A8    333 _IE	=	0x00a8
                    00B8    334 G$IPL0$0$0 == 0x00b8
                    00B8    335 _IPL0	=	0x00b8
                    00B7    336 G$IPH0$0$0 == 0x00b7
                    00B7    337 _IPH0	=	0x00b7
                    00E8    338 G$IEN1$0$0 == 0x00e8
                    00E8    339 _IEN1	=	0x00e8
                    00D8    340 G$CCON$0$0 == 0x00d8
                    00D8    341 _CCON	=	0x00d8
                    00D9    342 G$CMOD$0$0 == 0x00d9
                    00D9    343 _CMOD	=	0x00d9
                    00F9    344 G$CH$0$0 == 0x00f9
                    00F9    345 _CH	=	0x00f9
                    00E9    346 G$CL$0$0 == 0x00e9
                    00E9    347 _CL	=	0x00e9
                    00FA    348 G$CCAP0H$0$0 == 0x00fa
                    00FA    349 _CCAP0H	=	0x00fa
                    00EA    350 G$CCAP0L$0$0 == 0x00ea
                    00EA    351 _CCAP0L	=	0x00ea
                    00DA    352 G$CCAPM0$0$0 == 0x00da
                    00DA    353 _CCAPM0	=	0x00da
                    00FB    354 G$CCAP1H$0$0 == 0x00fb
                    00FB    355 _CCAP1H	=	0x00fb
                    00EB    356 G$CCAP1L$0$0 == 0x00eb
                    00EB    357 _CCAP1L	=	0x00eb
                    00DB    358 G$CCAPM1$0$0 == 0x00db
                    00DB    359 _CCAPM1	=	0x00db
                    00FC    360 G$CCAP2H$0$0 == 0x00fc
                    00FC    361 _CCAP2H	=	0x00fc
                    00EC    362 G$CCAP2L$0$0 == 0x00ec
                    00EC    363 _CCAP2L	=	0x00ec
                    00DC    364 G$CCAPM2$0$0 == 0x00dc
                    00DC    365 _CCAPM2	=	0x00dc
                    00FD    366 G$CCAP3H$0$0 == 0x00fd
                    00FD    367 _CCAP3H	=	0x00fd
                    00ED    368 G$CCAP3L$0$0 == 0x00ed
                    00ED    369 _CCAP3L	=	0x00ed
                    00DD    370 G$CCAPM3$0$0 == 0x00dd
                    00DD    371 _CCAPM3	=	0x00dd
                    00FE    372 G$CCAP4H$0$0 == 0x00fe
                    00FE    373 _CCAP4H	=	0x00fe
                    00EE    374 G$CCAP4L$0$0 == 0x00ee
                    00EE    375 _CCAP4L	=	0x00ee
                    00DE    376 G$CCAPM4$0$0 == 0x00de
                    00DE    377 _CCAPM4	=	0x00de
                    009B    378 G$CANGIT$0$0 == 0x009b
                    009B    379 _CANGIT	=	0x009b
                    009C    380 G$CANTEC$0$0 == 0x009c
                    009C    381 _CANTEC	=	0x009c
                    009D    382 G$CANREC$0$0 == 0x009d
                    009D    383 _CANREC	=	0x009d
                    00A1    384 G$CANTCON$0$0 == 0x00a1
                    00A1    385 _CANTCON	=	0x00a1
                    00A3    386 G$CANMSG$0$0 == 0x00a3
                    00A3    387 _CANMSG	=	0x00a3
                    00A4    388 G$CANTTCL$0$0 == 0x00a4
                    00A4    389 _CANTTCL	=	0x00a4
                    00A5    390 G$CANTTCH$0$0 == 0x00a5
                    00A5    391 _CANTTCH	=	0x00a5
                    00AA    392 G$CANGSTA$0$0 == 0x00aa
                    00AA    393 _CANGSTA	=	0x00aa
                    00AB    394 G$CANGCON$0$0 == 0x00ab
                    00AB    395 _CANGCON	=	0x00ab
                    00AC    396 G$CANTIML$0$0 == 0x00ac
                    00AC    397 _CANTIML	=	0x00ac
                    00AD    398 G$CANTIMH$0$0 == 0x00ad
                    00AD    399 _CANTIMH	=	0x00ad
                    00AE    400 G$CANSTMPL$0$0 == 0x00ae
                    00AE    401 _CANSTMPL	=	0x00ae
                    00AF    402 G$CANSTMPH$0$0 == 0x00af
                    00AF    403 _CANSTMPH	=	0x00af
                    00B1    404 G$CANPAGE$0$0 == 0x00b1
                    00B1    405 _CANPAGE	=	0x00b1
                    00B2    406 G$CANSTCH$0$0 == 0x00b2
                    00B2    407 _CANSTCH	=	0x00b2
                    00B3    408 G$CANCONCH$0$0 == 0x00b3
                    00B3    409 _CANCONCH	=	0x00b3
                    00B4    410 G$CANBT1$0$0 == 0x00b4
                    00B4    411 _CANBT1	=	0x00b4
                    00B5    412 G$CANBT2$0$0 == 0x00b5
                    00B5    413 _CANBT2	=	0x00b5
                    00B6    414 G$CANBT3$0$0 == 0x00b6
                    00B6    415 _CANBT3	=	0x00b6
                    00BA    416 G$CANSIT1$0$0 == 0x00ba
                    00BA    417 _CANSIT1	=	0x00ba
                    00BB    418 G$CANSIT2$0$0 == 0x00bb
                    00BB    419 _CANSIT2	=	0x00bb
                    00BC    420 G$CANIDT1$0$0 == 0x00bc
                    00BC    421 _CANIDT1	=	0x00bc
                    00BD    422 G$CANIDT2$0$0 == 0x00bd
                    00BD    423 _CANIDT2	=	0x00bd
                    00BE    424 G$CANIDT3$0$0 == 0x00be
                    00BE    425 _CANIDT3	=	0x00be
                    00BF    426 G$CANIDT4$0$0 == 0x00bf
                    00BF    427 _CANIDT4	=	0x00bf
                    00C1    428 G$CANGIE$0$0 == 0x00c1
                    00C1    429 _CANGIE	=	0x00c1
                    00C2    430 G$CANIE1$0$0 == 0x00c2
                    00C2    431 _CANIE1	=	0x00c2
                    00C3    432 G$CANIE2$0$0 == 0x00c3
                    00C3    433 _CANIE2	=	0x00c3
                    00C4    434 G$CANIDM1$0$0 == 0x00c4
                    00C4    435 _CANIDM1	=	0x00c4
                    00C5    436 G$CANIDM2$0$0 == 0x00c5
                    00C5    437 _CANIDM2	=	0x00c5
                    00C6    438 G$CANIDM3$0$0 == 0x00c6
                    00C6    439 _CANIDM3	=	0x00c6
                    00C7    440 G$CANIDM4$0$0 == 0x00c7
                    00C7    441 _CANIDM4	=	0x00c7
                    00CE    442 G$CANEN1$0$0 == 0x00ce
                    00CE    443 _CANEN1	=	0x00ce
                    00CF    444 G$CANEN2$0$0 == 0x00cf
                    00CF    445 _CANEN2	=	0x00cf
                    00D4    446 G$SPCON$0$0 == 0x00d4
                    00D4    447 _SPCON	=	0x00d4
                    00D5    448 G$SPSCR$0$0 == 0x00d5
                    00D5    449 _SPSCR	=	0x00d5
                    00D6    450 G$SPDAT$0$0 == 0x00d6
                    00D6    451 _SPDAT	=	0x00d6
                            452 ;--------------------------------------------------------
                            453 ; special function bits
                            454 ;--------------------------------------------------------
                            455 	.area RSEG    (ABS,DATA)
   0000                     456 	.org 0x0000
                    0087    457 G$P0_7$0$0 == 0x0087
                    0087    458 _P0_7	=	0x0087
                    0086    459 G$P0_6$0$0 == 0x0086
                    0086    460 _P0_6	=	0x0086
                    0085    461 G$P0_5$0$0 == 0x0085
                    0085    462 _P0_5	=	0x0085
                    0084    463 G$P0_4$0$0 == 0x0084
                    0084    464 _P0_4	=	0x0084
                    0083    465 G$P0_3$0$0 == 0x0083
                    0083    466 _P0_3	=	0x0083
                    0082    467 G$P0_2$0$0 == 0x0082
                    0082    468 _P0_2	=	0x0082
                    0081    469 G$P0_1$0$0 == 0x0081
                    0081    470 _P0_1	=	0x0081
                    0080    471 G$P0_0$0$0 == 0x0080
                    0080    472 _P0_0	=	0x0080
                    0097    473 G$P1_7$0$0 == 0x0097
                    0097    474 _P1_7	=	0x0097
                    0096    475 G$P1_6$0$0 == 0x0096
                    0096    476 _P1_6	=	0x0096
                    0095    477 G$P1_5$0$0 == 0x0095
                    0095    478 _P1_5	=	0x0095
                    0094    479 G$P1_4$0$0 == 0x0094
                    0094    480 _P1_4	=	0x0094
                    0093    481 G$P1_3$0$0 == 0x0093
                    0093    482 _P1_3	=	0x0093
                    0092    483 G$P1_2$0$0 == 0x0092
                    0092    484 _P1_2	=	0x0092
                    0091    485 G$P1_1$0$0 == 0x0091
                    0091    486 _P1_1	=	0x0091
                    0090    487 G$P1_0$0$0 == 0x0090
                    0090    488 _P1_0	=	0x0090
                    00A7    489 G$P2_7$0$0 == 0x00a7
                    00A7    490 _P2_7	=	0x00a7
                    00A6    491 G$P2_6$0$0 == 0x00a6
                    00A6    492 _P2_6	=	0x00a6
                    00A5    493 G$P2_5$0$0 == 0x00a5
                    00A5    494 _P2_5	=	0x00a5
                    00A4    495 G$P2_4$0$0 == 0x00a4
                    00A4    496 _P2_4	=	0x00a4
                    00A3    497 G$P2_3$0$0 == 0x00a3
                    00A3    498 _P2_3	=	0x00a3
                    00A2    499 G$P2_2$0$0 == 0x00a2
                    00A2    500 _P2_2	=	0x00a2
                    00A1    501 G$P2_1$0$0 == 0x00a1
                    00A1    502 _P2_1	=	0x00a1
                    00A0    503 G$P2_0$0$0 == 0x00a0
                    00A0    504 _P2_0	=	0x00a0
                    00B7    505 G$P3_7$0$0 == 0x00b7
                    00B7    506 _P3_7	=	0x00b7
                    00B6    507 G$P3_6$0$0 == 0x00b6
                    00B6    508 _P3_6	=	0x00b6
                    00B5    509 G$P3_5$0$0 == 0x00b5
                    00B5    510 _P3_5	=	0x00b5
                    00B4    511 G$P3_4$0$0 == 0x00b4
                    00B4    512 _P3_4	=	0x00b4
                    00B3    513 G$P3_3$0$0 == 0x00b3
                    00B3    514 _P3_3	=	0x00b3
                    00B2    515 G$P3_2$0$0 == 0x00b2
                    00B2    516 _P3_2	=	0x00b2
                    00B1    517 G$P3_1$0$0 == 0x00b1
                    00B1    518 _P3_1	=	0x00b1
                    00B0    519 G$P3_0$0$0 == 0x00b0
                    00B0    520 _P3_0	=	0x00b0
                    00B7    521 G$RD$0$0 == 0x00b7
                    00B7    522 _RD	=	0x00b7
                    00B6    523 G$WR$0$0 == 0x00b6
                    00B6    524 _WR	=	0x00b6
                    00B5    525 G$T1$0$0 == 0x00b5
                    00B5    526 _T1	=	0x00b5
                    00B4    527 G$T0$0$0 == 0x00b4
                    00B4    528 _T0	=	0x00b4
                    00B3    529 G$INT1$0$0 == 0x00b3
                    00B3    530 _INT1	=	0x00b3
                    00B2    531 G$INT0$0$0 == 0x00b2
                    00B2    532 _INT0	=	0x00b2
                    00B1    533 G$TXD$0$0 == 0x00b1
                    00B1    534 _TXD	=	0x00b1
                    00B0    535 G$RXD$0$0 == 0x00b0
                    00B0    536 _RXD	=	0x00b0
                    00C0    537 G$P4_0$0$0 == 0x00c0
                    00C0    538 _P4_0	=	0x00c0
                    00C1    539 G$P4_1$0$0 == 0x00c1
                    00C1    540 _P4_1	=	0x00c1
                    00C2    541 G$P4_2$0$0 == 0x00c2
                    00C2    542 _P4_2	=	0x00c2
                    00C3    543 G$P4_3$0$0 == 0x00c3
                    00C3    544 _P4_3	=	0x00c3
                    00C4    545 G$P4_4$0$0 == 0x00c4
                    00C4    546 _P4_4	=	0x00c4
                    00C5    547 G$P4_5$0$0 == 0x00c5
                    00C5    548 _P4_5	=	0x00c5
                    00C6    549 G$P4_6$0$0 == 0x00c6
                    00C6    550 _P4_6	=	0x00c6
                    00C7    551 G$P4_7$0$0 == 0x00c7
                    00C7    552 _P4_7	=	0x00c7
                    00D7    553 G$CY$0$0 == 0x00d7
                    00D7    554 _CY	=	0x00d7
                    00D6    555 G$AC$0$0 == 0x00d6
                    00D6    556 _AC	=	0x00d6
                    00D5    557 G$F0$0$0 == 0x00d5
                    00D5    558 _F0	=	0x00d5
                    00D4    559 G$RS1$0$0 == 0x00d4
                    00D4    560 _RS1	=	0x00d4
                    00D3    561 G$RS0$0$0 == 0x00d3
                    00D3    562 _RS0	=	0x00d3
                    00D2    563 G$OV$0$0 == 0x00d2
                    00D2    564 _OV	=	0x00d2
                    00D1    565 G$UD$0$0 == 0x00d1
                    00D1    566 _UD	=	0x00d1
                    00D0    567 G$P$0$0 == 0x00d0
                    00D0    568 _P	=	0x00d0
                    00E0    569 G$ACC_0$0$0 == 0x00e0
                    00E0    570 _ACC_0	=	0x00e0
                    00E1    571 G$ACC_1$0$0 == 0x00e1
                    00E1    572 _ACC_1	=	0x00e1
                    00E2    573 G$ACC_2$0$0 == 0x00e2
                    00E2    574 _ACC_2	=	0x00e2
                    00E3    575 G$ACC_3$0$0 == 0x00e3
                    00E3    576 _ACC_3	=	0x00e3
                    00E4    577 G$ACC_4$0$0 == 0x00e4
                    00E4    578 _ACC_4	=	0x00e4
                    00E5    579 G$ACC_5$0$0 == 0x00e5
                    00E5    580 _ACC_5	=	0x00e5
                    00E6    581 G$ACC_6$0$0 == 0x00e6
                    00E6    582 _ACC_6	=	0x00e6
                    00E7    583 G$ACC_7$0$0 == 0x00e7
                    00E7    584 _ACC_7	=	0x00e7
                    008F    585 G$TF1$0$0 == 0x008f
                    008F    586 _TF1	=	0x008f
                    008E    587 G$TR1$0$0 == 0x008e
                    008E    588 _TR1	=	0x008e
                    008D    589 G$TF0$0$0 == 0x008d
                    008D    590 _TF0	=	0x008d
                    008C    591 G$TR0$0$0 == 0x008c
                    008C    592 _TR0	=	0x008c
                    008B    593 G$IE1$0$0 == 0x008b
                    008B    594 _IE1	=	0x008b
                    008A    595 G$IT1$0$0 == 0x008a
                    008A    596 _IT1	=	0x008a
                    0089    597 G$IE0$0$0 == 0x0089
                    0089    598 _IE0	=	0x0089
                    0088    599 G$IT0$0$0 == 0x0088
                    0088    600 _IT0	=	0x0088
                    00CF    601 G$TF2$0$0 == 0x00cf
                    00CF    602 _TF2	=	0x00cf
                    00CE    603 G$EXF2$0$0 == 0x00ce
                    00CE    604 _EXF2	=	0x00ce
                    00CD    605 G$RCLK$0$0 == 0x00cd
                    00CD    606 _RCLK	=	0x00cd
                    00CC    607 G$TCLK$0$0 == 0x00cc
                    00CC    608 _TCLK	=	0x00cc
                    00CB    609 G$EXEN2$0$0 == 0x00cb
                    00CB    610 _EXEN2	=	0x00cb
                    00CA    611 G$TR2$0$0 == 0x00ca
                    00CA    612 _TR2	=	0x00ca
                    00C9    613 G$C_T2$0$0 == 0x00c9
                    00C9    614 _C_T2	=	0x00c9
                    00C8    615 G$CP_RL2$0$0 == 0x00c8
                    00C8    616 _CP_RL2	=	0x00c8
                    009F    617 G$SM0$0$0 == 0x009f
                    009F    618 _SM0	=	0x009f
                    009F    619 G$FE$0$0 == 0x009f
                    009F    620 _FE	=	0x009f
                    009E    621 G$SM1$0$0 == 0x009e
                    009E    622 _SM1	=	0x009e
                    009D    623 G$SM2$0$0 == 0x009d
                    009D    624 _SM2	=	0x009d
                    009C    625 G$REN$0$0 == 0x009c
                    009C    626 _REN	=	0x009c
                    009B    627 G$TB8$0$0 == 0x009b
                    009B    628 _TB8	=	0x009b
                    009A    629 G$RB8$0$0 == 0x009a
                    009A    630 _RB8	=	0x009a
                    0099    631 G$TI$0$0 == 0x0099
                    0099    632 _TI	=	0x0099
                    0098    633 G$RI$0$0 == 0x0098
                    0098    634 _RI	=	0x0098
                    00AF    635 G$EA$0$0 == 0x00af
                    00AF    636 _EA	=	0x00af
                    00AE    637 G$EC$0$0 == 0x00ae
                    00AE    638 _EC	=	0x00ae
                    00AD    639 G$ET2$0$0 == 0x00ad
                    00AD    640 _ET2	=	0x00ad
                    00AC    641 G$ES$0$0 == 0x00ac
                    00AC    642 _ES	=	0x00ac
                    00AB    643 G$ET1$0$0 == 0x00ab
                    00AB    644 _ET1	=	0x00ab
                    00AA    645 G$EX1$0$0 == 0x00aa
                    00AA    646 _EX1	=	0x00aa
                    00A9    647 G$ET0$0$0 == 0x00a9
                    00A9    648 _ET0	=	0x00a9
                    00A8    649 G$EX0$0$0 == 0x00a8
                    00A8    650 _EX0	=	0x00a8
                    00EB    651 G$ESPI$0$0 == 0x00eb
                    00EB    652 _ESPI	=	0x00eb
                    00EA    653 G$ETIM$0$0 == 0x00ea
                    00EA    654 _ETIM	=	0x00ea
                    00E9    655 G$EADC$0$0 == 0x00e9
                    00E9    656 _EADC	=	0x00e9
                    00E8    657 G$ECAN$0$0 == 0x00e8
                    00E8    658 _ECAN	=	0x00e8
                    00DF    659 G$CF$0$0 == 0x00df
                    00DF    660 _CF	=	0x00df
                    00DE    661 G$CR$0$0 == 0x00de
                    00DE    662 _CR	=	0x00de
                    00DC    663 G$CCF4$0$0 == 0x00dc
                    00DC    664 _CCF4	=	0x00dc
                    00DB    665 G$CCF3$0$0 == 0x00db
                    00DB    666 _CCF3	=	0x00db
                    00DA    667 G$CCF2$0$0 == 0x00da
                    00DA    668 _CCF2	=	0x00da
                    00D9    669 G$CCF1$0$0 == 0x00d9
                    00D9    670 _CCF1	=	0x00d9
                    00D8    671 G$CCF0$0$0 == 0x00d8
                    00D8    672 _CCF0	=	0x00d8
                            673 ;--------------------------------------------------------
                            674 ; overlayable register banks
                            675 ;--------------------------------------------------------
                            676 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     677 	.ds 8
                            678 ;--------------------------------------------------------
                            679 ; internal ram data
                            680 ;--------------------------------------------------------
                            681 	.area DSEG    (DATA)
                    0000    682 G$num_channel$0$0==.
   000B                     683 _num_channel::
   000B                     684 	.ds 1
                    0001    685 G$num_data$0$0==.
   000C                     686 _num_data::
   000C                     687 	.ds 1
                            688 ;--------------------------------------------------------
                            689 ; overlayable items in internal ram 
                            690 ;--------------------------------------------------------
                            691 	.area OSEG    (OVR,DATA)
                            692 ;--------------------------------------------------------
                            693 ; indirectly addressable internal ram data
                            694 ;--------------------------------------------------------
                            695 	.area ISEG    (DATA)
                            696 ;--------------------------------------------------------
                            697 ; absolute internal ram data
                            698 ;--------------------------------------------------------
                            699 	.area IABS    (ABS,DATA)
                            700 	.area IABS    (ABS,DATA)
                            701 ;--------------------------------------------------------
                            702 ; bit data
                            703 ;--------------------------------------------------------
                            704 	.area BSEG    (BIT)
                            705 ;--------------------------------------------------------
                            706 ; paged external ram data
                            707 ;--------------------------------------------------------
                            708 	.area PSEG    (PAG,XDATA)
                            709 ;--------------------------------------------------------
                            710 ; external ram data
                            711 ;--------------------------------------------------------
                            712 	.area XSEG    (XDATA)
                            713 ;--------------------------------------------------------
                            714 ; absolute external ram data
                            715 ;--------------------------------------------------------
                            716 	.area XABS    (ABS,XDATA)
                            717 ;--------------------------------------------------------
                            718 ; external initialized ram data
                            719 ;--------------------------------------------------------
                            720 	.area XISEG   (XDATA)
                            721 	.area HOME    (CODE)
                            722 	.area GSINIT0 (CODE)
                            723 	.area GSINIT1 (CODE)
                            724 	.area GSINIT2 (CODE)
                            725 	.area GSINIT3 (CODE)
                            726 	.area GSINIT4 (CODE)
                            727 	.area GSINIT5 (CODE)
                            728 	.area GSINIT  (CODE)
                            729 	.area GSFINAL (CODE)
                            730 	.area CSEG    (CODE)
                            731 ;--------------------------------------------------------
                            732 ; global & static initialisations
                            733 ;--------------------------------------------------------
                            734 	.area HOME    (CODE)
                            735 	.area GSINIT  (CODE)
                            736 	.area GSFINAL (CODE)
                            737 	.area GSINIT  (CODE)
                            738 ;--------------------------------------------------------
                            739 ; Home
                            740 ;--------------------------------------------------------
                            741 	.area HOME    (CODE)
                            742 	.area HOME    (CODE)
                            743 ;--------------------------------------------------------
                            744 ; code
                            745 ;--------------------------------------------------------
                            746 	.area CSEG    (CODE)
                            747 ;------------------------------------------------------------
                            748 ;Allocation info for local variables in function 'CanInit'
                            749 ;------------------------------------------------------------
                            750 ;------------------------------------------------------------
                    0000    751 	G$CanInit$0$0 ==.
                    0000    752 	C$can.c$37$0$0 ==.
                            753 ;	can.c:37: void CanInit(void)
                            754 ;	-----------------------------------------
                            755 ;	 function CanInit
                            756 ;	-----------------------------------------
   0171                     757 _CanInit:
                    0002    758 	ar2 = 0x02
                    0003    759 	ar3 = 0x03
                    0004    760 	ar4 = 0x04
                    0005    761 	ar5 = 0x05
                    0006    762 	ar6 = 0x06
                    0007    763 	ar7 = 0x07
                    0000    764 	ar0 = 0x00
                    0001    765 	ar1 = 0x01
                    0000    766 	C$can.c$39$1$1 ==.
                            767 ;	can.c:39: CANGCON = MSK_CANGCON_GRES;		    /* reset CAN */
   0171 75 AB 01            768 	mov	_CANGCON,#0x01
                    0003    769 	C$can.c$41$1$1 ==.
                            770 ;	can.c:41: for (num_channel = 0; num_channel < 15; num_channel++)
   0174 75 0B 00            771 	mov	_num_channel,#0x00
   0177                     772 00105$:
   0177 74 F1               773 	mov	a,#0x100 - 0x0F
   0179 25 0B               774 	add	a,_num_channel
   017B 40 39               775 	jc	00108$
                    000C    776 	C$can.c$43$2$2 ==.
                            777 ;	can.c:43: CANPAGE  = num_channel << 4;
   017D E5 0B               778 	mov	a,_num_channel
   017F C4                  779 	swap	a
   0180 54 F0               780 	anl	a,#0xf0
   0182 F5 B1               781 	mov	_CANPAGE,a
                    0013    782 	C$can.c$44$2$2 ==.
                            783 ;	can.c:44: CANCONCH = CH_DISABLE;
   0184 75 B3 00            784 	mov	_CANCONCH,#0x00
                    0016    785 	C$can.c$45$2$2 ==.
                            786 ;	can.c:45: CANSTCH  = 0;
   0187 75 B2 00            787 	mov	_CANSTCH,#0x00
                    0019    788 	C$can.c$46$2$2 ==.
                            789 ;	can.c:46: CANIDT1  = 0;
   018A 75 BC 00            790 	mov	_CANIDT1,#0x00
                    001C    791 	C$can.c$47$2$2 ==.
                            792 ;	can.c:47: CANIDT2  = 0;
   018D 75 BD 00            793 	mov	_CANIDT2,#0x00
                    001F    794 	C$can.c$48$2$2 ==.
                            795 ;	can.c:48: CANIDT3  = 0;
   0190 75 BE 00            796 	mov	_CANIDT3,#0x00
                    0022    797 	C$can.c$49$2$2 ==.
                            798 ;	can.c:49: CANIDT4  = 0;
   0193 75 BF 00            799 	mov	_CANIDT4,#0x00
                    0025    800 	C$can.c$50$2$2 ==.
                            801 ;	can.c:50: CANIDM1  = CHECK_ALL_ID_BITS>>3;
   0196 75 C4 FF            802 	mov	_CANIDM1,#0xFF
                    0028    803 	C$can.c$51$2$2 ==.
                            804 ;	can.c:51: CANIDM2  = CHECK_ALL_ID_BITS<<5;
   0199 75 C5 E0            805 	mov	_CANIDM2,#0xE0
                    002B    806 	C$can.c$52$2$2 ==.
                            807 ;	can.c:52: CANIDM3  = 0;
   019C 75 C6 00            808 	mov	_CANIDM3,#0x00
                    002E    809 	C$can.c$53$2$2 ==.
                            810 ;	can.c:53: CANIDM4  = MSK_CANIDM4_RTRMSK;
   019F 75 C7 04            811 	mov	_CANIDM4,#0x04
                    0031    812 	C$can.c$54$2$2 ==.
                            813 ;	can.c:54: for (num_data = 0; num_data < 8; num_data++) CANMSG = 0;
   01A2 75 0C 00            814 	mov	_num_data,#0x00
   01A5                     815 00101$:
   01A5 74 F8               816 	mov	a,#0x100 - 0x08
   01A7 25 0C               817 	add	a,_num_data
   01A9 40 07               818 	jc	00107$
   01AB 75 A3 00            819 	mov	_CANMSG,#0x00
   01AE 05 0C               820 	inc	_num_data
   01B0 80 F3               821 	sjmp	00101$
   01B2                     822 00107$:
                    0041    823 	C$can.c$41$1$1 ==.
                            824 ;	can.c:41: for (num_channel = 0; num_channel < 15; num_channel++)
   01B2 05 0B               825 	inc	_num_channel
   01B4 80 C1               826 	sjmp	00105$
   01B6                     827 00108$:
                    0045    828 	C$can.c$59$1$1 ==.
                            829 ;	can.c:59: CANBT1 = BRP<<1;
   01B6 75 B4 06            830 	mov	_CANBT1,#0x06
                    0048    831 	C$can.c$60$1$1 ==.
                            832 ;	can.c:60: CANBT2 = (SJW<<5) | (PRS<<1);
   01B9 75 B5 6E            833 	mov	_CANBT2,#0x6E
                    004B    834 	C$can.c$61$1$1 ==.
                            835 ;	can.c:61: CANBT3 = (PHS2<<4) | (PHS1<<1);
   01BC 75 B6 3C            836 	mov	_CANBT3,#0x3C
                    004E    837 	C$can.c$62$1$1 ==.
                            838 ;	can.c:62: CANGCON = MSK_CANGCON_ENA;             /* start CAN */
   01BF 75 AB 02            839 	mov	_CANGCON,#0x02
                    0051    840 	C$can.c$65$1$1 ==.
                            841 ;	can.c:65: CANPAGE = (0 << 4);                     /* CHNB=0x00; objekt 0 */
   01C2 75 B1 00            842 	mov	_CANPAGE,#0x00
                    0054    843 	C$can.c$69$1$1 ==.
                            844 ;	can.c:69: CANIDT1 = ID_TX >> 3;
   01C5 75 BC 78            845 	mov	_CANIDT1,#0x78
                    0057    846 	C$can.c$70$1$1 ==.
                            847 ;	can.c:70: CANIDT2 = ID_TX << 5;
   01C8 75 BD 60            848 	mov	_CANIDT2,#0x60
                    005A    849 	C$can.c$77$1$1 ==.
                            850 ;	can.c:77: CANPAGE = (1 << 4);                     /* CHNB=0x01; objekt 1 */
   01CB 75 B1 10            851 	mov	_CANPAGE,#0x10
                    005D    852 	C$can.c$80$1$1 ==.
                            853 ;	can.c:80: CANIDT1 = ID_RX >> 3;
   01CE 75 BC 94            854 	mov	_CANIDT1,#0x94
                    0060    855 	C$can.c$81$1$1 ==.
                            856 ;	can.c:81: CANIDT2 = ID_RX << 5;
   01D1 75 BD 60            857 	mov	_CANIDT2,#0x60
                    0063    858 	C$can.c$82$1$1 ==.
                            859 ;	can.c:82: CANCONCH = DLC_ONE_BYTE|CH_RxENA;
   01D4 75 B3 81            860 	mov	_CANCONCH,#0x81
                    0066    861 	C$can.c$89$1$1 ==.
                            862 ;	can.c:89: CANPAGE = (2 << 4);                     /* CHNB=0x02; objekt 2 */
   01D7 75 B1 20            863 	mov	_CANPAGE,#0x20
                    0069    864 	C$can.c$102$1$1 ==.
                            865 ;	can.c:102: CANPAGE = (3 << 4);                     /* CHNB=0x03; objekt 3 */
   01DA 75 B1 30            866 	mov	_CANPAGE,#0x30
                    006C    867 	C$can.c$119$1$1 ==.
                    006C    868 	XG$CanInit$0$0 ==.
   01DD 22                  869 	ret
                            870 	.area CSEG    (CODE)
                            871 	.area CONST   (CODE)
                            872 	.area XINIT   (CODE)
                            873 	.area CABS    (ABS,CODE)
