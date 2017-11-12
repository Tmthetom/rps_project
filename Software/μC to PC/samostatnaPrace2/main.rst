                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 23 17:14:08 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SendBuf_PARM_2
                             13 	.globl _timer1
                             14 	.globl _main
                             15 	.globl _SendBuf
                             16 	.globl _ComInit
                             17 	.globl _TimerInit
                             18 	.globl _CCF0
                             19 	.globl _CCF1
                             20 	.globl _CCF2
                             21 	.globl _CCF3
                             22 	.globl _CCF4
                             23 	.globl _CR
                             24 	.globl _CF
                             25 	.globl _ECAN
                             26 	.globl _EADC
                             27 	.globl _ETIM
                             28 	.globl _ESPI
                             29 	.globl _EX0
                             30 	.globl _ET0
                             31 	.globl _EX1
                             32 	.globl _ET1
                             33 	.globl _ES
                             34 	.globl _ET2
                             35 	.globl _EC
                             36 	.globl _EA
                             37 	.globl _RI
                             38 	.globl _TI
                             39 	.globl _RB8
                             40 	.globl _TB8
                             41 	.globl _REN
                             42 	.globl _SM2
                             43 	.globl _SM1
                             44 	.globl _FE
                             45 	.globl _SM0
                             46 	.globl _CP_RL2
                             47 	.globl _C_T2
                             48 	.globl _TR2
                             49 	.globl _EXEN2
                             50 	.globl _TCLK
                             51 	.globl _RCLK
                             52 	.globl _EXF2
                             53 	.globl _TF2
                             54 	.globl _IT0
                             55 	.globl _IE0
                             56 	.globl _IT1
                             57 	.globl _IE1
                             58 	.globl _TR0
                             59 	.globl _TF0
                             60 	.globl _TR1
                             61 	.globl _TF1
                             62 	.globl _ACC_7
                             63 	.globl _ACC_6
                             64 	.globl _ACC_5
                             65 	.globl _ACC_4
                             66 	.globl _ACC_3
                             67 	.globl _ACC_2
                             68 	.globl _ACC_1
                             69 	.globl _ACC_0
                             70 	.globl _P
                             71 	.globl _UD
                             72 	.globl _OV
                             73 	.globl _RS0
                             74 	.globl _RS1
                             75 	.globl _F0
                             76 	.globl _AC
                             77 	.globl _CY
                             78 	.globl _P4_7
                             79 	.globl _P4_6
                             80 	.globl _P4_5
                             81 	.globl _P4_4
                             82 	.globl _P4_3
                             83 	.globl _P4_2
                             84 	.globl _P4_1
                             85 	.globl _P4_0
                             86 	.globl _RXD
                             87 	.globl _TXD
                             88 	.globl _INT0
                             89 	.globl _INT1
                             90 	.globl _T0
                             91 	.globl _T1
                             92 	.globl _WR
                             93 	.globl _RD
                             94 	.globl _P3_0
                             95 	.globl _P3_1
                             96 	.globl _P3_2
                             97 	.globl _P3_3
                             98 	.globl _P3_4
                             99 	.globl _P3_5
                            100 	.globl _P3_6
                            101 	.globl _P3_7
                            102 	.globl _P2_0
                            103 	.globl _P2_1
                            104 	.globl _P2_2
                            105 	.globl _P2_3
                            106 	.globl _P2_4
                            107 	.globl _P2_5
                            108 	.globl _P2_6
                            109 	.globl _P2_7
                            110 	.globl _P1_0
                            111 	.globl _P1_1
                            112 	.globl _P1_2
                            113 	.globl _P1_3
                            114 	.globl _P1_4
                            115 	.globl _P1_5
                            116 	.globl _P1_6
                            117 	.globl _P1_7
                            118 	.globl _P0_0
                            119 	.globl _P0_1
                            120 	.globl _P0_2
                            121 	.globl _P0_3
                            122 	.globl _P0_4
                            123 	.globl _P0_5
                            124 	.globl _P0_6
                            125 	.globl _P0_7
                            126 	.globl _SPDAT
                            127 	.globl _SPSCR
                            128 	.globl _SPCON
                            129 	.globl _CANEN2
                            130 	.globl _CANEN1
                            131 	.globl _CANIDM4
                            132 	.globl _CANIDM3
                            133 	.globl _CANIDM2
                            134 	.globl _CANIDM1
                            135 	.globl _CANIE2
                            136 	.globl _CANIE1
                            137 	.globl _CANGIE
                            138 	.globl _CANIDT4
                            139 	.globl _CANIDT3
                            140 	.globl _CANIDT2
                            141 	.globl _CANIDT1
                            142 	.globl _CANSIT2
                            143 	.globl _CANSIT1
                            144 	.globl _CANBT3
                            145 	.globl _CANBT2
                            146 	.globl _CANBT1
                            147 	.globl _CANCONCH
                            148 	.globl _CANSTCH
                            149 	.globl _CANPAGE
                            150 	.globl _CANSTMPH
                            151 	.globl _CANSTMPL
                            152 	.globl _CANTIMH
                            153 	.globl _CANTIML
                            154 	.globl _CANGCON
                            155 	.globl _CANGSTA
                            156 	.globl _CANTTCH
                            157 	.globl _CANTTCL
                            158 	.globl _CANMSG
                            159 	.globl _CANTCON
                            160 	.globl _CANREC
                            161 	.globl _CANTEC
                            162 	.globl _CANGIT
                            163 	.globl _CCAPM4
                            164 	.globl _CCAP4L
                            165 	.globl _CCAP4H
                            166 	.globl _CCAPM3
                            167 	.globl _CCAP3L
                            168 	.globl _CCAP3H
                            169 	.globl _CCAPM2
                            170 	.globl _CCAP2L
                            171 	.globl _CCAP2H
                            172 	.globl _CCAPM1
                            173 	.globl _CCAP1L
                            174 	.globl _CCAP1H
                            175 	.globl _CCAPM0
                            176 	.globl _CCAP0L
                            177 	.globl _CCAP0H
                            178 	.globl _CL
                            179 	.globl _CH
                            180 	.globl _CMOD
                            181 	.globl _CCON
                            182 	.globl _IEN1
                            183 	.globl _IPH0
                            184 	.globl _IPL0
                            185 	.globl _IE
                            186 	.globl _IEN
                            187 	.globl _IEN0
                            188 	.globl _IPH1
                            189 	.globl _IPL1
                            190 	.globl _AUXR1
                            191 	.globl _AUXR
                            192 	.globl _EECON
                            193 	.globl _FSTA
                            194 	.globl _FCON
                            195 	.globl _ADCF
                            196 	.globl _ADDH
                            197 	.globl _ADDL
                            198 	.globl _ADCON
                            199 	.globl _ADCLK
                            200 	.globl _SADDR
                            201 	.globl _SADEN
                            202 	.globl _SBUF
                            203 	.globl _SCON
                            204 	.globl _WDTPRG
                            205 	.globl _WDTRST
                            206 	.globl _RCAP2H
                            207 	.globl _RCAP2L
                            208 	.globl _TH2
                            209 	.globl _TH1
                            210 	.globl _TH0
                            211 	.globl _TL2
                            212 	.globl _TL1
                            213 	.globl _TL0
                            214 	.globl _T2MOD
                            215 	.globl _T2CON
                            216 	.globl _TMOD
                            217 	.globl _TCON
                            218 	.globl _CKCON1
                            219 	.globl _CKCON0
                            220 	.globl _CKCON
                            221 	.globl _PCON
                            222 	.globl _DPTR
                            223 	.globl _DPH
                            224 	.globl _DPL
                            225 	.globl _SP
                            226 	.globl _B
                            227 	.globl _ACC
                            228 	.globl _PSW
                            229 	.globl _P4
                            230 	.globl _P3
                            231 	.globl _P2
                            232 	.globl _P1
                            233 	.globl _P0
                            234 	.globl _bfout
                            235 	.globl _bfin
                            236 	.globl _prep
                            237 	.globl _val
                            238 	.globl _valWord
                            239 	.globl _ix
                            240 	.globl _itx
                            241 	.globl _cnt_ticks
                            242 	.globl _stav
                            243 ;--------------------------------------------------------
                            244 ; special function registers
                            245 ;--------------------------------------------------------
                            246 	.area RSEG    (ABS,DATA)
   0000                     247 	.org 0x0000
                    0080    248 G$P0$0$0 == 0x0080
                    0080    249 _P0	=	0x0080
                    0090    250 G$P1$0$0 == 0x0090
                    0090    251 _P1	=	0x0090
                    00A0    252 G$P2$0$0 == 0x00a0
                    00A0    253 _P2	=	0x00a0
                    00B0    254 G$P3$0$0 == 0x00b0
                    00B0    255 _P3	=	0x00b0
                    00C0    256 G$P4$0$0 == 0x00c0
                    00C0    257 _P4	=	0x00c0
                    00D0    258 G$PSW$0$0 == 0x00d0
                    00D0    259 _PSW	=	0x00d0
                    00E0    260 G$ACC$0$0 == 0x00e0
                    00E0    261 _ACC	=	0x00e0
                    00F0    262 G$B$0$0 == 0x00f0
                    00F0    263 _B	=	0x00f0
                    0081    264 G$SP$0$0 == 0x0081
                    0081    265 _SP	=	0x0081
                    0082    266 G$DPL$0$0 == 0x0082
                    0082    267 _DPL	=	0x0082
                    0083    268 G$DPH$0$0 == 0x0083
                    0083    269 _DPH	=	0x0083
                    8382    270 G$DPTR$0$0 == 0x8382
                    8382    271 _DPTR	=	0x8382
                    0087    272 G$PCON$0$0 == 0x0087
                    0087    273 _PCON	=	0x0087
                    008F    274 G$CKCON$0$0 == 0x008f
                    008F    275 _CKCON	=	0x008f
                    008F    276 G$CKCON0$0$0 == 0x008f
                    008F    277 _CKCON0	=	0x008f
                    009F    278 G$CKCON1$0$0 == 0x009f
                    009F    279 _CKCON1	=	0x009f
                    0088    280 G$TCON$0$0 == 0x0088
                    0088    281 _TCON	=	0x0088
                    0089    282 G$TMOD$0$0 == 0x0089
                    0089    283 _TMOD	=	0x0089
                    00C8    284 G$T2CON$0$0 == 0x00c8
                    00C8    285 _T2CON	=	0x00c8
                    00C9    286 G$T2MOD$0$0 == 0x00c9
                    00C9    287 _T2MOD	=	0x00c9
                    008A    288 G$TL0$0$0 == 0x008a
                    008A    289 _TL0	=	0x008a
                    008B    290 G$TL1$0$0 == 0x008b
                    008B    291 _TL1	=	0x008b
                    00CC    292 G$TL2$0$0 == 0x00cc
                    00CC    293 _TL2	=	0x00cc
                    008C    294 G$TH0$0$0 == 0x008c
                    008C    295 _TH0	=	0x008c
                    008D    296 G$TH1$0$0 == 0x008d
                    008D    297 _TH1	=	0x008d
                    00CD    298 G$TH2$0$0 == 0x00cd
                    00CD    299 _TH2	=	0x00cd
                    00CA    300 G$RCAP2L$0$0 == 0x00ca
                    00CA    301 _RCAP2L	=	0x00ca
                    00CB    302 G$RCAP2H$0$0 == 0x00cb
                    00CB    303 _RCAP2H	=	0x00cb
                    00A6    304 G$WDTRST$0$0 == 0x00a6
                    00A6    305 _WDTRST	=	0x00a6
                    00A7    306 G$WDTPRG$0$0 == 0x00a7
                    00A7    307 _WDTPRG	=	0x00a7
                    0098    308 G$SCON$0$0 == 0x0098
                    0098    309 _SCON	=	0x0098
                    0099    310 G$SBUF$0$0 == 0x0099
                    0099    311 _SBUF	=	0x0099
                    00B9    312 G$SADEN$0$0 == 0x00b9
                    00B9    313 _SADEN	=	0x00b9
                    00A9    314 G$SADDR$0$0 == 0x00a9
                    00A9    315 _SADDR	=	0x00a9
                    00F2    316 G$ADCLK$0$0 == 0x00f2
                    00F2    317 _ADCLK	=	0x00f2
                    00F3    318 G$ADCON$0$0 == 0x00f3
                    00F3    319 _ADCON	=	0x00f3
                    00F4    320 G$ADDL$0$0 == 0x00f4
                    00F4    321 _ADDL	=	0x00f4
                    00F5    322 G$ADDH$0$0 == 0x00f5
                    00F5    323 _ADDH	=	0x00f5
                    00F6    324 G$ADCF$0$0 == 0x00f6
                    00F6    325 _ADCF	=	0x00f6
                    00D1    326 G$FCON$0$0 == 0x00d1
                    00D1    327 _FCON	=	0x00d1
                    00D3    328 G$FSTA$0$0 == 0x00d3
                    00D3    329 _FSTA	=	0x00d3
                    00D2    330 G$EECON$0$0 == 0x00d2
                    00D2    331 _EECON	=	0x00d2
                    008E    332 G$AUXR$0$0 == 0x008e
                    008E    333 _AUXR	=	0x008e
                    00A2    334 G$AUXR1$0$0 == 0x00a2
                    00A2    335 _AUXR1	=	0x00a2
                    00F8    336 G$IPL1$0$0 == 0x00f8
                    00F8    337 _IPL1	=	0x00f8
                    00F7    338 G$IPH1$0$0 == 0x00f7
                    00F7    339 _IPH1	=	0x00f7
                    00A8    340 G$IEN0$0$0 == 0x00a8
                    00A8    341 _IEN0	=	0x00a8
                    00A8    342 G$IEN$0$0 == 0x00a8
                    00A8    343 _IEN	=	0x00a8
                    00A8    344 G$IE$0$0 == 0x00a8
                    00A8    345 _IE	=	0x00a8
                    00B8    346 G$IPL0$0$0 == 0x00b8
                    00B8    347 _IPL0	=	0x00b8
                    00B7    348 G$IPH0$0$0 == 0x00b7
                    00B7    349 _IPH0	=	0x00b7
                    00E8    350 G$IEN1$0$0 == 0x00e8
                    00E8    351 _IEN1	=	0x00e8
                    00D8    352 G$CCON$0$0 == 0x00d8
                    00D8    353 _CCON	=	0x00d8
                    00D9    354 G$CMOD$0$0 == 0x00d9
                    00D9    355 _CMOD	=	0x00d9
                    00F9    356 G$CH$0$0 == 0x00f9
                    00F9    357 _CH	=	0x00f9
                    00E9    358 G$CL$0$0 == 0x00e9
                    00E9    359 _CL	=	0x00e9
                    00FA    360 G$CCAP0H$0$0 == 0x00fa
                    00FA    361 _CCAP0H	=	0x00fa
                    00EA    362 G$CCAP0L$0$0 == 0x00ea
                    00EA    363 _CCAP0L	=	0x00ea
                    00DA    364 G$CCAPM0$0$0 == 0x00da
                    00DA    365 _CCAPM0	=	0x00da
                    00FB    366 G$CCAP1H$0$0 == 0x00fb
                    00FB    367 _CCAP1H	=	0x00fb
                    00EB    368 G$CCAP1L$0$0 == 0x00eb
                    00EB    369 _CCAP1L	=	0x00eb
                    00DB    370 G$CCAPM1$0$0 == 0x00db
                    00DB    371 _CCAPM1	=	0x00db
                    00FC    372 G$CCAP2H$0$0 == 0x00fc
                    00FC    373 _CCAP2H	=	0x00fc
                    00EC    374 G$CCAP2L$0$0 == 0x00ec
                    00EC    375 _CCAP2L	=	0x00ec
                    00DC    376 G$CCAPM2$0$0 == 0x00dc
                    00DC    377 _CCAPM2	=	0x00dc
                    00FD    378 G$CCAP3H$0$0 == 0x00fd
                    00FD    379 _CCAP3H	=	0x00fd
                    00ED    380 G$CCAP3L$0$0 == 0x00ed
                    00ED    381 _CCAP3L	=	0x00ed
                    00DD    382 G$CCAPM3$0$0 == 0x00dd
                    00DD    383 _CCAPM3	=	0x00dd
                    00FE    384 G$CCAP4H$0$0 == 0x00fe
                    00FE    385 _CCAP4H	=	0x00fe
                    00EE    386 G$CCAP4L$0$0 == 0x00ee
                    00EE    387 _CCAP4L	=	0x00ee
                    00DE    388 G$CCAPM4$0$0 == 0x00de
                    00DE    389 _CCAPM4	=	0x00de
                    009B    390 G$CANGIT$0$0 == 0x009b
                    009B    391 _CANGIT	=	0x009b
                    009C    392 G$CANTEC$0$0 == 0x009c
                    009C    393 _CANTEC	=	0x009c
                    009D    394 G$CANREC$0$0 == 0x009d
                    009D    395 _CANREC	=	0x009d
                    00A1    396 G$CANTCON$0$0 == 0x00a1
                    00A1    397 _CANTCON	=	0x00a1
                    00A3    398 G$CANMSG$0$0 == 0x00a3
                    00A3    399 _CANMSG	=	0x00a3
                    00A4    400 G$CANTTCL$0$0 == 0x00a4
                    00A4    401 _CANTTCL	=	0x00a4
                    00A5    402 G$CANTTCH$0$0 == 0x00a5
                    00A5    403 _CANTTCH	=	0x00a5
                    00AA    404 G$CANGSTA$0$0 == 0x00aa
                    00AA    405 _CANGSTA	=	0x00aa
                    00AB    406 G$CANGCON$0$0 == 0x00ab
                    00AB    407 _CANGCON	=	0x00ab
                    00AC    408 G$CANTIML$0$0 == 0x00ac
                    00AC    409 _CANTIML	=	0x00ac
                    00AD    410 G$CANTIMH$0$0 == 0x00ad
                    00AD    411 _CANTIMH	=	0x00ad
                    00AE    412 G$CANSTMPL$0$0 == 0x00ae
                    00AE    413 _CANSTMPL	=	0x00ae
                    00AF    414 G$CANSTMPH$0$0 == 0x00af
                    00AF    415 _CANSTMPH	=	0x00af
                    00B1    416 G$CANPAGE$0$0 == 0x00b1
                    00B1    417 _CANPAGE	=	0x00b1
                    00B2    418 G$CANSTCH$0$0 == 0x00b2
                    00B2    419 _CANSTCH	=	0x00b2
                    00B3    420 G$CANCONCH$0$0 == 0x00b3
                    00B3    421 _CANCONCH	=	0x00b3
                    00B4    422 G$CANBT1$0$0 == 0x00b4
                    00B4    423 _CANBT1	=	0x00b4
                    00B5    424 G$CANBT2$0$0 == 0x00b5
                    00B5    425 _CANBT2	=	0x00b5
                    00B6    426 G$CANBT3$0$0 == 0x00b6
                    00B6    427 _CANBT3	=	0x00b6
                    00BA    428 G$CANSIT1$0$0 == 0x00ba
                    00BA    429 _CANSIT1	=	0x00ba
                    00BB    430 G$CANSIT2$0$0 == 0x00bb
                    00BB    431 _CANSIT2	=	0x00bb
                    00BC    432 G$CANIDT1$0$0 == 0x00bc
                    00BC    433 _CANIDT1	=	0x00bc
                    00BD    434 G$CANIDT2$0$0 == 0x00bd
                    00BD    435 _CANIDT2	=	0x00bd
                    00BE    436 G$CANIDT3$0$0 == 0x00be
                    00BE    437 _CANIDT3	=	0x00be
                    00BF    438 G$CANIDT4$0$0 == 0x00bf
                    00BF    439 _CANIDT4	=	0x00bf
                    00C1    440 G$CANGIE$0$0 == 0x00c1
                    00C1    441 _CANGIE	=	0x00c1
                    00C2    442 G$CANIE1$0$0 == 0x00c2
                    00C2    443 _CANIE1	=	0x00c2
                    00C3    444 G$CANIE2$0$0 == 0x00c3
                    00C3    445 _CANIE2	=	0x00c3
                    00C4    446 G$CANIDM1$0$0 == 0x00c4
                    00C4    447 _CANIDM1	=	0x00c4
                    00C5    448 G$CANIDM2$0$0 == 0x00c5
                    00C5    449 _CANIDM2	=	0x00c5
                    00C6    450 G$CANIDM3$0$0 == 0x00c6
                    00C6    451 _CANIDM3	=	0x00c6
                    00C7    452 G$CANIDM4$0$0 == 0x00c7
                    00C7    453 _CANIDM4	=	0x00c7
                    00CE    454 G$CANEN1$0$0 == 0x00ce
                    00CE    455 _CANEN1	=	0x00ce
                    00CF    456 G$CANEN2$0$0 == 0x00cf
                    00CF    457 _CANEN2	=	0x00cf
                    00D4    458 G$SPCON$0$0 == 0x00d4
                    00D4    459 _SPCON	=	0x00d4
                    00D5    460 G$SPSCR$0$0 == 0x00d5
                    00D5    461 _SPSCR	=	0x00d5
                    00D6    462 G$SPDAT$0$0 == 0x00d6
                    00D6    463 _SPDAT	=	0x00d6
                            464 ;--------------------------------------------------------
                            465 ; special function bits
                            466 ;--------------------------------------------------------
                            467 	.area RSEG    (ABS,DATA)
   0000                     468 	.org 0x0000
                    0087    469 G$P0_7$0$0 == 0x0087
                    0087    470 _P0_7	=	0x0087
                    0086    471 G$P0_6$0$0 == 0x0086
                    0086    472 _P0_6	=	0x0086
                    0085    473 G$P0_5$0$0 == 0x0085
                    0085    474 _P0_5	=	0x0085
                    0084    475 G$P0_4$0$0 == 0x0084
                    0084    476 _P0_4	=	0x0084
                    0083    477 G$P0_3$0$0 == 0x0083
                    0083    478 _P0_3	=	0x0083
                    0082    479 G$P0_2$0$0 == 0x0082
                    0082    480 _P0_2	=	0x0082
                    0081    481 G$P0_1$0$0 == 0x0081
                    0081    482 _P0_1	=	0x0081
                    0080    483 G$P0_0$0$0 == 0x0080
                    0080    484 _P0_0	=	0x0080
                    0097    485 G$P1_7$0$0 == 0x0097
                    0097    486 _P1_7	=	0x0097
                    0096    487 G$P1_6$0$0 == 0x0096
                    0096    488 _P1_6	=	0x0096
                    0095    489 G$P1_5$0$0 == 0x0095
                    0095    490 _P1_5	=	0x0095
                    0094    491 G$P1_4$0$0 == 0x0094
                    0094    492 _P1_4	=	0x0094
                    0093    493 G$P1_3$0$0 == 0x0093
                    0093    494 _P1_3	=	0x0093
                    0092    495 G$P1_2$0$0 == 0x0092
                    0092    496 _P1_2	=	0x0092
                    0091    497 G$P1_1$0$0 == 0x0091
                    0091    498 _P1_1	=	0x0091
                    0090    499 G$P1_0$0$0 == 0x0090
                    0090    500 _P1_0	=	0x0090
                    00A7    501 G$P2_7$0$0 == 0x00a7
                    00A7    502 _P2_7	=	0x00a7
                    00A6    503 G$P2_6$0$0 == 0x00a6
                    00A6    504 _P2_6	=	0x00a6
                    00A5    505 G$P2_5$0$0 == 0x00a5
                    00A5    506 _P2_5	=	0x00a5
                    00A4    507 G$P2_4$0$0 == 0x00a4
                    00A4    508 _P2_4	=	0x00a4
                    00A3    509 G$P2_3$0$0 == 0x00a3
                    00A3    510 _P2_3	=	0x00a3
                    00A2    511 G$P2_2$0$0 == 0x00a2
                    00A2    512 _P2_2	=	0x00a2
                    00A1    513 G$P2_1$0$0 == 0x00a1
                    00A1    514 _P2_1	=	0x00a1
                    00A0    515 G$P2_0$0$0 == 0x00a0
                    00A0    516 _P2_0	=	0x00a0
                    00B7    517 G$P3_7$0$0 == 0x00b7
                    00B7    518 _P3_7	=	0x00b7
                    00B6    519 G$P3_6$0$0 == 0x00b6
                    00B6    520 _P3_6	=	0x00b6
                    00B5    521 G$P3_5$0$0 == 0x00b5
                    00B5    522 _P3_5	=	0x00b5
                    00B4    523 G$P3_4$0$0 == 0x00b4
                    00B4    524 _P3_4	=	0x00b4
                    00B3    525 G$P3_3$0$0 == 0x00b3
                    00B3    526 _P3_3	=	0x00b3
                    00B2    527 G$P3_2$0$0 == 0x00b2
                    00B2    528 _P3_2	=	0x00b2
                    00B1    529 G$P3_1$0$0 == 0x00b1
                    00B1    530 _P3_1	=	0x00b1
                    00B0    531 G$P3_0$0$0 == 0x00b0
                    00B0    532 _P3_0	=	0x00b0
                    00B7    533 G$RD$0$0 == 0x00b7
                    00B7    534 _RD	=	0x00b7
                    00B6    535 G$WR$0$0 == 0x00b6
                    00B6    536 _WR	=	0x00b6
                    00B5    537 G$T1$0$0 == 0x00b5
                    00B5    538 _T1	=	0x00b5
                    00B4    539 G$T0$0$0 == 0x00b4
                    00B4    540 _T0	=	0x00b4
                    00B3    541 G$INT1$0$0 == 0x00b3
                    00B3    542 _INT1	=	0x00b3
                    00B2    543 G$INT0$0$0 == 0x00b2
                    00B2    544 _INT0	=	0x00b2
                    00B1    545 G$TXD$0$0 == 0x00b1
                    00B1    546 _TXD	=	0x00b1
                    00B0    547 G$RXD$0$0 == 0x00b0
                    00B0    548 _RXD	=	0x00b0
                    00C0    549 G$P4_0$0$0 == 0x00c0
                    00C0    550 _P4_0	=	0x00c0
                    00C1    551 G$P4_1$0$0 == 0x00c1
                    00C1    552 _P4_1	=	0x00c1
                    00C2    553 G$P4_2$0$0 == 0x00c2
                    00C2    554 _P4_2	=	0x00c2
                    00C3    555 G$P4_3$0$0 == 0x00c3
                    00C3    556 _P4_3	=	0x00c3
                    00C4    557 G$P4_4$0$0 == 0x00c4
                    00C4    558 _P4_4	=	0x00c4
                    00C5    559 G$P4_5$0$0 == 0x00c5
                    00C5    560 _P4_5	=	0x00c5
                    00C6    561 G$P4_6$0$0 == 0x00c6
                    00C6    562 _P4_6	=	0x00c6
                    00C7    563 G$P4_7$0$0 == 0x00c7
                    00C7    564 _P4_7	=	0x00c7
                    00D7    565 G$CY$0$0 == 0x00d7
                    00D7    566 _CY	=	0x00d7
                    00D6    567 G$AC$0$0 == 0x00d6
                    00D6    568 _AC	=	0x00d6
                    00D5    569 G$F0$0$0 == 0x00d5
                    00D5    570 _F0	=	0x00d5
                    00D4    571 G$RS1$0$0 == 0x00d4
                    00D4    572 _RS1	=	0x00d4
                    00D3    573 G$RS0$0$0 == 0x00d3
                    00D3    574 _RS0	=	0x00d3
                    00D2    575 G$OV$0$0 == 0x00d2
                    00D2    576 _OV	=	0x00d2
                    00D1    577 G$UD$0$0 == 0x00d1
                    00D1    578 _UD	=	0x00d1
                    00D0    579 G$P$0$0 == 0x00d0
                    00D0    580 _P	=	0x00d0
                    00E0    581 G$ACC_0$0$0 == 0x00e0
                    00E0    582 _ACC_0	=	0x00e0
                    00E1    583 G$ACC_1$0$0 == 0x00e1
                    00E1    584 _ACC_1	=	0x00e1
                    00E2    585 G$ACC_2$0$0 == 0x00e2
                    00E2    586 _ACC_2	=	0x00e2
                    00E3    587 G$ACC_3$0$0 == 0x00e3
                    00E3    588 _ACC_3	=	0x00e3
                    00E4    589 G$ACC_4$0$0 == 0x00e4
                    00E4    590 _ACC_4	=	0x00e4
                    00E5    591 G$ACC_5$0$0 == 0x00e5
                    00E5    592 _ACC_5	=	0x00e5
                    00E6    593 G$ACC_6$0$0 == 0x00e6
                    00E6    594 _ACC_6	=	0x00e6
                    00E7    595 G$ACC_7$0$0 == 0x00e7
                    00E7    596 _ACC_7	=	0x00e7
                    008F    597 G$TF1$0$0 == 0x008f
                    008F    598 _TF1	=	0x008f
                    008E    599 G$TR1$0$0 == 0x008e
                    008E    600 _TR1	=	0x008e
                    008D    601 G$TF0$0$0 == 0x008d
                    008D    602 _TF0	=	0x008d
                    008C    603 G$TR0$0$0 == 0x008c
                    008C    604 _TR0	=	0x008c
                    008B    605 G$IE1$0$0 == 0x008b
                    008B    606 _IE1	=	0x008b
                    008A    607 G$IT1$0$0 == 0x008a
                    008A    608 _IT1	=	0x008a
                    0089    609 G$IE0$0$0 == 0x0089
                    0089    610 _IE0	=	0x0089
                    0088    611 G$IT0$0$0 == 0x0088
                    0088    612 _IT0	=	0x0088
                    00CF    613 G$TF2$0$0 == 0x00cf
                    00CF    614 _TF2	=	0x00cf
                    00CE    615 G$EXF2$0$0 == 0x00ce
                    00CE    616 _EXF2	=	0x00ce
                    00CD    617 G$RCLK$0$0 == 0x00cd
                    00CD    618 _RCLK	=	0x00cd
                    00CC    619 G$TCLK$0$0 == 0x00cc
                    00CC    620 _TCLK	=	0x00cc
                    00CB    621 G$EXEN2$0$0 == 0x00cb
                    00CB    622 _EXEN2	=	0x00cb
                    00CA    623 G$TR2$0$0 == 0x00ca
                    00CA    624 _TR2	=	0x00ca
                    00C9    625 G$C_T2$0$0 == 0x00c9
                    00C9    626 _C_T2	=	0x00c9
                    00C8    627 G$CP_RL2$0$0 == 0x00c8
                    00C8    628 _CP_RL2	=	0x00c8
                    009F    629 G$SM0$0$0 == 0x009f
                    009F    630 _SM0	=	0x009f
                    009F    631 G$FE$0$0 == 0x009f
                    009F    632 _FE	=	0x009f
                    009E    633 G$SM1$0$0 == 0x009e
                    009E    634 _SM1	=	0x009e
                    009D    635 G$SM2$0$0 == 0x009d
                    009D    636 _SM2	=	0x009d
                    009C    637 G$REN$0$0 == 0x009c
                    009C    638 _REN	=	0x009c
                    009B    639 G$TB8$0$0 == 0x009b
                    009B    640 _TB8	=	0x009b
                    009A    641 G$RB8$0$0 == 0x009a
                    009A    642 _RB8	=	0x009a
                    0099    643 G$TI$0$0 == 0x0099
                    0099    644 _TI	=	0x0099
                    0098    645 G$RI$0$0 == 0x0098
                    0098    646 _RI	=	0x0098
                    00AF    647 G$EA$0$0 == 0x00af
                    00AF    648 _EA	=	0x00af
                    00AE    649 G$EC$0$0 == 0x00ae
                    00AE    650 _EC	=	0x00ae
                    00AD    651 G$ET2$0$0 == 0x00ad
                    00AD    652 _ET2	=	0x00ad
                    00AC    653 G$ES$0$0 == 0x00ac
                    00AC    654 _ES	=	0x00ac
                    00AB    655 G$ET1$0$0 == 0x00ab
                    00AB    656 _ET1	=	0x00ab
                    00AA    657 G$EX1$0$0 == 0x00aa
                    00AA    658 _EX1	=	0x00aa
                    00A9    659 G$ET0$0$0 == 0x00a9
                    00A9    660 _ET0	=	0x00a9
                    00A8    661 G$EX0$0$0 == 0x00a8
                    00A8    662 _EX0	=	0x00a8
                    00EB    663 G$ESPI$0$0 == 0x00eb
                    00EB    664 _ESPI	=	0x00eb
                    00EA    665 G$ETIM$0$0 == 0x00ea
                    00EA    666 _ETIM	=	0x00ea
                    00E9    667 G$EADC$0$0 == 0x00e9
                    00E9    668 _EADC	=	0x00e9
                    00E8    669 G$ECAN$0$0 == 0x00e8
                    00E8    670 _ECAN	=	0x00e8
                    00DF    671 G$CF$0$0 == 0x00df
                    00DF    672 _CF	=	0x00df
                    00DE    673 G$CR$0$0 == 0x00de
                    00DE    674 _CR	=	0x00de
                    00DC    675 G$CCF4$0$0 == 0x00dc
                    00DC    676 _CCF4	=	0x00dc
                    00DB    677 G$CCF3$0$0 == 0x00db
                    00DB    678 _CCF3	=	0x00db
                    00DA    679 G$CCF2$0$0 == 0x00da
                    00DA    680 _CCF2	=	0x00da
                    00D9    681 G$CCF1$0$0 == 0x00d9
                    00D9    682 _CCF1	=	0x00d9
                    00D8    683 G$CCF0$0$0 == 0x00d8
                    00D8    684 _CCF0	=	0x00d8
                            685 ;--------------------------------------------------------
                            686 ; overlayable register banks
                            687 ;--------------------------------------------------------
                            688 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     689 	.ds 8
                            690 ;--------------------------------------------------------
                            691 ; overlayable bit register bank
                            692 ;--------------------------------------------------------
                            693 	.area BIT_BANK	(REL,OVR,DATA)
   0022                     694 bits:
   0022                     695 	.ds 1
                    8000    696 	b0 = bits[0]
                    8100    697 	b1 = bits[1]
                    8200    698 	b2 = bits[2]
                    8300    699 	b3 = bits[3]
                    8400    700 	b4 = bits[4]
                    8500    701 	b5 = bits[5]
                    8600    702 	b6 = bits[6]
                    8700    703 	b7 = bits[7]
                            704 ;--------------------------------------------------------
                            705 ; internal ram data
                            706 ;--------------------------------------------------------
                            707 	.area DSEG    (DATA)
                    0000    708 G$stav$0$0==.
   0008                     709 _stav::
   0008                     710 	.ds 1
                    0001    711 G$cnt_ticks$0$0==.
   0009                     712 _cnt_ticks::
   0009                     713 	.ds 1
                    0002    714 G$itx$0$0==.
   000A                     715 _itx::
   000A                     716 	.ds 2
                    0004    717 G$ix$0$0==.
   000C                     718 _ix::
   000C                     719 	.ds 2
                    0006    720 G$valWord$0$0==.
   000E                     721 _valWord::
   000E                     722 	.ds 2
                    0008    723 G$val$0$0==.
   0010                     724 _val::
   0010                     725 	.ds 2
                            726 ;--------------------------------------------------------
                            727 ; overlayable items in internal ram 
                            728 ;--------------------------------------------------------
                            729 	.area	OSEG    (OVR,DATA)
                    0000    730 LSendBuf$len$1$1==.
   006C                     731 _SendBuf_PARM_2::
   006C                     732 	.ds 1
                            733 ;--------------------------------------------------------
                            734 ; Stack segment in internal ram 
                            735 ;--------------------------------------------------------
                            736 	.area	SSEG	(DATA)
   0078                     737 __start__stack:
   0078                     738 	.ds	1
                            739 
                            740 ;--------------------------------------------------------
                            741 ; indirectly addressable internal ram data
                            742 ;--------------------------------------------------------
                            743 	.area ISEG    (DATA)
                            744 ;--------------------------------------------------------
                            745 ; absolute internal ram data
                            746 ;--------------------------------------------------------
                            747 	.area IABS    (ABS,DATA)
                            748 	.area IABS    (ABS,DATA)
                            749 ;--------------------------------------------------------
                            750 ; bit data
                            751 ;--------------------------------------------------------
                            752 	.area BSEG    (BIT)
                    0000    753 G$prep$0$0==.
   0000                     754 _prep::
   0000                     755 	.ds 1
                            756 ;--------------------------------------------------------
                            757 ; paged external ram data
                            758 ;--------------------------------------------------------
                            759 	.area PSEG    (PAG,XDATA)
                            760 ;--------------------------------------------------------
                            761 ; external ram data
                            762 ;--------------------------------------------------------
                            763 	.area XSEG    (XDATA)
                    0000    764 G$bfin$0$0==.
   0000                     765 _bfin::
   0000                     766 	.ds 256
                    0100    767 G$bfout$0$0==.
   0100                     768 _bfout::
   0100                     769 	.ds 256
                            770 ;--------------------------------------------------------
                            771 ; absolute external ram data
                            772 ;--------------------------------------------------------
                            773 	.area XABS    (ABS,XDATA)
                            774 ;--------------------------------------------------------
                            775 ; external initialized ram data
                            776 ;--------------------------------------------------------
                            777 	.area XISEG   (XDATA)
                            778 	.area HOME    (CODE)
                            779 	.area GSINIT0 (CODE)
                            780 	.area GSINIT1 (CODE)
                            781 	.area GSINIT2 (CODE)
                            782 	.area GSINIT3 (CODE)
                            783 	.area GSINIT4 (CODE)
                            784 	.area GSINIT5 (CODE)
                            785 	.area GSINIT  (CODE)
                            786 	.area GSFINAL (CODE)
                            787 	.area CSEG    (CODE)
                            788 ;--------------------------------------------------------
                            789 ; interrupt vector 
                            790 ;--------------------------------------------------------
                            791 	.area HOME    (CODE)
   0000                     792 __interrupt_vect:
   0000 02 00 13            793 	ljmp	__sdcc_gsinit_startup
   0003 32                  794 	reti
   0004                     795 	.ds	7
   000B 02 01 AC            796 	ljmp	_timer1
                            797 ;--------------------------------------------------------
                            798 ; global & static initialisations
                            799 ;--------------------------------------------------------
                            800 	.area HOME    (CODE)
                            801 	.area GSINIT  (CODE)
                            802 	.area GSFINAL (CODE)
                            803 	.area GSINIT  (CODE)
                            804 	.globl __sdcc_gsinit_startup
                            805 	.globl __sdcc_program_startup
                            806 	.globl __start__stack
                            807 	.globl __mcs51_genXINIT
                            808 	.globl __mcs51_genXRAMCLEAR
                            809 	.globl __mcs51_genRAMCLEAR
                            810 	.area GSFINAL (CODE)
   006C 02 00 0E            811 	ljmp	__sdcc_program_startup
                            812 ;--------------------------------------------------------
                            813 ; Home
                            814 ;--------------------------------------------------------
                            815 	.area HOME    (CODE)
                            816 	.area HOME    (CODE)
   000E                     817 __sdcc_program_startup:
   000E 12 00 B3            818 	lcall	_main
                            819 ;	return from main will lock up
   0011 80 FE               820 	sjmp .
                            821 ;--------------------------------------------------------
                            822 ; code
                            823 ;--------------------------------------------------------
                            824 	.area CSEG    (CODE)
                            825 ;------------------------------------------------------------
                            826 ;Allocation info for local variables in function 'TimerInit'
                            827 ;------------------------------------------------------------
                            828 ;------------------------------------------------------------
                    0000    829 	G$TimerInit$0$0 ==.
                    0000    830 	C$main.c$60$0$0 ==.
                            831 ;	main.c:60: void TimerInit()
                            832 ;	-----------------------------------------
                            833 ;	 function TimerInit
                            834 ;	-----------------------------------------
   006F                     835 _TimerInit:
                    0002    836 	ar2 = 0x02
                    0003    837 	ar3 = 0x03
                    0004    838 	ar4 = 0x04
                    0005    839 	ar5 = 0x05
                    0006    840 	ar6 = 0x06
                    0007    841 	ar7 = 0x07
                    0000    842 	ar0 = 0x00
                    0001    843 	ar1 = 0x01
                    0000    844 	C$main.c$62$1$1 ==.
                            845 ;	main.c:62: TMOD=0x11;
   006F 75 89 11            846 	mov	_TMOD,#0x11
                    0003    847 	C$main.c$63$1$1 ==.
                            848 ;	main.c:63: TR0=1;
   0072 D2 8C               849 	setb	_TR0
                    0005    850 	C$main.c$64$1$1 ==.
                            851 ;	main.c:64: EA=1;
   0074 D2 AF               852 	setb	_EA
                    0007    853 	C$main.c$65$1$1 ==.
                            854 ;	main.c:65: ET0=1;
   0076 D2 A9               855 	setb	_ET0
                    0009    856 	C$main.c$66$1$1 ==.
                            857 ;	main.c:66: cnt_ticks=0;
   0078 75 09 00            858 	mov	_cnt_ticks,#0x00
                    000C    859 	C$main.c$67$1$1 ==.
                    000C    860 	XG$TimerInit$0$0 ==.
   007B 22                  861 	ret
                            862 ;------------------------------------------------------------
                            863 ;Allocation info for local variables in function 'ComInit'
                            864 ;------------------------------------------------------------
                            865 ;------------------------------------------------------------
                    000D    866 	G$ComInit$0$0 ==.
                    000D    867 	C$main.c$70$1$1 ==.
                            868 ;	main.c:70: void ComInit()
                            869 ;	-----------------------------------------
                            870 ;	 function ComInit
                            871 ;	-----------------------------------------
   007C                     872 _ComInit:
                    000D    873 	C$main.c$73$1$1 ==.
                            874 ;	main.c:73: SCON = 0x50;   // 7,n,2
   007C 75 98 50            875 	mov	_SCON,#0x50
                    0010    876 	C$main.c$74$1$1 ==.
                            877 ;	main.c:74: RCAP2H=(word)(-NBIT)>>8;
   007F 75 CB FF            878 	mov	_RCAP2H,#0xFF
                    0013    879 	C$main.c$75$1$1 ==.
                            880 ;	main.c:75: RCAP2L=-NBIT;
   0082 75 CA DF            881 	mov	_RCAP2L,#0xDF
                    0016    882 	C$main.c$76$1$1 ==.
                            883 ;	main.c:76: T2CON=0x34;
   0085 75 C8 34            884 	mov	_T2CON,#0x34
                    0019    885 	C$main.c$77$1$1 ==.
                    0019    886 	XG$ComInit$0$0 ==.
   0088 22                  887 	ret
                            888 ;------------------------------------------------------------
                            889 ;Allocation info for local variables in function 'SendBuf'
                            890 ;------------------------------------------------------------
                            891 ;len                       Allocated with name '_SendBuf_PARM_2'
                            892 ;bf                        Allocated to registers r2 r3 r4 
                            893 ;------------------------------------------------------------
                    001A    894 	G$SendBuf$0$0 ==.
                    001A    895 	C$main.c$83$1$1 ==.
                            896 ;	main.c:83: void SendBuf(byte *bf,byte len)
                            897 ;	-----------------------------------------
                            898 ;	 function SendBuf
                            899 ;	-----------------------------------------
   0089                     900 _SendBuf:
   0089 AA 82               901 	mov	r2,dpl
   008B AB 83               902 	mov	r3,dph
   008D AC F0               903 	mov	r4,b
                    0020    904 	C$main.c$85$1$1 ==.
                            905 ;	main.c:85: while(len--)
   008F AD 6C               906 	mov	r5,_SendBuf_PARM_2
   0091                     907 00104$:
   0091 8D 06               908 	mov	ar6,r5
   0093 1D                  909 	dec	r5
   0094 EE                  910 	mov	a,r6
   0095 60 1B               911 	jz	00107$
                    0028    912 	C$main.c$87$2$2 ==.
                            913 ;	main.c:87: SBUF=*bf++ | 0x80;
   0097 8A 82               914 	mov	dpl,r2
   0099 8B 83               915 	mov	dph,r3
   009B 8C F0               916 	mov	b,r4
   009D 12 16 73            917 	lcall	__gptrget
   00A0 FE                  918 	mov	r6,a
   00A1 A3                  919 	inc	dptr
   00A2 AA 82               920 	mov	r2,dpl
   00A4 AB 83               921 	mov	r3,dph
   00A6 74 80               922 	mov	a,#0x80
   00A8 4E                  923 	orl	a,r6
   00A9 F5 99               924 	mov	_SBUF,a
                    003C    925 	C$main.c$88$2$2 ==.
                            926 ;	main.c:88: while(!TI); 
   00AB                     927 00101$:
                    003C    928 	C$main.c$89$2$2 ==.
                            929 ;	main.c:89: TI=0;
   00AB 10 99 02            930 	jbc	_TI,00115$
   00AE 80 FB               931 	sjmp	00101$
   00B0                     932 00115$:
   00B0 80 DF               933 	sjmp	00104$
   00B2                     934 00107$:
                    0043    935 	C$main.c$91$1$1 ==.
                    0043    936 	XG$SendBuf$0$0 ==.
   00B2 22                  937 	ret
                            938 ;------------------------------------------------------------
                            939 ;Allocation info for local variables in function 'main'
                            940 ;------------------------------------------------------------
                            941 ;byteIn                    Allocated to registers r2 
                            942 ;kod_r                     Allocated to registers 
                            943 ;pocet                     Allocated to registers 
                            944 ;lrc                       Allocated to registers 
                            945 ;------------------------------------------------------------
                    0044    946 	G$main$0$0 ==.
                    0044    947 	C$main.c$93$1$1 ==.
                            948 ;	main.c:93: void main(void)
                            949 ;	-----------------------------------------
                            950 ;	 function main
                            951 ;	-----------------------------------------
   00B3                     952 _main:
                    0044    953 	C$main.c$99$1$1 ==.
                            954 ;	main.c:99: itx=0;
   00B3 E4                  955 	clr	a
   00B4 F5 0A               956 	mov	_itx,a
   00B6 F5 0B               957 	mov	(_itx + 1),a
                    0049    958 	C$main.c$100$1$1 ==.
                            959 ;	main.c:100: ix=0;
   00B8 E4                  960 	clr	a
   00B9 F5 0C               961 	mov	_ix,a
   00BB F5 0D               962 	mov	(_ix + 1),a
                    004E    963 	C$main.c$101$1$1 ==.
                            964 ;	main.c:101: LcdInit();
   00BD 12 04 10            965 	lcall	_LcdInit
                    0051    966 	C$main.c$102$1$1 ==.
                            967 ;	main.c:102: AdcInit(1<<CHANNEL0);
   00C0 75 82 01            968 	mov	dpl,#0x01
   00C3 12 02 E1            969 	lcall	_AdcInit
                    0057    970 	C$main.c$104$1$1 ==.
                            971 ;	main.c:104: ComInit();
   00C6 12 00 7C            972 	lcall	_ComInit
                    005A    973 	C$main.c$105$1$1 ==.
                            974 ;	main.c:105: TimerInit();
   00C9 12 00 6F            975 	lcall	_TimerInit
                    005D    976 	C$main.c$106$1$1 ==.
                            977 ;	main.c:106: stav=stKlid;
   00CC 75 08 00            978 	mov	_stav,#0x00
                    0060    979 	C$main.c$109$1$1 ==.
                            980 ;	main.c:109: while(1)
   00CF                     981 00119$:
                    0060    982 	C$main.c$112$2$2 ==.
                            983 ;	main.c:112: if (RI) //prisel byte
   00CF 30 98 FD            984 	jnb	_RI,00119$
                    0063    985 	C$main.c$115$3$3 ==.
                            986 ;	main.c:115: byteIn=SBUF&0x7F;
   00D2 74 7F               987 	mov	a,#0x7F
   00D4 55 99               988 	anl	a,_SBUF
   00D6 FA                  989 	mov	r2,a
                    0068    990 	C$main.c$116$3$3 ==.
                            991 ;	main.c:116: RI=0;
   00D7 C2 98               992 	clr	_RI
                    006A    993 	C$main.c$117$3$3 ==.
                            994 ;	main.c:117: if(stav==stCekani && byteIn==':')
   00D9 74 01               995 	mov	a,#0x01
   00DB B5 08 12            996 	cjne	a,_stav,00113$
   00DE BA 3A 0F            997 	cjne	r2,#0x3A,00113$
                    0072    998 	C$main.c$119$4$4 ==.
                            999 ;	main.c:119: stav=stPrijem;
   00E1 75 08 02           1000 	mov	_stav,#0x02
                    0075   1001 	C$main.c$120$4$4 ==.
                           1002 ;	main.c:120: bfin[ix=0]=byteIn;
   00E4 E4                 1003 	clr	a
   00E5 F5 0C              1004 	mov	_ix,a
   00E7 F5 0D              1005 	mov	(_ix + 1),a
   00E9 90 00 00           1006 	mov	dptr,#_bfin
   00EC EA                 1007 	mov	a,r2
   00ED F0                 1008 	movx	@dptr,a
   00EE 80 DF              1009 	sjmp	00119$
   00F0                    1010 00113$:
                    0081   1011 	C$main.c$122$3$3 ==.
                           1012 ;	main.c:122: else if(stav==stPrijem)
   00F0 74 02              1013 	mov	a,#0x02
   00F2 B5 08 DA           1014 	cjne	a,_stav,00119$
                    0086   1015 	C$main.c$124$4$5 ==.
                           1016 ;	main.c:124: if(byteIn==':')ix=0;
   00F5 BA 3A 07           1017 	cjne	r2,#0x3A,00102$
   00F8 E4                 1018 	clr	a
   00F9 F5 0C              1019 	mov	_ix,a
   00FB F5 0D              1020 	mov	(_ix + 1),a
   00FD 80 08              1021 	sjmp	00103$
   00FF                    1022 00102$:
                    0090   1023 	C$main.c$125$4$5 ==.
                           1024 ;	main.c:125: else ix++;
   00FF 05 0C              1025 	inc	_ix
   0101 E4                 1026 	clr	a
   0102 B5 0C 02           1027 	cjne	a,_ix,00141$
   0105 05 0D              1028 	inc	(_ix + 1)
   0107                    1029 00141$:
   0107                    1030 00103$:
                    0098   1031 	C$main.c$126$4$5 ==.
                           1032 ;	main.c:126: bfin[ix]=byteIn;
   0107 E5 0C              1033 	mov	a,_ix
   0109 24 00              1034 	add	a,#_bfin
   010B F5 82              1035 	mov	dpl,a
   010D E5 0D              1036 	mov	a,(_ix + 1)
   010F 34 00              1037 	addc	a,#(_bfin >> 8)
   0111 F5 83              1038 	mov	dph,a
   0113 EA                 1039 	mov	a,r2
   0114 F0                 1040 	movx	@dptr,a
                    00A6   1041 	C$main.c$127$4$5 ==.
                           1042 ;	main.c:127: if(byteIn=='\n')
   0115 BA 0A B7           1043 	cjne	r2,#0x0A,00119$
                    00A9   1044 	C$main.c$129$5$6 ==.
                           1045 ;	main.c:129: if(MbLrc(bfin+1,ix-4)!=(lrc=MbRdByte(bfin+ix-3)))
   0118 E5 0C              1046 	mov	a,_ix
   011A 24 FC              1047 	add	a,#0xfc
   011C F5 6C              1048 	mov	_MbLrc_PARM_2,a
   011E 90 00 01           1049 	mov	dptr,#(_bfin + 0x0001)
   0121 75 F0 00           1050 	mov	b,#0x00
   0124 12 08 72           1051 	lcall	_MbLrc
   0127 AA 82              1052 	mov	r2,dpl
   0129 E5 0C              1053 	mov	a,_ix
   012B 24 00              1054 	add	a,#_bfin
   012D FB                 1055 	mov	r3,a
   012E E5 0D              1056 	mov	a,(_ix + 1)
   0130 34 00              1057 	addc	a,#(_bfin >> 8)
   0132 FC                 1058 	mov	r4,a
   0133 EB                 1059 	mov	a,r3
   0134 24 FD              1060 	add	a,#0xfd
   0136 FB                 1061 	mov	r3,a
   0137 EC                 1062 	mov	a,r4
   0138 34 FF              1063 	addc	a,#0xff
   013A FC                 1064 	mov	r4,a
   013B 7D 00              1065 	mov	r5,#0x00
   013D 8B 82              1066 	mov	dpl,r3
   013F 8C 83              1067 	mov	dph,r4
   0141 8D F0              1068 	mov	b,r5
   0143 C0 02              1069 	push	ar2
   0145 12 06 14           1070 	lcall	_MbRdByte
   0148 AB 82              1071 	mov	r3,dpl
   014A D0 02              1072 	pop	ar2
   014C EA                 1073 	mov	a,r2
   014D B5 03 02           1074 	cjne	a,ar3,00144$
   0150 80 15              1075 	sjmp	00105$
   0152                    1076 00144$:
                    00E3   1077 	C$main.c$131$6$7 ==.
                           1078 ;	main.c:131: printf("\nChybne LRC\n");
   0152 74 93              1079 	mov	a,#__str_0
   0154 C0 E0              1080 	push	acc
   0156 74 16              1081 	mov	a,#(__str_0 >> 8)
   0158 C0 E0              1082 	push	acc
   015A 74 80              1083 	mov	a,#0x80
   015C C0 E0              1084 	push	acc
   015E 12 10 A4           1085 	lcall	_printf
   0161 15 81              1086 	dec	sp
   0163 15 81              1087 	dec	sp
   0165 15 81              1088 	dec	sp
   0167                    1089 00105$:
                    00F8   1090 	C$main.c$134$5$6 ==.
                           1091 ;	main.c:134: if( (kod_r=MbRdByte(bfin+3))==FCE_RREG)
   0167 90 00 03           1092 	mov	dptr,#(_bfin + 0x0003)
   016A 75 F0 00           1093 	mov	b,#0x00
   016D 12 06 14           1094 	lcall	_MbRdByte
   0170 AA 82              1095 	mov	r2,dpl
   0172 BA 03 31           1096 	cjne	r2,#0x03,00107$
                    0106   1097 	C$main.c$136$6$8 ==.
                           1098 ;	main.c:136: pocet=MbRdByte(bfin+5);
   0175 90 00 05           1099 	mov	dptr,#(_bfin + 0x0005)
   0178 75 F0 00           1100 	mov	b,#0x00
   017B 12 06 14           1101 	lcall	_MbRdByte
                    010F   1102 	C$main.c$137$6$8 ==.
                           1103 ;	main.c:137: valWord=MbRdWord(bfin+7);
   017E 90 00 07           1104 	mov	dptr,#(_bfin + 0x0007)
   0181 75 F0 00           1105 	mov	b,#0x00
   0184 12 06 53           1106 	lcall	_MbRdWord
   0187 85 82 0E           1107 	mov	_valWord,dpl
   018A 85 83 0F           1108 	mov	(_valWord + 1),dph
                    011E   1109 	C$main.c$138$6$8 ==.
                           1110 ;	main.c:138: printf("\nMaster\nPot hod.: %d",valWord);
   018D C0 0E              1111 	push	_valWord
   018F C0 0F              1112 	push	(_valWord + 1)
   0191 74 A0              1113 	mov	a,#__str_1
   0193 C0 E0              1114 	push	acc
   0195 74 16              1115 	mov	a,#(__str_1 >> 8)
   0197 C0 E0              1116 	push	acc
   0199 74 80              1117 	mov	a,#0x80
   019B C0 E0              1118 	push	acc
   019D 12 10 A4           1119 	lcall	_printf
   01A0 E5 81              1120 	mov	a,sp
   01A2 24 FB              1121 	add	a,#0xfb
   01A4 F5 81              1122 	mov	sp,a
   01A6                    1123 00107$:
                    0137   1124 	C$main.c$143$5$6 ==.
                           1125 ;	main.c:143: stav=stKlid;
   01A6 75 08 00           1126 	mov	_stav,#0x00
                    013A   1127 	C$main.c$148$1$1 ==.
                    013A   1128 	XG$main$0$0 ==.
   01A9 02 00 CF           1129 	ljmp	00119$
                           1130 ;------------------------------------------------------------
                           1131 ;Allocation info for local variables in function 'timer1'
                           1132 ;------------------------------------------------------------
                           1133 ;------------------------------------------------------------
                    013D   1134 	G$timer1$0$0 ==.
                    013D   1135 	C$main.c$149$1$1 ==.
                           1136 ;	main.c:149: void timer1() __interrupt 1
                           1137 ;	-----------------------------------------
                           1138 ;	 function timer1
                           1139 ;	-----------------------------------------
   01AC                    1140 _timer1:
   01AC C0 22              1141 	push	bits
   01AE C0 E0              1142 	push	acc
   01B0 C0 F0              1143 	push	b
   01B2 C0 82              1144 	push	dpl
   01B4 C0 83              1145 	push	dph
   01B6 C0 02              1146 	push	(0+2)
   01B8 C0 03              1147 	push	(0+3)
   01BA C0 04              1148 	push	(0+4)
   01BC C0 05              1149 	push	(0+5)
   01BE C0 06              1150 	push	(0+6)
   01C0 C0 07              1151 	push	(0+7)
   01C2 C0 00              1152 	push	(0+0)
   01C4 C0 01              1153 	push	(0+1)
   01C6 C0 D0              1154 	push	psw
   01C8 75 D0 00           1155 	mov	psw,#0x00
                    015C   1156 	C$main.c$151$1$1 ==.
                           1157 ;	main.c:151: TH1=(word)(-N3_5) >> 8;
   01CB 75 8D E6           1158 	mov	_TH1,#0xE6
                    015F   1159 	C$main.c$152$1$1 ==.
                           1160 ;	main.c:152: TL1=(byte)(-N3_5);
   01CE 75 8B 38           1161 	mov	_TL1,#0x38
                    0162   1162 	C$main.c$153$1$1 ==.
                           1163 ;	main.c:153: TF1=0;
   01D1 C2 8F              1164 	clr	_TF1
                    0164   1165 	C$main.c$154$1$1 ==.
                           1166 ;	main.c:154: TR1=1;
   01D3 D2 8E              1167 	setb	_TR1
                    0166   1168 	C$main.c$155$1$1 ==.
                           1169 ;	main.c:155: if(++cnt_ticks>=N_TICKS && stav==stKlid)
   01D5 05 09              1170 	inc	_cnt_ticks
   01D7 74 F9              1171 	mov	a,#0x100 - 0x07
   01D9 25 09              1172 	add	a,_cnt_ticks
   01DB 40 03              1173 	jc	00122$
   01DD 02 02 AB           1174 	ljmp	00108$
   01E0                    1175 00122$:
   01E0 E5 08              1176 	mov	a,_stav
   01E2 60 03              1177 	jz	00123$
   01E4 02 02 AB           1178 	ljmp	00108$
   01E7                    1179 00123$:
                    0178   1180 	C$main.c$157$2$2 ==.
                           1181 ;	main.c:157: cnt_ticks=0;
   01E7 75 09 00           1182 	mov	_cnt_ticks,#0x00
                    017B   1183 	C$main.c$159$2$2 ==.
                           1184 ;	main.c:159: prep=!prep;
   01EA B2 00              1185 	cpl	_prep
                    017D   1186 	C$main.c$160$2$2 ==.
                           1187 ;	main.c:160: if(prep) 
   01EC 30 00 36           1188 	jnb	_prep,00105$
                    0180   1189 	C$main.c$162$3$3 ==.
                           1190 ;	main.c:162: if (!TLAC) val = 0xFF00;
   01EF 20 B2 08           1191 	jb	_P3_2,00102$
   01F2 75 10 00           1192 	mov	_val,#0x00
   01F5 75 11 FF           1193 	mov	(_val + 1),#0xFF
   01F8 80 05              1194 	sjmp	00103$
   01FA                    1195 00102$:
                    018B   1196 	C$main.c$163$3$3 ==.
                           1197 ;	main.c:163: else val = 0x0000;
   01FA E4                 1198 	clr	a
   01FB F5 10              1199 	mov	_val,a
   01FD F5 11              1200 	mov	(_val + 1),a
   01FF                    1201 00103$:
                    0190   1202 	C$main.c$165$3$3 ==.
                           1203 ;	main.c:165: itx=MbWrOne(ADR_S,FCE_WBIT,BIT_WR,val,bfout);
   01FF 75 36 00           1204 	mov	_MbWrOne_PARM_5,#_bfout
   0202 75 37 01           1205 	mov	(_MbWrOne_PARM_5 + 1),#(_bfout >> 8)
   0205 75 38 00           1206 	mov	(_MbWrOne_PARM_5 + 2),#0x00
   0208 75 31 05           1207 	mov	_MbWrOne_PARM_2,#0x05
   020B E4                 1208 	clr	a
   020C F5 32              1209 	mov	_MbWrOne_PARM_3,a
   020E F5 33              1210 	mov	(_MbWrOne_PARM_3 + 1),a
   0210 85 10 34           1211 	mov	_MbWrOne_PARM_4,_val
   0213 85 11 35           1212 	mov	(_MbWrOne_PARM_4 + 1),(_val + 1)
   0216 75 82 01           1213 	mov	dpl,#0x01
   0219 12 09 37           1214 	lcall	_MbWrOne
   021C AA 82              1215 	mov	r2,dpl
   021E 8A 0A              1216 	mov	_itx,r2
   0220 75 0B 00           1217 	mov	(_itx + 1),#0x00
   0223 80 24              1218 	sjmp	00106$
   0225                    1219 00105$:
                    01B6   1220 	C$main.c$167$2$2 ==.
                           1221 ;	main.c:167: else itx=MbRd(ADR_S,FCE_RREG,REG_RD,1,bfout);
   0225 75 2E 00           1222 	mov	_MbRd_PARM_5,#_bfout
   0228 75 2F 01           1223 	mov	(_MbRd_PARM_5 + 1),#(_bfout >> 8)
   022B 75 30 00           1224 	mov	(_MbRd_PARM_5 + 2),#0x00
   022E 75 29 03           1225 	mov	_MbRd_PARM_2,#0x03
   0231 E4                 1226 	clr	a
   0232 F5 2A              1227 	mov	_MbRd_PARM_3,a
   0234 F5 2B              1228 	mov	(_MbRd_PARM_3 + 1),a
   0236 75 2C 01           1229 	mov	_MbRd_PARM_4,#0x01
   0239 75 2D 00           1230 	mov	(_MbRd_PARM_4 + 1),#0x00
   023C 75 82 01           1231 	mov	dpl,#0x01
   023F 12 08 9C           1232 	lcall	_MbRd
   0242 AA 82              1233 	mov	r2,dpl
   0244 8A 0A              1234 	mov	_itx,r2
   0246 75 0B 00           1235 	mov	(_itx + 1),#0x00
   0249                    1236 00106$:
                    01DA   1237 	C$main.c$168$2$2 ==.
                           1238 ;	main.c:168: itx+=MbWrByte(MbLrc(bfout+1,itx-1),bfout+itx);
   0249 E5 0A              1239 	mov	a,_itx
   024B 14                 1240 	dec	a
   024C F5 6C              1241 	mov	_MbLrc_PARM_2,a
   024E 90 01 01           1242 	mov	dptr,#(_bfout + 0x0001)
   0251 75 F0 00           1243 	mov	b,#0x00
   0254 12 08 72           1244 	lcall	_MbLrc
   0257 E5 0A              1245 	mov	a,_itx
   0259 24 00              1246 	add	a,#_bfout
   025B FA                 1247 	mov	r2,a
   025C E5 0B              1248 	mov	a,(_itx + 1)
   025E 34 01              1249 	addc	a,#(_bfout >> 8)
   0260 FB                 1250 	mov	r3,a
   0261 8A 23              1251 	mov	_MbWrByte_PARM_2,r2
   0263 8B 24              1252 	mov	(_MbWrByte_PARM_2 + 1),r3
   0265 75 25 00           1253 	mov	(_MbWrByte_PARM_2 + 2),#0x00
   0268 12 07 16           1254 	lcall	_MbWrByte
   026B AA 82              1255 	mov	r2,dpl
   026D 7B 00              1256 	mov	r3,#0x00
   026F EA                 1257 	mov	a,r2
   0270 25 0A              1258 	add	a,_itx
   0272 F5 0A              1259 	mov	_itx,a
   0274 EB                 1260 	mov	a,r3
   0275 35 0B              1261 	addc	a,(_itx + 1)
   0277 F5 0B              1262 	mov	(_itx + 1),a
                    020A   1263 	C$main.c$169$2$2 ==.
                           1264 ;	main.c:169: itx+=MbWrEoT(bfout+itx);
   0279 E5 0A              1265 	mov	a,_itx
   027B 24 00              1266 	add	a,#_bfout
   027D FA                 1267 	mov	r2,a
   027E E5 0B              1268 	mov	a,(_itx + 1)
   0280 34 01              1269 	addc	a,#(_bfout >> 8)
   0282 FB                 1270 	mov	r3,a
   0283 7C 00              1271 	mov	r4,#0x00
   0285 8A 82              1272 	mov	dpl,r2
   0287 8B 83              1273 	mov	dph,r3
   0289 8C F0              1274 	mov	b,r4
   028B 12 08 5F           1275 	lcall	_MbWrEoT
   028E AA 82              1276 	mov	r2,dpl
   0290 7B 00              1277 	mov	r3,#0x00
   0292 EA                 1278 	mov	a,r2
   0293 25 0A              1279 	add	a,_itx
   0295 F5 0A              1280 	mov	_itx,a
   0297 EB                 1281 	mov	a,r3
   0298 35 0B              1282 	addc	a,(_itx + 1)
   029A F5 0B              1283 	mov	(_itx + 1),a
                    022D   1284 	C$main.c$170$2$2 ==.
                           1285 ;	main.c:170: SendBuf(bfout,itx);
   029C 85 0A 6C           1286 	mov	_SendBuf_PARM_2,_itx
   029F 90 01 00           1287 	mov	dptr,#_bfout
   02A2 75 F0 00           1288 	mov	b,#0x00
   02A5 12 00 89           1289 	lcall	_SendBuf
                    0239   1290 	C$main.c$172$2$2 ==.
                           1291 ;	main.c:172: stav=stCekani;
   02A8 75 08 01           1292 	mov	_stav,#0x01
   02AB                    1293 00108$:
                    023C   1294 	C$main.c$176$1$1 ==.
                           1295 ;	main.c:176: if(cnt_ticks==TIMEOUT && (stav==stCekani || stav==stPrijem))
   02AB 74 11              1296 	mov	a,#0x11
   02AD B5 09 14           1297 	cjne	a,_cnt_ticks,00114$
   02B0 74 01              1298 	mov	a,#0x01
   02B2 B5 08 02           1299 	cjne	a,_stav,00128$
   02B5 80 05              1300 	sjmp	00110$
   02B7                    1301 00128$:
   02B7 74 02              1302 	mov	a,#0x02
   02B9 B5 08 08           1303 	cjne	a,_stav,00114$
   02BC                    1304 00110$:
                    024D   1305 	C$main.c$178$2$4 ==.
                           1306 ;	main.c:178: cnt_ticks=0;
   02BC 75 09 00           1307 	mov	_cnt_ticks,#0x00
                    0250   1308 	C$main.c$179$2$4 ==.
                           1309 ;	main.c:179: LED_R=!LED_R;  // napr. blikani cervene LED
   02BF B2 C2              1310 	cpl	_P4_2
                    0252   1311 	C$main.c$180$2$4 ==.
                           1312 ;	main.c:180: stav=stKlid;
   02C1 75 08 00           1313 	mov	_stav,#0x00
   02C4                    1314 00114$:
   02C4 D0 D0              1315 	pop	psw
   02C6 D0 01              1316 	pop	(0+1)
   02C8 D0 00              1317 	pop	(0+0)
   02CA D0 07              1318 	pop	(0+7)
   02CC D0 06              1319 	pop	(0+6)
   02CE D0 05              1320 	pop	(0+5)
   02D0 D0 04              1321 	pop	(0+4)
   02D2 D0 03              1322 	pop	(0+3)
   02D4 D0 02              1323 	pop	(0+2)
   02D6 D0 83              1324 	pop	dph
   02D8 D0 82              1325 	pop	dpl
   02DA D0 F0              1326 	pop	b
   02DC D0 E0              1327 	pop	acc
   02DE D0 22              1328 	pop	bits
                    0271   1329 	C$main.c$182$2$1 ==.
                    0271   1330 	XG$timer1$0$0 ==.
   02E0 32                 1331 	reti
                           1332 	.area CSEG    (CODE)
                           1333 	.area CONST   (CODE)
                    0000   1334 Fmain$_str_0$0$0 == .
   1693                    1335 __str_0:
   1693 0A                 1336 	.db 0x0A
   1694 43 68 79 62 6E 65  1337 	.ascii "Chybne LRC"
        20 4C 52 43
   169E 0A                 1338 	.db 0x0A
   169F 00                 1339 	.db 0x00
                    000D   1340 Fmain$_str_1$0$0 == .
   16A0                    1341 __str_1:
   16A0 0A                 1342 	.db 0x0A
   16A1 4D 61 73 74 65 72  1343 	.ascii "Master"
   16A7 0A                 1344 	.db 0x0A
   16A8 50 6F 74 20 68 6F  1345 	.ascii "Pot hod.: %d"
        64 2E 3A 20 25 64
   16B4 00                 1346 	.db 0x00
                           1347 	.area XINIT   (CODE)
                           1348 	.area CABS    (ABS,CODE)
