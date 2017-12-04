                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 13 12:41:45 2017
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SendBuf_PARM_2
                             13 	.globl _main
                             14 	.globl _SendBuf
                             15 	.globl _VarInit
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
                            234 	.globl _bufferOut
                            235 	.globl _bufferIn
                            236 	.globl _readedRegister
                            237 	.globl _lrc
                            238 	.globl _errorCode
                            239 	.globl _pocet
                            240 	.globl _registerCode
                            241 	.globl _readedByte
                            242 	.globl _itx
                            243 	.globl _index
                            244 	.globl _flagMessage
                            245 	.globl _val
                            246 	.globl _bity
                            247 	.globl _adr_r
                            248 	.globl _cnt_ticks
                            249 ;--------------------------------------------------------
                            250 ; special function registers
                            251 ;--------------------------------------------------------
                            252 	.area RSEG    (ABS,DATA)
   0000                     253 	.org 0x0000
                    0080    254 G$P0$0$0 == 0x0080
                    0080    255 _P0	=	0x0080
                    0090    256 G$P1$0$0 == 0x0090
                    0090    257 _P1	=	0x0090
                    00A0    258 G$P2$0$0 == 0x00a0
                    00A0    259 _P2	=	0x00a0
                    00B0    260 G$P3$0$0 == 0x00b0
                    00B0    261 _P3	=	0x00b0
                    00C0    262 G$P4$0$0 == 0x00c0
                    00C0    263 _P4	=	0x00c0
                    00D0    264 G$PSW$0$0 == 0x00d0
                    00D0    265 _PSW	=	0x00d0
                    00E0    266 G$ACC$0$0 == 0x00e0
                    00E0    267 _ACC	=	0x00e0
                    00F0    268 G$B$0$0 == 0x00f0
                    00F0    269 _B	=	0x00f0
                    0081    270 G$SP$0$0 == 0x0081
                    0081    271 _SP	=	0x0081
                    0082    272 G$DPL$0$0 == 0x0082
                    0082    273 _DPL	=	0x0082
                    0083    274 G$DPH$0$0 == 0x0083
                    0083    275 _DPH	=	0x0083
                    8382    276 G$DPTR$0$0 == 0x8382
                    8382    277 _DPTR	=	0x8382
                    0087    278 G$PCON$0$0 == 0x0087
                    0087    279 _PCON	=	0x0087
                    008F    280 G$CKCON$0$0 == 0x008f
                    008F    281 _CKCON	=	0x008f
                    008F    282 G$CKCON0$0$0 == 0x008f
                    008F    283 _CKCON0	=	0x008f
                    009F    284 G$CKCON1$0$0 == 0x009f
                    009F    285 _CKCON1	=	0x009f
                    0088    286 G$TCON$0$0 == 0x0088
                    0088    287 _TCON	=	0x0088
                    0089    288 G$TMOD$0$0 == 0x0089
                    0089    289 _TMOD	=	0x0089
                    00C8    290 G$T2CON$0$0 == 0x00c8
                    00C8    291 _T2CON	=	0x00c8
                    00C9    292 G$T2MOD$0$0 == 0x00c9
                    00C9    293 _T2MOD	=	0x00c9
                    008A    294 G$TL0$0$0 == 0x008a
                    008A    295 _TL0	=	0x008a
                    008B    296 G$TL1$0$0 == 0x008b
                    008B    297 _TL1	=	0x008b
                    00CC    298 G$TL2$0$0 == 0x00cc
                    00CC    299 _TL2	=	0x00cc
                    008C    300 G$TH0$0$0 == 0x008c
                    008C    301 _TH0	=	0x008c
                    008D    302 G$TH1$0$0 == 0x008d
                    008D    303 _TH1	=	0x008d
                    00CD    304 G$TH2$0$0 == 0x00cd
                    00CD    305 _TH2	=	0x00cd
                    00CA    306 G$RCAP2L$0$0 == 0x00ca
                    00CA    307 _RCAP2L	=	0x00ca
                    00CB    308 G$RCAP2H$0$0 == 0x00cb
                    00CB    309 _RCAP2H	=	0x00cb
                    00A6    310 G$WDTRST$0$0 == 0x00a6
                    00A6    311 _WDTRST	=	0x00a6
                    00A7    312 G$WDTPRG$0$0 == 0x00a7
                    00A7    313 _WDTPRG	=	0x00a7
                    0098    314 G$SCON$0$0 == 0x0098
                    0098    315 _SCON	=	0x0098
                    0099    316 G$SBUF$0$0 == 0x0099
                    0099    317 _SBUF	=	0x0099
                    00B9    318 G$SADEN$0$0 == 0x00b9
                    00B9    319 _SADEN	=	0x00b9
                    00A9    320 G$SADDR$0$0 == 0x00a9
                    00A9    321 _SADDR	=	0x00a9
                    00F2    322 G$ADCLK$0$0 == 0x00f2
                    00F2    323 _ADCLK	=	0x00f2
                    00F3    324 G$ADCON$0$0 == 0x00f3
                    00F3    325 _ADCON	=	0x00f3
                    00F4    326 G$ADDL$0$0 == 0x00f4
                    00F4    327 _ADDL	=	0x00f4
                    00F5    328 G$ADDH$0$0 == 0x00f5
                    00F5    329 _ADDH	=	0x00f5
                    00F6    330 G$ADCF$0$0 == 0x00f6
                    00F6    331 _ADCF	=	0x00f6
                    00D1    332 G$FCON$0$0 == 0x00d1
                    00D1    333 _FCON	=	0x00d1
                    00D3    334 G$FSTA$0$0 == 0x00d3
                    00D3    335 _FSTA	=	0x00d3
                    00D2    336 G$EECON$0$0 == 0x00d2
                    00D2    337 _EECON	=	0x00d2
                    008E    338 G$AUXR$0$0 == 0x008e
                    008E    339 _AUXR	=	0x008e
                    00A2    340 G$AUXR1$0$0 == 0x00a2
                    00A2    341 _AUXR1	=	0x00a2
                    00F8    342 G$IPL1$0$0 == 0x00f8
                    00F8    343 _IPL1	=	0x00f8
                    00F7    344 G$IPH1$0$0 == 0x00f7
                    00F7    345 _IPH1	=	0x00f7
                    00A8    346 G$IEN0$0$0 == 0x00a8
                    00A8    347 _IEN0	=	0x00a8
                    00A8    348 G$IEN$0$0 == 0x00a8
                    00A8    349 _IEN	=	0x00a8
                    00A8    350 G$IE$0$0 == 0x00a8
                    00A8    351 _IE	=	0x00a8
                    00B8    352 G$IPL0$0$0 == 0x00b8
                    00B8    353 _IPL0	=	0x00b8
                    00B7    354 G$IPH0$0$0 == 0x00b7
                    00B7    355 _IPH0	=	0x00b7
                    00E8    356 G$IEN1$0$0 == 0x00e8
                    00E8    357 _IEN1	=	0x00e8
                    00D8    358 G$CCON$0$0 == 0x00d8
                    00D8    359 _CCON	=	0x00d8
                    00D9    360 G$CMOD$0$0 == 0x00d9
                    00D9    361 _CMOD	=	0x00d9
                    00F9    362 G$CH$0$0 == 0x00f9
                    00F9    363 _CH	=	0x00f9
                    00E9    364 G$CL$0$0 == 0x00e9
                    00E9    365 _CL	=	0x00e9
                    00FA    366 G$CCAP0H$0$0 == 0x00fa
                    00FA    367 _CCAP0H	=	0x00fa
                    00EA    368 G$CCAP0L$0$0 == 0x00ea
                    00EA    369 _CCAP0L	=	0x00ea
                    00DA    370 G$CCAPM0$0$0 == 0x00da
                    00DA    371 _CCAPM0	=	0x00da
                    00FB    372 G$CCAP1H$0$0 == 0x00fb
                    00FB    373 _CCAP1H	=	0x00fb
                    00EB    374 G$CCAP1L$0$0 == 0x00eb
                    00EB    375 _CCAP1L	=	0x00eb
                    00DB    376 G$CCAPM1$0$0 == 0x00db
                    00DB    377 _CCAPM1	=	0x00db
                    00FC    378 G$CCAP2H$0$0 == 0x00fc
                    00FC    379 _CCAP2H	=	0x00fc
                    00EC    380 G$CCAP2L$0$0 == 0x00ec
                    00EC    381 _CCAP2L	=	0x00ec
                    00DC    382 G$CCAPM2$0$0 == 0x00dc
                    00DC    383 _CCAPM2	=	0x00dc
                    00FD    384 G$CCAP3H$0$0 == 0x00fd
                    00FD    385 _CCAP3H	=	0x00fd
                    00ED    386 G$CCAP3L$0$0 == 0x00ed
                    00ED    387 _CCAP3L	=	0x00ed
                    00DD    388 G$CCAPM3$0$0 == 0x00dd
                    00DD    389 _CCAPM3	=	0x00dd
                    00FE    390 G$CCAP4H$0$0 == 0x00fe
                    00FE    391 _CCAP4H	=	0x00fe
                    00EE    392 G$CCAP4L$0$0 == 0x00ee
                    00EE    393 _CCAP4L	=	0x00ee
                    00DE    394 G$CCAPM4$0$0 == 0x00de
                    00DE    395 _CCAPM4	=	0x00de
                    009B    396 G$CANGIT$0$0 == 0x009b
                    009B    397 _CANGIT	=	0x009b
                    009C    398 G$CANTEC$0$0 == 0x009c
                    009C    399 _CANTEC	=	0x009c
                    009D    400 G$CANREC$0$0 == 0x009d
                    009D    401 _CANREC	=	0x009d
                    00A1    402 G$CANTCON$0$0 == 0x00a1
                    00A1    403 _CANTCON	=	0x00a1
                    00A3    404 G$CANMSG$0$0 == 0x00a3
                    00A3    405 _CANMSG	=	0x00a3
                    00A4    406 G$CANTTCL$0$0 == 0x00a4
                    00A4    407 _CANTTCL	=	0x00a4
                    00A5    408 G$CANTTCH$0$0 == 0x00a5
                    00A5    409 _CANTTCH	=	0x00a5
                    00AA    410 G$CANGSTA$0$0 == 0x00aa
                    00AA    411 _CANGSTA	=	0x00aa
                    00AB    412 G$CANGCON$0$0 == 0x00ab
                    00AB    413 _CANGCON	=	0x00ab
                    00AC    414 G$CANTIML$0$0 == 0x00ac
                    00AC    415 _CANTIML	=	0x00ac
                    00AD    416 G$CANTIMH$0$0 == 0x00ad
                    00AD    417 _CANTIMH	=	0x00ad
                    00AE    418 G$CANSTMPL$0$0 == 0x00ae
                    00AE    419 _CANSTMPL	=	0x00ae
                    00AF    420 G$CANSTMPH$0$0 == 0x00af
                    00AF    421 _CANSTMPH	=	0x00af
                    00B1    422 G$CANPAGE$0$0 == 0x00b1
                    00B1    423 _CANPAGE	=	0x00b1
                    00B2    424 G$CANSTCH$0$0 == 0x00b2
                    00B2    425 _CANSTCH	=	0x00b2
                    00B3    426 G$CANCONCH$0$0 == 0x00b3
                    00B3    427 _CANCONCH	=	0x00b3
                    00B4    428 G$CANBT1$0$0 == 0x00b4
                    00B4    429 _CANBT1	=	0x00b4
                    00B5    430 G$CANBT2$0$0 == 0x00b5
                    00B5    431 _CANBT2	=	0x00b5
                    00B6    432 G$CANBT3$0$0 == 0x00b6
                    00B6    433 _CANBT3	=	0x00b6
                    00BA    434 G$CANSIT1$0$0 == 0x00ba
                    00BA    435 _CANSIT1	=	0x00ba
                    00BB    436 G$CANSIT2$0$0 == 0x00bb
                    00BB    437 _CANSIT2	=	0x00bb
                    00BC    438 G$CANIDT1$0$0 == 0x00bc
                    00BC    439 _CANIDT1	=	0x00bc
                    00BD    440 G$CANIDT2$0$0 == 0x00bd
                    00BD    441 _CANIDT2	=	0x00bd
                    00BE    442 G$CANIDT3$0$0 == 0x00be
                    00BE    443 _CANIDT3	=	0x00be
                    00BF    444 G$CANIDT4$0$0 == 0x00bf
                    00BF    445 _CANIDT4	=	0x00bf
                    00C1    446 G$CANGIE$0$0 == 0x00c1
                    00C1    447 _CANGIE	=	0x00c1
                    00C2    448 G$CANIE1$0$0 == 0x00c2
                    00C2    449 _CANIE1	=	0x00c2
                    00C3    450 G$CANIE2$0$0 == 0x00c3
                    00C3    451 _CANIE2	=	0x00c3
                    00C4    452 G$CANIDM1$0$0 == 0x00c4
                    00C4    453 _CANIDM1	=	0x00c4
                    00C5    454 G$CANIDM2$0$0 == 0x00c5
                    00C5    455 _CANIDM2	=	0x00c5
                    00C6    456 G$CANIDM3$0$0 == 0x00c6
                    00C6    457 _CANIDM3	=	0x00c6
                    00C7    458 G$CANIDM4$0$0 == 0x00c7
                    00C7    459 _CANIDM4	=	0x00c7
                    00CE    460 G$CANEN1$0$0 == 0x00ce
                    00CE    461 _CANEN1	=	0x00ce
                    00CF    462 G$CANEN2$0$0 == 0x00cf
                    00CF    463 _CANEN2	=	0x00cf
                    00D4    464 G$SPCON$0$0 == 0x00d4
                    00D4    465 _SPCON	=	0x00d4
                    00D5    466 G$SPSCR$0$0 == 0x00d5
                    00D5    467 _SPSCR	=	0x00d5
                    00D6    468 G$SPDAT$0$0 == 0x00d6
                    00D6    469 _SPDAT	=	0x00d6
                            470 ;--------------------------------------------------------
                            471 ; special function bits
                            472 ;--------------------------------------------------------
                            473 	.area RSEG    (ABS,DATA)
   0000                     474 	.org 0x0000
                    0087    475 G$P0_7$0$0 == 0x0087
                    0087    476 _P0_7	=	0x0087
                    0086    477 G$P0_6$0$0 == 0x0086
                    0086    478 _P0_6	=	0x0086
                    0085    479 G$P0_5$0$0 == 0x0085
                    0085    480 _P0_5	=	0x0085
                    0084    481 G$P0_4$0$0 == 0x0084
                    0084    482 _P0_4	=	0x0084
                    0083    483 G$P0_3$0$0 == 0x0083
                    0083    484 _P0_3	=	0x0083
                    0082    485 G$P0_2$0$0 == 0x0082
                    0082    486 _P0_2	=	0x0082
                    0081    487 G$P0_1$0$0 == 0x0081
                    0081    488 _P0_1	=	0x0081
                    0080    489 G$P0_0$0$0 == 0x0080
                    0080    490 _P0_0	=	0x0080
                    0097    491 G$P1_7$0$0 == 0x0097
                    0097    492 _P1_7	=	0x0097
                    0096    493 G$P1_6$0$0 == 0x0096
                    0096    494 _P1_6	=	0x0096
                    0095    495 G$P1_5$0$0 == 0x0095
                    0095    496 _P1_5	=	0x0095
                    0094    497 G$P1_4$0$0 == 0x0094
                    0094    498 _P1_4	=	0x0094
                    0093    499 G$P1_3$0$0 == 0x0093
                    0093    500 _P1_3	=	0x0093
                    0092    501 G$P1_2$0$0 == 0x0092
                    0092    502 _P1_2	=	0x0092
                    0091    503 G$P1_1$0$0 == 0x0091
                    0091    504 _P1_1	=	0x0091
                    0090    505 G$P1_0$0$0 == 0x0090
                    0090    506 _P1_0	=	0x0090
                    00A7    507 G$P2_7$0$0 == 0x00a7
                    00A7    508 _P2_7	=	0x00a7
                    00A6    509 G$P2_6$0$0 == 0x00a6
                    00A6    510 _P2_6	=	0x00a6
                    00A5    511 G$P2_5$0$0 == 0x00a5
                    00A5    512 _P2_5	=	0x00a5
                    00A4    513 G$P2_4$0$0 == 0x00a4
                    00A4    514 _P2_4	=	0x00a4
                    00A3    515 G$P2_3$0$0 == 0x00a3
                    00A3    516 _P2_3	=	0x00a3
                    00A2    517 G$P2_2$0$0 == 0x00a2
                    00A2    518 _P2_2	=	0x00a2
                    00A1    519 G$P2_1$0$0 == 0x00a1
                    00A1    520 _P2_1	=	0x00a1
                    00A0    521 G$P2_0$0$0 == 0x00a0
                    00A0    522 _P2_0	=	0x00a0
                    00B7    523 G$P3_7$0$0 == 0x00b7
                    00B7    524 _P3_7	=	0x00b7
                    00B6    525 G$P3_6$0$0 == 0x00b6
                    00B6    526 _P3_6	=	0x00b6
                    00B5    527 G$P3_5$0$0 == 0x00b5
                    00B5    528 _P3_5	=	0x00b5
                    00B4    529 G$P3_4$0$0 == 0x00b4
                    00B4    530 _P3_4	=	0x00b4
                    00B3    531 G$P3_3$0$0 == 0x00b3
                    00B3    532 _P3_3	=	0x00b3
                    00B2    533 G$P3_2$0$0 == 0x00b2
                    00B2    534 _P3_2	=	0x00b2
                    00B1    535 G$P3_1$0$0 == 0x00b1
                    00B1    536 _P3_1	=	0x00b1
                    00B0    537 G$P3_0$0$0 == 0x00b0
                    00B0    538 _P3_0	=	0x00b0
                    00B7    539 G$RD$0$0 == 0x00b7
                    00B7    540 _RD	=	0x00b7
                    00B6    541 G$WR$0$0 == 0x00b6
                    00B6    542 _WR	=	0x00b6
                    00B5    543 G$T1$0$0 == 0x00b5
                    00B5    544 _T1	=	0x00b5
                    00B4    545 G$T0$0$0 == 0x00b4
                    00B4    546 _T0	=	0x00b4
                    00B3    547 G$INT1$0$0 == 0x00b3
                    00B3    548 _INT1	=	0x00b3
                    00B2    549 G$INT0$0$0 == 0x00b2
                    00B2    550 _INT0	=	0x00b2
                    00B1    551 G$TXD$0$0 == 0x00b1
                    00B1    552 _TXD	=	0x00b1
                    00B0    553 G$RXD$0$0 == 0x00b0
                    00B0    554 _RXD	=	0x00b0
                    00C0    555 G$P4_0$0$0 == 0x00c0
                    00C0    556 _P4_0	=	0x00c0
                    00C1    557 G$P4_1$0$0 == 0x00c1
                    00C1    558 _P4_1	=	0x00c1
                    00C2    559 G$P4_2$0$0 == 0x00c2
                    00C2    560 _P4_2	=	0x00c2
                    00C3    561 G$P4_3$0$0 == 0x00c3
                    00C3    562 _P4_3	=	0x00c3
                    00C4    563 G$P4_4$0$0 == 0x00c4
                    00C4    564 _P4_4	=	0x00c4
                    00C5    565 G$P4_5$0$0 == 0x00c5
                    00C5    566 _P4_5	=	0x00c5
                    00C6    567 G$P4_6$0$0 == 0x00c6
                    00C6    568 _P4_6	=	0x00c6
                    00C7    569 G$P4_7$0$0 == 0x00c7
                    00C7    570 _P4_7	=	0x00c7
                    00D7    571 G$CY$0$0 == 0x00d7
                    00D7    572 _CY	=	0x00d7
                    00D6    573 G$AC$0$0 == 0x00d6
                    00D6    574 _AC	=	0x00d6
                    00D5    575 G$F0$0$0 == 0x00d5
                    00D5    576 _F0	=	0x00d5
                    00D4    577 G$RS1$0$0 == 0x00d4
                    00D4    578 _RS1	=	0x00d4
                    00D3    579 G$RS0$0$0 == 0x00d3
                    00D3    580 _RS0	=	0x00d3
                    00D2    581 G$OV$0$0 == 0x00d2
                    00D2    582 _OV	=	0x00d2
                    00D1    583 G$UD$0$0 == 0x00d1
                    00D1    584 _UD	=	0x00d1
                    00D0    585 G$P$0$0 == 0x00d0
                    00D0    586 _P	=	0x00d0
                    00E0    587 G$ACC_0$0$0 == 0x00e0
                    00E0    588 _ACC_0	=	0x00e0
                    00E1    589 G$ACC_1$0$0 == 0x00e1
                    00E1    590 _ACC_1	=	0x00e1
                    00E2    591 G$ACC_2$0$0 == 0x00e2
                    00E2    592 _ACC_2	=	0x00e2
                    00E3    593 G$ACC_3$0$0 == 0x00e3
                    00E3    594 _ACC_3	=	0x00e3
                    00E4    595 G$ACC_4$0$0 == 0x00e4
                    00E4    596 _ACC_4	=	0x00e4
                    00E5    597 G$ACC_5$0$0 == 0x00e5
                    00E5    598 _ACC_5	=	0x00e5
                    00E6    599 G$ACC_6$0$0 == 0x00e6
                    00E6    600 _ACC_6	=	0x00e6
                    00E7    601 G$ACC_7$0$0 == 0x00e7
                    00E7    602 _ACC_7	=	0x00e7
                    008F    603 G$TF1$0$0 == 0x008f
                    008F    604 _TF1	=	0x008f
                    008E    605 G$TR1$0$0 == 0x008e
                    008E    606 _TR1	=	0x008e
                    008D    607 G$TF0$0$0 == 0x008d
                    008D    608 _TF0	=	0x008d
                    008C    609 G$TR0$0$0 == 0x008c
                    008C    610 _TR0	=	0x008c
                    008B    611 G$IE1$0$0 == 0x008b
                    008B    612 _IE1	=	0x008b
                    008A    613 G$IT1$0$0 == 0x008a
                    008A    614 _IT1	=	0x008a
                    0089    615 G$IE0$0$0 == 0x0089
                    0089    616 _IE0	=	0x0089
                    0088    617 G$IT0$0$0 == 0x0088
                    0088    618 _IT0	=	0x0088
                    00CF    619 G$TF2$0$0 == 0x00cf
                    00CF    620 _TF2	=	0x00cf
                    00CE    621 G$EXF2$0$0 == 0x00ce
                    00CE    622 _EXF2	=	0x00ce
                    00CD    623 G$RCLK$0$0 == 0x00cd
                    00CD    624 _RCLK	=	0x00cd
                    00CC    625 G$TCLK$0$0 == 0x00cc
                    00CC    626 _TCLK	=	0x00cc
                    00CB    627 G$EXEN2$0$0 == 0x00cb
                    00CB    628 _EXEN2	=	0x00cb
                    00CA    629 G$TR2$0$0 == 0x00ca
                    00CA    630 _TR2	=	0x00ca
                    00C9    631 G$C_T2$0$0 == 0x00c9
                    00C9    632 _C_T2	=	0x00c9
                    00C8    633 G$CP_RL2$0$0 == 0x00c8
                    00C8    634 _CP_RL2	=	0x00c8
                    009F    635 G$SM0$0$0 == 0x009f
                    009F    636 _SM0	=	0x009f
                    009F    637 G$FE$0$0 == 0x009f
                    009F    638 _FE	=	0x009f
                    009E    639 G$SM1$0$0 == 0x009e
                    009E    640 _SM1	=	0x009e
                    009D    641 G$SM2$0$0 == 0x009d
                    009D    642 _SM2	=	0x009d
                    009C    643 G$REN$0$0 == 0x009c
                    009C    644 _REN	=	0x009c
                    009B    645 G$TB8$0$0 == 0x009b
                    009B    646 _TB8	=	0x009b
                    009A    647 G$RB8$0$0 == 0x009a
                    009A    648 _RB8	=	0x009a
                    0099    649 G$TI$0$0 == 0x0099
                    0099    650 _TI	=	0x0099
                    0098    651 G$RI$0$0 == 0x0098
                    0098    652 _RI	=	0x0098
                    00AF    653 G$EA$0$0 == 0x00af
                    00AF    654 _EA	=	0x00af
                    00AE    655 G$EC$0$0 == 0x00ae
                    00AE    656 _EC	=	0x00ae
                    00AD    657 G$ET2$0$0 == 0x00ad
                    00AD    658 _ET2	=	0x00ad
                    00AC    659 G$ES$0$0 == 0x00ac
                    00AC    660 _ES	=	0x00ac
                    00AB    661 G$ET1$0$0 == 0x00ab
                    00AB    662 _ET1	=	0x00ab
                    00AA    663 G$EX1$0$0 == 0x00aa
                    00AA    664 _EX1	=	0x00aa
                    00A9    665 G$ET0$0$0 == 0x00a9
                    00A9    666 _ET0	=	0x00a9
                    00A8    667 G$EX0$0$0 == 0x00a8
                    00A8    668 _EX0	=	0x00a8
                    00EB    669 G$ESPI$0$0 == 0x00eb
                    00EB    670 _ESPI	=	0x00eb
                    00EA    671 G$ETIM$0$0 == 0x00ea
                    00EA    672 _ETIM	=	0x00ea
                    00E9    673 G$EADC$0$0 == 0x00e9
                    00E9    674 _EADC	=	0x00e9
                    00E8    675 G$ECAN$0$0 == 0x00e8
                    00E8    676 _ECAN	=	0x00e8
                    00DF    677 G$CF$0$0 == 0x00df
                    00DF    678 _CF	=	0x00df
                    00DE    679 G$CR$0$0 == 0x00de
                    00DE    680 _CR	=	0x00de
                    00DC    681 G$CCF4$0$0 == 0x00dc
                    00DC    682 _CCF4	=	0x00dc
                    00DB    683 G$CCF3$0$0 == 0x00db
                    00DB    684 _CCF3	=	0x00db
                    00DA    685 G$CCF2$0$0 == 0x00da
                    00DA    686 _CCF2	=	0x00da
                    00D9    687 G$CCF1$0$0 == 0x00d9
                    00D9    688 _CCF1	=	0x00d9
                    00D8    689 G$CCF0$0$0 == 0x00d8
                    00D8    690 _CCF0	=	0x00d8
                            691 ;--------------------------------------------------------
                            692 ; overlayable register banks
                            693 ;--------------------------------------------------------
                            694 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     695 	.ds 8
                            696 ;--------------------------------------------------------
                            697 ; internal ram data
                            698 ;--------------------------------------------------------
                            699 	.area DSEG    (DATA)
                    0000    700 G$cnt_ticks$0$0==.
   0008                     701 _cnt_ticks::
   0008                     702 	.ds 1
                    0001    703 G$adr_r$0$0==.
   0009                     704 _adr_r::
   0009                     705 	.ds 1
                    0002    706 G$bity$0$0==.
   000A                     707 _bity::
   000A                     708 	.ds 1
                    0003    709 G$val$0$0==.
   000B                     710 _val::
   000B                     711 	.ds 2
                    0005    712 G$flagMessage$0$0==.
   000D                     713 _flagMessage::
   000D                     714 	.ds 2
                    0007    715 G$index$0$0==.
   000F                     716 _index::
   000F                     717 	.ds 2
                    0009    718 G$itx$0$0==.
   0011                     719 _itx::
   0011                     720 	.ds 2
                    000B    721 G$readedByte$0$0==.
   0013                     722 _readedByte::
   0013                     723 	.ds 1
                    000C    724 G$registerCode$0$0==.
   0014                     725 _registerCode::
   0014                     726 	.ds 1
                    000D    727 G$pocet$0$0==.
   0015                     728 _pocet::
   0015                     729 	.ds 1
                    000E    730 G$errorCode$0$0==.
   0016                     731 _errorCode::
   0016                     732 	.ds 1
                    000F    733 G$lrc$0$0==.
   0017                     734 _lrc::
   0017                     735 	.ds 1
                    0010    736 G$readedRegister$0$0==.
   0018                     737 _readedRegister::
   0018                     738 	.ds 2
                            739 ;--------------------------------------------------------
                            740 ; overlayable items in internal ram 
                            741 ;--------------------------------------------------------
                            742 	.area	OSEG    (OVR,DATA)
                    0000    743 LSendBuf$len$1$1==.
   006B                     744 _SendBuf_PARM_2::
   006B                     745 	.ds 1
                            746 ;--------------------------------------------------------
                            747 ; Stack segment in internal ram 
                            748 ;--------------------------------------------------------
                            749 	.area	SSEG	(DATA)
   007D                     750 __start__stack:
   007D                     751 	.ds	1
                            752 
                            753 ;--------------------------------------------------------
                            754 ; indirectly addressable internal ram data
                            755 ;--------------------------------------------------------
                            756 	.area ISEG    (DATA)
                            757 ;--------------------------------------------------------
                            758 ; absolute internal ram data
                            759 ;--------------------------------------------------------
                            760 	.area IABS    (ABS,DATA)
                            761 	.area IABS    (ABS,DATA)
                            762 ;--------------------------------------------------------
                            763 ; bit data
                            764 ;--------------------------------------------------------
                            765 	.area BSEG    (BIT)
                            766 ;--------------------------------------------------------
                            767 ; paged external ram data
                            768 ;--------------------------------------------------------
                            769 	.area PSEG    (PAG,XDATA)
                            770 ;--------------------------------------------------------
                            771 ; external ram data
                            772 ;--------------------------------------------------------
                            773 	.area XSEG    (XDATA)
                    0000    774 G$bufferIn$0$0==.
   0000                     775 _bufferIn::
   0000                     776 	.ds 256
                    0100    777 G$bufferOut$0$0==.
   0100                     778 _bufferOut::
   0100                     779 	.ds 256
                            780 ;--------------------------------------------------------
                            781 ; absolute external ram data
                            782 ;--------------------------------------------------------
                            783 	.area XABS    (ABS,XDATA)
                            784 ;--------------------------------------------------------
                            785 ; external initialized ram data
                            786 ;--------------------------------------------------------
                            787 	.area XISEG   (XDATA)
                            788 	.area HOME    (CODE)
                            789 	.area GSINIT0 (CODE)
                            790 	.area GSINIT1 (CODE)
                            791 	.area GSINIT2 (CODE)
                            792 	.area GSINIT3 (CODE)
                            793 	.area GSINIT4 (CODE)
                            794 	.area GSINIT5 (CODE)
                            795 	.area GSINIT  (CODE)
                            796 	.area GSFINAL (CODE)
                            797 	.area CSEG    (CODE)
                            798 ;--------------------------------------------------------
                            799 ; interrupt vector 
                            800 ;--------------------------------------------------------
                            801 	.area HOME    (CODE)
   0000                     802 __interrupt_vect:
   0000 02 00 08            803 	ljmp	__sdcc_gsinit_startup
                            804 ;--------------------------------------------------------
                            805 ; global & static initialisations
                            806 ;--------------------------------------------------------
                            807 	.area HOME    (CODE)
                            808 	.area GSINIT  (CODE)
                            809 	.area GSFINAL (CODE)
                            810 	.area GSINIT  (CODE)
                            811 	.globl __sdcc_gsinit_startup
                            812 	.globl __sdcc_program_startup
                            813 	.globl __start__stack
                            814 	.globl __mcs51_genXINIT
                            815 	.globl __mcs51_genXRAMCLEAR
                            816 	.globl __mcs51_genRAMCLEAR
                            817 	.area GSFINAL (CODE)
   0061 02 00 03            818 	ljmp	__sdcc_program_startup
                            819 ;--------------------------------------------------------
                            820 ; Home
                            821 ;--------------------------------------------------------
                            822 	.area HOME    (CODE)
                            823 	.area HOME    (CODE)
   0003                     824 __sdcc_program_startup:
   0003 12 00 B6            825 	lcall	_main
                            826 ;	return from main will lock up
   0006 80 FE               827 	sjmp .
                            828 ;--------------------------------------------------------
                            829 ; code
                            830 ;--------------------------------------------------------
                            831 	.area CSEG    (CODE)
                            832 ;------------------------------------------------------------
                            833 ;Allocation info for local variables in function 'TimerInit'
                            834 ;------------------------------------------------------------
                            835 ;------------------------------------------------------------
                    0000    836 	G$TimerInit$0$0 ==.
                    0000    837 	C$main.c$55$0$0 ==.
                            838 ;	main.c:55: void TimerInit()
                            839 ;	-----------------------------------------
                            840 ;	 function TimerInit
                            841 ;	-----------------------------------------
   0064                     842 _TimerInit:
                    0002    843 	ar2 = 0x02
                    0003    844 	ar3 = 0x03
                    0004    845 	ar4 = 0x04
                    0005    846 	ar5 = 0x05
                    0006    847 	ar6 = 0x06
                    0007    848 	ar7 = 0x07
                    0000    849 	ar0 = 0x00
                    0001    850 	ar1 = 0x01
                    0000    851 	C$main.c$57$1$1 ==.
                            852 ;	main.c:57: TMOD = 0x11;
   0064 75 89 11            853 	mov	_TMOD,#0x11
                    0003    854 	C$main.c$58$1$1 ==.
                            855 ;	main.c:58: TR0 = 1;
   0067 D2 8C               856 	setb	_TR0
                    0005    857 	C$main.c$59$1$1 ==.
                            858 ;	main.c:59: EA = 1;
   0069 D2 AF               859 	setb	_EA
                    0007    860 	C$main.c$60$1$1 ==.
                            861 ;	main.c:60: ET0 = 1;
   006B D2 A9               862 	setb	_ET0
                    0009    863 	C$main.c$61$1$1 ==.
                            864 ;	main.c:61: cnt_ticks = 0;
   006D 75 08 00            865 	mov	_cnt_ticks,#0x00
                    000C    866 	C$main.c$62$1$1 ==.
                    000C    867 	XG$TimerInit$0$0 ==.
   0070 22                  868 	ret
                            869 ;------------------------------------------------------------
                            870 ;Allocation info for local variables in function 'ComInit'
                            871 ;------------------------------------------------------------
                            872 ;------------------------------------------------------------
                    000D    873 	G$ComInit$0$0 ==.
                    000D    874 	C$main.c$65$1$1 ==.
                            875 ;	main.c:65: void ComInit()
                            876 ;	-----------------------------------------
                            877 ;	 function ComInit
                            878 ;	-----------------------------------------
   0071                     879 _ComInit:
                    000D    880 	C$main.c$67$1$1 ==.
                            881 ;	main.c:67: SCON = 0x50;   // 7,n,2
   0071 75 98 50            882 	mov	_SCON,#0x50
                    0010    883 	C$main.c$68$1$1 ==.
                            884 ;	main.c:68: RCAP2H = (word)(-NBIT) >> 8;
   0074 75 CB FF            885 	mov	_RCAP2H,#0xFF
                    0013    886 	C$main.c$69$1$1 ==.
                            887 ;	main.c:69: RCAP2L = -NBIT;
   0077 75 CA DF            888 	mov	_RCAP2L,#0xDF
                    0016    889 	C$main.c$70$1$1 ==.
                            890 ;	main.c:70: T2CON = 0x34;
   007A 75 C8 34            891 	mov	_T2CON,#0x34
                    0019    892 	C$main.c$71$1$1 ==.
                    0019    893 	XG$ComInit$0$0 ==.
   007D 22                  894 	ret
                            895 ;------------------------------------------------------------
                            896 ;Allocation info for local variables in function 'VarInit'
                            897 ;------------------------------------------------------------
                            898 ;------------------------------------------------------------
                    001A    899 	G$VarInit$0$0 ==.
                    001A    900 	C$main.c$74$1$1 ==.
                            901 ;	main.c:74: void VarInit()
                            902 ;	-----------------------------------------
                            903 ;	 function VarInit
                            904 ;	-----------------------------------------
   007E                     905 _VarInit:
                    001A    906 	C$main.c$76$1$1 ==.
                            907 ;	main.c:76: flagMessage = 0;
   007E E4                  908 	clr	a
   007F F5 0D               909 	mov	_flagMessage,a
   0081 F5 0E               910 	mov	(_flagMessage + 1),a
                    001F    911 	C$main.c$77$1$1 ==.
                            912 ;	main.c:77: index = 0;
   0083 E4                  913 	clr	a
   0084 F5 0F               914 	mov	_index,a
   0086 F5 10               915 	mov	(_index + 1),a
                    0024    916 	C$main.c$78$1$1 ==.
                            917 ;	main.c:78: adr_r = ADR_S;
   0088 75 09 01            918 	mov	_adr_r,#0x01
                    0027    919 	C$main.c$79$1$1 ==.
                    0027    920 	XG$VarInit$0$0 ==.
   008B 22                  921 	ret
                            922 ;------------------------------------------------------------
                            923 ;Allocation info for local variables in function 'SendBuf'
                            924 ;------------------------------------------------------------
                            925 ;len                       Allocated with name '_SendBuf_PARM_2'
                            926 ;bf                        Allocated to registers r2 r3 r4 
                            927 ;------------------------------------------------------------
                    0028    928 	G$SendBuf$0$0 ==.
                    0028    929 	C$main.c$82$1$1 ==.
                            930 ;	main.c:82: void SendBuf(byte *bf, byte len)
                            931 ;	-----------------------------------------
                            932 ;	 function SendBuf
                            933 ;	-----------------------------------------
   008C                     934 _SendBuf:
   008C AA 82               935 	mov	r2,dpl
   008E AB 83               936 	mov	r3,dph
   0090 AC F0               937 	mov	r4,b
                    002E    938 	C$main.c$84$1$1 ==.
                            939 ;	main.c:84: while (len--)
   0092 AD 6B               940 	mov	r5,_SendBuf_PARM_2
   0094                     941 00104$:
   0094 8D 06               942 	mov	ar6,r5
   0096 1D                  943 	dec	r5
   0097 EE                  944 	mov	a,r6
   0098 60 1B               945 	jz	00107$
                    0036    946 	C$main.c$86$2$2 ==.
                            947 ;	main.c:86: SBUF = *bf++ | 0x80;
   009A 8A 82               948 	mov	dpl,r2
   009C 8B 83               949 	mov	dph,r3
   009E 8C F0               950 	mov	b,r4
   00A0 12 16 82            951 	lcall	__gptrget
   00A3 FE                  952 	mov	r6,a
   00A4 A3                  953 	inc	dptr
   00A5 AA 82               954 	mov	r2,dpl
   00A7 AB 83               955 	mov	r3,dph
   00A9 74 80               956 	mov	a,#0x80
   00AB 4E                  957 	orl	a,r6
   00AC F5 99               958 	mov	_SBUF,a
                    004A    959 	C$main.c$87$2$2 ==.
                            960 ;	main.c:87: while (!TI);
   00AE                     961 00101$:
                    004A    962 	C$main.c$88$2$2 ==.
                            963 ;	main.c:88: TI = 0;
   00AE 10 99 02            964 	jbc	_TI,00115$
   00B1 80 FB               965 	sjmp	00101$
   00B3                     966 00115$:
   00B3 80 DF               967 	sjmp	00104$
   00B5                     968 00107$:
                    0051    969 	C$main.c$90$1$1 ==.
                    0051    970 	XG$SendBuf$0$0 ==.
   00B5 22                  971 	ret
                            972 ;------------------------------------------------------------
                            973 ;Allocation info for local variables in function 'main'
                            974 ;------------------------------------------------------------
                            975 ;------------------------------------------------------------
                    0052    976 	G$main$0$0 ==.
                    0052    977 	C$main.c$93$1$1 ==.
                            978 ;	main.c:93: void main(void)
                            979 ;	-----------------------------------------
                            980 ;	 function main
                            981 ;	-----------------------------------------
   00B6                     982 _main:
                    0052    983 	C$main.c$96$1$1 ==.
                            984 ;	main.c:96: LcdInit();
   00B6 12 04 1F            985 	lcall	_LcdInit
                    0055    986 	C$main.c$97$1$1 ==.
                            987 ;	main.c:97: AdcInit(1 << CHANNEL0);
   00B9 75 82 01            988 	mov	dpl,#0x01
   00BC 12 02 F0            989 	lcall	_AdcInit
                    005B    990 	C$main.c$98$1$1 ==.
                            991 ;	main.c:98: LBarInit();
   00BF 12 05 42            992 	lcall	_LBarInit
                    005E    993 	C$main.c$99$1$1 ==.
                            994 ;	main.c:99: ComInit();
   00C2 12 00 71            995 	lcall	_ComInit
                    0061    996 	C$main.c$100$1$1 ==.
                            997 ;	main.c:100: TimerInit();
   00C5 12 00 64            998 	lcall	_TimerInit
                    0064    999 	C$main.c$101$1$1 ==.
                           1000 ;	main.c:101: VarInit();
   00C8 12 00 7E           1001 	lcall	_VarInit
                    0067   1002 	C$main.c$104$1$1 ==.
                           1003 ;	main.c:104: while (1)
   00CB                    1004 00133$:
                    0067   1005 	C$main.c$107$2$2 ==.
                           1006 ;	main.c:107: if (RI)
   00CB 30 98 FD           1007 	jnb	_RI,00133$
                    006A   1008 	C$main.c$110$3$3 ==.
                           1009 ;	main.c:110: if ((readedByte = SBUF & 0x7F) == ':')
   00CE 74 7F              1010 	mov	a,#0x7F
   00D0 55 99              1011 	anl	a,_SBUF
   00D2 FA                 1012 	mov	r2,a
   00D3 8A 13              1013 	mov	_readedByte,r2
   00D5 BA 3A 0F           1014 	cjne	r2,#0x3A,00104$
                    0074   1015 	C$main.c$112$4$4 ==.
                           1016 ;	main.c:112: index = 0;
   00D8 E4                 1017 	clr	a
   00D9 F5 0F              1018 	mov	_index,a
   00DB F5 10              1019 	mov	(_index + 1),a
                    0079   1020 	C$main.c$113$4$4 ==.
                           1021 ;	main.c:113: flagMessage = 1;
   00DD 75 0D 01           1022 	mov	_flagMessage,#0x01
   00E0 75 0E 00           1023 	mov	(_flagMessage + 1),#0x00
                    007F   1024 	C$main.c$114$4$4 ==.
                           1025 ;	main.c:114: RI = 0;
   00E3 C2 98              1026 	clr	_RI
   00E5 80 10              1027 	sjmp	00105$
   00E7                    1028 00104$:
                    0083   1029 	C$main.c$118$3$3 ==.
                           1030 ;	main.c:118: else if (flagMessage)
   00E7 E5 0D              1031 	mov	a,_flagMessage
   00E9 45 0E              1032 	orl	a,(_flagMessage + 1)
   00EB 60 0A              1033 	jz	00105$
                    0089   1034 	C$main.c$120$4$5 ==.
                           1035 ;	main.c:120: index++;
   00ED 05 0F              1036 	inc	_index
   00EF E4                 1037 	clr	a
   00F0 B5 0F 02           1038 	cjne	a,_index,00157$
   00F3 05 10              1039 	inc	(_index + 1)
   00F5                    1040 00157$:
                    0091   1041 	C$main.c$121$4$5 ==.
                           1042 ;	main.c:121: RI = 0;
   00F5 C2 98              1043 	clr	_RI
   00F7                    1044 00105$:
                    0093   1045 	C$main.c$125$3$3 ==.
                           1046 ;	main.c:125: bufferIn[index] = readedByte;
   00F7 E5 0F              1047 	mov	a,_index
   00F9 24 00              1048 	add	a,#_bufferIn
   00FB F5 82              1049 	mov	dpl,a
   00FD E5 10              1050 	mov	a,(_index + 1)
   00FF 34 00              1051 	addc	a,#(_bufferIn >> 8)
   0101 F5 83              1052 	mov	dph,a
   0103 E5 13              1053 	mov	a,_readedByte
   0105 FA                 1054 	mov	r2,a
   0106 F0                 1055 	movx	@dptr,a
                    00A3   1056 	C$main.c$128$3$3 ==.
                           1057 ;	main.c:128: if (flagMessage && readedByte == '\n')
   0107 E5 0D              1058 	mov	a,_flagMessage
   0109 45 0E              1059 	orl	a,(_flagMessage + 1)
   010B 60 BE              1060 	jz	00133$
   010D 74 0A              1061 	mov	a,#0x0A
   010F B5 13 B9           1062 	cjne	a,_readedByte,00133$
                    00AE   1063 	C$main.c$130$4$6 ==.
                           1064 ;	main.c:130: flagMessage = 0;
   0112 E4                 1065 	clr	a
   0113 F5 0D              1066 	mov	_flagMessage,a
   0115 F5 0E              1067 	mov	(_flagMessage + 1),a
                    00B3   1068 	C$main.c$132$4$6 ==.
                           1069 ;	main.c:132: if ((MbLrc(bufferIn + 1, index - 4) == (lrc = MbRdByte(bufferIn + index - 3))) && (MbRdByte(bufferIn + 1) == ADR_S))
   0117 E5 0F              1070 	mov	a,_index
   0119 24 FC              1071 	add	a,#0xfc
   011B F5 6B              1072 	mov	_MbLrc_PARM_2,a
   011D 90 00 01           1073 	mov	dptr,#(_bufferIn + 0x0001)
   0120 75 F0 00           1074 	mov	b,#0x00
   0123 12 08 81           1075 	lcall	_MbLrc
   0126 AA 82              1076 	mov	r2,dpl
   0128 E5 0F              1077 	mov	a,_index
   012A 24 00              1078 	add	a,#_bufferIn
   012C FB                 1079 	mov	r3,a
   012D E5 10              1080 	mov	a,(_index + 1)
   012F 34 00              1081 	addc	a,#(_bufferIn >> 8)
   0131 FC                 1082 	mov	r4,a
   0132 EB                 1083 	mov	a,r3
   0133 24 FD              1084 	add	a,#0xfd
   0135 FB                 1085 	mov	r3,a
   0136 EC                 1086 	mov	a,r4
   0137 34 FF              1087 	addc	a,#0xff
   0139 FC                 1088 	mov	r4,a
   013A 7D 00              1089 	mov	r5,#0x00
   013C 8B 82              1090 	mov	dpl,r3
   013E 8C 83              1091 	mov	dph,r4
   0140 8D F0              1092 	mov	b,r5
   0142 C0 02              1093 	push	ar2
   0144 12 06 23           1094 	lcall	_MbRdByte
   0147 AB 82              1095 	mov	r3,dpl
   0149 D0 02              1096 	pop	ar2
   014B 8B 17              1097 	mov	_lrc,r3
   014D EA                 1098 	mov	a,r2
   014E B5 03 02           1099 	cjne	a,ar3,00161$
   0151 80 03              1100 	sjmp	00162$
   0153                    1101 00161$:
   0153 02 00 CB           1102 	ljmp	00133$
   0156                    1103 00162$:
   0156 90 00 01           1104 	mov	dptr,#(_bufferIn + 0x0001)
   0159 75 F0 00           1105 	mov	b,#0x00
   015C 12 06 23           1106 	lcall	_MbRdByte
   015F AA 82              1107 	mov	r2,dpl
   0161 BA 01 02           1108 	cjne	r2,#0x01,00163$
   0164 80 03              1109 	sjmp	00164$
   0166                    1110 00163$:
   0166 02 00 CB           1111 	ljmp	00133$
   0169                    1112 00164$:
                    0105   1113 	C$main.c$134$5$7 ==.
                           1114 ;	main.c:134: registerCode = MbRdByte(bufferIn + 3);
   0169 90 00 03           1115 	mov	dptr,#(_bufferIn + 0x0003)
   016C 75 F0 00           1116 	mov	b,#0x00
   016F 12 06 23           1117 	lcall	_MbRdByte
   0172 85 82 14           1118 	mov	_registerCode,dpl
                    0111   1119 	C$main.c$135$5$7 ==.
                           1120 ;	main.c:135: errorCode = 0;
   0175 75 16 00           1121 	mov	_errorCode,#0x00
                    0114   1122 	C$main.c$136$5$7 ==.
                           1123 ;	main.c:136: switch (registerCode)
   0178 74 01              1124 	mov	a,#0x01
   017A B5 14 03           1125 	cjne	a,_registerCode,00165$
   017D 02 02 0A           1126 	ljmp	00115$
   0180                    1127 00165$:
   0180 74 06              1128 	mov	a,#0x06
   0182 B5 14 02           1129 	cjne	a,_registerCode,00166$
   0185 80 03              1130 	sjmp	00167$
   0187                    1131 00166$:
   0187 02 02 64           1132 	ljmp	00120$
   018A                    1133 00167$:
                    0126   1134 	C$main.c$142$6$8 ==.
                           1135 ;	main.c:142: if ((readedRegister = MbRdWord(bufferIn + 5)) != REG_WR) errorCode = 2;
   018A 90 00 05           1136 	mov	dptr,#(_bufferIn + 0x0005)
   018D 75 F0 00           1137 	mov	b,#0x00
   0190 12 06 62           1138 	lcall	_MbRdWord
   0193 AA 82              1139 	mov	r2,dpl
   0195 AB 83              1140 	mov	r3,dph
   0197 8A 18              1141 	mov	_readedRegister,r2
   0199 8B 19              1142 	mov	(_readedRegister + 1),r3
   019B EA                 1143 	mov	a,r2
   019C 4B                 1144 	orl	a,r3
   019D 60 05              1145 	jz	00111$
   019F 75 16 02           1146 	mov	_errorCode,#0x02
   01A2 80 38              1147 	sjmp	00112$
   01A4                    1148 00111$:
                    0140   1149 	C$main.c$143$6$8 ==.
                           1150 ;	main.c:143: else if ((val = MbRdWord(bufferIn + 9)) > 1023) errorCode = 3;
   01A4 90 00 09           1151 	mov	dptr,#(_bufferIn + 0x0009)
   01A7 75 F0 00           1152 	mov	b,#0x00
   01AA 12 06 62           1153 	lcall	_MbRdWord
   01AD AA 82              1154 	mov	r2,dpl
   01AF AB 83              1155 	mov	r3,dph
   01B1 8A 0B              1156 	mov	_val,r2
   01B3 8B 0C              1157 	mov	(_val + 1),r3
   01B5 C3                 1158 	clr	c
   01B6 74 FF              1159 	mov	a,#0xFF
   01B8 9A                 1160 	subb	a,r2
   01B9 74 03              1161 	mov	a,#0x03
   01BB 9B                 1162 	subb	a,r3
   01BC 50 05              1163 	jnc	00108$
   01BE 75 16 03           1164 	mov	_errorCode,#0x03
   01C1 80 19              1165 	sjmp	00112$
   01C3                    1166 00108$:
                    015F   1167 	C$main.c$146$6$8 ==.
                           1168 ;	main.c:146: else printf("\n--- Slave mode ---\nValue: %d", val);
   01C3 C0 0B              1169 	push	_val
   01C5 C0 0C              1170 	push	(_val + 1)
   01C7 74 A2              1171 	mov	a,#__str_0
   01C9 C0 E0              1172 	push	acc
   01CB 74 16              1173 	mov	a,#(__str_0 >> 8)
   01CD C0 E0              1174 	push	acc
   01CF 74 80              1175 	mov	a,#0x80
   01D1 C0 E0              1176 	push	acc
   01D3 12 10 B3           1177 	lcall	_printf
   01D6 E5 81              1178 	mov	a,sp
   01D8 24 FB              1179 	add	a,#0xfb
   01DA F5 81              1180 	mov	sp,a
   01DC                    1181 00112$:
                    0178   1182 	C$main.c$149$6$8 ==.
                           1183 ;	main.c:149: if (errorCode == 0) itx = MbAnsWr(ADR_S, registerCode, readedRegister, val, bufferOut);
   01DC E5 16              1184 	mov	a,_errorCode
   01DE 60 03              1185 	jz	00170$
   01E0 02 02 67           1186 	ljmp	00121$
   01E3                    1187 00170$:
   01E3 85 14 30           1188 	mov	_MbWrOne_PARM_2,_registerCode
   01E6 75 35 00           1189 	mov	_MbWrOne_PARM_5,#_bufferOut
   01E9 75 36 01           1190 	mov	(_MbWrOne_PARM_5 + 1),#(_bufferOut >> 8)
   01EC 75 37 00           1191 	mov	(_MbWrOne_PARM_5 + 2),#0x00
   01EF 85 18 31           1192 	mov	_MbWrOne_PARM_3,_readedRegister
   01F2 85 19 32           1193 	mov	(_MbWrOne_PARM_3 + 1),(_readedRegister + 1)
   01F5 85 0B 33           1194 	mov	_MbWrOne_PARM_4,_val
   01F8 85 0C 34           1195 	mov	(_MbWrOne_PARM_4 + 1),(_val + 1)
   01FB 75 82 01           1196 	mov	dpl,#0x01
   01FE 12 09 46           1197 	lcall	_MbWrOne
   0201 AA 82              1198 	mov	r2,dpl
   0203 8A 11              1199 	mov	_itx,r2
   0205 75 12 00           1200 	mov	(_itx + 1),#0x00
                    01A4   1201 	C$main.c$150$6$8 ==.
                           1202 ;	main.c:150: break;
                    01A4   1203 	C$main.c$153$6$8 ==.
                           1204 ;	main.c:153: case FCE_RBIT:
   0208 80 5D              1205 	sjmp	00121$
   020A                    1206 00115$:
                    01A6   1207 	C$main.c$156$6$8 ==.
                           1208 ;	main.c:156: if ((readedRegister = MbRdWord(bufferIn + 5)) == BIT_RD && (pocet = MbRdWord(bufferIn + 9)) == 1)
   020A 90 00 05           1209 	mov	dptr,#(_bufferIn + 0x0005)
   020D 75 F0 00           1210 	mov	b,#0x00
   0210 12 06 62           1211 	lcall	_MbRdWord
   0213 AA 82              1212 	mov	r2,dpl
   0215 AB 83              1213 	mov	r3,dph
   0217 8A 18              1214 	mov	_readedRegister,r2
   0219 8B 19              1215 	mov	(_readedRegister + 1),r3
   021B EA                 1216 	mov	a,r2
   021C 4B                 1217 	orl	a,r3
   021D 70 40              1218 	jnz	00117$
   021F 90 00 09           1219 	mov	dptr,#(_bufferIn + 0x0009)
   0222 F5 F0              1220 	mov	b,a
   0224 12 06 62           1221 	lcall	_MbRdWord
   0227 AA 82              1222 	mov	r2,dpl
   0229 AB 83              1223 	mov	r3,dph
   022B 8A 15              1224 	mov	_pocet,r2
   022D BA 01 2F           1225 	cjne	r2,#0x01,00117$
                    01CC   1226 	C$main.c$158$7$9 ==.
                           1227 ;	main.c:158: bity[0] = !TLAC;
   0230 A2 B2              1228 	mov	c,_P3_2
   0232 B3                 1229 	cpl	c
   0233 E4                 1230 	clr	a
   0234 33                 1231 	rlc	a
   0235 FA                 1232 	mov	r2,a
   0236 8A 0A              1233 	mov	_bity,r2
                    01D4   1234 	C$main.c$159$7$9 ==.
                           1235 ;	main.c:159: itx = MbAnsRd(ADR_S, registerCode, 1, bity, bufferOut);
   0238 85 14 44           1236 	mov	_MbAnsRd_PARM_2,_registerCode
   023B 75 46 0A           1237 	mov	_MbAnsRd_PARM_4,#_bity
   023E 75 47 00           1238 	mov	(_MbAnsRd_PARM_4 + 1),#0x00
   0241 75 48 40           1239 	mov	(_MbAnsRd_PARM_4 + 2),#0x40
   0244 75 49 00           1240 	mov	_MbAnsRd_PARM_5,#_bufferOut
   0247 75 4A 01           1241 	mov	(_MbAnsRd_PARM_5 + 1),#(_bufferOut >> 8)
   024A 75 4B 00           1242 	mov	(_MbAnsRd_PARM_5 + 2),#0x00
   024D 75 45 01           1243 	mov	_MbAnsRd_PARM_3,#0x01
   0250 75 82 01           1244 	mov	dpl,#0x01
   0253 12 0B 2D           1245 	lcall	_MbAnsRd
   0256 AA 82              1246 	mov	r2,dpl
   0258 8A 11              1247 	mov	_itx,r2
   025A 75 12 00           1248 	mov	(_itx + 1),#0x00
   025D 80 08              1249 	sjmp	00121$
   025F                    1250 00117$:
                    01FB   1251 	C$main.c$163$6$8 ==.
                           1252 ;	main.c:163: else errorCode = 2;
   025F 75 16 02           1253 	mov	_errorCode,#0x02
                    01FE   1254 	C$main.c$164$6$8 ==.
                           1255 ;	main.c:164: break;
                    01FE   1256 	C$main.c$167$6$8 ==.
                           1257 ;	main.c:167: default: errorCode = 1;
   0262 80 03              1258 	sjmp	00121$
   0264                    1259 00120$:
   0264 75 16 01           1260 	mov	_errorCode,#0x01
                    0203   1261 	C$main.c$168$5$7 ==.
                           1262 ;	main.c:168: }
   0267                    1263 00121$:
                    0203   1264 	C$main.c$171$5$7 ==.
                           1265 ;	main.c:171: if (errorCode) itx = MbAnsErr(adr_r, registerCode|0x80, errorCode, bufferOut);
   0267 E5 16              1266 	mov	a,_errorCode
   0269 60 1F              1267 	jz	00123$
   026B 74 80              1268 	mov	a,#0x80
   026D 45 14              1269 	orl	a,_registerCode
   026F F5 4D              1270 	mov	_MbAnsErr_PARM_2,a
   0271 85 16 4E           1271 	mov	_MbAnsErr_PARM_3,_errorCode
   0274 75 4F 00           1272 	mov	_MbAnsErr_PARM_4,#_bufferOut
   0277 75 50 01           1273 	mov	(_MbAnsErr_PARM_4 + 1),#(_bufferOut >> 8)
   027A 75 51 00           1274 	mov	(_MbAnsErr_PARM_4 + 2),#0x00
   027D 85 09 82           1275 	mov	dpl,_adr_r
   0280 12 0B FC           1276 	lcall	_MbAnsErr
   0283 AA 82              1277 	mov	r2,dpl
   0285 8A 11              1278 	mov	_itx,r2
   0287 75 12 00           1279 	mov	(_itx + 1),#0x00
   028A                    1280 00123$:
                    0226   1281 	C$main.c$175$5$7 ==.
                           1282 ;	main.c:175: DIR485 = 1; /* Switch to sending mode */
   028A D2 B7              1283 	setb	_P3_7
                    0228   1284 	C$main.c$177$5$7 ==.
                           1285 ;	main.c:177: itx += MbWrByte(MbLrc(bufferOut + 1, itx - 1), bufferOut + itx);
   028C E5 11              1286 	mov	a,_itx
   028E 14                 1287 	dec	a
   028F F5 6B              1288 	mov	_MbLrc_PARM_2,a
   0291 90 01 01           1289 	mov	dptr,#(_bufferOut + 0x0001)
   0294 75 F0 00           1290 	mov	b,#0x00
   0297 12 08 81           1291 	lcall	_MbLrc
   029A E5 11              1292 	mov	a,_itx
   029C 24 00              1293 	add	a,#_bufferOut
   029E FA                 1294 	mov	r2,a
   029F E5 12              1295 	mov	a,(_itx + 1)
   02A1 34 01              1296 	addc	a,#(_bufferOut >> 8)
   02A3 FB                 1297 	mov	r3,a
   02A4 8A 22              1298 	mov	_MbWrByte_PARM_2,r2
   02A6 8B 23              1299 	mov	(_MbWrByte_PARM_2 + 1),r3
   02A8 75 24 00           1300 	mov	(_MbWrByte_PARM_2 + 2),#0x00
   02AB 12 07 25           1301 	lcall	_MbWrByte
   02AE AA 82              1302 	mov	r2,dpl
   02B0 7B 00              1303 	mov	r3,#0x00
   02B2 EA                 1304 	mov	a,r2
   02B3 25 11              1305 	add	a,_itx
   02B5 F5 11              1306 	mov	_itx,a
   02B7 EB                 1307 	mov	a,r3
   02B8 35 12              1308 	addc	a,(_itx + 1)
   02BA F5 12              1309 	mov	(_itx + 1),a
                    0258   1310 	C$main.c$178$5$7 ==.
                           1311 ;	main.c:178: itx += MbWrEoT(bufferOut + itx);
   02BC E5 11              1312 	mov	a,_itx
   02BE 24 00              1313 	add	a,#_bufferOut
   02C0 FA                 1314 	mov	r2,a
   02C1 E5 12              1315 	mov	a,(_itx + 1)
   02C3 34 01              1316 	addc	a,#(_bufferOut >> 8)
   02C5 FB                 1317 	mov	r3,a
   02C6 7C 00              1318 	mov	r4,#0x00
   02C8 8A 82              1319 	mov	dpl,r2
   02CA 8B 83              1320 	mov	dph,r3
   02CC 8C F0              1321 	mov	b,r4
   02CE 12 08 6E           1322 	lcall	_MbWrEoT
   02D1 AA 82              1323 	mov	r2,dpl
   02D3 7B 00              1324 	mov	r3,#0x00
   02D5 EA                 1325 	mov	a,r2
   02D6 25 11              1326 	add	a,_itx
   02D8 F5 11              1327 	mov	_itx,a
   02DA EB                 1328 	mov	a,r3
   02DB 35 12              1329 	addc	a,(_itx + 1)
   02DD F5 12              1330 	mov	(_itx + 1),a
                    027B   1331 	C$main.c$179$5$7 ==.
                           1332 ;	main.c:179: SendBuf(bufferOut, itx);
   02DF 85 11 6B           1333 	mov	_SendBuf_PARM_2,_itx
   02E2 90 01 00           1334 	mov	dptr,#_bufferOut
   02E5 75 F0 00           1335 	mov	b,#0x00
   02E8 12 00 8C           1336 	lcall	_SendBuf
                    0287   1337 	C$main.c$181$5$7 ==.
                           1338 ;	main.c:181: DIR485 = 0; /* Switch back to receive mode */
   02EB C2 B7              1339 	clr	_P3_7
                    0289   1340 	C$main.c$186$1$1 ==.
                    0289   1341 	XG$main$0$0 ==.
   02ED 02 00 CB           1342 	ljmp	00133$
                           1343 	.area CSEG    (CODE)
                           1344 	.area CONST   (CODE)
                    0000   1345 Fmain$_str_0$0$0 == .
   16A2                    1346 __str_0:
   16A2 0A                 1347 	.db 0x0A
   16A3 2D 2D 2D 20 53 6C  1348 	.ascii "--- Slave mode ---"
        61 76 65 20 6D 6F
        64 65 20 2D 2D 2D
   16B5 0A                 1349 	.db 0x0A
   16B6 56 61 6C 75 65 3A  1350 	.ascii "Value: %d"
        20 25 64
   16BF 00                 1351 	.db 0x00
                           1352 	.area XINIT   (CODE)
                           1353 	.area CABS    (ABS,CODE)
