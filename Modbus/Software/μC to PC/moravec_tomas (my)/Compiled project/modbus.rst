                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 13 12:41:44 2017
                              5 ;--------------------------------------------------------
                              6 	.module modbus
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _MrtuWr_PARM_6
                             13 	.globl _MrtuWr_PARM_5
                             14 	.globl _MrtuWr_PARM_4
                             15 	.globl _MrtuWr_PARM_3
                             16 	.globl _MrtuWr_PARM_2
                             17 	.globl _MrtuRd_PARM_5
                             18 	.globl _MrtuRd_PARM_4
                             19 	.globl _MrtuRd_PARM_3
                             20 	.globl _MrtuRd_PARM_2
                             21 	.globl _MrtuWrOne_PARM_5
                             22 	.globl _MrtuWrOne_PARM_4
                             23 	.globl _MrtuWrOne_PARM_3
                             24 	.globl _MrtuWrOne_PARM_2
                             25 	.globl _MrtuAnsRd_PARM_5
                             26 	.globl _MrtuAnsRd_PARM_4
                             27 	.globl _MrtuAnsRd_PARM_3
                             28 	.globl _MrtuAnsRd_PARM_2
                             29 	.globl _MrtuAnsErr_PARM_4
                             30 	.globl _MrtuAnsErr_PARM_3
                             31 	.globl _MrtuAnsErr_PARM_2
                             32 	.globl _MrtuWrCrc_PARM_2
                             33 	.globl _MrtuCrc_PARM_2
                             34 	.globl _MbLrc_PARM_2
                             35 	.globl _WrWord_PARM_2
                             36 	.globl _tabCRCLo
                             37 	.globl _tabCRCHi
                             38 	.globl _CY
                             39 	.globl _AC
                             40 	.globl _F0
                             41 	.globl _RS1
                             42 	.globl _RS0
                             43 	.globl _OV
                             44 	.globl _F1
                             45 	.globl _P
                             46 	.globl _PS
                             47 	.globl _PT1
                             48 	.globl _PX1
                             49 	.globl _PT0
                             50 	.globl _PX0
                             51 	.globl _RD
                             52 	.globl _WR
                             53 	.globl _T1
                             54 	.globl _T0
                             55 	.globl _INT1
                             56 	.globl _INT0
                             57 	.globl _TXD
                             58 	.globl _RXD
                             59 	.globl _P3_7
                             60 	.globl _P3_6
                             61 	.globl _P3_5
                             62 	.globl _P3_4
                             63 	.globl _P3_3
                             64 	.globl _P3_2
                             65 	.globl _P3_1
                             66 	.globl _P3_0
                             67 	.globl _EA
                             68 	.globl _ES
                             69 	.globl _ET1
                             70 	.globl _EX1
                             71 	.globl _ET0
                             72 	.globl _EX0
                             73 	.globl _P2_7
                             74 	.globl _P2_6
                             75 	.globl _P2_5
                             76 	.globl _P2_4
                             77 	.globl _P2_3
                             78 	.globl _P2_2
                             79 	.globl _P2_1
                             80 	.globl _P2_0
                             81 	.globl _SM0
                             82 	.globl _SM1
                             83 	.globl _SM2
                             84 	.globl _REN
                             85 	.globl _TB8
                             86 	.globl _RB8
                             87 	.globl _TI
                             88 	.globl _RI
                             89 	.globl _P1_7
                             90 	.globl _P1_6
                             91 	.globl _P1_5
                             92 	.globl _P1_4
                             93 	.globl _P1_3
                             94 	.globl _P1_2
                             95 	.globl _P1_1
                             96 	.globl _P1_0
                             97 	.globl _TF1
                             98 	.globl _TR1
                             99 	.globl _TF0
                            100 	.globl _TR0
                            101 	.globl _IE1
                            102 	.globl _IT1
                            103 	.globl _IE0
                            104 	.globl _IT0
                            105 	.globl _P0_7
                            106 	.globl _P0_6
                            107 	.globl _P0_5
                            108 	.globl _P0_4
                            109 	.globl _P0_3
                            110 	.globl _P0_2
                            111 	.globl _P0_1
                            112 	.globl _P0_0
                            113 	.globl _B
                            114 	.globl _ACC
                            115 	.globl _PSW
                            116 	.globl _IP
                            117 	.globl _P3
                            118 	.globl _IE
                            119 	.globl _P2
                            120 	.globl _SBUF
                            121 	.globl _SCON
                            122 	.globl _P1
                            123 	.globl _TH1
                            124 	.globl _TH0
                            125 	.globl _TL1
                            126 	.globl _TL0
                            127 	.globl _TMOD
                            128 	.globl _TCON
                            129 	.globl _PCON
                            130 	.globl _DPH
                            131 	.globl _DPL
                            132 	.globl _SP
                            133 	.globl _P0
                            134 	.globl _MbAnsErr_PARM_4
                            135 	.globl _MbAnsErr_PARM_3
                            136 	.globl _MbAnsErr_PARM_2
                            137 	.globl _MbAnsRd_PARM_5
                            138 	.globl _MbAnsRd_PARM_4
                            139 	.globl _MbAnsRd_PARM_3
                            140 	.globl _MbAnsRd_PARM_2
                            141 	.globl _MbWr_PARM_6
                            142 	.globl _MbWr_PARM_5
                            143 	.globl _MbWr_PARM_4
                            144 	.globl _MbWr_PARM_3
                            145 	.globl _MbWr_PARM_2
                            146 	.globl _MbWrOne_PARM_5
                            147 	.globl _MbWrOne_PARM_4
                            148 	.globl _MbWrOne_PARM_3
                            149 	.globl _MbWrOne_PARM_2
                            150 	.globl _MbRd_PARM_5
                            151 	.globl _MbRd_PARM_4
                            152 	.globl _MbRd_PARM_3
                            153 	.globl _MbRd_PARM_2
                            154 	.globl _MbWrWord_PARM_2
                            155 	.globl _MbWrByte_PARM_2
                            156 	.globl _RdWord
                            157 	.globl _WrWord
                            158 	.globl _AHex
                            159 	.globl _HexAsc
                            160 	.globl _MbRdByte
                            161 	.globl _MbRdWord
                            162 	.globl _MbWrByte
                            163 	.globl _MbWrWord
                            164 	.globl _MbWrEoT
                            165 	.globl _MbLrc
                            166 	.globl _MbRd
                            167 	.globl _MbWrOne
                            168 	.globl _MbWr
                            169 	.globl _MbAnsRd
                            170 	.globl _MbAnsErr
                            171 	.globl _MrtuCrc
                            172 	.globl _MrtuRdCrc
                            173 	.globl _MrtuWrCrc
                            174 	.globl _MrtuAnsErr
                            175 	.globl _MrtuAnsRd
                            176 	.globl _MrtuWrOne
                            177 	.globl _MrtuRd
                            178 	.globl _MrtuWr
                            179 ;--------------------------------------------------------
                            180 ; special function registers
                            181 ;--------------------------------------------------------
                            182 	.area RSEG    (ABS,DATA)
   0000                     183 	.org 0x0000
                    0080    184 G$P0$0$0 == 0x0080
                    0080    185 _P0	=	0x0080
                    0081    186 G$SP$0$0 == 0x0081
                    0081    187 _SP	=	0x0081
                    0082    188 G$DPL$0$0 == 0x0082
                    0082    189 _DPL	=	0x0082
                    0083    190 G$DPH$0$0 == 0x0083
                    0083    191 _DPH	=	0x0083
                    0087    192 G$PCON$0$0 == 0x0087
                    0087    193 _PCON	=	0x0087
                    0088    194 G$TCON$0$0 == 0x0088
                    0088    195 _TCON	=	0x0088
                    0089    196 G$TMOD$0$0 == 0x0089
                    0089    197 _TMOD	=	0x0089
                    008A    198 G$TL0$0$0 == 0x008a
                    008A    199 _TL0	=	0x008a
                    008B    200 G$TL1$0$0 == 0x008b
                    008B    201 _TL1	=	0x008b
                    008C    202 G$TH0$0$0 == 0x008c
                    008C    203 _TH0	=	0x008c
                    008D    204 G$TH1$0$0 == 0x008d
                    008D    205 _TH1	=	0x008d
                    0090    206 G$P1$0$0 == 0x0090
                    0090    207 _P1	=	0x0090
                    0098    208 G$SCON$0$0 == 0x0098
                    0098    209 _SCON	=	0x0098
                    0099    210 G$SBUF$0$0 == 0x0099
                    0099    211 _SBUF	=	0x0099
                    00A0    212 G$P2$0$0 == 0x00a0
                    00A0    213 _P2	=	0x00a0
                    00A8    214 G$IE$0$0 == 0x00a8
                    00A8    215 _IE	=	0x00a8
                    00B0    216 G$P3$0$0 == 0x00b0
                    00B0    217 _P3	=	0x00b0
                    00B8    218 G$IP$0$0 == 0x00b8
                    00B8    219 _IP	=	0x00b8
                    00D0    220 G$PSW$0$0 == 0x00d0
                    00D0    221 _PSW	=	0x00d0
                    00E0    222 G$ACC$0$0 == 0x00e0
                    00E0    223 _ACC	=	0x00e0
                    00F0    224 G$B$0$0 == 0x00f0
                    00F0    225 _B	=	0x00f0
                            226 ;--------------------------------------------------------
                            227 ; special function bits
                            228 ;--------------------------------------------------------
                            229 	.area RSEG    (ABS,DATA)
   0000                     230 	.org 0x0000
                    0080    231 G$P0_0$0$0 == 0x0080
                    0080    232 _P0_0	=	0x0080
                    0081    233 G$P0_1$0$0 == 0x0081
                    0081    234 _P0_1	=	0x0081
                    0082    235 G$P0_2$0$0 == 0x0082
                    0082    236 _P0_2	=	0x0082
                    0083    237 G$P0_3$0$0 == 0x0083
                    0083    238 _P0_3	=	0x0083
                    0084    239 G$P0_4$0$0 == 0x0084
                    0084    240 _P0_4	=	0x0084
                    0085    241 G$P0_5$0$0 == 0x0085
                    0085    242 _P0_5	=	0x0085
                    0086    243 G$P0_6$0$0 == 0x0086
                    0086    244 _P0_6	=	0x0086
                    0087    245 G$P0_7$0$0 == 0x0087
                    0087    246 _P0_7	=	0x0087
                    0088    247 G$IT0$0$0 == 0x0088
                    0088    248 _IT0	=	0x0088
                    0089    249 G$IE0$0$0 == 0x0089
                    0089    250 _IE0	=	0x0089
                    008A    251 G$IT1$0$0 == 0x008a
                    008A    252 _IT1	=	0x008a
                    008B    253 G$IE1$0$0 == 0x008b
                    008B    254 _IE1	=	0x008b
                    008C    255 G$TR0$0$0 == 0x008c
                    008C    256 _TR0	=	0x008c
                    008D    257 G$TF0$0$0 == 0x008d
                    008D    258 _TF0	=	0x008d
                    008E    259 G$TR1$0$0 == 0x008e
                    008E    260 _TR1	=	0x008e
                    008F    261 G$TF1$0$0 == 0x008f
                    008F    262 _TF1	=	0x008f
                    0090    263 G$P1_0$0$0 == 0x0090
                    0090    264 _P1_0	=	0x0090
                    0091    265 G$P1_1$0$0 == 0x0091
                    0091    266 _P1_1	=	0x0091
                    0092    267 G$P1_2$0$0 == 0x0092
                    0092    268 _P1_2	=	0x0092
                    0093    269 G$P1_3$0$0 == 0x0093
                    0093    270 _P1_3	=	0x0093
                    0094    271 G$P1_4$0$0 == 0x0094
                    0094    272 _P1_4	=	0x0094
                    0095    273 G$P1_5$0$0 == 0x0095
                    0095    274 _P1_5	=	0x0095
                    0096    275 G$P1_6$0$0 == 0x0096
                    0096    276 _P1_6	=	0x0096
                    0097    277 G$P1_7$0$0 == 0x0097
                    0097    278 _P1_7	=	0x0097
                    0098    279 G$RI$0$0 == 0x0098
                    0098    280 _RI	=	0x0098
                    0099    281 G$TI$0$0 == 0x0099
                    0099    282 _TI	=	0x0099
                    009A    283 G$RB8$0$0 == 0x009a
                    009A    284 _RB8	=	0x009a
                    009B    285 G$TB8$0$0 == 0x009b
                    009B    286 _TB8	=	0x009b
                    009C    287 G$REN$0$0 == 0x009c
                    009C    288 _REN	=	0x009c
                    009D    289 G$SM2$0$0 == 0x009d
                    009D    290 _SM2	=	0x009d
                    009E    291 G$SM1$0$0 == 0x009e
                    009E    292 _SM1	=	0x009e
                    009F    293 G$SM0$0$0 == 0x009f
                    009F    294 _SM0	=	0x009f
                    00A0    295 G$P2_0$0$0 == 0x00a0
                    00A0    296 _P2_0	=	0x00a0
                    00A1    297 G$P2_1$0$0 == 0x00a1
                    00A1    298 _P2_1	=	0x00a1
                    00A2    299 G$P2_2$0$0 == 0x00a2
                    00A2    300 _P2_2	=	0x00a2
                    00A3    301 G$P2_3$0$0 == 0x00a3
                    00A3    302 _P2_3	=	0x00a3
                    00A4    303 G$P2_4$0$0 == 0x00a4
                    00A4    304 _P2_4	=	0x00a4
                    00A5    305 G$P2_5$0$0 == 0x00a5
                    00A5    306 _P2_5	=	0x00a5
                    00A6    307 G$P2_6$0$0 == 0x00a6
                    00A6    308 _P2_6	=	0x00a6
                    00A7    309 G$P2_7$0$0 == 0x00a7
                    00A7    310 _P2_7	=	0x00a7
                    00A8    311 G$EX0$0$0 == 0x00a8
                    00A8    312 _EX0	=	0x00a8
                    00A9    313 G$ET0$0$0 == 0x00a9
                    00A9    314 _ET0	=	0x00a9
                    00AA    315 G$EX1$0$0 == 0x00aa
                    00AA    316 _EX1	=	0x00aa
                    00AB    317 G$ET1$0$0 == 0x00ab
                    00AB    318 _ET1	=	0x00ab
                    00AC    319 G$ES$0$0 == 0x00ac
                    00AC    320 _ES	=	0x00ac
                    00AF    321 G$EA$0$0 == 0x00af
                    00AF    322 _EA	=	0x00af
                    00B0    323 G$P3_0$0$0 == 0x00b0
                    00B0    324 _P3_0	=	0x00b0
                    00B1    325 G$P3_1$0$0 == 0x00b1
                    00B1    326 _P3_1	=	0x00b1
                    00B2    327 G$P3_2$0$0 == 0x00b2
                    00B2    328 _P3_2	=	0x00b2
                    00B3    329 G$P3_3$0$0 == 0x00b3
                    00B3    330 _P3_3	=	0x00b3
                    00B4    331 G$P3_4$0$0 == 0x00b4
                    00B4    332 _P3_4	=	0x00b4
                    00B5    333 G$P3_5$0$0 == 0x00b5
                    00B5    334 _P3_5	=	0x00b5
                    00B6    335 G$P3_6$0$0 == 0x00b6
                    00B6    336 _P3_6	=	0x00b6
                    00B7    337 G$P3_7$0$0 == 0x00b7
                    00B7    338 _P3_7	=	0x00b7
                    00B0    339 G$RXD$0$0 == 0x00b0
                    00B0    340 _RXD	=	0x00b0
                    00B1    341 G$TXD$0$0 == 0x00b1
                    00B1    342 _TXD	=	0x00b1
                    00B2    343 G$INT0$0$0 == 0x00b2
                    00B2    344 _INT0	=	0x00b2
                    00B3    345 G$INT1$0$0 == 0x00b3
                    00B3    346 _INT1	=	0x00b3
                    00B4    347 G$T0$0$0 == 0x00b4
                    00B4    348 _T0	=	0x00b4
                    00B5    349 G$T1$0$0 == 0x00b5
                    00B5    350 _T1	=	0x00b5
                    00B6    351 G$WR$0$0 == 0x00b6
                    00B6    352 _WR	=	0x00b6
                    00B7    353 G$RD$0$0 == 0x00b7
                    00B7    354 _RD	=	0x00b7
                    00B8    355 G$PX0$0$0 == 0x00b8
                    00B8    356 _PX0	=	0x00b8
                    00B9    357 G$PT0$0$0 == 0x00b9
                    00B9    358 _PT0	=	0x00b9
                    00BA    359 G$PX1$0$0 == 0x00ba
                    00BA    360 _PX1	=	0x00ba
                    00BB    361 G$PT1$0$0 == 0x00bb
                    00BB    362 _PT1	=	0x00bb
                    00BC    363 G$PS$0$0 == 0x00bc
                    00BC    364 _PS	=	0x00bc
                    00D0    365 G$P$0$0 == 0x00d0
                    00D0    366 _P	=	0x00d0
                    00D1    367 G$F1$0$0 == 0x00d1
                    00D1    368 _F1	=	0x00d1
                    00D2    369 G$OV$0$0 == 0x00d2
                    00D2    370 _OV	=	0x00d2
                    00D3    371 G$RS0$0$0 == 0x00d3
                    00D3    372 _RS0	=	0x00d3
                    00D4    373 G$RS1$0$0 == 0x00d4
                    00D4    374 _RS1	=	0x00d4
                    00D5    375 G$F0$0$0 == 0x00d5
                    00D5    376 _F0	=	0x00d5
                    00D6    377 G$AC$0$0 == 0x00d6
                    00D6    378 _AC	=	0x00d6
                    00D7    379 G$CY$0$0 == 0x00d7
                    00D7    380 _CY	=	0x00d7
                            381 ;--------------------------------------------------------
                            382 ; overlayable register banks
                            383 ;--------------------------------------------------------
                            384 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     385 	.ds 8
                            386 ;--------------------------------------------------------
                            387 ; internal ram data
                            388 ;--------------------------------------------------------
                            389 	.area DSEG    (DATA)
                    0000    390 LMbWrByte$bf$1$1==.
   0022                     391 _MbWrByte_PARM_2:
   0022                     392 	.ds 3
                    0003    393 LMbWrWord$bf$1$1==.
   0025                     394 _MbWrWord_PARM_2:
   0025                     395 	.ds 3
                    0006    396 LMbRd$fce$1$1==.
   0028                     397 _MbRd_PARM_2:
   0028                     398 	.ds 1
                    0007    399 LMbRd$reg$1$1==.
   0029                     400 _MbRd_PARM_3:
   0029                     401 	.ds 2
                    0009    402 LMbRd$nbr$1$1==.
   002B                     403 _MbRd_PARM_4:
   002B                     404 	.ds 2
                    000B    405 LMbRd$bf$1$1==.
   002D                     406 _MbRd_PARM_5:
   002D                     407 	.ds 3
                    000E    408 LMbWrOne$fce$1$1==.
   0030                     409 _MbWrOne_PARM_2:
   0030                     410 	.ds 1
                    000F    411 LMbWrOne$reg$1$1==.
   0031                     412 _MbWrOne_PARM_3:
   0031                     413 	.ds 2
                    0011    414 LMbWrOne$val$1$1==.
   0033                     415 _MbWrOne_PARM_4:
   0033                     416 	.ds 2
                    0013    417 LMbWrOne$bf$1$1==.
   0035                     418 _MbWrOne_PARM_5:
   0035                     419 	.ds 3
                    0016    420 LMbWr$fce$1$1==.
   0038                     421 _MbWr_PARM_2:
   0038                     422 	.ds 1
                    0017    423 LMbWr$reg$1$1==.
   0039                     424 _MbWr_PARM_3:
   0039                     425 	.ds 2
                    0019    426 LMbWr$nbr$1$1==.
   003B                     427 _MbWr_PARM_4:
   003B                     428 	.ds 2
                    001B    429 LMbWr$vals$1$1==.
   003D                     430 _MbWr_PARM_5:
   003D                     431 	.ds 3
                    001E    432 LMbWr$bf$1$1==.
   0040                     433 _MbWr_PARM_6:
   0040                     434 	.ds 3
                    0021    435 LMbWr$n$1$1==.
   0043                     436 _MbWr_n_1_1:
   0043                     437 	.ds 1
                    0022    438 LMbAnsRd$fce$1$1==.
   0044                     439 _MbAnsRd_PARM_2:
   0044                     440 	.ds 1
                    0023    441 LMbAnsRd$bytes$1$1==.
   0045                     442 _MbAnsRd_PARM_3:
   0045                     443 	.ds 1
                    0024    444 LMbAnsRd$vals$1$1==.
   0046                     445 _MbAnsRd_PARM_4:
   0046                     446 	.ds 3
                    0027    447 LMbAnsRd$bf$1$1==.
   0049                     448 _MbAnsRd_PARM_5:
   0049                     449 	.ds 3
                    002A    450 LMbAnsRd$n$1$1==.
   004C                     451 _MbAnsRd_n_1_1:
   004C                     452 	.ds 1
                    002B    453 LMbAnsErr$fce$1$1==.
   004D                     454 _MbAnsErr_PARM_2:
   004D                     455 	.ds 1
                    002C    456 LMbAnsErr$er$1$1==.
   004E                     457 _MbAnsErr_PARM_3:
   004E                     458 	.ds 1
                    002D    459 LMbAnsErr$bf$1$1==.
   004F                     460 _MbAnsErr_PARM_4:
   004F                     461 	.ds 3
                            462 ;--------------------------------------------------------
                            463 ; overlayable items in internal ram 
                            464 ;--------------------------------------------------------
                            465 	.area	OSEG    (OVR,DATA)
                            466 	.area	OSEG    (OVR,DATA)
                    0000    467 LWrWord$bf$1$1==.
   006B                     468 _WrWord_PARM_2::
   006B                     469 	.ds 3
                            470 	.area	OSEG    (OVR,DATA)
                            471 	.area	OSEG    (OVR,DATA)
                            472 	.area	OSEG    (OVR,DATA)
                            473 	.area	OSEG    (OVR,DATA)
                    0000    474 LMbLrc$len$1$1==.
   006B                     475 _MbLrc_PARM_2::
   006B                     476 	.ds 1
                            477 	.area	OSEG    (OVR,DATA)
                    0000    478 LMrtuCrc$len$1$1==.
   006B                     479 _MrtuCrc_PARM_2::
   006B                     480 	.ds 1
                            481 	.area	OSEG    (OVR,DATA)
                            482 	.area	OSEG    (OVR,DATA)
                    0000    483 LMrtuWrCrc$bf$1$1==.
   006B                     484 _MrtuWrCrc_PARM_2::
   006B                     485 	.ds 3
                            486 	.area	OSEG    (OVR,DATA)
                    0000    487 LMrtuAnsErr$fce$1$1==.
   006B                     488 _MrtuAnsErr_PARM_2::
   006B                     489 	.ds 1
                    0001    490 LMrtuAnsErr$err$1$1==.
   006C                     491 _MrtuAnsErr_PARM_3::
   006C                     492 	.ds 1
                    0002    493 LMrtuAnsErr$bf$1$1==.
   006D                     494 _MrtuAnsErr_PARM_4::
   006D                     495 	.ds 3
                            496 	.area	OSEG    (OVR,DATA)
                    0000    497 LMrtuAnsRd$fce$1$1==.
   006B                     498 _MrtuAnsRd_PARM_2::
   006B                     499 	.ds 1
                    0001    500 LMrtuAnsRd$bytes$1$1==.
   006C                     501 _MrtuAnsRd_PARM_3::
   006C                     502 	.ds 1
                    0002    503 LMrtuAnsRd$vals$1$1==.
   006D                     504 _MrtuAnsRd_PARM_4::
   006D                     505 	.ds 3
                    0005    506 LMrtuAnsRd$bf$1$1==.
   0070                     507 _MrtuAnsRd_PARM_5::
   0070                     508 	.ds 3
                    0008    509 LMrtuAnsRd$n$1$1==.
   0073                     510 _MrtuAnsRd_n_1_1::
   0073                     511 	.ds 1
                            512 	.area	OSEG    (OVR,DATA)
                    0000    513 LMrtuWrOne$fce$1$1==.
   006B                     514 _MrtuWrOne_PARM_2::
   006B                     515 	.ds 1
                    0001    516 LMrtuWrOne$reg$1$1==.
   006C                     517 _MrtuWrOne_PARM_3::
   006C                     518 	.ds 2
                    0003    519 LMrtuWrOne$val$1$1==.
   006E                     520 _MrtuWrOne_PARM_4::
   006E                     521 	.ds 2
                    0005    522 LMrtuWrOne$bf$1$1==.
   0070                     523 _MrtuWrOne_PARM_5::
   0070                     524 	.ds 3
                            525 	.area	OSEG    (OVR,DATA)
                    0000    526 LMrtuRd$fce$1$1==.
   006B                     527 _MrtuRd_PARM_2::
   006B                     528 	.ds 1
                    0001    529 LMrtuRd$reg$1$1==.
   006C                     530 _MrtuRd_PARM_3::
   006C                     531 	.ds 2
                    0003    532 LMrtuRd$nbr$1$1==.
   006E                     533 _MrtuRd_PARM_4::
   006E                     534 	.ds 2
                    0005    535 LMrtuRd$bf$1$1==.
   0070                     536 _MrtuRd_PARM_5::
   0070                     537 	.ds 3
                            538 	.area	OSEG    (OVR,DATA)
                    0000    539 LMrtuWr$fce$1$1==.
   006B                     540 _MrtuWr_PARM_2::
   006B                     541 	.ds 1
                    0001    542 LMrtuWr$reg$1$1==.
   006C                     543 _MrtuWr_PARM_3::
   006C                     544 	.ds 2
                    0003    545 LMrtuWr$nbr$1$1==.
   006E                     546 _MrtuWr_PARM_4::
   006E                     547 	.ds 2
                    0005    548 LMrtuWr$vals$1$1==.
   0070                     549 _MrtuWr_PARM_5::
   0070                     550 	.ds 3
                    0008    551 LMrtuWr$bf$1$1==.
   0073                     552 _MrtuWr_PARM_6::
   0073                     553 	.ds 3
                    000B    554 LMrtuWr$bytes$1$1==.
   0076                     555 _MrtuWr_bytes_1_1::
   0076                     556 	.ds 1
                            557 ;--------------------------------------------------------
                            558 ; indirectly addressable internal ram data
                            559 ;--------------------------------------------------------
                            560 	.area ISEG    (DATA)
                            561 ;--------------------------------------------------------
                            562 ; absolute internal ram data
                            563 ;--------------------------------------------------------
                            564 	.area IABS    (ABS,DATA)
                            565 	.area IABS    (ABS,DATA)
                            566 ;--------------------------------------------------------
                            567 ; bit data
                            568 ;--------------------------------------------------------
                            569 	.area BSEG    (BIT)
                            570 ;--------------------------------------------------------
                            571 ; paged external ram data
                            572 ;--------------------------------------------------------
                            573 	.area PSEG    (PAG,XDATA)
                            574 ;--------------------------------------------------------
                            575 ; external ram data
                            576 ;--------------------------------------------------------
                            577 	.area XSEG    (XDATA)
                            578 ;--------------------------------------------------------
                            579 ; absolute external ram data
                            580 ;--------------------------------------------------------
                            581 	.area XABS    (ABS,XDATA)
                            582 ;--------------------------------------------------------
                            583 ; external initialized ram data
                            584 ;--------------------------------------------------------
                            585 	.area XISEG   (XDATA)
                            586 	.area HOME    (CODE)
                            587 	.area GSINIT0 (CODE)
                            588 	.area GSINIT1 (CODE)
                            589 	.area GSINIT2 (CODE)
                            590 	.area GSINIT3 (CODE)
                            591 	.area GSINIT4 (CODE)
                            592 	.area GSINIT5 (CODE)
                            593 	.area GSINIT  (CODE)
                            594 	.area GSFINAL (CODE)
                            595 	.area CSEG    (CODE)
                            596 ;--------------------------------------------------------
                            597 ; global & static initialisations
                            598 ;--------------------------------------------------------
                            599 	.area HOME    (CODE)
                            600 	.area GSINIT  (CODE)
                            601 	.area GSFINAL (CODE)
                            602 	.area GSINIT  (CODE)
                            603 ;--------------------------------------------------------
                            604 ; Home
                            605 ;--------------------------------------------------------
                            606 	.area HOME    (CODE)
                            607 	.area HOME    (CODE)
                            608 ;--------------------------------------------------------
                            609 ; code
                            610 ;--------------------------------------------------------
                            611 	.area CSEG    (CODE)
                            612 ;------------------------------------------------------------
                            613 ;Allocation info for local variables in function 'RdWord'
                            614 ;------------------------------------------------------------
                            615 ;bf                        Allocated to registers r2 r3 r4 
                            616 ;------------------------------------------------------------
                    0000    617 	G$RdWord$0$0 ==.
                    0000    618 	C$modbus.c$7$0$0 ==.
                            619 ;	modbus.c:7: word RdWord(byte * bf)
                            620 ;	-----------------------------------------
                            621 ;	 function RdWord
                            622 ;	-----------------------------------------
   058D                     623 _RdWord:
                    0002    624 	ar2 = 0x02
                    0003    625 	ar3 = 0x03
                    0004    626 	ar4 = 0x04
                    0005    627 	ar5 = 0x05
                    0006    628 	ar6 = 0x06
                    0007    629 	ar7 = 0x07
                    0000    630 	ar0 = 0x00
                    0001    631 	ar1 = 0x01
                    0000    632 	C$modbus.c$9$1$1 ==.
                            633 ;	modbus.c:9: return ( *bf<<8 | *(bf+1));
   058D AA 82               634 	mov	r2,dpl
   058F AB 83               635 	mov	r3,dph
   0591 AC F0               636 	mov	r4,b
   0593 12 16 82            637 	lcall	__gptrget
   0596 FE                  638 	mov	r6,a
   0597 7D 00               639 	mov	r5,#0x00
   0599 0A                  640 	inc	r2
   059A BA 00 01            641 	cjne	r2,#0x00,00103$
   059D 0B                  642 	inc	r3
   059E                     643 00103$:
   059E 8A 82               644 	mov	dpl,r2
   05A0 8B 83               645 	mov	dph,r3
   05A2 8C F0               646 	mov	b,r4
   05A4 12 16 82            647 	lcall	__gptrget
   05A7 7B 00               648 	mov	r3,#0x00
   05A9 4D                  649 	orl	a,r5
   05AA F5 82               650 	mov	dpl,a
   05AC EB                  651 	mov	a,r3
   05AD 4E                  652 	orl	a,r6
   05AE F5 83               653 	mov	dph,a
                    0023    654 	C$modbus.c$10$1$1 ==.
                    0023    655 	XG$RdWord$0$0 ==.
   05B0 22                  656 	ret
                            657 ;------------------------------------------------------------
                            658 ;Allocation info for local variables in function 'WrWord'
                            659 ;------------------------------------------------------------
                            660 ;bf                        Allocated with name '_WrWord_PARM_2'
                            661 ;val                       Allocated to registers r2 r3 
                            662 ;------------------------------------------------------------
                    0024    663 	G$WrWord$0$0 ==.
                    0024    664 	C$modbus.c$12$1$1 ==.
                            665 ;	modbus.c:12: byte WrWord(word val,byte *bf)
                            666 ;	-----------------------------------------
                            667 ;	 function WrWord
                            668 ;	-----------------------------------------
   05B1                     669 _WrWord:
   05B1 AA 82               670 	mov	r2,dpl
   05B3 AB 83               671 	mov	r3,dph
                    0028    672 	C$modbus.c$14$1$1 ==.
                            673 ;	modbus.c:14: *bf++ = val>>8;
   05B5 AC 6B               674 	mov	r4,_WrWord_PARM_2
   05B7 AD 6C               675 	mov	r5,(_WrWord_PARM_2 + 1)
   05B9 AE 6D               676 	mov	r6,(_WrWord_PARM_2 + 2)
   05BB 8B 07               677 	mov	ar7,r3
   05BD 8C 82               678 	mov	dpl,r4
   05BF 8D 83               679 	mov	dph,r5
   05C1 8E F0               680 	mov	b,r6
   05C3 EF                  681 	mov	a,r7
   05C4 12 10 75            682 	lcall	__gptrput
   05C7 74 01               683 	mov	a,#0x01
   05C9 2C                  684 	add	a,r4
   05CA F5 6B               685 	mov	_WrWord_PARM_2,a
   05CC E4                  686 	clr	a
   05CD 3D                  687 	addc	a,r5
   05CE F5 6C               688 	mov	(_WrWord_PARM_2 + 1),a
   05D0 8E 6D               689 	mov	(_WrWord_PARM_2 + 2),r6
                    0045    690 	C$modbus.c$15$1$1 ==.
                            691 ;	modbus.c:15: *bf   = val;
   05D2 AC 6B               692 	mov	r4,_WrWord_PARM_2
   05D4 AD 6C               693 	mov	r5,(_WrWord_PARM_2 + 1)
   05D6 AE 6D               694 	mov	r6,(_WrWord_PARM_2 + 2)
   05D8 8C 82               695 	mov	dpl,r4
   05DA 8D 83               696 	mov	dph,r5
   05DC 8E F0               697 	mov	b,r6
   05DE EA                  698 	mov	a,r2
   05DF 12 10 75            699 	lcall	__gptrput
                    0055    700 	C$modbus.c$16$1$1 ==.
                            701 ;	modbus.c:16: return 2;
   05E2 75 82 02            702 	mov	dpl,#0x02
                    0058    703 	C$modbus.c$18$1$1 ==.
                    0058    704 	XG$WrWord$0$0 ==.
   05E5 22                  705 	ret
                            706 ;------------------------------------------------------------
                            707 ;Allocation info for local variables in function 'AHex'
                            708 ;------------------------------------------------------------
                            709 ;c                         Allocated to registers r2 
                            710 ;------------------------------------------------------------
                    0059    711 	G$AHex$0$0 ==.
                    0059    712 	C$modbus.c$23$1$1 ==.
                            713 ;	modbus.c:23: byte AHex(byte c)
                            714 ;	-----------------------------------------
                            715 ;	 function AHex
                            716 ;	-----------------------------------------
   05E6                     717 _AHex:
   05E6 AA 82               718 	mov	r2,dpl
                    005B    719 	C$modbus.c$25$1$1 ==.
                            720 ;	modbus.c:25: if ((c>=(byte)'0') && (c<=(byte)'9')) return (byte)(c-'0');
   05E8 BA 30 00            721 	cjne	r2,#0x30,00113$
   05EB                     722 00113$:
   05EB 40 0D               723 	jc	00102$
   05ED 74 39               724 	mov	a,#0x39
   05EF B5 02 00            725 	cjne	a,ar2,00115$
   05F2                     726 00115$:
   05F2 40 06               727 	jc	00102$
   05F4 EA                  728 	mov	a,r2
   05F5 24 D0               729 	add	a,#0xd0
   05F7 F5 82               730 	mov	dpl,a
   05F9 22                  731 	ret
   05FA                     732 00102$:
                    006D    733 	C$modbus.c$26$1$1 ==.
                            734 ;	modbus.c:26: if ((c>=(byte)'A') && (c<=(byte)'F')) return (byte)(c-'A'+10);
   05FA BA 41 00            735 	cjne	r2,#0x41,00117$
   05FD                     736 00117$:
   05FD 40 0D               737 	jc	00105$
   05FF 74 46               738 	mov	a,#0x46
   0601 B5 02 00            739 	cjne	a,ar2,00119$
   0604                     740 00119$:
   0604 40 06               741 	jc	00105$
   0606 74 C9               742 	mov	a,#0xC9
   0608 2A                  743 	add	a,r2
   0609 F5 82               744 	mov	dpl,a
                    007E    745 	C$modbus.c$27$1$1 ==.
                            746 ;	modbus.c:27: return 0xFF;
                    007E    747 	C$modbus.c$28$1$1 ==.
                    007E    748 	XG$AHex$0$0 ==.
   060B 22                  749 	ret
   060C                     750 00105$:
   060C 75 82 FF            751 	mov	dpl,#0xFF
   060F 22                  752 	ret
                            753 ;------------------------------------------------------------
                            754 ;Allocation info for local variables in function 'HexAsc'
                            755 ;------------------------------------------------------------
                            756 ;b                         Allocated to registers r2 
                            757 ;------------------------------------------------------------
                    0083    758 	G$HexAsc$0$0 ==.
                    0083    759 	C$modbus.c$30$1$1 ==.
                            760 ;	modbus.c:30: byte HexAsc(byte b)
                            761 ;	-----------------------------------------
                            762 ;	 function HexAsc
                            763 ;	-----------------------------------------
   0610                     764 _HexAsc:
   0610 AA 82               765 	mov	r2,dpl
                    0085    766 	C$modbus.c$32$1$1 ==.
                            767 ;	modbus.c:32: if (b<10)  return (byte)(b+'0');
   0612 BA 0A 00            768 	cjne	r2,#0x0A,00106$
   0615                     769 00106$:
   0615 50 06               770 	jnc	00102$
   0617 74 30               771 	mov	a,#0x30
   0619 2A                  772 	add	a,r2
   061A F5 82               773 	mov	dpl,a
   061C 22                  774 	ret
   061D                     775 00102$:
                    0090    776 	C$modbus.c$33$1$1 ==.
                            777 ;	modbus.c:33: return (byte)(b-10+'A');
   061D 74 37               778 	mov	a,#0x37
   061F 2A                  779 	add	a,r2
   0620 F5 82               780 	mov	dpl,a
                    0095    781 	C$modbus.c$34$1$1 ==.
                    0095    782 	XG$HexAsc$0$0 ==.
   0622 22                  783 	ret
                            784 ;------------------------------------------------------------
                            785 ;Allocation info for local variables in function 'MbRdByte'
                            786 ;------------------------------------------------------------
                            787 ;bf                        Allocated to registers r2 r3 r4 
                            788 ;------------------------------------------------------------
                    0096    789 	G$MbRdByte$0$0 ==.
                    0096    790 	C$modbus.c$37$1$1 ==.
                            791 ;	modbus.c:37: byte MbRdByte(byte *bf)
                            792 ;	-----------------------------------------
                            793 ;	 function MbRdByte
                            794 ;	-----------------------------------------
   0623                     795 _MbRdByte:
                    0096    796 	C$modbus.c$39$1$1 ==.
                            797 ;	modbus.c:39: return ((AHex(*bf) << 4) | AHex(*(bf+1)));
   0623 AA 82               798 	mov	r2,dpl
   0625 AB 83               799 	mov	r3,dph
   0627 AC F0               800 	mov	r4,b
   0629 12 16 82            801 	lcall	__gptrget
   062C F5 82               802 	mov	dpl,a
   062E C0 02               803 	push	ar2
   0630 C0 03               804 	push	ar3
   0632 C0 04               805 	push	ar4
   0634 12 05 E6            806 	lcall	_AHex
   0637 AD 82               807 	mov	r5,dpl
   0639 D0 04               808 	pop	ar4
   063B D0 03               809 	pop	ar3
   063D D0 02               810 	pop	ar2
   063F ED                  811 	mov	a,r5
   0640 C4                  812 	swap	a
   0641 54 F0               813 	anl	a,#0xf0
   0643 FD                  814 	mov	r5,a
   0644 0A                  815 	inc	r2
   0645 BA 00 01            816 	cjne	r2,#0x00,00103$
   0648 0B                  817 	inc	r3
   0649                     818 00103$:
   0649 8A 82               819 	mov	dpl,r2
   064B 8B 83               820 	mov	dph,r3
   064D 8C F0               821 	mov	b,r4
   064F 12 16 82            822 	lcall	__gptrget
   0652 F5 82               823 	mov	dpl,a
   0654 C0 05               824 	push	ar5
   0656 12 05 E6            825 	lcall	_AHex
   0659 AA 82               826 	mov	r2,dpl
   065B D0 05               827 	pop	ar5
   065D EA                  828 	mov	a,r2
   065E 4D                  829 	orl	a,r5
   065F F5 82               830 	mov	dpl,a
                    00D4    831 	C$modbus.c$40$1$1 ==.
                    00D4    832 	XG$MbRdByte$0$0 ==.
   0661 22                  833 	ret
                            834 ;------------------------------------------------------------
                            835 ;Allocation info for local variables in function 'MbRdWord'
                            836 ;------------------------------------------------------------
                            837 ;bf                        Allocated to registers r2 r3 r4 
                            838 ;------------------------------------------------------------
                    00D5    839 	G$MbRdWord$0$0 ==.
                    00D5    840 	C$modbus.c$41$1$1 ==.
                            841 ;	modbus.c:41: word MbRdWord(byte *bf)
                            842 ;	-----------------------------------------
                            843 ;	 function MbRdWord
                            844 ;	-----------------------------------------
   0662                     845 _MbRdWord:
                    00D5    846 	C$modbus.c$43$1$1 ==.
                            847 ;	modbus.c:43: return ((AHex(*bf) << 12) | (AHex(*(bf+1)) << 8) | (AHex(*(bf+2)) << 4) | AHex(*(bf+3)));
   0662 AA 82               848 	mov	r2,dpl
   0664 AB 83               849 	mov	r3,dph
   0666 AC F0               850 	mov	r4,b
   0668 12 16 82            851 	lcall	__gptrget
   066B F5 82               852 	mov	dpl,a
   066D C0 02               853 	push	ar2
   066F C0 03               854 	push	ar3
   0671 C0 04               855 	push	ar4
   0673 12 05 E6            856 	lcall	_AHex
   0676 AD 82               857 	mov	r5,dpl
   0678 D0 04               858 	pop	ar4
   067A D0 03               859 	pop	ar3
   067C D0 02               860 	pop	ar2
   067E ED                  861 	mov	a,r5
   067F C4                  862 	swap	a
   0680 54 F0               863 	anl	a,#0xf0
   0682 FE                  864 	mov	r6,a
   0683 7D 00               865 	mov	r5,#0x00
   0685 74 01               866 	mov	a,#0x01
   0687 2A                  867 	add	a,r2
   0688 FF                  868 	mov	r7,a
   0689 E4                  869 	clr	a
   068A 3B                  870 	addc	a,r3
   068B F8                  871 	mov	r0,a
   068C 8C 01               872 	mov	ar1,r4
   068E 8F 82               873 	mov	dpl,r7
   0690 88 83               874 	mov	dph,r0
   0692 89 F0               875 	mov	b,r1
   0694 12 16 82            876 	lcall	__gptrget
   0697 F5 82               877 	mov	dpl,a
   0699 C0 02               878 	push	ar2
   069B C0 03               879 	push	ar3
   069D C0 04               880 	push	ar4
   069F C0 05               881 	push	ar5
   06A1 C0 06               882 	push	ar6
   06A3 12 05 E6            883 	lcall	_AHex
   06A6 AF 82               884 	mov	r7,dpl
   06A8 D0 06               885 	pop	ar6
   06AA D0 05               886 	pop	ar5
   06AC D0 04               887 	pop	ar4
   06AE D0 03               888 	pop	ar3
   06B0 D0 02               889 	pop	ar2
   06B2 8F 00               890 	mov	ar0,r7
   06B4 E4                  891 	clr	a
   06B5 42 05               892 	orl	ar5,a
   06B7 E8                  893 	mov	a,r0
   06B8 42 06               894 	orl	ar6,a
   06BA 74 02               895 	mov	a,#0x02
   06BC 2A                  896 	add	a,r2
   06BD FF                  897 	mov	r7,a
   06BE E4                  898 	clr	a
   06BF 3B                  899 	addc	a,r3
   06C0 F8                  900 	mov	r0,a
   06C1 8C 01               901 	mov	ar1,r4
   06C3 8F 82               902 	mov	dpl,r7
   06C5 88 83               903 	mov	dph,r0
   06C7 89 F0               904 	mov	b,r1
   06C9 12 16 82            905 	lcall	__gptrget
   06CC F5 82               906 	mov	dpl,a
   06CE C0 02               907 	push	ar2
   06D0 C0 03               908 	push	ar3
   06D2 C0 04               909 	push	ar4
   06D4 C0 05               910 	push	ar5
   06D6 C0 06               911 	push	ar6
   06D8 12 05 E6            912 	lcall	_AHex
   06DB AF 82               913 	mov	r7,dpl
   06DD D0 06               914 	pop	ar6
   06DF D0 05               915 	pop	ar5
   06E1 D0 04               916 	pop	ar4
   06E3 D0 03               917 	pop	ar3
   06E5 D0 02               918 	pop	ar2
   06E7 E4                  919 	clr	a
   06E8 C4                  920 	swap	a
   06E9 54 F0               921 	anl	a,#0xf0
   06EB CF                  922 	xch	a,r7
   06EC C4                  923 	swap	a
   06ED CF                  924 	xch	a,r7
   06EE 6F                  925 	xrl	a,r7
   06EF CF                  926 	xch	a,r7
   06F0 54 F0               927 	anl	a,#0xf0
   06F2 CF                  928 	xch	a,r7
   06F3 6F                  929 	xrl	a,r7
   06F4 F8                  930 	mov	r0,a
   06F5 EF                  931 	mov	a,r7
   06F6 42 05               932 	orl	ar5,a
   06F8 E8                  933 	mov	a,r0
   06F9 42 06               934 	orl	ar6,a
   06FB 74 03               935 	mov	a,#0x03
   06FD 2A                  936 	add	a,r2
   06FE FA                  937 	mov	r2,a
   06FF E4                  938 	clr	a
   0700 3B                  939 	addc	a,r3
   0701 FB                  940 	mov	r3,a
   0702 8A 82               941 	mov	dpl,r2
   0704 8B 83               942 	mov	dph,r3
   0706 8C F0               943 	mov	b,r4
   0708 12 16 82            944 	lcall	__gptrget
   070B F5 82               945 	mov	dpl,a
   070D C0 05               946 	push	ar5
   070F C0 06               947 	push	ar6
   0711 12 05 E6            948 	lcall	_AHex
   0714 AA 82               949 	mov	r2,dpl
   0716 D0 06               950 	pop	ar6
   0718 D0 05               951 	pop	ar5
   071A 7B 00               952 	mov	r3,#0x00
   071C EA                  953 	mov	a,r2
   071D 4D                  954 	orl	a,r5
   071E F5 82               955 	mov	dpl,a
   0720 EB                  956 	mov	a,r3
   0721 4E                  957 	orl	a,r6
   0722 F5 83               958 	mov	dph,a
                    0197    959 	C$modbus.c$44$1$1 ==.
                    0197    960 	XG$MbRdWord$0$0 ==.
   0724 22                  961 	ret
                            962 ;------------------------------------------------------------
                            963 ;Allocation info for local variables in function 'MbWrByte'
                            964 ;------------------------------------------------------------
                            965 ;bf                        Allocated with name '_MbWrByte_PARM_2'
                            966 ;b                         Allocated to registers r2 
                            967 ;------------------------------------------------------------
                    0198    968 	G$MbWrByte$0$0 ==.
                    0198    969 	C$modbus.c$48$1$1 ==.
                            970 ;	modbus.c:48: byte MbWrByte(byte b,byte *bf)
                            971 ;	-----------------------------------------
                            972 ;	 function MbWrByte
                            973 ;	-----------------------------------------
   0725                     974 _MbWrByte:
   0725 AA 82               975 	mov	r2,dpl
                    019A    976 	C$modbus.c$50$1$1 ==.
                            977 ;	modbus.c:50: *bf++ = HexAsc(b >> 4);
   0727 AB 22               978 	mov	r3,_MbWrByte_PARM_2
   0729 AC 23               979 	mov	r4,(_MbWrByte_PARM_2 + 1)
   072B AD 24               980 	mov	r5,(_MbWrByte_PARM_2 + 2)
   072D EA                  981 	mov	a,r2
   072E C4                  982 	swap	a
   072F 54 0F               983 	anl	a,#0x0f
   0731 F5 82               984 	mov	dpl,a
   0733 C0 02               985 	push	ar2
   0735 C0 03               986 	push	ar3
   0737 C0 04               987 	push	ar4
   0739 C0 05               988 	push	ar5
   073B 12 06 10            989 	lcall	_HexAsc
   073E AE 82               990 	mov	r6,dpl
   0740 D0 05               991 	pop	ar5
   0742 D0 04               992 	pop	ar4
   0744 D0 03               993 	pop	ar3
   0746 D0 02               994 	pop	ar2
   0748 8B 82               995 	mov	dpl,r3
   074A 8C 83               996 	mov	dph,r4
   074C 8D F0               997 	mov	b,r5
   074E EE                  998 	mov	a,r6
   074F 12 10 75            999 	lcall	__gptrput
   0752 74 01              1000 	mov	a,#0x01
   0754 2B                 1001 	add	a,r3
   0755 F5 22              1002 	mov	_MbWrByte_PARM_2,a
   0757 E4                 1003 	clr	a
   0758 3C                 1004 	addc	a,r4
   0759 F5 23              1005 	mov	(_MbWrByte_PARM_2 + 1),a
   075B 8D 24              1006 	mov	(_MbWrByte_PARM_2 + 2),r5
                    01D0   1007 	C$modbus.c$51$1$1 ==.
                           1008 ;	modbus.c:51: *bf = HexAsc(b & 0xF);
   075D AB 22              1009 	mov	r3,_MbWrByte_PARM_2
   075F AC 23              1010 	mov	r4,(_MbWrByte_PARM_2 + 1)
   0761 AD 24              1011 	mov	r5,(_MbWrByte_PARM_2 + 2)
   0763 74 0F              1012 	mov	a,#0x0F
   0765 5A                 1013 	anl	a,r2
   0766 F5 82              1014 	mov	dpl,a
   0768 C0 03              1015 	push	ar3
   076A C0 04              1016 	push	ar4
   076C C0 05              1017 	push	ar5
   076E 12 06 10           1018 	lcall	_HexAsc
   0771 AA 82              1019 	mov	r2,dpl
   0773 D0 05              1020 	pop	ar5
   0775 D0 04              1021 	pop	ar4
   0777 D0 03              1022 	pop	ar3
   0779 8B 82              1023 	mov	dpl,r3
   077B 8C 83              1024 	mov	dph,r4
   077D 8D F0              1025 	mov	b,r5
   077F EA                 1026 	mov	a,r2
   0780 12 10 75           1027 	lcall	__gptrput
                    01F6   1028 	C$modbus.c$52$1$1 ==.
                           1029 ;	modbus.c:52: return 2;
   0783 75 82 02           1030 	mov	dpl,#0x02
                    01F9   1031 	C$modbus.c$53$1$1 ==.
                    01F9   1032 	XG$MbWrByte$0$0 ==.
   0786 22                 1033 	ret
                           1034 ;------------------------------------------------------------
                           1035 ;Allocation info for local variables in function 'MbWrWord'
                           1036 ;------------------------------------------------------------
                           1037 ;bf                        Allocated with name '_MbWrWord_PARM_2'
                           1038 ;w                         Allocated to registers r2 r3 
                           1039 ;------------------------------------------------------------
                    01FA   1040 	G$MbWrWord$0$0 ==.
                    01FA   1041 	C$modbus.c$56$1$1 ==.
                           1042 ;	modbus.c:56: byte MbWrWord(word w,byte *bf)
                           1043 ;	-----------------------------------------
                           1044 ;	 function MbWrWord
                           1045 ;	-----------------------------------------
   0787                    1046 _MbWrWord:
   0787 AA 82              1047 	mov	r2,dpl
   0789 AB 83              1048 	mov	r3,dph
                    01FE   1049 	C$modbus.c$58$1$1 ==.
                           1050 ;	modbus.c:58: *bf++ = HexAsc(w >> 12);
   078B AC 25              1051 	mov	r4,_MbWrWord_PARM_2
   078D AD 26              1052 	mov	r5,(_MbWrWord_PARM_2 + 1)
   078F AE 27              1053 	mov	r6,(_MbWrWord_PARM_2 + 2)
   0791 EB                 1054 	mov	a,r3
   0792 C4                 1055 	swap	a
   0793 54 0F              1056 	anl	a,#0x0f
   0795 F5 82              1057 	mov	dpl,a
   0797 C0 02              1058 	push	ar2
   0799 C0 03              1059 	push	ar3
   079B C0 04              1060 	push	ar4
   079D C0 05              1061 	push	ar5
   079F C0 06              1062 	push	ar6
   07A1 12 06 10           1063 	lcall	_HexAsc
   07A4 AF 82              1064 	mov	r7,dpl
   07A6 D0 06              1065 	pop	ar6
   07A8 D0 05              1066 	pop	ar5
   07AA D0 04              1067 	pop	ar4
   07AC D0 03              1068 	pop	ar3
   07AE 8C 82              1069 	mov	dpl,r4
   07B0 8D 83              1070 	mov	dph,r5
   07B2 8E F0              1071 	mov	b,r6
   07B4 EF                 1072 	mov	a,r7
   07B5 12 10 75           1073 	lcall	__gptrput
   07B8 74 01              1074 	mov	a,#0x01
   07BA 2C                 1075 	add	a,r4
   07BB F5 25              1076 	mov	_MbWrWord_PARM_2,a
   07BD E4                 1077 	clr	a
   07BE 3D                 1078 	addc	a,r5
   07BF F5 26              1079 	mov	(_MbWrWord_PARM_2 + 1),a
   07C1 8E 27              1080 	mov	(_MbWrWord_PARM_2 + 2),r6
                    0236   1081 	C$modbus.c$59$1$1 ==.
                           1082 ;	modbus.c:59: *bf++ = HexAsc((w >> 8) & 0xF);
   07C3 AC 25              1083 	mov	r4,_MbWrWord_PARM_2
   07C5 AD 26              1084 	mov	r5,(_MbWrWord_PARM_2 + 1)
   07C7 AE 27              1085 	mov	r6,(_MbWrWord_PARM_2 + 2)
   07C9 8B 07              1086 	mov	ar7,r3
   07CB 74 0F              1087 	mov	a,#0x0F
   07CD 5F                 1088 	anl	a,r7
   07CE F5 82              1089 	mov	dpl,a
   07D0 C0 03              1090 	push	ar3
   07D2 C0 04              1091 	push	ar4
   07D4 C0 05              1092 	push	ar5
   07D6 C0 06              1093 	push	ar6
   07D8 12 06 10           1094 	lcall	_HexAsc
   07DB AF 82              1095 	mov	r7,dpl
   07DD D0 06              1096 	pop	ar6
   07DF D0 05              1097 	pop	ar5
   07E1 D0 04              1098 	pop	ar4
   07E3 D0 03              1099 	pop	ar3
   07E5 D0 02              1100 	pop	ar2
   07E7 8C 82              1101 	mov	dpl,r4
   07E9 8D 83              1102 	mov	dph,r5
   07EB 8E F0              1103 	mov	b,r6
   07ED EF                 1104 	mov	a,r7
   07EE 12 10 75           1105 	lcall	__gptrput
   07F1 74 01              1106 	mov	a,#0x01
   07F3 2C                 1107 	add	a,r4
   07F4 F5 25              1108 	mov	_MbWrWord_PARM_2,a
   07F6 E4                 1109 	clr	a
   07F7 3D                 1110 	addc	a,r5
   07F8 F5 26              1111 	mov	(_MbWrWord_PARM_2 + 1),a
   07FA 8E 27              1112 	mov	(_MbWrWord_PARM_2 + 2),r6
                    026F   1113 	C$modbus.c$60$1$1 ==.
                           1114 ;	modbus.c:60: *bf++ = HexAsc((w >> 4) & 0xF);
   07FC AC 25              1115 	mov	r4,_MbWrWord_PARM_2
   07FE AD 26              1116 	mov	r5,(_MbWrWord_PARM_2 + 1)
   0800 AE 27              1117 	mov	r6,(_MbWrWord_PARM_2 + 2)
   0802 8A 07              1118 	mov	ar7,r2
   0804 EB                 1119 	mov	a,r3
   0805 C4                 1120 	swap	a
   0806 CF                 1121 	xch	a,r7
   0807 C4                 1122 	swap	a
   0808 54 0F              1123 	anl	a,#0x0f
   080A 6F                 1124 	xrl	a,r7
   080B CF                 1125 	xch	a,r7
   080C 54 0F              1126 	anl	a,#0x0f
   080E CF                 1127 	xch	a,r7
   080F 6F                 1128 	xrl	a,r7
   0810 CF                 1129 	xch	a,r7
   0811 53 07 0F           1130 	anl	ar7,#0x0F
   0814 8F 82              1131 	mov	dpl,r7
   0816 C0 02              1132 	push	ar2
   0818 C0 03              1133 	push	ar3
   081A C0 04              1134 	push	ar4
   081C C0 05              1135 	push	ar5
   081E C0 06              1136 	push	ar6
   0820 12 06 10           1137 	lcall	_HexAsc
   0823 AF 82              1138 	mov	r7,dpl
   0825 D0 06              1139 	pop	ar6
   0827 D0 05              1140 	pop	ar5
   0829 D0 04              1141 	pop	ar4
   082B D0 03              1142 	pop	ar3
   082D D0 02              1143 	pop	ar2
   082F 8C 82              1144 	mov	dpl,r4
   0831 8D 83              1145 	mov	dph,r5
   0833 8E F0              1146 	mov	b,r6
   0835 EF                 1147 	mov	a,r7
   0836 12 10 75           1148 	lcall	__gptrput
   0839 74 01              1149 	mov	a,#0x01
   083B 2C                 1150 	add	a,r4
   083C F5 25              1151 	mov	_MbWrWord_PARM_2,a
   083E E4                 1152 	clr	a
   083F 3D                 1153 	addc	a,r5
   0840 F5 26              1154 	mov	(_MbWrWord_PARM_2 + 1),a
   0842 8E 27              1155 	mov	(_MbWrWord_PARM_2 + 2),r6
                    02B7   1156 	C$modbus.c$61$1$1 ==.
                           1157 ;	modbus.c:61: *bf = HexAsc(w & 0xF);
   0844 AC 25              1158 	mov	r4,_MbWrWord_PARM_2
   0846 AD 26              1159 	mov	r5,(_MbWrWord_PARM_2 + 1)
   0848 AE 27              1160 	mov	r6,(_MbWrWord_PARM_2 + 2)
   084A 53 02 0F           1161 	anl	ar2,#0x0F
   084D 8A 82              1162 	mov	dpl,r2
   084F C0 04              1163 	push	ar4
   0851 C0 05              1164 	push	ar5
   0853 C0 06              1165 	push	ar6
   0855 12 06 10           1166 	lcall	_HexAsc
   0858 AA 82              1167 	mov	r2,dpl
   085A D0 06              1168 	pop	ar6
   085C D0 05              1169 	pop	ar5
   085E D0 04              1170 	pop	ar4
   0860 8C 82              1171 	mov	dpl,r4
   0862 8D 83              1172 	mov	dph,r5
   0864 8E F0              1173 	mov	b,r6
   0866 EA                 1174 	mov	a,r2
   0867 12 10 75           1175 	lcall	__gptrput
                    02DD   1176 	C$modbus.c$62$1$1 ==.
                           1177 ;	modbus.c:62: return 4;
   086A 75 82 04           1178 	mov	dpl,#0x04
                    02E0   1179 	C$modbus.c$63$1$1 ==.
                    02E0   1180 	XG$MbWrWord$0$0 ==.
   086D 22                 1181 	ret
                           1182 ;------------------------------------------------------------
                           1183 ;Allocation info for local variables in function 'MbWrEoT'
                           1184 ;------------------------------------------------------------
                           1185 ;bf                        Allocated to registers r2 r3 r4 
                           1186 ;------------------------------------------------------------
                    02E1   1187 	G$MbWrEoT$0$0 ==.
                    02E1   1188 	C$modbus.c$65$1$1 ==.
                           1189 ;	modbus.c:65: byte MbWrEoT(byte *bf)
                           1190 ;	-----------------------------------------
                           1191 ;	 function MbWrEoT
                           1192 ;	-----------------------------------------
   086E                    1193 _MbWrEoT:
                    02E1   1194 	C$modbus.c$67$1$1 ==.
                           1195 ;	modbus.c:67: *bf++='\r';
   086E AC F0              1196 	mov	r4,b
   0870 74 0D              1197 	mov	a,#0x0D
   0872 12 10 75           1198 	lcall	__gptrput
   0875 A3                 1199 	inc	dptr
                    02E9   1200 	C$modbus.c$68$1$1 ==.
                           1201 ;	modbus.c:68: *bf='\n';
   0876 8C F0              1202 	mov	b,r4
   0878 74 0A              1203 	mov	a,#0x0A
   087A 12 10 75           1204 	lcall	__gptrput
                    02F0   1205 	C$modbus.c$69$1$1 ==.
                           1206 ;	modbus.c:69: return 2;
   087D 75 82 02           1207 	mov	dpl,#0x02
                    02F3   1208 	C$modbus.c$70$1$1 ==.
                    02F3   1209 	XG$MbWrEoT$0$0 ==.
   0880 22                 1210 	ret
                           1211 ;------------------------------------------------------------
                           1212 ;Allocation info for local variables in function 'MbLrc'
                           1213 ;------------------------------------------------------------
                           1214 ;len                       Allocated with name '_MbLrc_PARM_2'
                           1215 ;bf                        Allocated to registers r2 r3 r4 
                           1216 ;lrc                       Allocated to registers r5 
                           1217 ;------------------------------------------------------------
                    02F4   1218 	G$MbLrc$0$0 ==.
                    02F4   1219 	C$modbus.c$72$1$1 ==.
                           1220 ;	modbus.c:72: byte MbLrc(byte *bf,byte len)
                           1221 ;	-----------------------------------------
                           1222 ;	 function MbLrc
                           1223 ;	-----------------------------------------
   0881                    1224 _MbLrc:
   0881 AA 82              1225 	mov	r2,dpl
   0883 AB 83              1226 	mov	r3,dph
   0885 AC F0              1227 	mov	r4,b
                    02FA   1228 	C$modbus.c$74$1$1 ==.
                           1229 ;	modbus.c:74: byte lrc=0;
   0887 7D 00              1230 	mov	r5,#0x00
                    02FC   1231 	C$modbus.c$76$1$1 ==.
                           1232 ;	modbus.c:76: while(len--) lrc+=*bf++;
   0889 AE 6B              1233 	mov	r6,_MbLrc_PARM_2
   088B                    1234 00101$:
   088B 8E 07              1235 	mov	ar7,r6
   088D 1E                 1236 	dec	r6
   088E EF                 1237 	mov	a,r7
   088F 60 14              1238 	jz	00103$
   0891 8A 82              1239 	mov	dpl,r2
   0893 8B 83              1240 	mov	dph,r3
   0895 8C F0              1241 	mov	b,r4
   0897 12 16 82           1242 	lcall	__gptrget
   089A FF                 1243 	mov	r7,a
   089B A3                 1244 	inc	dptr
   089C AA 82              1245 	mov	r2,dpl
   089E AB 83              1246 	mov	r3,dph
   08A0 EF                 1247 	mov	a,r7
   08A1 2D                 1248 	add	a,r5
   08A2 FD                 1249 	mov	r5,a
   08A3 80 E6              1250 	sjmp	00101$
   08A5                    1251 00103$:
                    0318   1252 	C$modbus.c$77$1$1 ==.
                           1253 ;	modbus.c:77: return -lrc;
   08A5 C3                 1254 	clr	c
   08A6 E4                 1255 	clr	a
   08A7 9D                 1256 	subb	a,r5
   08A8 F5 82              1257 	mov	dpl,a
                    031D   1258 	C$modbus.c$78$1$1 ==.
                    031D   1259 	XG$MbLrc$0$0 ==.
   08AA 22                 1260 	ret
                           1261 ;------------------------------------------------------------
                           1262 ;Allocation info for local variables in function 'MbRd'
                           1263 ;------------------------------------------------------------
                           1264 ;fce                       Allocated with name '_MbRd_PARM_2'
                           1265 ;reg                       Allocated with name '_MbRd_PARM_3'
                           1266 ;nbr                       Allocated with name '_MbRd_PARM_4'
                           1267 ;bf                        Allocated with name '_MbRd_PARM_5'
                           1268 ;adr                       Allocated to registers r2 
                           1269 ;n                         Allocated to registers r2 
                           1270 ;------------------------------------------------------------
                    031E   1271 	G$MbRd$0$0 ==.
                    031E   1272 	C$modbus.c$81$1$1 ==.
                           1273 ;	modbus.c:81: byte MbRd(byte adr,byte fce,word reg,word nbr,byte *bf)
                           1274 ;	-----------------------------------------
                           1275 ;	 function MbRd
                           1276 ;	-----------------------------------------
   08AB                    1277 _MbRd:
   08AB AA 82              1278 	mov	r2,dpl
                    0320   1279 	C$modbus.c$85$1$1 ==.
                           1280 ;	modbus.c:85: *bf = ':';
   08AD AB 2D              1281 	mov	r3,_MbRd_PARM_5
   08AF AC 2E              1282 	mov	r4,(_MbRd_PARM_5 + 1)
   08B1 AD 2F              1283 	mov	r5,(_MbRd_PARM_5 + 2)
   08B3 8B 82              1284 	mov	dpl,r3
   08B5 8C 83              1285 	mov	dph,r4
   08B7 8D F0              1286 	mov	b,r5
   08B9 74 3A              1287 	mov	a,#0x3A
   08BB 12 10 75           1288 	lcall	__gptrput
                    0331   1289 	C$modbus.c$86$1$1 ==.
                           1290 ;	modbus.c:86: n += MbWrByte(adr,bf+n);
   08BE 74 01              1291 	mov	a,#0x01
   08C0 2B                 1292 	add	a,r3
   08C1 F5 22              1293 	mov	_MbWrByte_PARM_2,a
   08C3 E4                 1294 	clr	a
   08C4 3C                 1295 	addc	a,r4
   08C5 F5 23              1296 	mov	(_MbWrByte_PARM_2 + 1),a
   08C7 8D 24              1297 	mov	(_MbWrByte_PARM_2 + 2),r5
   08C9 8A 82              1298 	mov	dpl,r2
   08CB C0 03              1299 	push	ar3
   08CD C0 04              1300 	push	ar4
   08CF C0 05              1301 	push	ar5
   08D1 12 07 25           1302 	lcall	_MbWrByte
   08D4 AA 82              1303 	mov	r2,dpl
   08D6 D0 05              1304 	pop	ar5
   08D8 D0 04              1305 	pop	ar4
   08DA D0 03              1306 	pop	ar3
   08DC 0A                 1307 	inc	r2
                    0350   1308 	C$modbus.c$87$1$1 ==.
                           1309 ;	modbus.c:87: n += MbWrByte(fce,bf+n);
   08DD EA                 1310 	mov	a,r2
   08DE 2B                 1311 	add	a,r3
   08DF F5 22              1312 	mov	_MbWrByte_PARM_2,a
   08E1 E4                 1313 	clr	a
   08E2 3C                 1314 	addc	a,r4
   08E3 F5 23              1315 	mov	(_MbWrByte_PARM_2 + 1),a
   08E5 8D 24              1316 	mov	(_MbWrByte_PARM_2 + 2),r5
   08E7 85 28 82           1317 	mov	dpl,_MbRd_PARM_2
   08EA C0 02              1318 	push	ar2
   08EC C0 03              1319 	push	ar3
   08EE C0 04              1320 	push	ar4
   08F0 C0 05              1321 	push	ar5
   08F2 12 07 25           1322 	lcall	_MbWrByte
   08F5 AE 82              1323 	mov	r6,dpl
   08F7 D0 05              1324 	pop	ar5
   08F9 D0 04              1325 	pop	ar4
   08FB D0 03              1326 	pop	ar3
   08FD D0 02              1327 	pop	ar2
   08FF EE                 1328 	mov	a,r6
   0900 2A                 1329 	add	a,r2
                    0374   1330 	C$modbus.c$88$1$1 ==.
                           1331 ;	modbus.c:88: n += MbWrWord(reg,bf+n);
   0901 FA                 1332 	mov	r2,a
   0902 2B                 1333 	add	a,r3
   0903 F5 25              1334 	mov	_MbWrWord_PARM_2,a
   0905 E4                 1335 	clr	a
   0906 3C                 1336 	addc	a,r4
   0907 F5 26              1337 	mov	(_MbWrWord_PARM_2 + 1),a
   0909 8D 27              1338 	mov	(_MbWrWord_PARM_2 + 2),r5
   090B 85 29 82           1339 	mov	dpl,_MbRd_PARM_3
   090E 85 2A 83           1340 	mov	dph,(_MbRd_PARM_3 + 1)
   0911 C0 02              1341 	push	ar2
   0913 C0 03              1342 	push	ar3
   0915 C0 04              1343 	push	ar4
   0917 C0 05              1344 	push	ar5
   0919 12 07 87           1345 	lcall	_MbWrWord
   091C AE 82              1346 	mov	r6,dpl
   091E D0 05              1347 	pop	ar5
   0920 D0 04              1348 	pop	ar4
   0922 D0 03              1349 	pop	ar3
   0924 D0 02              1350 	pop	ar2
   0926 EE                 1351 	mov	a,r6
   0927 2A                 1352 	add	a,r2
                    039B   1353 	C$modbus.c$89$1$1 ==.
                           1354 ;	modbus.c:89: n += MbWrWord(nbr,bf+n);
   0928 FA                 1355 	mov	r2,a
   0929 2B                 1356 	add	a,r3
   092A F5 25              1357 	mov	_MbWrWord_PARM_2,a
   092C E4                 1358 	clr	a
   092D 3C                 1359 	addc	a,r4
   092E F5 26              1360 	mov	(_MbWrWord_PARM_2 + 1),a
   0930 8D 27              1361 	mov	(_MbWrWord_PARM_2 + 2),r5
   0932 85 2B 82           1362 	mov	dpl,_MbRd_PARM_4
   0935 85 2C 83           1363 	mov	dph,(_MbRd_PARM_4 + 1)
   0938 C0 02              1364 	push	ar2
   093A 12 07 87           1365 	lcall	_MbWrWord
   093D AB 82              1366 	mov	r3,dpl
   093F D0 02              1367 	pop	ar2
   0941 EB                 1368 	mov	a,r3
   0942 2A                 1369 	add	a,r2
                    03B6   1370 	C$modbus.c$90$1$1 ==.
                           1371 ;	modbus.c:90: return n;
                    03B6   1372 	C$modbus.c$91$1$1 ==.
                    03B6   1373 	XG$MbRd$0$0 ==.
   0943 F5 82              1374 	mov	dpl,a
   0945 22                 1375 	ret
                           1376 ;------------------------------------------------------------
                           1377 ;Allocation info for local variables in function 'MbWrOne'
                           1378 ;------------------------------------------------------------
                           1379 ;fce                       Allocated with name '_MbWrOne_PARM_2'
                           1380 ;reg                       Allocated with name '_MbWrOne_PARM_3'
                           1381 ;val                       Allocated with name '_MbWrOne_PARM_4'
                           1382 ;bf                        Allocated with name '_MbWrOne_PARM_5'
                           1383 ;adr                       Allocated to registers r2 
                           1384 ;n                         Allocated to registers r2 
                           1385 ;------------------------------------------------------------
                    03B9   1386 	G$MbWrOne$0$0 ==.
                    03B9   1387 	C$modbus.c$93$1$1 ==.
                           1388 ;	modbus.c:93: byte MbWrOne(byte adr,byte fce,word reg,word val,byte *bf)
                           1389 ;	-----------------------------------------
                           1390 ;	 function MbWrOne
                           1391 ;	-----------------------------------------
   0946                    1392 _MbWrOne:
   0946 AA 82              1393 	mov	r2,dpl
                    03BB   1394 	C$modbus.c$97$1$1 ==.
                           1395 ;	modbus.c:97: *bf = ':';
   0948 AB 35              1396 	mov	r3,_MbWrOne_PARM_5
   094A AC 36              1397 	mov	r4,(_MbWrOne_PARM_5 + 1)
   094C AD 37              1398 	mov	r5,(_MbWrOne_PARM_5 + 2)
   094E 8B 82              1399 	mov	dpl,r3
   0950 8C 83              1400 	mov	dph,r4
   0952 8D F0              1401 	mov	b,r5
   0954 74 3A              1402 	mov	a,#0x3A
   0956 12 10 75           1403 	lcall	__gptrput
                    03CC   1404 	C$modbus.c$98$1$1 ==.
                           1405 ;	modbus.c:98: n += MbWrByte(adr,bf+n);
   0959 74 01              1406 	mov	a,#0x01
   095B 2B                 1407 	add	a,r3
   095C F5 22              1408 	mov	_MbWrByte_PARM_2,a
   095E E4                 1409 	clr	a
   095F 3C                 1410 	addc	a,r4
   0960 F5 23              1411 	mov	(_MbWrByte_PARM_2 + 1),a
   0962 8D 24              1412 	mov	(_MbWrByte_PARM_2 + 2),r5
   0964 8A 82              1413 	mov	dpl,r2
   0966 C0 03              1414 	push	ar3
   0968 C0 04              1415 	push	ar4
   096A C0 05              1416 	push	ar5
   096C 12 07 25           1417 	lcall	_MbWrByte
   096F AA 82              1418 	mov	r2,dpl
   0971 D0 05              1419 	pop	ar5
   0973 D0 04              1420 	pop	ar4
   0975 D0 03              1421 	pop	ar3
   0977 0A                 1422 	inc	r2
                    03EB   1423 	C$modbus.c$99$1$1 ==.
                           1424 ;	modbus.c:99: n += MbWrByte(fce,bf+n);
   0978 EA                 1425 	mov	a,r2
   0979 2B                 1426 	add	a,r3
   097A F5 22              1427 	mov	_MbWrByte_PARM_2,a
   097C E4                 1428 	clr	a
   097D 3C                 1429 	addc	a,r4
   097E F5 23              1430 	mov	(_MbWrByte_PARM_2 + 1),a
   0980 8D 24              1431 	mov	(_MbWrByte_PARM_2 + 2),r5
   0982 85 30 82           1432 	mov	dpl,_MbWrOne_PARM_2
   0985 C0 02              1433 	push	ar2
   0987 C0 03              1434 	push	ar3
   0989 C0 04              1435 	push	ar4
   098B C0 05              1436 	push	ar5
   098D 12 07 25           1437 	lcall	_MbWrByte
   0990 AE 82              1438 	mov	r6,dpl
   0992 D0 05              1439 	pop	ar5
   0994 D0 04              1440 	pop	ar4
   0996 D0 03              1441 	pop	ar3
   0998 D0 02              1442 	pop	ar2
   099A EE                 1443 	mov	a,r6
   099B 2A                 1444 	add	a,r2
                    040F   1445 	C$modbus.c$100$1$1 ==.
                           1446 ;	modbus.c:100: n += MbWrWord(reg,bf+n);
   099C FA                 1447 	mov	r2,a
   099D 2B                 1448 	add	a,r3
   099E F5 25              1449 	mov	_MbWrWord_PARM_2,a
   09A0 E4                 1450 	clr	a
   09A1 3C                 1451 	addc	a,r4
   09A2 F5 26              1452 	mov	(_MbWrWord_PARM_2 + 1),a
   09A4 8D 27              1453 	mov	(_MbWrWord_PARM_2 + 2),r5
   09A6 85 31 82           1454 	mov	dpl,_MbWrOne_PARM_3
   09A9 85 32 83           1455 	mov	dph,(_MbWrOne_PARM_3 + 1)
   09AC C0 02              1456 	push	ar2
   09AE C0 03              1457 	push	ar3
   09B0 C0 04              1458 	push	ar4
   09B2 C0 05              1459 	push	ar5
   09B4 12 07 87           1460 	lcall	_MbWrWord
   09B7 AE 82              1461 	mov	r6,dpl
   09B9 D0 05              1462 	pop	ar5
   09BB D0 04              1463 	pop	ar4
   09BD D0 03              1464 	pop	ar3
   09BF D0 02              1465 	pop	ar2
   09C1 EE                 1466 	mov	a,r6
   09C2 2A                 1467 	add	a,r2
                    0436   1468 	C$modbus.c$101$1$1 ==.
                           1469 ;	modbus.c:101: n += MbWrWord(val,bf+n);
   09C3 FA                 1470 	mov	r2,a
   09C4 2B                 1471 	add	a,r3
   09C5 F5 25              1472 	mov	_MbWrWord_PARM_2,a
   09C7 E4                 1473 	clr	a
   09C8 3C                 1474 	addc	a,r4
   09C9 F5 26              1475 	mov	(_MbWrWord_PARM_2 + 1),a
   09CB 8D 27              1476 	mov	(_MbWrWord_PARM_2 + 2),r5
   09CD 85 33 82           1477 	mov	dpl,_MbWrOne_PARM_4
   09D0 85 34 83           1478 	mov	dph,(_MbWrOne_PARM_4 + 1)
   09D3 C0 02              1479 	push	ar2
   09D5 12 07 87           1480 	lcall	_MbWrWord
   09D8 AB 82              1481 	mov	r3,dpl
   09DA D0 02              1482 	pop	ar2
   09DC EB                 1483 	mov	a,r3
   09DD 2A                 1484 	add	a,r2
                    0451   1485 	C$modbus.c$102$1$1 ==.
                           1486 ;	modbus.c:102: return n;
                    0451   1487 	C$modbus.c$103$1$1 ==.
                    0451   1488 	XG$MbWrOne$0$0 ==.
   09DE F5 82              1489 	mov	dpl,a
   09E0 22                 1490 	ret
                           1491 ;------------------------------------------------------------
                           1492 ;Allocation info for local variables in function 'MbWr'
                           1493 ;------------------------------------------------------------
                           1494 ;fce                       Allocated with name '_MbWr_PARM_2'
                           1495 ;reg                       Allocated with name '_MbWr_PARM_3'
                           1496 ;nbr                       Allocated with name '_MbWr_PARM_4'
                           1497 ;vals                      Allocated with name '_MbWr_PARM_5'
                           1498 ;bf                        Allocated with name '_MbWr_PARM_6'
                           1499 ;adr                       Allocated to registers r2 
                           1500 ;n                         Allocated with name '_MbWr_n_1_1'
                           1501 ;bytes                     Allocated to registers r6 
                           1502 ;------------------------------------------------------------
                    0454   1503 	G$MbWr$0$0 ==.
                    0454   1504 	C$modbus.c$106$1$1 ==.
                           1505 ;	modbus.c:106: byte MbWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf)
                           1506 ;	-----------------------------------------
                           1507 ;	 function MbWr
                           1508 ;	-----------------------------------------
   09E1                    1509 _MbWr:
   09E1 AA 82              1510 	mov	r2,dpl
                    0456   1511 	C$modbus.c$109$1$1 ==.
                           1512 ;	modbus.c:109: *bf = ':';
   09E3 AB 40              1513 	mov	r3,_MbWr_PARM_6
   09E5 AC 41              1514 	mov	r4,(_MbWr_PARM_6 + 1)
   09E7 AD 42              1515 	mov	r5,(_MbWr_PARM_6 + 2)
   09E9 8B 82              1516 	mov	dpl,r3
   09EB 8C 83              1517 	mov	dph,r4
   09ED 8D F0              1518 	mov	b,r5
   09EF 74 3A              1519 	mov	a,#0x3A
   09F1 12 10 75           1520 	lcall	__gptrput
                    0467   1521 	C$modbus.c$110$1$1 ==.
                           1522 ;	modbus.c:110: n += MbWrByte(adr,bf+n);
   09F4 74 01              1523 	mov	a,#0x01
   09F6 2B                 1524 	add	a,r3
   09F7 F5 22              1525 	mov	_MbWrByte_PARM_2,a
   09F9 E4                 1526 	clr	a
   09FA 3C                 1527 	addc	a,r4
   09FB F5 23              1528 	mov	(_MbWrByte_PARM_2 + 1),a
   09FD 8D 24              1529 	mov	(_MbWrByte_PARM_2 + 2),r5
   09FF 8A 82              1530 	mov	dpl,r2
   0A01 C0 03              1531 	push	ar3
   0A03 C0 04              1532 	push	ar4
   0A05 C0 05              1533 	push	ar5
   0A07 12 07 25           1534 	lcall	_MbWrByte
   0A0A AA 82              1535 	mov	r2,dpl
   0A0C D0 05              1536 	pop	ar5
   0A0E D0 04              1537 	pop	ar4
   0A10 D0 03              1538 	pop	ar3
   0A12 EA                 1539 	mov	a,r2
   0A13 04                 1540 	inc	a
                    0487   1541 	C$modbus.c$111$1$1 ==.
                           1542 ;	modbus.c:111: n += MbWrByte(fce,bf+n);
   0A14 F5 43              1543 	mov	_MbWr_n_1_1,a
   0A16 2B                 1544 	add	a,r3
   0A17 F5 22              1545 	mov	_MbWrByte_PARM_2,a
   0A19 E4                 1546 	clr	a
   0A1A 3C                 1547 	addc	a,r4
   0A1B F5 23              1548 	mov	(_MbWrByte_PARM_2 + 1),a
   0A1D 8D 24              1549 	mov	(_MbWrByte_PARM_2 + 2),r5
   0A1F 85 38 82           1550 	mov	dpl,_MbWr_PARM_2
   0A22 C0 03              1551 	push	ar3
   0A24 C0 04              1552 	push	ar4
   0A26 C0 05              1553 	push	ar5
   0A28 12 07 25           1554 	lcall	_MbWrByte
   0A2B AE 82              1555 	mov	r6,dpl
   0A2D D0 05              1556 	pop	ar5
   0A2F D0 04              1557 	pop	ar4
   0A31 D0 03              1558 	pop	ar3
   0A33 EE                 1559 	mov	a,r6
   0A34 25 43              1560 	add	a,_MbWr_n_1_1
                    04A9   1561 	C$modbus.c$112$1$1 ==.
                           1562 ;	modbus.c:112: n += MbWrWord(reg,bf+n);
   0A36 F5 43              1563 	mov	_MbWr_n_1_1,a
   0A38 2B                 1564 	add	a,r3
   0A39 F5 25              1565 	mov	_MbWrWord_PARM_2,a
   0A3B E4                 1566 	clr	a
   0A3C 3C                 1567 	addc	a,r4
   0A3D F5 26              1568 	mov	(_MbWrWord_PARM_2 + 1),a
   0A3F 8D 27              1569 	mov	(_MbWrWord_PARM_2 + 2),r5
   0A41 85 39 82           1570 	mov	dpl,_MbWr_PARM_3
   0A44 85 3A 83           1571 	mov	dph,(_MbWr_PARM_3 + 1)
   0A47 C0 03              1572 	push	ar3
   0A49 C0 04              1573 	push	ar4
   0A4B C0 05              1574 	push	ar5
   0A4D 12 07 87           1575 	lcall	_MbWrWord
   0A50 AE 82              1576 	mov	r6,dpl
   0A52 D0 05              1577 	pop	ar5
   0A54 D0 04              1578 	pop	ar4
   0A56 D0 03              1579 	pop	ar3
   0A58 EE                 1580 	mov	a,r6
   0A59 25 43              1581 	add	a,_MbWr_n_1_1
                    04CE   1582 	C$modbus.c$113$1$1 ==.
                           1583 ;	modbus.c:113: n += MbWrWord(nbr,bf+n);
   0A5B F5 43              1584 	mov	_MbWr_n_1_1,a
   0A5D 2B                 1585 	add	a,r3
   0A5E F5 25              1586 	mov	_MbWrWord_PARM_2,a
   0A60 E4                 1587 	clr	a
   0A61 3C                 1588 	addc	a,r4
   0A62 F5 26              1589 	mov	(_MbWrWord_PARM_2 + 1),a
   0A64 8D 27              1590 	mov	(_MbWrWord_PARM_2 + 2),r5
   0A66 85 3B 82           1591 	mov	dpl,_MbWr_PARM_4
   0A69 85 3C 83           1592 	mov	dph,(_MbWr_PARM_4 + 1)
   0A6C C0 03              1593 	push	ar3
   0A6E C0 04              1594 	push	ar4
   0A70 C0 05              1595 	push	ar5
   0A72 12 07 87           1596 	lcall	_MbWrWord
   0A75 AE 82              1597 	mov	r6,dpl
   0A77 D0 05              1598 	pop	ar5
   0A79 D0 04              1599 	pop	ar4
   0A7B D0 03              1600 	pop	ar3
   0A7D EE                 1601 	mov	a,r6
   0A7E 25 43              1602 	add	a,_MbWr_n_1_1
   0A80 F5 43              1603 	mov	_MbWr_n_1_1,a
                    04F5   1604 	C$modbus.c$114$1$1 ==.
                           1605 ;	modbus.c:114: switch(fce)
   0A82 74 0F              1606 	mov	a,#0x0F
   0A84 B5 38 02           1607 	cjne	a,_MbWr_PARM_2,00115$
   0A87 80 0C              1608 	sjmp	00102$
   0A89                    1609 00115$:
   0A89 74 10              1610 	mov	a,#0x10
   0A8B B5 38 22           1611 	cjne	a,_MbWr_PARM_2,00103$
                    0501   1612 	C$modbus.c$116$2$2 ==.
                           1613 ;	modbus.c:116: case 0x10: bytes = 2*nbr;break;
   0A8E E5 3B              1614 	mov	a,_MbWr_PARM_4
   0A90 25 E0              1615 	add	a,acc
   0A92 FE                 1616 	mov	r6,a
                    0506   1617 	C$modbus.c$117$2$2 ==.
                           1618 ;	modbus.c:117: case 0x0F: bytes = (nbr+7)/8;break;
   0A93 80 1D              1619 	sjmp	00104$
   0A95                    1620 00102$:
   0A95 74 07              1621 	mov	a,#0x07
   0A97 25 3B              1622 	add	a,_MbWr_PARM_4
   0A99 FF                 1623 	mov	r7,a
   0A9A E4                 1624 	clr	a
   0A9B 35 3C              1625 	addc	a,(_MbWr_PARM_4 + 1)
   0A9D C4                 1626 	swap	a
   0A9E 23                 1627 	rl	a
   0A9F CF                 1628 	xch	a,r7
   0AA0 C4                 1629 	swap	a
   0AA1 23                 1630 	rl	a
   0AA2 54 1F              1631 	anl	a,#0x1f
   0AA4 6F                 1632 	xrl	a,r7
   0AA5 CF                 1633 	xch	a,r7
   0AA6 54 1F              1634 	anl	a,#0x1f
   0AA8 CF                 1635 	xch	a,r7
   0AA9 6F                 1636 	xrl	a,r7
   0AAA CF                 1637 	xch	a,r7
   0AAB F8                 1638 	mov	r0,a
   0AAC 8F 06              1639 	mov	ar6,r7
                    0521   1640 	C$modbus.c$118$2$2 ==.
                           1641 ;	modbus.c:118: default  : bytes = 0;
   0AAE 80 02              1642 	sjmp	00104$
   0AB0                    1643 00103$:
   0AB0 7E 00              1644 	mov	r6,#0x00
                    0525   1645 	C$modbus.c$119$1$1 ==.
                           1646 ;	modbus.c:119: }
   0AB2                    1647 00104$:
                    0525   1648 	C$modbus.c$120$1$1 ==.
                           1649 ;	modbus.c:120: n += MbWrByte(bytes,bf+n);
   0AB2 E5 43              1650 	mov	a,_MbWr_n_1_1
   0AB4 2B                 1651 	add	a,r3
   0AB5 F5 22              1652 	mov	_MbWrByte_PARM_2,a
   0AB7 E4                 1653 	clr	a
   0AB8 3C                 1654 	addc	a,r4
   0AB9 F5 23              1655 	mov	(_MbWrByte_PARM_2 + 1),a
   0ABB 8D 24              1656 	mov	(_MbWrByte_PARM_2 + 2),r5
   0ABD 8E 82              1657 	mov	dpl,r6
   0ABF C0 03              1658 	push	ar3
   0AC1 C0 04              1659 	push	ar4
   0AC3 C0 05              1660 	push	ar5
   0AC5 C0 06              1661 	push	ar6
   0AC7 12 07 25           1662 	lcall	_MbWrByte
   0ACA AF 82              1663 	mov	r7,dpl
   0ACC D0 06              1664 	pop	ar6
   0ACE D0 05              1665 	pop	ar5
   0AD0 D0 04              1666 	pop	ar4
   0AD2 D0 03              1667 	pop	ar3
   0AD4 EF                 1668 	mov	a,r7
   0AD5 25 43              1669 	add	a,_MbWr_n_1_1
   0AD7 F5 43              1670 	mov	_MbWr_n_1_1,a
                    054C   1671 	C$modbus.c$121$1$1 ==.
                           1672 ;	modbus.c:121: while(bytes--)
   0AD9 AF 3D              1673 	mov	r7,_MbWr_PARM_5
   0ADB A8 3E              1674 	mov	r0,(_MbWr_PARM_5 + 1)
   0ADD A9 3F              1675 	mov	r1,(_MbWr_PARM_5 + 2)
   0ADF                    1676 00105$:
   0ADF 8E 02              1677 	mov	ar2,r6
   0AE1 1E                 1678 	dec	r6
   0AE2 EA                 1679 	mov	a,r2
   0AE3 60 44              1680 	jz	00107$
                    0558   1681 	C$modbus.c$122$1$1 ==.
                           1682 ;	modbus.c:122: n += MbWrByte(*vals++,bf+n);
   0AE5 8F 82              1683 	mov	dpl,r7
   0AE7 88 83              1684 	mov	dph,r0
   0AE9 89 F0              1685 	mov	b,r1
   0AEB 12 16 82           1686 	lcall	__gptrget
   0AEE FA                 1687 	mov	r2,a
   0AEF A3                 1688 	inc	dptr
   0AF0 AF 82              1689 	mov	r7,dpl
   0AF2 A8 83              1690 	mov	r0,dph
   0AF4 E5 43              1691 	mov	a,_MbWr_n_1_1
   0AF6 2B                 1692 	add	a,r3
   0AF7 F5 22              1693 	mov	_MbWrByte_PARM_2,a
   0AF9 E4                 1694 	clr	a
   0AFA 3C                 1695 	addc	a,r4
   0AFB F5 23              1696 	mov	(_MbWrByte_PARM_2 + 1),a
   0AFD 8D 24              1697 	mov	(_MbWrByte_PARM_2 + 2),r5
   0AFF 8A 82              1698 	mov	dpl,r2
   0B01 C0 03              1699 	push	ar3
   0B03 C0 04              1700 	push	ar4
   0B05 C0 05              1701 	push	ar5
   0B07 C0 06              1702 	push	ar6
   0B09 C0 07              1703 	push	ar7
   0B0B C0 00              1704 	push	ar0
   0B0D C0 01              1705 	push	ar1
   0B0F 12 07 25           1706 	lcall	_MbWrByte
   0B12 AA 82              1707 	mov	r2,dpl
   0B14 D0 01              1708 	pop	ar1
   0B16 D0 00              1709 	pop	ar0
   0B18 D0 07              1710 	pop	ar7
   0B1A D0 06              1711 	pop	ar6
   0B1C D0 05              1712 	pop	ar5
   0B1E D0 04              1713 	pop	ar4
   0B20 D0 03              1714 	pop	ar3
   0B22 EA                 1715 	mov	a,r2
   0B23 25 43              1716 	add	a,_MbWr_n_1_1
   0B25 F5 43              1717 	mov	_MbWr_n_1_1,a
   0B27 80 B6              1718 	sjmp	00105$
   0B29                    1719 00107$:
                    059C   1720 	C$modbus.c$123$1$1 ==.
                           1721 ;	modbus.c:123: return n;
   0B29 85 43 82           1722 	mov	dpl,_MbWr_n_1_1
                    059F   1723 	C$modbus.c$124$1$1 ==.
                    059F   1724 	XG$MbWr$0$0 ==.
   0B2C 22                 1725 	ret
                           1726 ;------------------------------------------------------------
                           1727 ;Allocation info for local variables in function 'MbAnsRd'
                           1728 ;------------------------------------------------------------
                           1729 ;fce                       Allocated with name '_MbAnsRd_PARM_2'
                           1730 ;bytes                     Allocated with name '_MbAnsRd_PARM_3'
                           1731 ;vals                      Allocated with name '_MbAnsRd_PARM_4'
                           1732 ;bf                        Allocated with name '_MbAnsRd_PARM_5'
                           1733 ;adr                       Allocated to registers r2 
                           1734 ;n                         Allocated with name '_MbAnsRd_n_1_1'
                           1735 ;------------------------------------------------------------
                    05A0   1736 	G$MbAnsRd$0$0 ==.
                    05A0   1737 	C$modbus.c$127$1$1 ==.
                           1738 ;	modbus.c:127: byte MbAnsRd(byte adr, byte fce, byte bytes, byte *vals,byte *bf)
                           1739 ;	-----------------------------------------
                           1740 ;	 function MbAnsRd
                           1741 ;	-----------------------------------------
   0B2D                    1742 _MbAnsRd:
   0B2D AA 82              1743 	mov	r2,dpl
                    05A2   1744 	C$modbus.c$130$1$1 ==.
                           1745 ;	modbus.c:130: *bf = ':';
   0B2F AB 49              1746 	mov	r3,_MbAnsRd_PARM_5
   0B31 AC 4A              1747 	mov	r4,(_MbAnsRd_PARM_5 + 1)
   0B33 AD 4B              1748 	mov	r5,(_MbAnsRd_PARM_5 + 2)
   0B35 8B 82              1749 	mov	dpl,r3
   0B37 8C 83              1750 	mov	dph,r4
   0B39 8D F0              1751 	mov	b,r5
   0B3B 74 3A              1752 	mov	a,#0x3A
   0B3D 12 10 75           1753 	lcall	__gptrput
                    05B3   1754 	C$modbus.c$131$1$1 ==.
                           1755 ;	modbus.c:131: n += MbWrByte(adr,bf+n);
   0B40 74 01              1756 	mov	a,#0x01
   0B42 2B                 1757 	add	a,r3
   0B43 F5 22              1758 	mov	_MbWrByte_PARM_2,a
   0B45 E4                 1759 	clr	a
   0B46 3C                 1760 	addc	a,r4
   0B47 F5 23              1761 	mov	(_MbWrByte_PARM_2 + 1),a
   0B49 8D 24              1762 	mov	(_MbWrByte_PARM_2 + 2),r5
   0B4B 8A 82              1763 	mov	dpl,r2
   0B4D C0 03              1764 	push	ar3
   0B4F C0 04              1765 	push	ar4
   0B51 C0 05              1766 	push	ar5
   0B53 12 07 25           1767 	lcall	_MbWrByte
   0B56 AA 82              1768 	mov	r2,dpl
   0B58 D0 05              1769 	pop	ar5
   0B5A D0 04              1770 	pop	ar4
   0B5C D0 03              1771 	pop	ar3
   0B5E EA                 1772 	mov	a,r2
   0B5F 04                 1773 	inc	a
                    05D3   1774 	C$modbus.c$132$1$1 ==.
                           1775 ;	modbus.c:132: n += MbWrByte(fce,bf+n);
   0B60 F5 4C              1776 	mov	_MbAnsRd_n_1_1,a
   0B62 2B                 1777 	add	a,r3
   0B63 F5 22              1778 	mov	_MbWrByte_PARM_2,a
   0B65 E4                 1779 	clr	a
   0B66 3C                 1780 	addc	a,r4
   0B67 F5 23              1781 	mov	(_MbWrByte_PARM_2 + 1),a
   0B69 8D 24              1782 	mov	(_MbWrByte_PARM_2 + 2),r5
   0B6B 85 44 82           1783 	mov	dpl,_MbAnsRd_PARM_2
   0B6E C0 03              1784 	push	ar3
   0B70 C0 04              1785 	push	ar4
   0B72 C0 05              1786 	push	ar5
   0B74 12 07 25           1787 	lcall	_MbWrByte
   0B77 AE 82              1788 	mov	r6,dpl
   0B79 D0 05              1789 	pop	ar5
   0B7B D0 04              1790 	pop	ar4
   0B7D D0 03              1791 	pop	ar3
   0B7F EE                 1792 	mov	a,r6
   0B80 25 4C              1793 	add	a,_MbAnsRd_n_1_1
                    05F5   1794 	C$modbus.c$133$1$1 ==.
                           1795 ;	modbus.c:133: n += MbWrByte(bytes,bf+n);
   0B82 F5 4C              1796 	mov	_MbAnsRd_n_1_1,a
   0B84 2B                 1797 	add	a,r3
   0B85 F5 22              1798 	mov	_MbWrByte_PARM_2,a
   0B87 E4                 1799 	clr	a
   0B88 3C                 1800 	addc	a,r4
   0B89 F5 23              1801 	mov	(_MbWrByte_PARM_2 + 1),a
   0B8B 8D 24              1802 	mov	(_MbWrByte_PARM_2 + 2),r5
   0B8D 85 45 82           1803 	mov	dpl,_MbAnsRd_PARM_3
   0B90 C0 03              1804 	push	ar3
   0B92 C0 04              1805 	push	ar4
   0B94 C0 05              1806 	push	ar5
   0B96 12 07 25           1807 	lcall	_MbWrByte
   0B99 AE 82              1808 	mov	r6,dpl
   0B9B D0 05              1809 	pop	ar5
   0B9D D0 04              1810 	pop	ar4
   0B9F D0 03              1811 	pop	ar3
   0BA1 EE                 1812 	mov	a,r6
   0BA2 25 4C              1813 	add	a,_MbAnsRd_n_1_1
   0BA4 F5 4C              1814 	mov	_MbAnsRd_n_1_1,a
                    0619   1815 	C$modbus.c$134$1$1 ==.
                           1816 ;	modbus.c:134: while(bytes--)
   0BA6 AE 46              1817 	mov	r6,_MbAnsRd_PARM_4
   0BA8 AF 47              1818 	mov	r7,(_MbAnsRd_PARM_4 + 1)
   0BAA A8 48              1819 	mov	r0,(_MbAnsRd_PARM_4 + 2)
   0BAC A9 45              1820 	mov	r1,_MbAnsRd_PARM_3
   0BAE                    1821 00101$:
   0BAE 89 02              1822 	mov	ar2,r1
   0BB0 19                 1823 	dec	r1
   0BB1 EA                 1824 	mov	a,r2
   0BB2 60 44              1825 	jz	00103$
                    0627   1826 	C$modbus.c$135$1$1 ==.
                           1827 ;	modbus.c:135: n += MbWrByte(*vals++,bf+n);
   0BB4 8E 82              1828 	mov	dpl,r6
   0BB6 8F 83              1829 	mov	dph,r7
   0BB8 88 F0              1830 	mov	b,r0
   0BBA 12 16 82           1831 	lcall	__gptrget
   0BBD FA                 1832 	mov	r2,a
   0BBE A3                 1833 	inc	dptr
   0BBF AE 82              1834 	mov	r6,dpl
   0BC1 AF 83              1835 	mov	r7,dph
   0BC3 E5 4C              1836 	mov	a,_MbAnsRd_n_1_1
   0BC5 2B                 1837 	add	a,r3
   0BC6 F5 22              1838 	mov	_MbWrByte_PARM_2,a
   0BC8 E4                 1839 	clr	a
   0BC9 3C                 1840 	addc	a,r4
   0BCA F5 23              1841 	mov	(_MbWrByte_PARM_2 + 1),a
   0BCC 8D 24              1842 	mov	(_MbWrByte_PARM_2 + 2),r5
   0BCE 8A 82              1843 	mov	dpl,r2
   0BD0 C0 03              1844 	push	ar3
   0BD2 C0 04              1845 	push	ar4
   0BD4 C0 05              1846 	push	ar5
   0BD6 C0 06              1847 	push	ar6
   0BD8 C0 07              1848 	push	ar7
   0BDA C0 00              1849 	push	ar0
   0BDC C0 01              1850 	push	ar1
   0BDE 12 07 25           1851 	lcall	_MbWrByte
   0BE1 AA 82              1852 	mov	r2,dpl
   0BE3 D0 01              1853 	pop	ar1
   0BE5 D0 00              1854 	pop	ar0
   0BE7 D0 07              1855 	pop	ar7
   0BE9 D0 06              1856 	pop	ar6
   0BEB D0 05              1857 	pop	ar5
   0BED D0 04              1858 	pop	ar4
   0BEF D0 03              1859 	pop	ar3
   0BF1 EA                 1860 	mov	a,r2
   0BF2 25 4C              1861 	add	a,_MbAnsRd_n_1_1
   0BF4 F5 4C              1862 	mov	_MbAnsRd_n_1_1,a
   0BF6 80 B6              1863 	sjmp	00101$
   0BF8                    1864 00103$:
                    066B   1865 	C$modbus.c$136$1$1 ==.
                           1866 ;	modbus.c:136: return n;
   0BF8 85 4C 82           1867 	mov	dpl,_MbAnsRd_n_1_1
                    066E   1868 	C$modbus.c$137$1$1 ==.
                    066E   1869 	XG$MbAnsRd$0$0 ==.
   0BFB 22                 1870 	ret
                           1871 ;------------------------------------------------------------
                           1872 ;Allocation info for local variables in function 'MbAnsErr'
                           1873 ;------------------------------------------------------------
                           1874 ;fce                       Allocated with name '_MbAnsErr_PARM_2'
                           1875 ;er                        Allocated with name '_MbAnsErr_PARM_3'
                           1876 ;bf                        Allocated with name '_MbAnsErr_PARM_4'
                           1877 ;adr                       Allocated to registers r2 
                           1878 ;n                         Allocated to registers r2 
                           1879 ;------------------------------------------------------------
                    066F   1880 	G$MbAnsErr$0$0 ==.
                    066F   1881 	C$modbus.c$140$1$1 ==.
                           1882 ;	modbus.c:140: byte MbAnsErr(byte adr,byte fce,byte er,byte *bf)
                           1883 ;	-----------------------------------------
                           1884 ;	 function MbAnsErr
                           1885 ;	-----------------------------------------
   0BFC                    1886 _MbAnsErr:
   0BFC AA 82              1887 	mov	r2,dpl
                    0671   1888 	C$modbus.c$144$1$1 ==.
                           1889 ;	modbus.c:144: *bf = ':';
   0BFE AB 4F              1890 	mov	r3,_MbAnsErr_PARM_4
   0C00 AC 50              1891 	mov	r4,(_MbAnsErr_PARM_4 + 1)
   0C02 AD 51              1892 	mov	r5,(_MbAnsErr_PARM_4 + 2)
   0C04 8B 82              1893 	mov	dpl,r3
   0C06 8C 83              1894 	mov	dph,r4
   0C08 8D F0              1895 	mov	b,r5
   0C0A 74 3A              1896 	mov	a,#0x3A
   0C0C 12 10 75           1897 	lcall	__gptrput
                    0682   1898 	C$modbus.c$145$1$1 ==.
                           1899 ;	modbus.c:145: n += MbWrByte(adr,bf+n);
   0C0F 74 01              1900 	mov	a,#0x01
   0C11 2B                 1901 	add	a,r3
   0C12 F5 22              1902 	mov	_MbWrByte_PARM_2,a
   0C14 E4                 1903 	clr	a
   0C15 3C                 1904 	addc	a,r4
   0C16 F5 23              1905 	mov	(_MbWrByte_PARM_2 + 1),a
   0C18 8D 24              1906 	mov	(_MbWrByte_PARM_2 + 2),r5
   0C1A 8A 82              1907 	mov	dpl,r2
   0C1C C0 03              1908 	push	ar3
   0C1E C0 04              1909 	push	ar4
   0C20 C0 05              1910 	push	ar5
   0C22 12 07 25           1911 	lcall	_MbWrByte
   0C25 AA 82              1912 	mov	r2,dpl
   0C27 D0 05              1913 	pop	ar5
   0C29 D0 04              1914 	pop	ar4
   0C2B D0 03              1915 	pop	ar3
   0C2D 0A                 1916 	inc	r2
                    06A1   1917 	C$modbus.c$146$1$1 ==.
                           1918 ;	modbus.c:146: n += MbWrByte(fce,bf+n);
   0C2E EA                 1919 	mov	a,r2
   0C2F 2B                 1920 	add	a,r3
   0C30 F5 22              1921 	mov	_MbWrByte_PARM_2,a
   0C32 E4                 1922 	clr	a
   0C33 3C                 1923 	addc	a,r4
   0C34 F5 23              1924 	mov	(_MbWrByte_PARM_2 + 1),a
   0C36 8D 24              1925 	mov	(_MbWrByte_PARM_2 + 2),r5
   0C38 85 4D 82           1926 	mov	dpl,_MbAnsErr_PARM_2
   0C3B C0 02              1927 	push	ar2
   0C3D C0 03              1928 	push	ar3
   0C3F C0 04              1929 	push	ar4
   0C41 C0 05              1930 	push	ar5
   0C43 12 07 25           1931 	lcall	_MbWrByte
   0C46 AE 82              1932 	mov	r6,dpl
   0C48 D0 05              1933 	pop	ar5
   0C4A D0 04              1934 	pop	ar4
   0C4C D0 03              1935 	pop	ar3
   0C4E D0 02              1936 	pop	ar2
   0C50 EE                 1937 	mov	a,r6
   0C51 2A                 1938 	add	a,r2
                    06C5   1939 	C$modbus.c$147$1$1 ==.
                           1940 ;	modbus.c:147: n += MbWrByte(er,bf+n);
   0C52 FA                 1941 	mov	r2,a
   0C53 2B                 1942 	add	a,r3
   0C54 F5 22              1943 	mov	_MbWrByte_PARM_2,a
   0C56 E4                 1944 	clr	a
   0C57 3C                 1945 	addc	a,r4
   0C58 F5 23              1946 	mov	(_MbWrByte_PARM_2 + 1),a
   0C5A 8D 24              1947 	mov	(_MbWrByte_PARM_2 + 2),r5
   0C5C 85 4E 82           1948 	mov	dpl,_MbAnsErr_PARM_3
   0C5F C0 02              1949 	push	ar2
   0C61 12 07 25           1950 	lcall	_MbWrByte
   0C64 AB 82              1951 	mov	r3,dpl
   0C66 D0 02              1952 	pop	ar2
   0C68 EB                 1953 	mov	a,r3
   0C69 2A                 1954 	add	a,r2
                    06DD   1955 	C$modbus.c$148$1$1 ==.
                           1956 ;	modbus.c:148: return n;
                    06DD   1957 	C$modbus.c$149$1$1 ==.
                    06DD   1958 	XG$MbAnsErr$0$0 ==.
   0C6A F5 82              1959 	mov	dpl,a
   0C6C 22                 1960 	ret
                           1961 ;------------------------------------------------------------
                           1962 ;Allocation info for local variables in function 'MrtuCrc'
                           1963 ;------------------------------------------------------------
                           1964 ;len                       Allocated with name '_MrtuCrc_PARM_2'
                           1965 ;bf                        Allocated to registers r2 r3 r4 
                           1966 ;CRCHi                     Allocated to registers r5 
                           1967 ;CRCLo                     Allocated to registers r6 
                           1968 ;index                     Allocated to registers r0 
                           1969 ;------------------------------------------------------------
                    06E0   1970 	G$MrtuCrc$0$0 ==.
                    06E0   1971 	C$modbus.c$194$1$1 ==.
                           1972 ;	modbus.c:194: word MrtuCrc(byte * bf, byte len )
                           1973 ;	-----------------------------------------
                           1974 ;	 function MrtuCrc
                           1975 ;	-----------------------------------------
   0C6D                    1976 _MrtuCrc:
   0C6D AA 82              1977 	mov	r2,dpl
   0C6F AB 83              1978 	mov	r3,dph
   0C71 AC F0              1979 	mov	r4,b
                    06E6   1980 	C$modbus.c$196$1$1 ==.
                           1981 ;	modbus.c:196: byte CRCHi = 0xFF ;  /* MSB CRC */
   0C73 7D FF              1982 	mov	r5,#0xFF
                    06E8   1983 	C$modbus.c$197$1$1 ==.
                           1984 ;	modbus.c:197: byte CRCLo = 0xFF ;  /* LSB CRC  */
   0C75 7E FF              1985 	mov	r6,#0xFF
                    06EA   1986 	C$modbus.c$199$2$2 ==.
                           1987 ;	modbus.c:199: while (len--)
   0C77 AF 6B              1988 	mov	r7,_MrtuCrc_PARM_2
   0C79                    1989 00101$:
   0C79 8F 00              1990 	mov	ar0,r7
   0C7B 1F                 1991 	dec	r7
   0C7C E8                 1992 	mov	a,r0
   0C7D 60 22              1993 	jz	00103$
                    06F2   1994 	C$modbus.c$201$2$2 ==.
                           1995 ;	modbus.c:201: index = CRCLo ^ *bf++ ;
   0C7F 8A 82              1996 	mov	dpl,r2
   0C81 8B 83              1997 	mov	dph,r3
   0C83 8C F0              1998 	mov	b,r4
   0C85 12 16 82           1999 	lcall	__gptrget
   0C88 F8                 2000 	mov	r0,a
   0C89 A3                 2001 	inc	dptr
   0C8A AA 82              2002 	mov	r2,dpl
   0C8C AB 83              2003 	mov	r3,dph
   0C8E EE                 2004 	mov	a,r6
   0C8F 62 00              2005 	xrl	ar0,a
                    0704   2006 	C$modbus.c$202$2$2 ==.
                           2007 ;	modbus.c:202: CRCLo = CRCHi ^ tabCRCHi[index] ;
   0C91 E8                 2008 	mov	a,r0
   0C92 90 16 C0           2009 	mov	dptr,#_tabCRCHi
   0C95 93                 2010 	movc	a,@a+dptr
   0C96 F9                 2011 	mov	r1,a
   0C97 6D                 2012 	xrl	a,r5
   0C98 FE                 2013 	mov	r6,a
                    070C   2014 	C$modbus.c$203$2$2 ==.
                           2015 ;	modbus.c:203: CRCHi = tabCRCLo[index] ;
   0C99 E8                 2016 	mov	a,r0
   0C9A 90 17 C0           2017 	mov	dptr,#_tabCRCLo
   0C9D 93                 2018 	movc	a,@a+dptr
   0C9E FD                 2019 	mov	r5,a
   0C9F 80 D8              2020 	sjmp	00101$
   0CA1                    2021 00103$:
                    0714   2022 	C$modbus.c$206$1$1 ==.
                           2023 ;	modbus.c:206: return (CRCHi << 8 | CRCLo) ;
   0CA1 8D 02              2024 	mov	ar2,r5
   0CA3 E4                 2025 	clr	a
   0CA4 FD                 2026 	mov	r5,a
   0CA5 FB                 2027 	mov	r3,a
   0CA6 EE                 2028 	mov	a,r6
   0CA7 4D                 2029 	orl	a,r5
   0CA8 F5 82              2030 	mov	dpl,a
   0CAA EB                 2031 	mov	a,r3
   0CAB 4A                 2032 	orl	a,r2
   0CAC F5 83              2033 	mov	dph,a
                    0721   2034 	C$modbus.c$207$1$1 ==.
                    0721   2035 	XG$MrtuCrc$0$0 ==.
   0CAE 22                 2036 	ret
                           2037 ;------------------------------------------------------------
                           2038 ;Allocation info for local variables in function 'MrtuRdCrc'
                           2039 ;------------------------------------------------------------
                           2040 ;bf                        Allocated to registers r2 r3 r4 
                           2041 ;------------------------------------------------------------
                    0722   2042 	G$MrtuRdCrc$0$0 ==.
                    0722   2043 	C$modbus.c$209$1$1 ==.
                           2044 ;	modbus.c:209: word MrtuRdCrc(byte * bf)
                           2045 ;	-----------------------------------------
                           2046 ;	 function MrtuRdCrc
                           2047 ;	-----------------------------------------
   0CAF                    2048 _MrtuRdCrc:
   0CAF AA 82              2049 	mov	r2,dpl
   0CB1 AB 83              2050 	mov	r3,dph
   0CB3 AC F0              2051 	mov	r4,b
                    0728   2052 	C$modbus.c$211$1$1 ==.
                           2053 ;	modbus.c:211: return ( *(bf+1)<<8 | *bf);
   0CB5 74 01              2054 	mov	a,#0x01
   0CB7 2A                 2055 	add	a,r2
   0CB8 FD                 2056 	mov	r5,a
   0CB9 E4                 2057 	clr	a
   0CBA 3B                 2058 	addc	a,r3
   0CBB FE                 2059 	mov	r6,a
   0CBC 8C 07              2060 	mov	ar7,r4
   0CBE 8D 82              2061 	mov	dpl,r5
   0CC0 8E 83              2062 	mov	dph,r6
   0CC2 8F F0              2063 	mov	b,r7
   0CC4 12 16 82           2064 	lcall	__gptrget
   0CC7 FE                 2065 	mov	r6,a
   0CC8 7D 00              2066 	mov	r5,#0x00
   0CCA 8A 82              2067 	mov	dpl,r2
   0CCC 8B 83              2068 	mov	dph,r3
   0CCE 8C F0              2069 	mov	b,r4
   0CD0 12 16 82           2070 	lcall	__gptrget
   0CD3 7B 00              2071 	mov	r3,#0x00
   0CD5 4D                 2072 	orl	a,r5
   0CD6 F5 82              2073 	mov	dpl,a
   0CD8 EB                 2074 	mov	a,r3
   0CD9 4E                 2075 	orl	a,r6
   0CDA F5 83              2076 	mov	dph,a
                    074F   2077 	C$modbus.c$212$1$1 ==.
                    074F   2078 	XG$MrtuRdCrc$0$0 ==.
   0CDC 22                 2079 	ret
                           2080 ;------------------------------------------------------------
                           2081 ;Allocation info for local variables in function 'MrtuWrCrc'
                           2082 ;------------------------------------------------------------
                           2083 ;bf                        Allocated with name '_MrtuWrCrc_PARM_2'
                           2084 ;crc                       Allocated to registers r2 r3 
                           2085 ;------------------------------------------------------------
                    0750   2086 	G$MrtuWrCrc$0$0 ==.
                    0750   2087 	C$modbus.c$214$1$1 ==.
                           2088 ;	modbus.c:214: byte MrtuWrCrc(word crc,byte * bf)
                           2089 ;	-----------------------------------------
                           2090 ;	 function MrtuWrCrc
                           2091 ;	-----------------------------------------
   0CDD                    2092 _MrtuWrCrc:
   0CDD AA 82              2093 	mov	r2,dpl
   0CDF AB 83              2094 	mov	r3,dph
                    0754   2095 	C$modbus.c$216$1$1 ==.
                           2096 ;	modbus.c:216: *bf++ = crc;
   0CE1 AC 6B              2097 	mov	r4,_MrtuWrCrc_PARM_2
   0CE3 AD 6C              2098 	mov	r5,(_MrtuWrCrc_PARM_2 + 1)
   0CE5 AE 6D              2099 	mov	r6,(_MrtuWrCrc_PARM_2 + 2)
   0CE7 8A 07              2100 	mov	ar7,r2
   0CE9 8C 82              2101 	mov	dpl,r4
   0CEB 8D 83              2102 	mov	dph,r5
   0CED 8E F0              2103 	mov	b,r6
   0CEF EF                 2104 	mov	a,r7
   0CF0 12 10 75           2105 	lcall	__gptrput
   0CF3 74 01              2106 	mov	a,#0x01
   0CF5 2C                 2107 	add	a,r4
   0CF6 F5 6B              2108 	mov	_MrtuWrCrc_PARM_2,a
   0CF8 E4                 2109 	clr	a
   0CF9 3D                 2110 	addc	a,r5
   0CFA F5 6C              2111 	mov	(_MrtuWrCrc_PARM_2 + 1),a
   0CFC 8E 6D              2112 	mov	(_MrtuWrCrc_PARM_2 + 2),r6
                    0771   2113 	C$modbus.c$217$1$1 ==.
                           2114 ;	modbus.c:217: *bf   = crc>>8;
   0CFE AC 6B              2115 	mov	r4,_MrtuWrCrc_PARM_2
   0D00 AD 6C              2116 	mov	r5,(_MrtuWrCrc_PARM_2 + 1)
   0D02 AE 6D              2117 	mov	r6,(_MrtuWrCrc_PARM_2 + 2)
   0D04 8B 02              2118 	mov	ar2,r3
   0D06 8C 82              2119 	mov	dpl,r4
   0D08 8D 83              2120 	mov	dph,r5
   0D0A 8E F0              2121 	mov	b,r6
   0D0C EA                 2122 	mov	a,r2
   0D0D 12 10 75           2123 	lcall	__gptrput
                    0783   2124 	C$modbus.c$218$1$1 ==.
                           2125 ;	modbus.c:218: return 2;
   0D10 75 82 02           2126 	mov	dpl,#0x02
                    0786   2127 	C$modbus.c$220$1$1 ==.
                    0786   2128 	XG$MrtuWrCrc$0$0 ==.
   0D13 22                 2129 	ret
                           2130 ;------------------------------------------------------------
                           2131 ;Allocation info for local variables in function 'MrtuAnsErr'
                           2132 ;------------------------------------------------------------
                           2133 ;fce                       Allocated with name '_MrtuAnsErr_PARM_2'
                           2134 ;err                       Allocated with name '_MrtuAnsErr_PARM_3'
                           2135 ;bf                        Allocated with name '_MrtuAnsErr_PARM_4'
                           2136 ;adr                       Allocated to registers r2 
                           2137 ;------------------------------------------------------------
                    0787   2138 	G$MrtuAnsErr$0$0 ==.
                    0787   2139 	C$modbus.c$223$1$1 ==.
                           2140 ;	modbus.c:223: byte MrtuAnsErr(byte adr,byte fce,byte err,byte *bf)
                           2141 ;	-----------------------------------------
                           2142 ;	 function MrtuAnsErr
                           2143 ;	-----------------------------------------
   0D14                    2144 _MrtuAnsErr:
   0D14 AA 82              2145 	mov	r2,dpl
                    0789   2146 	C$modbus.c$225$1$1 ==.
                           2147 ;	modbus.c:225: *bf++=adr;
   0D16 AB 6D              2148 	mov	r3,_MrtuAnsErr_PARM_4
   0D18 AC 6E              2149 	mov	r4,(_MrtuAnsErr_PARM_4 + 1)
   0D1A AD 6F              2150 	mov	r5,(_MrtuAnsErr_PARM_4 + 2)
   0D1C 8B 82              2151 	mov	dpl,r3
   0D1E 8C 83              2152 	mov	dph,r4
   0D20 8D F0              2153 	mov	b,r5
   0D22 EA                 2154 	mov	a,r2
   0D23 12 10 75           2155 	lcall	__gptrput
   0D26 74 01              2156 	mov	a,#0x01
   0D28 2B                 2157 	add	a,r3
   0D29 F5 6D              2158 	mov	_MrtuAnsErr_PARM_4,a
   0D2B E4                 2159 	clr	a
   0D2C 3C                 2160 	addc	a,r4
   0D2D F5 6E              2161 	mov	(_MrtuAnsErr_PARM_4 + 1),a
   0D2F 8D 6F              2162 	mov	(_MrtuAnsErr_PARM_4 + 2),r5
                    07A4   2163 	C$modbus.c$226$1$1 ==.
                           2164 ;	modbus.c:226: *bf++=fce;
   0D31 AA 6D              2165 	mov	r2,_MrtuAnsErr_PARM_4
   0D33 AB 6E              2166 	mov	r3,(_MrtuAnsErr_PARM_4 + 1)
   0D35 AC 6F              2167 	mov	r4,(_MrtuAnsErr_PARM_4 + 2)
   0D37 8A 82              2168 	mov	dpl,r2
   0D39 8B 83              2169 	mov	dph,r3
   0D3B 8C F0              2170 	mov	b,r4
   0D3D E5 6B              2171 	mov	a,_MrtuAnsErr_PARM_2
   0D3F 12 10 75           2172 	lcall	__gptrput
   0D42 74 01              2173 	mov	a,#0x01
   0D44 2A                 2174 	add	a,r2
   0D45 F5 6D              2175 	mov	_MrtuAnsErr_PARM_4,a
   0D47 E4                 2176 	clr	a
   0D48 3B                 2177 	addc	a,r3
   0D49 F5 6E              2178 	mov	(_MrtuAnsErr_PARM_4 + 1),a
   0D4B 8C 6F              2179 	mov	(_MrtuAnsErr_PARM_4 + 2),r4
                    07C0   2180 	C$modbus.c$227$1$1 ==.
                           2181 ;	modbus.c:227: *bf++=err;
   0D4D AA 6D              2182 	mov	r2,_MrtuAnsErr_PARM_4
   0D4F AB 6E              2183 	mov	r3,(_MrtuAnsErr_PARM_4 + 1)
   0D51 AC 6F              2184 	mov	r4,(_MrtuAnsErr_PARM_4 + 2)
   0D53 8A 82              2185 	mov	dpl,r2
   0D55 8B 83              2186 	mov	dph,r3
   0D57 8C F0              2187 	mov	b,r4
   0D59 E5 6C              2188 	mov	a,_MrtuAnsErr_PARM_3
   0D5B 12 10 75           2189 	lcall	__gptrput
                    07D1   2190 	C$modbus.c$228$1$1 ==.
                           2191 ;	modbus.c:228: return 3;
   0D5E 75 82 03           2192 	mov	dpl,#0x03
                    07D4   2193 	C$modbus.c$229$1$1 ==.
                    07D4   2194 	XG$MrtuAnsErr$0$0 ==.
   0D61 22                 2195 	ret
                           2196 ;------------------------------------------------------------
                           2197 ;Allocation info for local variables in function 'MrtuAnsRd'
                           2198 ;------------------------------------------------------------
                           2199 ;fce                       Allocated with name '_MrtuAnsRd_PARM_2'
                           2200 ;bytes                     Allocated with name '_MrtuAnsRd_PARM_3'
                           2201 ;vals                      Allocated with name '_MrtuAnsRd_PARM_4'
                           2202 ;bf                        Allocated with name '_MrtuAnsRd_PARM_5'
                           2203 ;adr                       Allocated to registers r2 
                           2204 ;n                         Allocated with name '_MrtuAnsRd_n_1_1'
                           2205 ;------------------------------------------------------------
                    07D5   2206 	G$MrtuAnsRd$0$0 ==.
                    07D5   2207 	C$modbus.c$230$1$1 ==.
                           2208 ;	modbus.c:230: byte MrtuAnsRd(byte adr,byte fce,byte bytes,byte *vals,byte *bf)
                           2209 ;	-----------------------------------------
                           2210 ;	 function MrtuAnsRd
                           2211 ;	-----------------------------------------
   0D62                    2212 _MrtuAnsRd:
   0D62 AA 82              2213 	mov	r2,dpl
                    07D7   2214 	C$modbus.c$232$1$1 ==.
                           2215 ;	modbus.c:232: byte n=bytes+3;
   0D64 74 03              2216 	mov	a,#0x03
   0D66 25 6C              2217 	add	a,_MrtuAnsRd_PARM_3
   0D68 F5 73              2218 	mov	_MrtuAnsRd_n_1_1,a
                    07DD   2219 	C$modbus.c$233$1$1 ==.
                           2220 ;	modbus.c:233: *bf++=adr;
   0D6A AC 70              2221 	mov	r4,_MrtuAnsRd_PARM_5
   0D6C AD 71              2222 	mov	r5,(_MrtuAnsRd_PARM_5 + 1)
   0D6E AE 72              2223 	mov	r6,(_MrtuAnsRd_PARM_5 + 2)
   0D70 8C 82              2224 	mov	dpl,r4
   0D72 8D 83              2225 	mov	dph,r5
   0D74 8E F0              2226 	mov	b,r6
   0D76 EA                 2227 	mov	a,r2
   0D77 12 10 75           2228 	lcall	__gptrput
   0D7A 74 01              2229 	mov	a,#0x01
   0D7C 2C                 2230 	add	a,r4
   0D7D F5 70              2231 	mov	_MrtuAnsRd_PARM_5,a
   0D7F E4                 2232 	clr	a
   0D80 3D                 2233 	addc	a,r5
   0D81 F5 71              2234 	mov	(_MrtuAnsRd_PARM_5 + 1),a
   0D83 8E 72              2235 	mov	(_MrtuAnsRd_PARM_5 + 2),r6
                    07F8   2236 	C$modbus.c$234$1$1 ==.
                           2237 ;	modbus.c:234: *bf++=fce;
   0D85 AA 70              2238 	mov	r2,_MrtuAnsRd_PARM_5
   0D87 AC 71              2239 	mov	r4,(_MrtuAnsRd_PARM_5 + 1)
   0D89 AD 72              2240 	mov	r5,(_MrtuAnsRd_PARM_5 + 2)
   0D8B 8A 82              2241 	mov	dpl,r2
   0D8D 8C 83              2242 	mov	dph,r4
   0D8F 8D F0              2243 	mov	b,r5
   0D91 E5 6B              2244 	mov	a,_MrtuAnsRd_PARM_2
   0D93 12 10 75           2245 	lcall	__gptrput
   0D96 74 01              2246 	mov	a,#0x01
   0D98 2A                 2247 	add	a,r2
   0D99 F5 70              2248 	mov	_MrtuAnsRd_PARM_5,a
   0D9B E4                 2249 	clr	a
   0D9C 3C                 2250 	addc	a,r4
   0D9D F5 71              2251 	mov	(_MrtuAnsRd_PARM_5 + 1),a
   0D9F 8D 72              2252 	mov	(_MrtuAnsRd_PARM_5 + 2),r5
                    0814   2253 	C$modbus.c$235$1$1 ==.
                           2254 ;	modbus.c:235: *bf++=bytes;
   0DA1 AA 70              2255 	mov	r2,_MrtuAnsRd_PARM_5
   0DA3 AC 71              2256 	mov	r4,(_MrtuAnsRd_PARM_5 + 1)
   0DA5 AD 72              2257 	mov	r5,(_MrtuAnsRd_PARM_5 + 2)
   0DA7 8A 82              2258 	mov	dpl,r2
   0DA9 8C 83              2259 	mov	dph,r4
   0DAB 8D F0              2260 	mov	b,r5
   0DAD E5 6C              2261 	mov	a,_MrtuAnsRd_PARM_3
   0DAF 12 10 75           2262 	lcall	__gptrput
   0DB2 74 01              2263 	mov	a,#0x01
   0DB4 2A                 2264 	add	a,r2
   0DB5 F5 70              2265 	mov	_MrtuAnsRd_PARM_5,a
   0DB7 E4                 2266 	clr	a
   0DB8 3C                 2267 	addc	a,r4
   0DB9 F5 71              2268 	mov	(_MrtuAnsRd_PARM_5 + 1),a
   0DBB 8D 72              2269 	mov	(_MrtuAnsRd_PARM_5 + 2),r5
                    0830   2270 	C$modbus.c$236$1$1 ==.
                           2271 ;	modbus.c:236: while(bytes--) *bf++ = *vals++;
   0DBD AA 6D              2272 	mov	r2,_MrtuAnsRd_PARM_4
   0DBF AC 6E              2273 	mov	r4,(_MrtuAnsRd_PARM_4 + 1)
   0DC1 AD 6F              2274 	mov	r5,(_MrtuAnsRd_PARM_4 + 2)
   0DC3 AE 70              2275 	mov	r6,_MrtuAnsRd_PARM_5
   0DC5 AF 71              2276 	mov	r7,(_MrtuAnsRd_PARM_5 + 1)
   0DC7 A8 72              2277 	mov	r0,(_MrtuAnsRd_PARM_5 + 2)
   0DC9 A9 6C              2278 	mov	r1,_MrtuAnsRd_PARM_3
   0DCB                    2279 00101$:
   0DCB 89 03              2280 	mov	ar3,r1
   0DCD 19                 2281 	dec	r1
   0DCE EB                 2282 	mov	a,r3
   0DCF 60 20              2283 	jz	00103$
   0DD1 8A 82              2284 	mov	dpl,r2
   0DD3 8C 83              2285 	mov	dph,r4
   0DD5 8D F0              2286 	mov	b,r5
   0DD7 12 16 82           2287 	lcall	__gptrget
   0DDA FB                 2288 	mov	r3,a
   0DDB A3                 2289 	inc	dptr
   0DDC AA 82              2290 	mov	r2,dpl
   0DDE AC 83              2291 	mov	r4,dph
   0DE0 8E 82              2292 	mov	dpl,r6
   0DE2 8F 83              2293 	mov	dph,r7
   0DE4 88 F0              2294 	mov	b,r0
   0DE6 EB                 2295 	mov	a,r3
   0DE7 12 10 75           2296 	lcall	__gptrput
   0DEA A3                 2297 	inc	dptr
   0DEB AE 82              2298 	mov	r6,dpl
   0DED AF 83              2299 	mov	r7,dph
   0DEF 80 DA              2300 	sjmp	00101$
   0DF1                    2301 00103$:
                    0864   2302 	C$modbus.c$237$1$1 ==.
                           2303 ;	modbus.c:237: return n;
   0DF1 85 73 82           2304 	mov	dpl,_MrtuAnsRd_n_1_1
                    0867   2305 	C$modbus.c$238$1$1 ==.
                    0867   2306 	XG$MrtuAnsRd$0$0 ==.
   0DF4 22                 2307 	ret
                           2308 ;------------------------------------------------------------
                           2309 ;Allocation info for local variables in function 'MrtuWrOne'
                           2310 ;------------------------------------------------------------
                           2311 ;fce                       Allocated with name '_MrtuWrOne_PARM_2'
                           2312 ;reg                       Allocated with name '_MrtuWrOne_PARM_3'
                           2313 ;val                       Allocated with name '_MrtuWrOne_PARM_4'
                           2314 ;bf                        Allocated with name '_MrtuWrOne_PARM_5'
                           2315 ;adr                       Allocated to registers r2 
                           2316 ;------------------------------------------------------------
                    0868   2317 	G$MrtuWrOne$0$0 ==.
                    0868   2318 	C$modbus.c$239$1$1 ==.
                           2319 ;	modbus.c:239: byte MrtuWrOne(byte adr,byte fce,word reg,word val,byte *bf)
                           2320 ;	-----------------------------------------
                           2321 ;	 function MrtuWrOne
                           2322 ;	-----------------------------------------
   0DF5                    2323 _MrtuWrOne:
   0DF5 AA 82              2324 	mov	r2,dpl
                    086A   2325 	C$modbus.c$241$1$1 ==.
                           2326 ;	modbus.c:241: *bf++=adr;
   0DF7 AB 70              2327 	mov	r3,_MrtuWrOne_PARM_5
   0DF9 AC 71              2328 	mov	r4,(_MrtuWrOne_PARM_5 + 1)
   0DFB AD 72              2329 	mov	r5,(_MrtuWrOne_PARM_5 + 2)
   0DFD 8B 82              2330 	mov	dpl,r3
   0DFF 8C 83              2331 	mov	dph,r4
   0E01 8D F0              2332 	mov	b,r5
   0E03 EA                 2333 	mov	a,r2
   0E04 12 10 75           2334 	lcall	__gptrput
   0E07 74 01              2335 	mov	a,#0x01
   0E09 2B                 2336 	add	a,r3
   0E0A F5 70              2337 	mov	_MrtuWrOne_PARM_5,a
   0E0C E4                 2338 	clr	a
   0E0D 3C                 2339 	addc	a,r4
   0E0E F5 71              2340 	mov	(_MrtuWrOne_PARM_5 + 1),a
   0E10 8D 72              2341 	mov	(_MrtuWrOne_PARM_5 + 2),r5
                    0885   2342 	C$modbus.c$242$1$1 ==.
                           2343 ;	modbus.c:242: *bf++=fce;
   0E12 AA 70              2344 	mov	r2,_MrtuWrOne_PARM_5
   0E14 AB 71              2345 	mov	r3,(_MrtuWrOne_PARM_5 + 1)
   0E16 AC 72              2346 	mov	r4,(_MrtuWrOne_PARM_5 + 2)
   0E18 8A 82              2347 	mov	dpl,r2
   0E1A 8B 83              2348 	mov	dph,r3
   0E1C 8C F0              2349 	mov	b,r4
   0E1E E5 6B              2350 	mov	a,_MrtuWrOne_PARM_2
   0E20 12 10 75           2351 	lcall	__gptrput
   0E23 74 01              2352 	mov	a,#0x01
   0E25 2A                 2353 	add	a,r2
   0E26 F5 70              2354 	mov	_MrtuWrOne_PARM_5,a
   0E28 E4                 2355 	clr	a
   0E29 3B                 2356 	addc	a,r3
   0E2A F5 71              2357 	mov	(_MrtuWrOne_PARM_5 + 1),a
   0E2C 8C 72              2358 	mov	(_MrtuWrOne_PARM_5 + 2),r4
                    08A1   2359 	C$modbus.c$243$1$1 ==.
                           2360 ;	modbus.c:243: *bf++=reg>>8;
   0E2E AA 70              2361 	mov	r2,_MrtuWrOne_PARM_5
   0E30 AB 71              2362 	mov	r3,(_MrtuWrOne_PARM_5 + 1)
   0E32 AC 72              2363 	mov	r4,(_MrtuWrOne_PARM_5 + 2)
   0E34 AD 6D              2364 	mov	r5,(_MrtuWrOne_PARM_3 + 1)
   0E36 8A 82              2365 	mov	dpl,r2
   0E38 8B 83              2366 	mov	dph,r3
   0E3A 8C F0              2367 	mov	b,r4
   0E3C ED                 2368 	mov	a,r5
   0E3D 12 10 75           2369 	lcall	__gptrput
   0E40 74 01              2370 	mov	a,#0x01
   0E42 2A                 2371 	add	a,r2
   0E43 F5 70              2372 	mov	_MrtuWrOne_PARM_5,a
   0E45 E4                 2373 	clr	a
   0E46 3B                 2374 	addc	a,r3
   0E47 F5 71              2375 	mov	(_MrtuWrOne_PARM_5 + 1),a
   0E49 8C 72              2376 	mov	(_MrtuWrOne_PARM_5 + 2),r4
                    08BE   2377 	C$modbus.c$244$1$1 ==.
                           2378 ;	modbus.c:244: *bf++=reg;
   0E4B AA 70              2379 	mov	r2,_MrtuWrOne_PARM_5
   0E4D AB 71              2380 	mov	r3,(_MrtuWrOne_PARM_5 + 1)
   0E4F AC 72              2381 	mov	r4,(_MrtuWrOne_PARM_5 + 2)
   0E51 AD 6C              2382 	mov	r5,_MrtuWrOne_PARM_3
   0E53 8A 82              2383 	mov	dpl,r2
   0E55 8B 83              2384 	mov	dph,r3
   0E57 8C F0              2385 	mov	b,r4
   0E59 ED                 2386 	mov	a,r5
   0E5A 12 10 75           2387 	lcall	__gptrput
   0E5D 74 01              2388 	mov	a,#0x01
   0E5F 2A                 2389 	add	a,r2
   0E60 F5 70              2390 	mov	_MrtuWrOne_PARM_5,a
   0E62 E4                 2391 	clr	a
   0E63 3B                 2392 	addc	a,r3
   0E64 F5 71              2393 	mov	(_MrtuWrOne_PARM_5 + 1),a
   0E66 8C 72              2394 	mov	(_MrtuWrOne_PARM_5 + 2),r4
                    08DB   2395 	C$modbus.c$245$1$1 ==.
                           2396 ;	modbus.c:245: *bf++=val>>8;
   0E68 AA 70              2397 	mov	r2,_MrtuWrOne_PARM_5
   0E6A AB 71              2398 	mov	r3,(_MrtuWrOne_PARM_5 + 1)
   0E6C AC 72              2399 	mov	r4,(_MrtuWrOne_PARM_5 + 2)
   0E6E AD 6F              2400 	mov	r5,(_MrtuWrOne_PARM_4 + 1)
   0E70 8A 82              2401 	mov	dpl,r2
   0E72 8B 83              2402 	mov	dph,r3
   0E74 8C F0              2403 	mov	b,r4
   0E76 ED                 2404 	mov	a,r5
   0E77 12 10 75           2405 	lcall	__gptrput
   0E7A 74 01              2406 	mov	a,#0x01
   0E7C 2A                 2407 	add	a,r2
   0E7D F5 70              2408 	mov	_MrtuWrOne_PARM_5,a
   0E7F E4                 2409 	clr	a
   0E80 3B                 2410 	addc	a,r3
   0E81 F5 71              2411 	mov	(_MrtuWrOne_PARM_5 + 1),a
   0E83 8C 72              2412 	mov	(_MrtuWrOne_PARM_5 + 2),r4
                    08F8   2413 	C$modbus.c$246$1$1 ==.
                           2414 ;	modbus.c:246: *bf++=val;
   0E85 AA 70              2415 	mov	r2,_MrtuWrOne_PARM_5
   0E87 AB 71              2416 	mov	r3,(_MrtuWrOne_PARM_5 + 1)
   0E89 AC 72              2417 	mov	r4,(_MrtuWrOne_PARM_5 + 2)
   0E8B AD 6E              2418 	mov	r5,_MrtuWrOne_PARM_4
   0E8D 8A 82              2419 	mov	dpl,r2
   0E8F 8B 83              2420 	mov	dph,r3
   0E91 8C F0              2421 	mov	b,r4
   0E93 ED                 2422 	mov	a,r5
   0E94 12 10 75           2423 	lcall	__gptrput
                    090A   2424 	C$modbus.c$247$1$1 ==.
                           2425 ;	modbus.c:247: return 6;
   0E97 75 82 06           2426 	mov	dpl,#0x06
                    090D   2427 	C$modbus.c$248$1$1 ==.
                    090D   2428 	XG$MrtuWrOne$0$0 ==.
   0E9A 22                 2429 	ret
                           2430 ;------------------------------------------------------------
                           2431 ;Allocation info for local variables in function 'MrtuRd'
                           2432 ;------------------------------------------------------------
                           2433 ;fce                       Allocated with name '_MrtuRd_PARM_2'
                           2434 ;reg                       Allocated with name '_MrtuRd_PARM_3'
                           2435 ;nbr                       Allocated with name '_MrtuRd_PARM_4'
                           2436 ;bf                        Allocated with name '_MrtuRd_PARM_5'
                           2437 ;adr                       Allocated to registers r2 
                           2438 ;------------------------------------------------------------
                    090E   2439 	G$MrtuRd$0$0 ==.
                    090E   2440 	C$modbus.c$250$1$1 ==.
                           2441 ;	modbus.c:250: byte MrtuRd(byte adr,byte fce,word reg,word nbr,byte *bf)
                           2442 ;	-----------------------------------------
                           2443 ;	 function MrtuRd
                           2444 ;	-----------------------------------------
   0E9B                    2445 _MrtuRd:
   0E9B AA 82              2446 	mov	r2,dpl
                    0910   2447 	C$modbus.c$252$1$1 ==.
                           2448 ;	modbus.c:252: *bf++=adr;
   0E9D AB 70              2449 	mov	r3,_MrtuRd_PARM_5
   0E9F AC 71              2450 	mov	r4,(_MrtuRd_PARM_5 + 1)
   0EA1 AD 72              2451 	mov	r5,(_MrtuRd_PARM_5 + 2)
   0EA3 8B 82              2452 	mov	dpl,r3
   0EA5 8C 83              2453 	mov	dph,r4
   0EA7 8D F0              2454 	mov	b,r5
   0EA9 EA                 2455 	mov	a,r2
   0EAA 12 10 75           2456 	lcall	__gptrput
   0EAD 74 01              2457 	mov	a,#0x01
   0EAF 2B                 2458 	add	a,r3
   0EB0 F5 70              2459 	mov	_MrtuRd_PARM_5,a
   0EB2 E4                 2460 	clr	a
   0EB3 3C                 2461 	addc	a,r4
   0EB4 F5 71              2462 	mov	(_MrtuRd_PARM_5 + 1),a
   0EB6 8D 72              2463 	mov	(_MrtuRd_PARM_5 + 2),r5
                    092B   2464 	C$modbus.c$253$1$1 ==.
                           2465 ;	modbus.c:253: *bf++=fce;
   0EB8 AA 70              2466 	mov	r2,_MrtuRd_PARM_5
   0EBA AB 71              2467 	mov	r3,(_MrtuRd_PARM_5 + 1)
   0EBC AC 72              2468 	mov	r4,(_MrtuRd_PARM_5 + 2)
   0EBE 8A 82              2469 	mov	dpl,r2
   0EC0 8B 83              2470 	mov	dph,r3
   0EC2 8C F0              2471 	mov	b,r4
   0EC4 E5 6B              2472 	mov	a,_MrtuRd_PARM_2
   0EC6 12 10 75           2473 	lcall	__gptrput
   0EC9 74 01              2474 	mov	a,#0x01
   0ECB 2A                 2475 	add	a,r2
   0ECC F5 70              2476 	mov	_MrtuRd_PARM_5,a
   0ECE E4                 2477 	clr	a
   0ECF 3B                 2478 	addc	a,r3
   0ED0 F5 71              2479 	mov	(_MrtuRd_PARM_5 + 1),a
   0ED2 8C 72              2480 	mov	(_MrtuRd_PARM_5 + 2),r4
                    0947   2481 	C$modbus.c$254$1$1 ==.
                           2482 ;	modbus.c:254: *bf++=reg>>8;
   0ED4 AA 70              2483 	mov	r2,_MrtuRd_PARM_5
   0ED6 AB 71              2484 	mov	r3,(_MrtuRd_PARM_5 + 1)
   0ED8 AC 72              2485 	mov	r4,(_MrtuRd_PARM_5 + 2)
   0EDA AD 6D              2486 	mov	r5,(_MrtuRd_PARM_3 + 1)
   0EDC 8A 82              2487 	mov	dpl,r2
   0EDE 8B 83              2488 	mov	dph,r3
   0EE0 8C F0              2489 	mov	b,r4
   0EE2 ED                 2490 	mov	a,r5
   0EE3 12 10 75           2491 	lcall	__gptrput
   0EE6 74 01              2492 	mov	a,#0x01
   0EE8 2A                 2493 	add	a,r2
   0EE9 F5 70              2494 	mov	_MrtuRd_PARM_5,a
   0EEB E4                 2495 	clr	a
   0EEC 3B                 2496 	addc	a,r3
   0EED F5 71              2497 	mov	(_MrtuRd_PARM_5 + 1),a
   0EEF 8C 72              2498 	mov	(_MrtuRd_PARM_5 + 2),r4
                    0964   2499 	C$modbus.c$255$1$1 ==.
                           2500 ;	modbus.c:255: *bf++=reg;
   0EF1 AA 70              2501 	mov	r2,_MrtuRd_PARM_5
   0EF3 AB 71              2502 	mov	r3,(_MrtuRd_PARM_5 + 1)
   0EF5 AC 72              2503 	mov	r4,(_MrtuRd_PARM_5 + 2)
   0EF7 AD 6C              2504 	mov	r5,_MrtuRd_PARM_3
   0EF9 8A 82              2505 	mov	dpl,r2
   0EFB 8B 83              2506 	mov	dph,r3
   0EFD 8C F0              2507 	mov	b,r4
   0EFF ED                 2508 	mov	a,r5
   0F00 12 10 75           2509 	lcall	__gptrput
   0F03 74 01              2510 	mov	a,#0x01
   0F05 2A                 2511 	add	a,r2
   0F06 F5 70              2512 	mov	_MrtuRd_PARM_5,a
   0F08 E4                 2513 	clr	a
   0F09 3B                 2514 	addc	a,r3
   0F0A F5 71              2515 	mov	(_MrtuRd_PARM_5 + 1),a
   0F0C 8C 72              2516 	mov	(_MrtuRd_PARM_5 + 2),r4
                    0981   2517 	C$modbus.c$256$1$1 ==.
                           2518 ;	modbus.c:256: *bf++=nbr>>8;
   0F0E AA 70              2519 	mov	r2,_MrtuRd_PARM_5
   0F10 AB 71              2520 	mov	r3,(_MrtuRd_PARM_5 + 1)
   0F12 AC 72              2521 	mov	r4,(_MrtuRd_PARM_5 + 2)
   0F14 AD 6F              2522 	mov	r5,(_MrtuRd_PARM_4 + 1)
   0F16 8A 82              2523 	mov	dpl,r2
   0F18 8B 83              2524 	mov	dph,r3
   0F1A 8C F0              2525 	mov	b,r4
   0F1C ED                 2526 	mov	a,r5
   0F1D 12 10 75           2527 	lcall	__gptrput
   0F20 74 01              2528 	mov	a,#0x01
   0F22 2A                 2529 	add	a,r2
   0F23 F5 70              2530 	mov	_MrtuRd_PARM_5,a
   0F25 E4                 2531 	clr	a
   0F26 3B                 2532 	addc	a,r3
   0F27 F5 71              2533 	mov	(_MrtuRd_PARM_5 + 1),a
   0F29 8C 72              2534 	mov	(_MrtuRd_PARM_5 + 2),r4
                    099E   2535 	C$modbus.c$257$1$1 ==.
                           2536 ;	modbus.c:257: *bf++=nbr;
   0F2B AA 70              2537 	mov	r2,_MrtuRd_PARM_5
   0F2D AB 71              2538 	mov	r3,(_MrtuRd_PARM_5 + 1)
   0F2F AC 72              2539 	mov	r4,(_MrtuRd_PARM_5 + 2)
   0F31 AD 6E              2540 	mov	r5,_MrtuRd_PARM_4
   0F33 8A 82              2541 	mov	dpl,r2
   0F35 8B 83              2542 	mov	dph,r3
   0F37 8C F0              2543 	mov	b,r4
   0F39 ED                 2544 	mov	a,r5
   0F3A 12 10 75           2545 	lcall	__gptrput
                    09B0   2546 	C$modbus.c$258$1$1 ==.
                           2547 ;	modbus.c:258: return 6;
   0F3D 75 82 06           2548 	mov	dpl,#0x06
                    09B3   2549 	C$modbus.c$259$1$1 ==.
                    09B3   2550 	XG$MrtuRd$0$0 ==.
   0F40 22                 2551 	ret
                           2552 ;------------------------------------------------------------
                           2553 ;Allocation info for local variables in function 'MrtuWr'
                           2554 ;------------------------------------------------------------
                           2555 ;fce                       Allocated with name '_MrtuWr_PARM_2'
                           2556 ;reg                       Allocated with name '_MrtuWr_PARM_3'
                           2557 ;nbr                       Allocated with name '_MrtuWr_PARM_4'
                           2558 ;vals                      Allocated with name '_MrtuWr_PARM_5'
                           2559 ;bf                        Allocated with name '_MrtuWr_PARM_6'
                           2560 ;adr                       Allocated to registers r2 
                           2561 ;n                         Allocated to registers r1 
                           2562 ;bytes                     Allocated with name '_MrtuWr_bytes_1_1'
                           2563 ;------------------------------------------------------------
                    09B4   2564 	G$MrtuWr$0$0 ==.
                    09B4   2565 	C$modbus.c$261$1$1 ==.
                           2566 ;	modbus.c:261: byte MrtuWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf)
                           2567 ;	-----------------------------------------
                           2568 ;	 function MrtuWr
                           2569 ;	-----------------------------------------
   0F41                    2570 _MrtuWr:
   0F41 AA 82              2571 	mov	r2,dpl
                    09B6   2572 	C$modbus.c$265$1$1 ==.
                           2573 ;	modbus.c:265: *bf++=adr;
   0F43 AB 73              2574 	mov	r3,_MrtuWr_PARM_6
   0F45 AC 74              2575 	mov	r4,(_MrtuWr_PARM_6 + 1)
   0F47 AD 75              2576 	mov	r5,(_MrtuWr_PARM_6 + 2)
   0F49 8B 82              2577 	mov	dpl,r3
   0F4B 8C 83              2578 	mov	dph,r4
   0F4D 8D F0              2579 	mov	b,r5
   0F4F EA                 2580 	mov	a,r2
   0F50 12 10 75           2581 	lcall	__gptrput
   0F53 74 01              2582 	mov	a,#0x01
   0F55 2B                 2583 	add	a,r3
   0F56 F5 73              2584 	mov	_MrtuWr_PARM_6,a
   0F58 E4                 2585 	clr	a
   0F59 3C                 2586 	addc	a,r4
   0F5A F5 74              2587 	mov	(_MrtuWr_PARM_6 + 1),a
   0F5C 8D 75              2588 	mov	(_MrtuWr_PARM_6 + 2),r5
                    09D1   2589 	C$modbus.c$266$1$1 ==.
                           2590 ;	modbus.c:266: *bf++=fce;
   0F5E AA 73              2591 	mov	r2,_MrtuWr_PARM_6
   0F60 AB 74              2592 	mov	r3,(_MrtuWr_PARM_6 + 1)
   0F62 AC 75              2593 	mov	r4,(_MrtuWr_PARM_6 + 2)
   0F64 8A 82              2594 	mov	dpl,r2
   0F66 8B 83              2595 	mov	dph,r3
   0F68 8C F0              2596 	mov	b,r4
   0F6A E5 6B              2597 	mov	a,_MrtuWr_PARM_2
   0F6C 12 10 75           2598 	lcall	__gptrput
   0F6F 74 01              2599 	mov	a,#0x01
   0F71 2A                 2600 	add	a,r2
   0F72 F5 73              2601 	mov	_MrtuWr_PARM_6,a
   0F74 E4                 2602 	clr	a
   0F75 3B                 2603 	addc	a,r3
   0F76 F5 74              2604 	mov	(_MrtuWr_PARM_6 + 1),a
   0F78 8C 75              2605 	mov	(_MrtuWr_PARM_6 + 2),r4
                    09ED   2606 	C$modbus.c$267$1$1 ==.
                           2607 ;	modbus.c:267: *bf++=reg>>8;
   0F7A AA 73              2608 	mov	r2,_MrtuWr_PARM_6
   0F7C AB 74              2609 	mov	r3,(_MrtuWr_PARM_6 + 1)
   0F7E AC 75              2610 	mov	r4,(_MrtuWr_PARM_6 + 2)
   0F80 AD 6D              2611 	mov	r5,(_MrtuWr_PARM_3 + 1)
   0F82 8A 82              2612 	mov	dpl,r2
   0F84 8B 83              2613 	mov	dph,r3
   0F86 8C F0              2614 	mov	b,r4
   0F88 ED                 2615 	mov	a,r5
   0F89 12 10 75           2616 	lcall	__gptrput
   0F8C 74 01              2617 	mov	a,#0x01
   0F8E 2A                 2618 	add	a,r2
   0F8F F5 73              2619 	mov	_MrtuWr_PARM_6,a
   0F91 E4                 2620 	clr	a
   0F92 3B                 2621 	addc	a,r3
   0F93 F5 74              2622 	mov	(_MrtuWr_PARM_6 + 1),a
   0F95 8C 75              2623 	mov	(_MrtuWr_PARM_6 + 2),r4
                    0A0A   2624 	C$modbus.c$268$1$1 ==.
                           2625 ;	modbus.c:268: *bf++=reg;
   0F97 AA 73              2626 	mov	r2,_MrtuWr_PARM_6
   0F99 AB 74              2627 	mov	r3,(_MrtuWr_PARM_6 + 1)
   0F9B AC 75              2628 	mov	r4,(_MrtuWr_PARM_6 + 2)
   0F9D AD 6C              2629 	mov	r5,_MrtuWr_PARM_3
   0F9F 8A 82              2630 	mov	dpl,r2
   0FA1 8B 83              2631 	mov	dph,r3
   0FA3 8C F0              2632 	mov	b,r4
   0FA5 ED                 2633 	mov	a,r5
   0FA6 12 10 75           2634 	lcall	__gptrput
   0FA9 74 01              2635 	mov	a,#0x01
   0FAB 2A                 2636 	add	a,r2
   0FAC F5 73              2637 	mov	_MrtuWr_PARM_6,a
   0FAE E4                 2638 	clr	a
   0FAF 3B                 2639 	addc	a,r3
   0FB0 F5 74              2640 	mov	(_MrtuWr_PARM_6 + 1),a
   0FB2 8C 75              2641 	mov	(_MrtuWr_PARM_6 + 2),r4
                    0A27   2642 	C$modbus.c$269$1$1 ==.
                           2643 ;	modbus.c:269: *bf++=nbr>>8;
   0FB4 AA 73              2644 	mov	r2,_MrtuWr_PARM_6
   0FB6 AB 74              2645 	mov	r3,(_MrtuWr_PARM_6 + 1)
   0FB8 AC 75              2646 	mov	r4,(_MrtuWr_PARM_6 + 2)
   0FBA AD 6F              2647 	mov	r5,(_MrtuWr_PARM_4 + 1)
   0FBC 8A 82              2648 	mov	dpl,r2
   0FBE 8B 83              2649 	mov	dph,r3
   0FC0 8C F0              2650 	mov	b,r4
   0FC2 ED                 2651 	mov	a,r5
   0FC3 12 10 75           2652 	lcall	__gptrput
   0FC6 74 01              2653 	mov	a,#0x01
   0FC8 2A                 2654 	add	a,r2
   0FC9 F5 73              2655 	mov	_MrtuWr_PARM_6,a
   0FCB E4                 2656 	clr	a
   0FCC 3B                 2657 	addc	a,r3
   0FCD F5 74              2658 	mov	(_MrtuWr_PARM_6 + 1),a
   0FCF 8C 75              2659 	mov	(_MrtuWr_PARM_6 + 2),r4
                    0A44   2660 	C$modbus.c$270$1$1 ==.
                           2661 ;	modbus.c:270: *bf++=nbr;
   0FD1 AA 73              2662 	mov	r2,_MrtuWr_PARM_6
   0FD3 AB 74              2663 	mov	r3,(_MrtuWr_PARM_6 + 1)
   0FD5 AC 75              2664 	mov	r4,(_MrtuWr_PARM_6 + 2)
   0FD7 AD 6E              2665 	mov	r5,_MrtuWr_PARM_4
   0FD9 8A 82              2666 	mov	dpl,r2
   0FDB 8B 83              2667 	mov	dph,r3
   0FDD 8C F0              2668 	mov	b,r4
   0FDF ED                 2669 	mov	a,r5
   0FE0 12 10 75           2670 	lcall	__gptrput
   0FE3 74 01              2671 	mov	a,#0x01
   0FE5 2A                 2672 	add	a,r2
   0FE6 F5 73              2673 	mov	_MrtuWr_PARM_6,a
   0FE8 E4                 2674 	clr	a
   0FE9 3B                 2675 	addc	a,r3
   0FEA F5 74              2676 	mov	(_MrtuWr_PARM_6 + 1),a
   0FEC 8C 75              2677 	mov	(_MrtuWr_PARM_6 + 2),r4
                    0A61   2678 	C$modbus.c$271$1$1 ==.
                           2679 ;	modbus.c:271: switch(fce)
   0FEE 74 0F              2680 	mov	a,#0x0F
   0FF0 B5 6B 02           2681 	cjne	a,_MrtuWr_PARM_2,00115$
   0FF3 80 0B              2682 	sjmp	00102$
   0FF5                    2683 00115$:
   0FF5 74 10              2684 	mov	a,#0x10
   0FF7 B5 6B 21           2685 	cjne	a,_MrtuWr_PARM_2,00103$
                    0A6D   2686 	C$modbus.c$273$2$2 ==.
                           2687 ;	modbus.c:273: case 16: bytes=2*nbr;break;
   0FFA ED                 2688 	mov	a,r5
   0FFB 2D                 2689 	add	a,r5
   0FFC F5 76              2690 	mov	_MrtuWr_bytes_1_1,a
                    0A71   2691 	C$modbus.c$274$2$2 ==.
                           2692 ;	modbus.c:274: case 15: bytes= (nbr+7)/8;break;
   0FFE 80 1E              2693 	sjmp	00104$
   1000                    2694 00102$:
   1000 74 07              2695 	mov	a,#0x07
   1002 25 6E              2696 	add	a,_MrtuWr_PARM_4
   1004 FB                 2697 	mov	r3,a
   1005 E4                 2698 	clr	a
   1006 35 6F              2699 	addc	a,(_MrtuWr_PARM_4 + 1)
   1008 C4                 2700 	swap	a
   1009 23                 2701 	rl	a
   100A CB                 2702 	xch	a,r3
   100B C4                 2703 	swap	a
   100C 23                 2704 	rl	a
   100D 54 1F              2705 	anl	a,#0x1f
   100F 6B                 2706 	xrl	a,r3
   1010 CB                 2707 	xch	a,r3
   1011 54 1F              2708 	anl	a,#0x1f
   1013 CB                 2709 	xch	a,r3
   1014 6B                 2710 	xrl	a,r3
   1015 CB                 2711 	xch	a,r3
   1016 FC                 2712 	mov	r4,a
   1017 8B 76              2713 	mov	_MrtuWr_bytes_1_1,r3
                    0A8C   2714 	C$modbus.c$275$2$2 ==.
                           2715 ;	modbus.c:275: default: bytes=0;
   1019 80 03              2716 	sjmp	00104$
   101B                    2717 00103$:
   101B 75 76 00           2718 	mov	_MrtuWr_bytes_1_1,#0x00
                    0A91   2719 	C$modbus.c$276$1$1 ==.
                           2720 ;	modbus.c:276: }
   101E                    2721 00104$:
                    0A91   2722 	C$modbus.c$277$1$1 ==.
                           2723 ;	modbus.c:277: *bf++=n=bytes;
   101E AB 73              2724 	mov	r3,_MrtuWr_PARM_6
   1020 AC 74              2725 	mov	r4,(_MrtuWr_PARM_6 + 1)
   1022 AD 75              2726 	mov	r5,(_MrtuWr_PARM_6 + 2)
   1024 8B 82              2727 	mov	dpl,r3
   1026 8C 83              2728 	mov	dph,r4
   1028 8D F0              2729 	mov	b,r5
   102A E5 76              2730 	mov	a,_MrtuWr_bytes_1_1
   102C 12 10 75           2731 	lcall	__gptrput
   102F 74 01              2732 	mov	a,#0x01
   1031 2B                 2733 	add	a,r3
   1032 F5 73              2734 	mov	_MrtuWr_PARM_6,a
   1034 E4                 2735 	clr	a
   1035 3C                 2736 	addc	a,r4
   1036 F5 74              2737 	mov	(_MrtuWr_PARM_6 + 1),a
   1038 8D 75              2738 	mov	(_MrtuWr_PARM_6 + 2),r5
                    0AAD   2739 	C$modbus.c$278$1$1 ==.
                           2740 ;	modbus.c:278: while(n--) *bf++= *vals++;
   103A AB 70              2741 	mov	r3,_MrtuWr_PARM_5
   103C AC 71              2742 	mov	r4,(_MrtuWr_PARM_5 + 1)
   103E AD 72              2743 	mov	r5,(_MrtuWr_PARM_5 + 2)
   1040 AE 73              2744 	mov	r6,_MrtuWr_PARM_6
   1042 AF 74              2745 	mov	r7,(_MrtuWr_PARM_6 + 1)
   1044 A8 75              2746 	mov	r0,(_MrtuWr_PARM_6 + 2)
   1046 A9 76              2747 	mov	r1,_MrtuWr_bytes_1_1
   1048                    2748 00105$:
   1048 89 02              2749 	mov	ar2,r1
   104A 19                 2750 	dec	r1
   104B EA                 2751 	mov	a,r2
   104C 60 20              2752 	jz	00107$
   104E 8B 82              2753 	mov	dpl,r3
   1050 8C 83              2754 	mov	dph,r4
   1052 8D F0              2755 	mov	b,r5
   1054 12 16 82           2756 	lcall	__gptrget
   1057 FA                 2757 	mov	r2,a
   1058 A3                 2758 	inc	dptr
   1059 AB 82              2759 	mov	r3,dpl
   105B AC 83              2760 	mov	r4,dph
   105D 8E 82              2761 	mov	dpl,r6
   105F 8F 83              2762 	mov	dph,r7
   1061 88 F0              2763 	mov	b,r0
   1063 EA                 2764 	mov	a,r2
   1064 12 10 75           2765 	lcall	__gptrput
   1067 A3                 2766 	inc	dptr
   1068 AE 82              2767 	mov	r6,dpl
   106A AF 83              2768 	mov	r7,dph
   106C 80 DA              2769 	sjmp	00105$
   106E                    2770 00107$:
                    0AE1   2771 	C$modbus.c$279$1$1 ==.
                           2772 ;	modbus.c:279: return bytes+7;
   106E 74 07              2773 	mov	a,#0x07
   1070 25 76              2774 	add	a,_MrtuWr_bytes_1_1
   1072 F5 82              2775 	mov	dpl,a
                    0AE7   2776 	C$modbus.c$280$1$1 ==.
                    0AE7   2777 	XG$MrtuWr$0$0 ==.
   1074 22                 2778 	ret
                           2779 	.area CSEG    (CODE)
                           2780 	.area CONST   (CODE)
                    0000   2781 G$tabCRCHi$0$0 == .
   16C0                    2782 _tabCRCHi:
   16C0 00                 2783 	.db #0x00	; 0
   16C1 C1                 2784 	.db #0xC1	; 193
   16C2 81                 2785 	.db #0x81	; 129
   16C3 40                 2786 	.db #0x40	; 64
   16C4 01                 2787 	.db #0x01	; 1
   16C5 C0                 2788 	.db #0xC0	; 192
   16C6 80                 2789 	.db #0x80	; 128
   16C7 41                 2790 	.db #0x41	; 65	A
   16C8 01                 2791 	.db #0x01	; 1
   16C9 C0                 2792 	.db #0xC0	; 192
   16CA 80                 2793 	.db #0x80	; 128
   16CB 41                 2794 	.db #0x41	; 65	A
   16CC 00                 2795 	.db #0x00	; 0
   16CD C1                 2796 	.db #0xC1	; 193
   16CE 81                 2797 	.db #0x81	; 129
   16CF 40                 2798 	.db #0x40	; 64
   16D0 01                 2799 	.db #0x01	; 1
   16D1 C0                 2800 	.db #0xC0	; 192
   16D2 80                 2801 	.db #0x80	; 128
   16D3 41                 2802 	.db #0x41	; 65	A
   16D4 00                 2803 	.db #0x00	; 0
   16D5 C1                 2804 	.db #0xC1	; 193
   16D6 81                 2805 	.db #0x81	; 129
   16D7 40                 2806 	.db #0x40	; 64
   16D8 00                 2807 	.db #0x00	; 0
   16D9 C1                 2808 	.db #0xC1	; 193
   16DA 81                 2809 	.db #0x81	; 129
   16DB 40                 2810 	.db #0x40	; 64
   16DC 01                 2811 	.db #0x01	; 1
   16DD C0                 2812 	.db #0xC0	; 192
   16DE 80                 2813 	.db #0x80	; 128
   16DF 41                 2814 	.db #0x41	; 65	A
   16E0 01                 2815 	.db #0x01	; 1
   16E1 C0                 2816 	.db #0xC0	; 192
   16E2 80                 2817 	.db #0x80	; 128
   16E3 41                 2818 	.db #0x41	; 65	A
   16E4 00                 2819 	.db #0x00	; 0
   16E5 C1                 2820 	.db #0xC1	; 193
   16E6 81                 2821 	.db #0x81	; 129
   16E7 40                 2822 	.db #0x40	; 64
   16E8 00                 2823 	.db #0x00	; 0
   16E9 C1                 2824 	.db #0xC1	; 193
   16EA 81                 2825 	.db #0x81	; 129
   16EB 40                 2826 	.db #0x40	; 64
   16EC 01                 2827 	.db #0x01	; 1
   16ED C0                 2828 	.db #0xC0	; 192
   16EE 80                 2829 	.db #0x80	; 128
   16EF 41                 2830 	.db #0x41	; 65	A
   16F0 00                 2831 	.db #0x00	; 0
   16F1 C1                 2832 	.db #0xC1	; 193
   16F2 81                 2833 	.db #0x81	; 129
   16F3 40                 2834 	.db #0x40	; 64
   16F4 01                 2835 	.db #0x01	; 1
   16F5 C0                 2836 	.db #0xC0	; 192
   16F6 80                 2837 	.db #0x80	; 128
   16F7 41                 2838 	.db #0x41	; 65	A
   16F8 01                 2839 	.db #0x01	; 1
   16F9 C0                 2840 	.db #0xC0	; 192
   16FA 80                 2841 	.db #0x80	; 128
   16FB 41                 2842 	.db #0x41	; 65	A
   16FC 00                 2843 	.db #0x00	; 0
   16FD C1                 2844 	.db #0xC1	; 193
   16FE 81                 2845 	.db #0x81	; 129
   16FF 40                 2846 	.db #0x40	; 64
   1700 01                 2847 	.db #0x01	; 1
   1701 C0                 2848 	.db #0xC0	; 192
   1702 80                 2849 	.db #0x80	; 128
   1703 41                 2850 	.db #0x41	; 65	A
   1704 00                 2851 	.db #0x00	; 0
   1705 C1                 2852 	.db #0xC1	; 193
   1706 81                 2853 	.db #0x81	; 129
   1707 40                 2854 	.db #0x40	; 64
   1708 00                 2855 	.db #0x00	; 0
   1709 C1                 2856 	.db #0xC1	; 193
   170A 81                 2857 	.db #0x81	; 129
   170B 40                 2858 	.db #0x40	; 64
   170C 01                 2859 	.db #0x01	; 1
   170D C0                 2860 	.db #0xC0	; 192
   170E 80                 2861 	.db #0x80	; 128
   170F 41                 2862 	.db #0x41	; 65	A
   1710 00                 2863 	.db #0x00	; 0
   1711 C1                 2864 	.db #0xC1	; 193
   1712 81                 2865 	.db #0x81	; 129
   1713 40                 2866 	.db #0x40	; 64
   1714 01                 2867 	.db #0x01	; 1
   1715 C0                 2868 	.db #0xC0	; 192
   1716 80                 2869 	.db #0x80	; 128
   1717 41                 2870 	.db #0x41	; 65	A
   1718 01                 2871 	.db #0x01	; 1
   1719 C0                 2872 	.db #0xC0	; 192
   171A 80                 2873 	.db #0x80	; 128
   171B 41                 2874 	.db #0x41	; 65	A
   171C 00                 2875 	.db #0x00	; 0
   171D C1                 2876 	.db #0xC1	; 193
   171E 81                 2877 	.db #0x81	; 129
   171F 40                 2878 	.db #0x40	; 64
   1720 00                 2879 	.db #0x00	; 0
   1721 C1                 2880 	.db #0xC1	; 193
   1722 81                 2881 	.db #0x81	; 129
   1723 40                 2882 	.db #0x40	; 64
   1724 01                 2883 	.db #0x01	; 1
   1725 C0                 2884 	.db #0xC0	; 192
   1726 80                 2885 	.db #0x80	; 128
   1727 41                 2886 	.db #0x41	; 65	A
   1728 01                 2887 	.db #0x01	; 1
   1729 C0                 2888 	.db #0xC0	; 192
   172A 80                 2889 	.db #0x80	; 128
   172B 41                 2890 	.db #0x41	; 65	A
   172C 00                 2891 	.db #0x00	; 0
   172D C1                 2892 	.db #0xC1	; 193
   172E 81                 2893 	.db #0x81	; 129
   172F 40                 2894 	.db #0x40	; 64
   1730 01                 2895 	.db #0x01	; 1
   1731 C0                 2896 	.db #0xC0	; 192
   1732 80                 2897 	.db #0x80	; 128
   1733 41                 2898 	.db #0x41	; 65	A
   1734 00                 2899 	.db #0x00	; 0
   1735 C1                 2900 	.db #0xC1	; 193
   1736 81                 2901 	.db #0x81	; 129
   1737 40                 2902 	.db #0x40	; 64
   1738 00                 2903 	.db #0x00	; 0
   1739 C1                 2904 	.db #0xC1	; 193
   173A 81                 2905 	.db #0x81	; 129
   173B 40                 2906 	.db #0x40	; 64
   173C 01                 2907 	.db #0x01	; 1
   173D C0                 2908 	.db #0xC0	; 192
   173E 80                 2909 	.db #0x80	; 128
   173F 41                 2910 	.db #0x41	; 65	A
   1740 01                 2911 	.db #0x01	; 1
   1741 C0                 2912 	.db #0xC0	; 192
   1742 80                 2913 	.db #0x80	; 128
   1743 41                 2914 	.db #0x41	; 65	A
   1744 00                 2915 	.db #0x00	; 0
   1745 C1                 2916 	.db #0xC1	; 193
   1746 81                 2917 	.db #0x81	; 129
   1747 40                 2918 	.db #0x40	; 64
   1748 00                 2919 	.db #0x00	; 0
   1749 C1                 2920 	.db #0xC1	; 193
   174A 81                 2921 	.db #0x81	; 129
   174B 40                 2922 	.db #0x40	; 64
   174C 01                 2923 	.db #0x01	; 1
   174D C0                 2924 	.db #0xC0	; 192
   174E 80                 2925 	.db #0x80	; 128
   174F 41                 2926 	.db #0x41	; 65	A
   1750 00                 2927 	.db #0x00	; 0
   1751 C1                 2928 	.db #0xC1	; 193
   1752 81                 2929 	.db #0x81	; 129
   1753 40                 2930 	.db #0x40	; 64
   1754 01                 2931 	.db #0x01	; 1
   1755 C0                 2932 	.db #0xC0	; 192
   1756 80                 2933 	.db #0x80	; 128
   1757 41                 2934 	.db #0x41	; 65	A
   1758 01                 2935 	.db #0x01	; 1
   1759 C0                 2936 	.db #0xC0	; 192
   175A 80                 2937 	.db #0x80	; 128
   175B 41                 2938 	.db #0x41	; 65	A
   175C 00                 2939 	.db #0x00	; 0
   175D C1                 2940 	.db #0xC1	; 193
   175E 81                 2941 	.db #0x81	; 129
   175F 40                 2942 	.db #0x40	; 64
   1760 00                 2943 	.db #0x00	; 0
   1761 C1                 2944 	.db #0xC1	; 193
   1762 81                 2945 	.db #0x81	; 129
   1763 40                 2946 	.db #0x40	; 64
   1764 01                 2947 	.db #0x01	; 1
   1765 C0                 2948 	.db #0xC0	; 192
   1766 80                 2949 	.db #0x80	; 128
   1767 41                 2950 	.db #0x41	; 65	A
   1768 01                 2951 	.db #0x01	; 1
   1769 C0                 2952 	.db #0xC0	; 192
   176A 80                 2953 	.db #0x80	; 128
   176B 41                 2954 	.db #0x41	; 65	A
   176C 00                 2955 	.db #0x00	; 0
   176D C1                 2956 	.db #0xC1	; 193
   176E 81                 2957 	.db #0x81	; 129
   176F 40                 2958 	.db #0x40	; 64
   1770 01                 2959 	.db #0x01	; 1
   1771 C0                 2960 	.db #0xC0	; 192
   1772 80                 2961 	.db #0x80	; 128
   1773 41                 2962 	.db #0x41	; 65	A
   1774 00                 2963 	.db #0x00	; 0
   1775 C1                 2964 	.db #0xC1	; 193
   1776 81                 2965 	.db #0x81	; 129
   1777 40                 2966 	.db #0x40	; 64
   1778 00                 2967 	.db #0x00	; 0
   1779 C1                 2968 	.db #0xC1	; 193
   177A 81                 2969 	.db #0x81	; 129
   177B 40                 2970 	.db #0x40	; 64
   177C 01                 2971 	.db #0x01	; 1
   177D C0                 2972 	.db #0xC0	; 192
   177E 80                 2973 	.db #0x80	; 128
   177F 41                 2974 	.db #0x41	; 65	A
   1780 00                 2975 	.db #0x00	; 0
   1781 C1                 2976 	.db #0xC1	; 193
   1782 81                 2977 	.db #0x81	; 129
   1783 40                 2978 	.db #0x40	; 64
   1784 01                 2979 	.db #0x01	; 1
   1785 C0                 2980 	.db #0xC0	; 192
   1786 80                 2981 	.db #0x80	; 128
   1787 41                 2982 	.db #0x41	; 65	A
   1788 01                 2983 	.db #0x01	; 1
   1789 C0                 2984 	.db #0xC0	; 192
   178A 80                 2985 	.db #0x80	; 128
   178B 41                 2986 	.db #0x41	; 65	A
   178C 00                 2987 	.db #0x00	; 0
   178D C1                 2988 	.db #0xC1	; 193
   178E 81                 2989 	.db #0x81	; 129
   178F 40                 2990 	.db #0x40	; 64
   1790 01                 2991 	.db #0x01	; 1
   1791 C0                 2992 	.db #0xC0	; 192
   1792 80                 2993 	.db #0x80	; 128
   1793 41                 2994 	.db #0x41	; 65	A
   1794 00                 2995 	.db #0x00	; 0
   1795 C1                 2996 	.db #0xC1	; 193
   1796 81                 2997 	.db #0x81	; 129
   1797 40                 2998 	.db #0x40	; 64
   1798 00                 2999 	.db #0x00	; 0
   1799 C1                 3000 	.db #0xC1	; 193
   179A 81                 3001 	.db #0x81	; 129
   179B 40                 3002 	.db #0x40	; 64
   179C 01                 3003 	.db #0x01	; 1
   179D C0                 3004 	.db #0xC0	; 192
   179E 80                 3005 	.db #0x80	; 128
   179F 41                 3006 	.db #0x41	; 65	A
   17A0 01                 3007 	.db #0x01	; 1
   17A1 C0                 3008 	.db #0xC0	; 192
   17A2 80                 3009 	.db #0x80	; 128
   17A3 41                 3010 	.db #0x41	; 65	A
   17A4 00                 3011 	.db #0x00	; 0
   17A5 C1                 3012 	.db #0xC1	; 193
   17A6 81                 3013 	.db #0x81	; 129
   17A7 40                 3014 	.db #0x40	; 64
   17A8 00                 3015 	.db #0x00	; 0
   17A9 C1                 3016 	.db #0xC1	; 193
   17AA 81                 3017 	.db #0x81	; 129
   17AB 40                 3018 	.db #0x40	; 64
   17AC 01                 3019 	.db #0x01	; 1
   17AD C0                 3020 	.db #0xC0	; 192
   17AE 80                 3021 	.db #0x80	; 128
   17AF 41                 3022 	.db #0x41	; 65	A
   17B0 00                 3023 	.db #0x00	; 0
   17B1 C1                 3024 	.db #0xC1	; 193
   17B2 81                 3025 	.db #0x81	; 129
   17B3 40                 3026 	.db #0x40	; 64
   17B4 01                 3027 	.db #0x01	; 1
   17B5 C0                 3028 	.db #0xC0	; 192
   17B6 80                 3029 	.db #0x80	; 128
   17B7 41                 3030 	.db #0x41	; 65	A
   17B8 01                 3031 	.db #0x01	; 1
   17B9 C0                 3032 	.db #0xC0	; 192
   17BA 80                 3033 	.db #0x80	; 128
   17BB 41                 3034 	.db #0x41	; 65	A
   17BC 00                 3035 	.db #0x00	; 0
   17BD C1                 3036 	.db #0xC1	; 193
   17BE 81                 3037 	.db #0x81	; 129
   17BF 40                 3038 	.db #0x40	; 64
                    0100   3039 G$tabCRCLo$0$0 == .
   17C0                    3040 _tabCRCLo:
   17C0 00                 3041 	.db #0x00	; 0
   17C1 C0                 3042 	.db #0xC0	; 192
   17C2 C1                 3043 	.db #0xC1	; 193
   17C3 01                 3044 	.db #0x01	; 1
   17C4 C3                 3045 	.db #0xC3	; 195
   17C5 03                 3046 	.db #0x03	; 3
   17C6 02                 3047 	.db #0x02	; 2
   17C7 C2                 3048 	.db #0xC2	; 194
   17C8 C6                 3049 	.db #0xC6	; 198
   17C9 06                 3050 	.db #0x06	; 6
   17CA 07                 3051 	.db #0x07	; 7
   17CB C7                 3052 	.db #0xC7	; 199
   17CC 05                 3053 	.db #0x05	; 5
   17CD C5                 3054 	.db #0xC5	; 197
   17CE C4                 3055 	.db #0xC4	; 196
   17CF 04                 3056 	.db #0x04	; 4
   17D0 CC                 3057 	.db #0xCC	; 204
   17D1 0C                 3058 	.db #0x0C	; 12
   17D2 0D                 3059 	.db #0x0D	; 13
   17D3 CD                 3060 	.db #0xCD	; 205
   17D4 0F                 3061 	.db #0x0F	; 15
   17D5 CF                 3062 	.db #0xCF	; 207
   17D6 CE                 3063 	.db #0xCE	; 206
   17D7 0E                 3064 	.db #0x0E	; 14
   17D8 0A                 3065 	.db #0x0A	; 10
   17D9 CA                 3066 	.db #0xCA	; 202
   17DA CB                 3067 	.db #0xCB	; 203
   17DB 0B                 3068 	.db #0x0B	; 11
   17DC C9                 3069 	.db #0xC9	; 201
   17DD 09                 3070 	.db #0x09	; 9
   17DE 08                 3071 	.db #0x08	; 8
   17DF C8                 3072 	.db #0xC8	; 200
   17E0 D8                 3073 	.db #0xD8	; 216
   17E1 18                 3074 	.db #0x18	; 24
   17E2 19                 3075 	.db #0x19	; 25
   17E3 D9                 3076 	.db #0xD9	; 217
   17E4 1B                 3077 	.db #0x1B	; 27
   17E5 DB                 3078 	.db #0xDB	; 219
   17E6 DA                 3079 	.db #0xDA	; 218
   17E7 1A                 3080 	.db #0x1A	; 26
   17E8 1E                 3081 	.db #0x1E	; 30
   17E9 DE                 3082 	.db #0xDE	; 222
   17EA DF                 3083 	.db #0xDF	; 223
   17EB 1F                 3084 	.db #0x1F	; 31
   17EC DD                 3085 	.db #0xDD	; 221
   17ED 1D                 3086 	.db #0x1D	; 29
   17EE 1C                 3087 	.db #0x1C	; 28
   17EF DC                 3088 	.db #0xDC	; 220
   17F0 14                 3089 	.db #0x14	; 20
   17F1 D4                 3090 	.db #0xD4	; 212
   17F2 D5                 3091 	.db #0xD5	; 213
   17F3 15                 3092 	.db #0x15	; 21
   17F4 D7                 3093 	.db #0xD7	; 215
   17F5 17                 3094 	.db #0x17	; 23
   17F6 16                 3095 	.db #0x16	; 22
   17F7 D6                 3096 	.db #0xD6	; 214
   17F8 D2                 3097 	.db #0xD2	; 210
   17F9 12                 3098 	.db #0x12	; 18
   17FA 13                 3099 	.db #0x13	; 19
   17FB D3                 3100 	.db #0xD3	; 211
   17FC 11                 3101 	.db #0x11	; 17
   17FD D1                 3102 	.db #0xD1	; 209
   17FE D0                 3103 	.db #0xD0	; 208
   17FF 10                 3104 	.db #0x10	; 16
   1800 F0                 3105 	.db #0xF0	; 240
   1801 30                 3106 	.db #0x30	; 48
   1802 31                 3107 	.db #0x31	; 49
   1803 F1                 3108 	.db #0xF1	; 241
   1804 33                 3109 	.db #0x33	; 51
   1805 F3                 3110 	.db #0xF3	; 243
   1806 F2                 3111 	.db #0xF2	; 242
   1807 32                 3112 	.db #0x32	; 50
   1808 36                 3113 	.db #0x36	; 54
   1809 F6                 3114 	.db #0xF6	; 246
   180A F7                 3115 	.db #0xF7	; 247
   180B 37                 3116 	.db #0x37	; 55
   180C F5                 3117 	.db #0xF5	; 245
   180D 35                 3118 	.db #0x35	; 53
   180E 34                 3119 	.db #0x34	; 52
   180F F4                 3120 	.db #0xF4	; 244
   1810 3C                 3121 	.db #0x3C	; 60
   1811 FC                 3122 	.db #0xFC	; 252
   1812 FD                 3123 	.db #0xFD	; 253
   1813 3D                 3124 	.db #0x3D	; 61
   1814 FF                 3125 	.db #0xFF	; 255
   1815 3F                 3126 	.db #0x3F	; 63
   1816 3E                 3127 	.db #0x3E	; 62
   1817 FE                 3128 	.db #0xFE	; 254
   1818 FA                 3129 	.db #0xFA	; 250
   1819 3A                 3130 	.db #0x3A	; 58
   181A 3B                 3131 	.db #0x3B	; 59
   181B FB                 3132 	.db #0xFB	; 251
   181C 39                 3133 	.db #0x39	; 57
   181D F9                 3134 	.db #0xF9	; 249
   181E F8                 3135 	.db #0xF8	; 248
   181F 38                 3136 	.db #0x38	; 56
   1820 28                 3137 	.db #0x28	; 40
   1821 E8                 3138 	.db #0xE8	; 232
   1822 E9                 3139 	.db #0xE9	; 233
   1823 29                 3140 	.db #0x29	; 41
   1824 EB                 3141 	.db #0xEB	; 235
   1825 2B                 3142 	.db #0x2B	; 43
   1826 2A                 3143 	.db #0x2A	; 42
   1827 EA                 3144 	.db #0xEA	; 234
   1828 EE                 3145 	.db #0xEE	; 238
   1829 2E                 3146 	.db #0x2E	; 46
   182A 2F                 3147 	.db #0x2F	; 47
   182B EF                 3148 	.db #0xEF	; 239
   182C 2D                 3149 	.db #0x2D	; 45
   182D ED                 3150 	.db #0xED	; 237
   182E EC                 3151 	.db #0xEC	; 236
   182F 2C                 3152 	.db #0x2C	; 44
   1830 E4                 3153 	.db #0xE4	; 228
   1831 24                 3154 	.db #0x24	; 36
   1832 25                 3155 	.db #0x25	; 37
   1833 E5                 3156 	.db #0xE5	; 229
   1834 27                 3157 	.db #0x27	; 39
   1835 E7                 3158 	.db #0xE7	; 231
   1836 E6                 3159 	.db #0xE6	; 230
   1837 26                 3160 	.db #0x26	; 38
   1838 22                 3161 	.db #0x22	; 34
   1839 E2                 3162 	.db #0xE2	; 226
   183A E3                 3163 	.db #0xE3	; 227
   183B 23                 3164 	.db #0x23	; 35
   183C E1                 3165 	.db #0xE1	; 225
   183D 21                 3166 	.db #0x21	; 33
   183E 20                 3167 	.db #0x20	; 32
   183F E0                 3168 	.db #0xE0	; 224
   1840 A0                 3169 	.db #0xA0	; 160
   1841 60                 3170 	.db #0x60	; 96
   1842 61                 3171 	.db #0x61	; 97	a
   1843 A1                 3172 	.db #0xA1	; 161
   1844 63                 3173 	.db #0x63	; 99	c
   1845 A3                 3174 	.db #0xA3	; 163
   1846 A2                 3175 	.db #0xA2	; 162
   1847 62                 3176 	.db #0x62	; 98	b
   1848 66                 3177 	.db #0x66	; 102	f
   1849 A6                 3178 	.db #0xA6	; 166
   184A A7                 3179 	.db #0xA7	; 167
   184B 67                 3180 	.db #0x67	; 103	g
   184C A5                 3181 	.db #0xA5	; 165
   184D 65                 3182 	.db #0x65	; 101	e
   184E 64                 3183 	.db #0x64	; 100	d
   184F A4                 3184 	.db #0xA4	; 164
   1850 6C                 3185 	.db #0x6C	; 108	l
   1851 AC                 3186 	.db #0xAC	; 172
   1852 AD                 3187 	.db #0xAD	; 173
   1853 6D                 3188 	.db #0x6D	; 109	m
   1854 AF                 3189 	.db #0xAF	; 175
   1855 6F                 3190 	.db #0x6F	; 111	o
   1856 6E                 3191 	.db #0x6E	; 110	n
   1857 AE                 3192 	.db #0xAE	; 174
   1858 AA                 3193 	.db #0xAA	; 170
   1859 6A                 3194 	.db #0x6A	; 106	j
   185A 6B                 3195 	.db #0x6B	; 107	k
   185B AB                 3196 	.db #0xAB	; 171
   185C 69                 3197 	.db #0x69	; 105	i
   185D A9                 3198 	.db #0xA9	; 169
   185E A8                 3199 	.db #0xA8	; 168
   185F 68                 3200 	.db #0x68	; 104	h
   1860 78                 3201 	.db #0x78	; 120	x
   1861 B8                 3202 	.db #0xB8	; 184
   1862 B9                 3203 	.db #0xB9	; 185
   1863 79                 3204 	.db #0x79	; 121	y
   1864 BB                 3205 	.db #0xBB	; 187
   1865 7B                 3206 	.db #0x7B	; 123
   1866 7A                 3207 	.db #0x7A	; 122	z
   1867 BA                 3208 	.db #0xBA	; 186
   1868 BE                 3209 	.db #0xBE	; 190
   1869 7E                 3210 	.db #0x7E	; 126
   186A 7F                 3211 	.db #0x7F	; 127
   186B BF                 3212 	.db #0xBF	; 191
   186C 7D                 3213 	.db #0x7D	; 125
   186D BD                 3214 	.db #0xBD	; 189
   186E BC                 3215 	.db #0xBC	; 188
   186F 7C                 3216 	.db #0x7C	; 124
   1870 B4                 3217 	.db #0xB4	; 180
   1871 74                 3218 	.db #0x74	; 116	t
   1872 75                 3219 	.db #0x75	; 117	u
   1873 B5                 3220 	.db #0xB5	; 181
   1874 77                 3221 	.db #0x77	; 119	w
   1875 B7                 3222 	.db #0xB7	; 183
   1876 B6                 3223 	.db #0xB6	; 182
   1877 76                 3224 	.db #0x76	; 118	v
   1878 72                 3225 	.db #0x72	; 114	r
   1879 B2                 3226 	.db #0xB2	; 178
   187A B3                 3227 	.db #0xB3	; 179
   187B 73                 3228 	.db #0x73	; 115	s
   187C B1                 3229 	.db #0xB1	; 177
   187D 71                 3230 	.db #0x71	; 113	q
   187E 70                 3231 	.db #0x70	; 112	p
   187F B0                 3232 	.db #0xB0	; 176
   1880 50                 3233 	.db #0x50	; 80	P
   1881 90                 3234 	.db #0x90	; 144
   1882 91                 3235 	.db #0x91	; 145
   1883 51                 3236 	.db #0x51	; 81	Q
   1884 93                 3237 	.db #0x93	; 147
   1885 53                 3238 	.db #0x53	; 83	S
   1886 52                 3239 	.db #0x52	; 82	R
   1887 92                 3240 	.db #0x92	; 146
   1888 96                 3241 	.db #0x96	; 150
   1889 56                 3242 	.db #0x56	; 86	V
   188A 57                 3243 	.db #0x57	; 87	W
   188B 97                 3244 	.db #0x97	; 151
   188C 55                 3245 	.db #0x55	; 85	U
   188D 95                 3246 	.db #0x95	; 149
   188E 94                 3247 	.db #0x94	; 148
   188F 54                 3248 	.db #0x54	; 84	T
   1890 9C                 3249 	.db #0x9C	; 156
   1891 5C                 3250 	.db #0x5C	; 92
   1892 5D                 3251 	.db #0x5D	; 93
   1893 9D                 3252 	.db #0x9D	; 157
   1894 5F                 3253 	.db #0x5F	; 95
   1895 9F                 3254 	.db #0x9F	; 159
   1896 9E                 3255 	.db #0x9E	; 158
   1897 5E                 3256 	.db #0x5E	; 94
   1898 5A                 3257 	.db #0x5A	; 90	Z
   1899 9A                 3258 	.db #0x9A	; 154
   189A 9B                 3259 	.db #0x9B	; 155
   189B 5B                 3260 	.db #0x5B	; 91
   189C 99                 3261 	.db #0x99	; 153
   189D 59                 3262 	.db #0x59	; 89	Y
   189E 58                 3263 	.db #0x58	; 88	X
   189F 98                 3264 	.db #0x98	; 152
   18A0 88                 3265 	.db #0x88	; 136
   18A1 48                 3266 	.db #0x48	; 72	H
   18A2 49                 3267 	.db #0x49	; 73	I
   18A3 89                 3268 	.db #0x89	; 137
   18A4 4B                 3269 	.db #0x4B	; 75	K
   18A5 8B                 3270 	.db #0x8B	; 139
   18A6 8A                 3271 	.db #0x8A	; 138
   18A7 4A                 3272 	.db #0x4A	; 74	J
   18A8 4E                 3273 	.db #0x4E	; 78	N
   18A9 8E                 3274 	.db #0x8E	; 142
   18AA 8F                 3275 	.db #0x8F	; 143
   18AB 4F                 3276 	.db #0x4F	; 79	O
   18AC 8D                 3277 	.db #0x8D	; 141
   18AD 4D                 3278 	.db #0x4D	; 77	M
   18AE 4C                 3279 	.db #0x4C	; 76	L
   18AF 8C                 3280 	.db #0x8C	; 140
   18B0 44                 3281 	.db #0x44	; 68	D
   18B1 84                 3282 	.db #0x84	; 132
   18B2 85                 3283 	.db #0x85	; 133
   18B3 45                 3284 	.db #0x45	; 69	E
   18B4 87                 3285 	.db #0x87	; 135
   18B5 47                 3286 	.db #0x47	; 71	G
   18B6 46                 3287 	.db #0x46	; 70	F
   18B7 86                 3288 	.db #0x86	; 134
   18B8 82                 3289 	.db #0x82	; 130
   18B9 42                 3290 	.db #0x42	; 66	B
   18BA 43                 3291 	.db #0x43	; 67	C
   18BB 83                 3292 	.db #0x83	; 131
   18BC 41                 3293 	.db #0x41	; 65	A
   18BD 81                 3294 	.db #0x81	; 129
   18BE 80                 3295 	.db #0x80	; 128
   18BF 40                 3296 	.db #0x40	; 64
                           3297 	.area XINIT   (CODE)
                           3298 	.area CABS    (ABS,CODE)
