                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 23 17:14:07 2015
                              5 ;--------------------------------------------------------
                              6 	.module lcd
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _putchar
                             13 	.globl _LcdInit
                             14 	.globl _LCD_SendData
                             15 	.globl _LCD_SendCmd
                             16 	.globl _LCD_State
                             17 	.globl _Pause
                             18 	.globl _CY
                             19 	.globl _AC
                             20 	.globl _F0
                             21 	.globl _RS1
                             22 	.globl _RS0
                             23 	.globl _OV
                             24 	.globl _F1
                             25 	.globl _P
                             26 	.globl _PS
                             27 	.globl _PT1
                             28 	.globl _PX1
                             29 	.globl _PT0
                             30 	.globl _PX0
                             31 	.globl _RD
                             32 	.globl _WR
                             33 	.globl _T1
                             34 	.globl _T0
                             35 	.globl _INT1
                             36 	.globl _INT0
                             37 	.globl _TXD
                             38 	.globl _RXD
                             39 	.globl _P3_7
                             40 	.globl _P3_6
                             41 	.globl _P3_5
                             42 	.globl _P3_4
                             43 	.globl _P3_3
                             44 	.globl _P3_2
                             45 	.globl _P3_1
                             46 	.globl _P3_0
                             47 	.globl _EA
                             48 	.globl _ES
                             49 	.globl _ET1
                             50 	.globl _EX1
                             51 	.globl _ET0
                             52 	.globl _EX0
                             53 	.globl _P2_7
                             54 	.globl _P2_6
                             55 	.globl _P2_5
                             56 	.globl _P2_4
                             57 	.globl _P2_3
                             58 	.globl _P2_2
                             59 	.globl _P2_1
                             60 	.globl _P2_0
                             61 	.globl _SM0
                             62 	.globl _SM1
                             63 	.globl _SM2
                             64 	.globl _REN
                             65 	.globl _TB8
                             66 	.globl _RB8
                             67 	.globl _TI
                             68 	.globl _RI
                             69 	.globl _P1_7
                             70 	.globl _P1_6
                             71 	.globl _P1_5
                             72 	.globl _P1_4
                             73 	.globl _P1_3
                             74 	.globl _P1_2
                             75 	.globl _P1_1
                             76 	.globl _P1_0
                             77 	.globl _TF1
                             78 	.globl _TR1
                             79 	.globl _TF0
                             80 	.globl _TR0
                             81 	.globl _IE1
                             82 	.globl _IT1
                             83 	.globl _IE0
                             84 	.globl _IT0
                             85 	.globl _P0_7
                             86 	.globl _P0_6
                             87 	.globl _P0_5
                             88 	.globl _P0_4
                             89 	.globl _P0_3
                             90 	.globl _P0_2
                             91 	.globl _P0_1
                             92 	.globl _P0_0
                             93 	.globl _B
                             94 	.globl _ACC
                             95 	.globl _PSW
                             96 	.globl _IP
                             97 	.globl _P3
                             98 	.globl _IE
                             99 	.globl _P2
                            100 	.globl _SBUF
                            101 	.globl _SCON
                            102 	.globl _P1
                            103 	.globl _TH1
                            104 	.globl _TH0
                            105 	.globl _TL1
                            106 	.globl _TL0
                            107 	.globl _TMOD
                            108 	.globl _TCON
                            109 	.globl _PCON
                            110 	.globl _DPH
                            111 	.globl _DPL
                            112 	.globl _SP
                            113 	.globl _P0
                            114 	.globl _LCD_State_PARM_1
                            115 	.globl _LCD_Pos
                            116 ;--------------------------------------------------------
                            117 ; special function registers
                            118 ;--------------------------------------------------------
                            119 	.area RSEG    (ABS,DATA)
   0000                     120 	.org 0x0000
                    0080    121 G$P0$0$0 == 0x0080
                    0080    122 _P0	=	0x0080
                    0081    123 G$SP$0$0 == 0x0081
                    0081    124 _SP	=	0x0081
                    0082    125 G$DPL$0$0 == 0x0082
                    0082    126 _DPL	=	0x0082
                    0083    127 G$DPH$0$0 == 0x0083
                    0083    128 _DPH	=	0x0083
                    0087    129 G$PCON$0$0 == 0x0087
                    0087    130 _PCON	=	0x0087
                    0088    131 G$TCON$0$0 == 0x0088
                    0088    132 _TCON	=	0x0088
                    0089    133 G$TMOD$0$0 == 0x0089
                    0089    134 _TMOD	=	0x0089
                    008A    135 G$TL0$0$0 == 0x008a
                    008A    136 _TL0	=	0x008a
                    008B    137 G$TL1$0$0 == 0x008b
                    008B    138 _TL1	=	0x008b
                    008C    139 G$TH0$0$0 == 0x008c
                    008C    140 _TH0	=	0x008c
                    008D    141 G$TH1$0$0 == 0x008d
                    008D    142 _TH1	=	0x008d
                    0090    143 G$P1$0$0 == 0x0090
                    0090    144 _P1	=	0x0090
                    0098    145 G$SCON$0$0 == 0x0098
                    0098    146 _SCON	=	0x0098
                    0099    147 G$SBUF$0$0 == 0x0099
                    0099    148 _SBUF	=	0x0099
                    00A0    149 G$P2$0$0 == 0x00a0
                    00A0    150 _P2	=	0x00a0
                    00A8    151 G$IE$0$0 == 0x00a8
                    00A8    152 _IE	=	0x00a8
                    00B0    153 G$P3$0$0 == 0x00b0
                    00B0    154 _P3	=	0x00b0
                    00B8    155 G$IP$0$0 == 0x00b8
                    00B8    156 _IP	=	0x00b8
                    00D0    157 G$PSW$0$0 == 0x00d0
                    00D0    158 _PSW	=	0x00d0
                    00E0    159 G$ACC$0$0 == 0x00e0
                    00E0    160 _ACC	=	0x00e0
                    00F0    161 G$B$0$0 == 0x00f0
                    00F0    162 _B	=	0x00f0
                            163 ;--------------------------------------------------------
                            164 ; special function bits
                            165 ;--------------------------------------------------------
                            166 	.area RSEG    (ABS,DATA)
   0000                     167 	.org 0x0000
                    0080    168 G$P0_0$0$0 == 0x0080
                    0080    169 _P0_0	=	0x0080
                    0081    170 G$P0_1$0$0 == 0x0081
                    0081    171 _P0_1	=	0x0081
                    0082    172 G$P0_2$0$0 == 0x0082
                    0082    173 _P0_2	=	0x0082
                    0083    174 G$P0_3$0$0 == 0x0083
                    0083    175 _P0_3	=	0x0083
                    0084    176 G$P0_4$0$0 == 0x0084
                    0084    177 _P0_4	=	0x0084
                    0085    178 G$P0_5$0$0 == 0x0085
                    0085    179 _P0_5	=	0x0085
                    0086    180 G$P0_6$0$0 == 0x0086
                    0086    181 _P0_6	=	0x0086
                    0087    182 G$P0_7$0$0 == 0x0087
                    0087    183 _P0_7	=	0x0087
                    0088    184 G$IT0$0$0 == 0x0088
                    0088    185 _IT0	=	0x0088
                    0089    186 G$IE0$0$0 == 0x0089
                    0089    187 _IE0	=	0x0089
                    008A    188 G$IT1$0$0 == 0x008a
                    008A    189 _IT1	=	0x008a
                    008B    190 G$IE1$0$0 == 0x008b
                    008B    191 _IE1	=	0x008b
                    008C    192 G$TR0$0$0 == 0x008c
                    008C    193 _TR0	=	0x008c
                    008D    194 G$TF0$0$0 == 0x008d
                    008D    195 _TF0	=	0x008d
                    008E    196 G$TR1$0$0 == 0x008e
                    008E    197 _TR1	=	0x008e
                    008F    198 G$TF1$0$0 == 0x008f
                    008F    199 _TF1	=	0x008f
                    0090    200 G$P1_0$0$0 == 0x0090
                    0090    201 _P1_0	=	0x0090
                    0091    202 G$P1_1$0$0 == 0x0091
                    0091    203 _P1_1	=	0x0091
                    0092    204 G$P1_2$0$0 == 0x0092
                    0092    205 _P1_2	=	0x0092
                    0093    206 G$P1_3$0$0 == 0x0093
                    0093    207 _P1_3	=	0x0093
                    0094    208 G$P1_4$0$0 == 0x0094
                    0094    209 _P1_4	=	0x0094
                    0095    210 G$P1_5$0$0 == 0x0095
                    0095    211 _P1_5	=	0x0095
                    0096    212 G$P1_6$0$0 == 0x0096
                    0096    213 _P1_6	=	0x0096
                    0097    214 G$P1_7$0$0 == 0x0097
                    0097    215 _P1_7	=	0x0097
                    0098    216 G$RI$0$0 == 0x0098
                    0098    217 _RI	=	0x0098
                    0099    218 G$TI$0$0 == 0x0099
                    0099    219 _TI	=	0x0099
                    009A    220 G$RB8$0$0 == 0x009a
                    009A    221 _RB8	=	0x009a
                    009B    222 G$TB8$0$0 == 0x009b
                    009B    223 _TB8	=	0x009b
                    009C    224 G$REN$0$0 == 0x009c
                    009C    225 _REN	=	0x009c
                    009D    226 G$SM2$0$0 == 0x009d
                    009D    227 _SM2	=	0x009d
                    009E    228 G$SM1$0$0 == 0x009e
                    009E    229 _SM1	=	0x009e
                    009F    230 G$SM0$0$0 == 0x009f
                    009F    231 _SM0	=	0x009f
                    00A0    232 G$P2_0$0$0 == 0x00a0
                    00A0    233 _P2_0	=	0x00a0
                    00A1    234 G$P2_1$0$0 == 0x00a1
                    00A1    235 _P2_1	=	0x00a1
                    00A2    236 G$P2_2$0$0 == 0x00a2
                    00A2    237 _P2_2	=	0x00a2
                    00A3    238 G$P2_3$0$0 == 0x00a3
                    00A3    239 _P2_3	=	0x00a3
                    00A4    240 G$P2_4$0$0 == 0x00a4
                    00A4    241 _P2_4	=	0x00a4
                    00A5    242 G$P2_5$0$0 == 0x00a5
                    00A5    243 _P2_5	=	0x00a5
                    00A6    244 G$P2_6$0$0 == 0x00a6
                    00A6    245 _P2_6	=	0x00a6
                    00A7    246 G$P2_7$0$0 == 0x00a7
                    00A7    247 _P2_7	=	0x00a7
                    00A8    248 G$EX0$0$0 == 0x00a8
                    00A8    249 _EX0	=	0x00a8
                    00A9    250 G$ET0$0$0 == 0x00a9
                    00A9    251 _ET0	=	0x00a9
                    00AA    252 G$EX1$0$0 == 0x00aa
                    00AA    253 _EX1	=	0x00aa
                    00AB    254 G$ET1$0$0 == 0x00ab
                    00AB    255 _ET1	=	0x00ab
                    00AC    256 G$ES$0$0 == 0x00ac
                    00AC    257 _ES	=	0x00ac
                    00AF    258 G$EA$0$0 == 0x00af
                    00AF    259 _EA	=	0x00af
                    00B0    260 G$P3_0$0$0 == 0x00b0
                    00B0    261 _P3_0	=	0x00b0
                    00B1    262 G$P3_1$0$0 == 0x00b1
                    00B1    263 _P3_1	=	0x00b1
                    00B2    264 G$P3_2$0$0 == 0x00b2
                    00B2    265 _P3_2	=	0x00b2
                    00B3    266 G$P3_3$0$0 == 0x00b3
                    00B3    267 _P3_3	=	0x00b3
                    00B4    268 G$P3_4$0$0 == 0x00b4
                    00B4    269 _P3_4	=	0x00b4
                    00B5    270 G$P3_5$0$0 == 0x00b5
                    00B5    271 _P3_5	=	0x00b5
                    00B6    272 G$P3_6$0$0 == 0x00b6
                    00B6    273 _P3_6	=	0x00b6
                    00B7    274 G$P3_7$0$0 == 0x00b7
                    00B7    275 _P3_7	=	0x00b7
                    00B0    276 G$RXD$0$0 == 0x00b0
                    00B0    277 _RXD	=	0x00b0
                    00B1    278 G$TXD$0$0 == 0x00b1
                    00B1    279 _TXD	=	0x00b1
                    00B2    280 G$INT0$0$0 == 0x00b2
                    00B2    281 _INT0	=	0x00b2
                    00B3    282 G$INT1$0$0 == 0x00b3
                    00B3    283 _INT1	=	0x00b3
                    00B4    284 G$T0$0$0 == 0x00b4
                    00B4    285 _T0	=	0x00b4
                    00B5    286 G$T1$0$0 == 0x00b5
                    00B5    287 _T1	=	0x00b5
                    00B6    288 G$WR$0$0 == 0x00b6
                    00B6    289 _WR	=	0x00b6
                    00B7    290 G$RD$0$0 == 0x00b7
                    00B7    291 _RD	=	0x00b7
                    00B8    292 G$PX0$0$0 == 0x00b8
                    00B8    293 _PX0	=	0x00b8
                    00B9    294 G$PT0$0$0 == 0x00b9
                    00B9    295 _PT0	=	0x00b9
                    00BA    296 G$PX1$0$0 == 0x00ba
                    00BA    297 _PX1	=	0x00ba
                    00BB    298 G$PT1$0$0 == 0x00bb
                    00BB    299 _PT1	=	0x00bb
                    00BC    300 G$PS$0$0 == 0x00bc
                    00BC    301 _PS	=	0x00bc
                    00D0    302 G$P$0$0 == 0x00d0
                    00D0    303 _P	=	0x00d0
                    00D1    304 G$F1$0$0 == 0x00d1
                    00D1    305 _F1	=	0x00d1
                    00D2    306 G$OV$0$0 == 0x00d2
                    00D2    307 _OV	=	0x00d2
                    00D3    308 G$RS0$0$0 == 0x00d3
                    00D3    309 _RS0	=	0x00d3
                    00D4    310 G$RS1$0$0 == 0x00d4
                    00D4    311 _RS1	=	0x00d4
                    00D5    312 G$F0$0$0 == 0x00d5
                    00D5    313 _F0	=	0x00d5
                    00D6    314 G$AC$0$0 == 0x00d6
                    00D6    315 _AC	=	0x00d6
                    00D7    316 G$CY$0$0 == 0x00d7
                    00D7    317 _CY	=	0x00d7
                            318 ;--------------------------------------------------------
                            319 ; overlayable register banks
                            320 ;--------------------------------------------------------
                            321 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     322 	.ds 8
                            323 ;--------------------------------------------------------
                            324 ; internal ram data
                            325 ;--------------------------------------------------------
                            326 	.area DSEG    (DATA)
                    0000    327 G$LCD_Pos$0$0==.
   0012                     328 _LCD_Pos::
   0012                     329 	.ds 1
                    0001    330 Lputchar$cursor$1$1==.
   0013                     331 _putchar_cursor_1_1:
   0013                     332 	.ds 1
                    0002    333 Lputchar$last_cur$1$1==.
   0014                     334 _putchar_last_cur_1_1:
   0014                     335 	.ds 1
                            336 ;--------------------------------------------------------
                            337 ; overlayable items in internal ram 
                            338 ;--------------------------------------------------------
                            339 	.area	OSEG    (OVR,DATA)
                            340 ;--------------------------------------------------------
                            341 ; indirectly addressable internal ram data
                            342 ;--------------------------------------------------------
                            343 	.area ISEG    (DATA)
                            344 ;--------------------------------------------------------
                            345 ; absolute internal ram data
                            346 ;--------------------------------------------------------
                            347 	.area IABS    (ABS,DATA)
                            348 	.area IABS    (ABS,DATA)
                            349 ;--------------------------------------------------------
                            350 ; bit data
                            351 ;--------------------------------------------------------
                            352 	.area BSEG    (BIT)
                    0000    353 LLCD_State$b$1$1==.
   0001                     354 _LCD_State_PARM_1:
   0001                     355 	.ds 1
                    0001    356 LLCD_SendCmd$ea$1$1==.
   0002                     357 _LCD_SendCmd_ea_1_1:
   0002                     358 	.ds 1
                    0002    359 LLCD_SendData$ea$1$1==.
   0003                     360 _LCD_SendData_ea_1_1:
   0003                     361 	.ds 1
                            362 ;--------------------------------------------------------
                            363 ; paged external ram data
                            364 ;--------------------------------------------------------
                            365 	.area PSEG    (PAG,XDATA)
                            366 ;--------------------------------------------------------
                            367 ; external ram data
                            368 ;--------------------------------------------------------
                            369 	.area XSEG    (XDATA)
                    0000    370 Lputchar$linebuff$1$1==.
   0200                     371 _putchar_linebuff_1_1:
   0200                     372 	.ds 16
                            373 ;--------------------------------------------------------
                            374 ; absolute external ram data
                            375 ;--------------------------------------------------------
                            376 	.area XABS    (ABS,XDATA)
                            377 ;--------------------------------------------------------
                            378 ; external initialized ram data
                            379 ;--------------------------------------------------------
                            380 	.area XISEG   (XDATA)
                            381 	.area HOME    (CODE)
                            382 	.area GSINIT0 (CODE)
                            383 	.area GSINIT1 (CODE)
                            384 	.area GSINIT2 (CODE)
                            385 	.area GSINIT3 (CODE)
                            386 	.area GSINIT4 (CODE)
                            387 	.area GSINIT5 (CODE)
                            388 	.area GSINIT  (CODE)
                            389 	.area GSFINAL (CODE)
                            390 	.area CSEG    (CODE)
                            391 ;--------------------------------------------------------
                            392 ; global & static initialisations
                            393 ;--------------------------------------------------------
                            394 	.area HOME    (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.area GSFINAL (CODE)
                            397 	.area GSINIT  (CODE)
                            398 ;--------------------------------------------------------
                            399 ; Home
                            400 ;--------------------------------------------------------
                            401 	.area HOME    (CODE)
                            402 	.area HOME    (CODE)
                            403 ;--------------------------------------------------------
                            404 ; code
                            405 ;--------------------------------------------------------
                            406 	.area CSEG    (CODE)
                            407 ;------------------------------------------------------------
                            408 ;Allocation info for local variables in function 'Pause'
                            409 ;------------------------------------------------------------
                            410 ;pause                     Allocated to registers r2 r3 
                            411 ;------------------------------------------------------------
                    0000    412 	G$Pause$0$0 ==.
                    0000    413 	C$lcd.c$66$0$0 ==.
                            414 ;	lcd.c:66: void Pause(int pause)
                            415 ;	-----------------------------------------
                            416 ;	 function Pause
                            417 ;	-----------------------------------------
   031E                     418 _Pause:
                    0002    419 	ar2 = 0x02
                    0003    420 	ar3 = 0x03
                    0004    421 	ar4 = 0x04
                    0005    422 	ar5 = 0x05
                    0006    423 	ar6 = 0x06
                    0007    424 	ar7 = 0x07
                    0000    425 	ar0 = 0x00
                    0001    426 	ar1 = 0x01
   031E AA 82               427 	mov	r2,dpl
   0320 AB 83               428 	mov	r3,dph
                    0004    429 	C$lcd.c$67$1$1 ==.
                            430 ;	lcd.c:67: { do
   0322                     431 00101$:
                    0004    432 	C$lcd.c$68$1$1 ==.
                            433 ;	lcd.c:68: pause--;
   0322 1A                  434 	dec	r2
   0323 BA FF 01            435 	cjne	r2,#0xff,00108$
   0326 1B                  436 	dec	r3
   0327                     437 00108$:
                    0009    438 	C$lcd.c$69$1$1 ==.
                            439 ;	lcd.c:69: while(pause);
   0327 EA                  440 	mov	a,r2
   0328 4B                  441 	orl	a,r3
   0329 70 F7               442 	jnz	00101$
                    000D    443 	C$lcd.c$70$1$1 ==.
                    000D    444 	XG$Pause$0$0 ==.
   032B 22                  445 	ret
                            446 ;------------------------------------------------------------
                            447 ;Allocation info for local variables in function 'LCD_State'
                            448 ;------------------------------------------------------------
                            449 ;temp                      Allocated to registers r2 
                            450 ;------------------------------------------------------------
                    000E    451 	G$LCD_State$0$0 ==.
                    000E    452 	C$lcd.c$72$1$1 ==.
                            453 ;	lcd.c:72: byte LCD_State(__bit b)
                            454 ;	-----------------------------------------
                            455 ;	 function LCD_State
                            456 ;	-----------------------------------------
   032C                     457 _LCD_State:
                    000E    458 	C$lcd.c$76$1$1 ==.
                            459 ;	lcd.c:76: Pause(1);
   032C 90 00 01            460 	mov	dptr,#0x0001
   032F 12 03 1E            461 	lcall	_Pause
                    0014    462 	C$lcd.c$77$1$1 ==.
                            463 ;	lcd.c:77: P2=(LCD_RW | 0x0F);
   0332 75 A0 2F            464 	mov	_P2,#0x2F
                    0017    465 	C$lcd.c$78$1$1 ==.
                            466 ;	lcd.c:78: Pause(1);
   0335 90 00 01            467 	mov	dptr,#0x0001
   0338 12 03 1E            468 	lcall	_Pause
                    001D    469 	C$lcd.c$79$1$1 ==.
                            470 ;	lcd.c:79: _EN=1;
   033B D2 A6               471 	setb	_P2_6
                    001F    472 	C$lcd.c$80$1$1 ==.
                            473 ;	lcd.c:80: Pause(1);
   033D 90 00 01            474 	mov	dptr,#0x0001
   0340 12 03 1E            475 	lcall	_Pause
                    0025    476 	C$lcd.c$81$1$1 ==.
                            477 ;	lcd.c:81: temp=(P2&0xF)<<4;
   0343 74 0F               478 	mov	a,#0x0F
   0345 55 A0               479 	anl	a,_P2
   0347 C4                  480 	swap	a
   0348 54 F0               481 	anl	a,#0xf0
   034A FA                  482 	mov	r2,a
                    002D    483 	C$lcd.c$82$1$1 ==.
                            484 ;	lcd.c:82: _EN=0;
   034B C2 A6               485 	clr	_P2_6
                    002F    486 	C$lcd.c$83$1$1 ==.
                            487 ;	lcd.c:83: if(b)
   034D 30 01 23            488 	jnb	_LCD_State_PARM_1,00102$
                    0032    489 	C$lcd.c$85$2$2 ==.
                            490 ;	lcd.c:85: Pause(1);
   0350 90 00 01            491 	mov	dptr,#0x0001
   0353 C0 02               492 	push	ar2
   0355 12 03 1E            493 	lcall	_Pause
                    003A    494 	C$lcd.c$86$2$2 ==.
                            495 ;	lcd.c:86: P2=(LCD_RW | 0x0F);
   0358 75 A0 2F            496 	mov	_P2,#0x2F
                    003D    497 	C$lcd.c$87$2$2 ==.
                            498 ;	lcd.c:87: Pause(1);
   035B 90 00 01            499 	mov	dptr,#0x0001
   035E 12 03 1E            500 	lcall	_Pause
                    0043    501 	C$lcd.c$88$2$2 ==.
                            502 ;	lcd.c:88: _EN=1;
   0361 D2 A6               503 	setb	_P2_6
                    0045    504 	C$lcd.c$89$2$2 ==.
                            505 ;	lcd.c:89: Pause(1);
   0363 90 00 01            506 	mov	dptr,#0x0001
   0366 12 03 1E            507 	lcall	_Pause
   0369 D0 02               508 	pop	ar2
                    004D    509 	C$lcd.c$90$2$2 ==.
                            510 ;	lcd.c:90: temp=temp+(P2&0x0F);
   036B 74 0F               511 	mov	a,#0x0F
   036D 55 A0               512 	anl	a,_P2
   036F 2A                  513 	add	a,r2
   0370 FA                  514 	mov	r2,a
                    0053    515 	C$lcd.c$91$2$2 ==.
                            516 ;	lcd.c:91: _EN=0;
   0371 C2 A6               517 	clr	_P2_6
   0373                     518 00102$:
                    0055    519 	C$lcd.c$93$1$1 ==.
                            520 ;	lcd.c:93: return (temp);
   0373 8A 82               521 	mov	dpl,r2
                    0057    522 	C$lcd.c$94$1$1 ==.
                    0057    523 	XG$LCD_State$0$0 ==.
   0375 22                  524 	ret
                            525 ;------------------------------------------------------------
                            526 ;Allocation info for local variables in function 'LCD_SendCmd'
                            527 ;------------------------------------------------------------
                            528 ;val                       Allocated to registers r2 
                            529 ;------------------------------------------------------------
                    0058    530 	G$LCD_SendCmd$0$0 ==.
                    0058    531 	C$lcd.c$96$1$1 ==.
                            532 ;	lcd.c:96: void LCD_SendCmd( byte val )
                            533 ;	-----------------------------------------
                            534 ;	 function LCD_SendCmd
                            535 ;	-----------------------------------------
   0376                     536 _LCD_SendCmd:
   0376 AA 82               537 	mov	r2,dpl
                    005A    538 	C$lcd.c$98$1$1 ==.
                            539 ;	lcd.c:98: __bit ea=EA;
   0378 A2 AF               540 	mov	c,_EA
   037A 92 02               541 	mov	_LCD_SendCmd_ea_1_1,c
                    005E    542 	C$lcd.c$99$1$1 ==.
                            543 ;	lcd.c:99: EA=0;
   037C C2 AF               544 	clr	_EA
                    0060    545 	C$lcd.c$100$1$1 ==.
                            546 ;	lcd.c:100: CMD_NIBBLE((val>>4) & 0x0F)
   037E EA                  547 	mov	a,r2
   037F C4                  548 	swap	a
   0380 54 0F               549 	anl	a,#0x0f
   0382 FB                  550 	mov	r3,a
   0383 74 0F               551 	mov	a,#0x0F
   0385 5B                  552 	anl	a,r3
   0386 F5 A0               553 	mov	_P2,a
   0388 90 00 01            554 	mov	dptr,#0x0001
   038B C0 02               555 	push	ar2
   038D 12 03 1E            556 	lcall	_Pause
   0390 D2 A6               557 	setb	_P2_6
   0392 90 00 01            558 	mov	dptr,#0x0001
   0395 12 03 1E            559 	lcall	_Pause
   0398 D0 02               560 	pop	ar2
   039A C2 A6               561 	clr	_P2_6
                    007E    562 	C$lcd.c$101$1$1 ==.
                            563 ;	lcd.c:101: CMD_NIBBLE(val & 0x0F)
   039C 74 0F               564 	mov	a,#0x0F
   039E 5A                  565 	anl	a,r2
   039F F5 A0               566 	mov	_P2,a
   03A1 90 00 01            567 	mov	dptr,#0x0001
   03A4 12 03 1E            568 	lcall	_Pause
   03A7 D2 A6               569 	setb	_P2_6
   03A9 90 00 01            570 	mov	dptr,#0x0001
   03AC 12 03 1E            571 	lcall	_Pause
   03AF C2 A6               572 	clr	_P2_6
                    0093    573 	C$lcd.c$102$1$1 ==.
                            574 ;	lcd.c:102: while(LCD_State(1) & BUSY_FLAG);
   03B1                     575 00101$:
   03B1 D2 01               576 	setb	_LCD_State_PARM_1
   03B3 12 03 2C            577 	lcall	_LCD_State
   03B6 E5 82               578 	mov	a,dpl
   03B8 20 E7 F6            579 	jb	acc.7,00101$
                    009D    580 	C$lcd.c$103$1$1 ==.
                            581 ;	lcd.c:103: EA=ea;
   03BB A2 02               582 	mov	c,_LCD_SendCmd_ea_1_1
   03BD 92 AF               583 	mov	_EA,c
                    00A1    584 	C$lcd.c$104$1$1 ==.
                    00A1    585 	XG$LCD_SendCmd$0$0 ==.
   03BF 22                  586 	ret
                            587 ;------------------------------------------------------------
                            588 ;Allocation info for local variables in function 'LCD_SendData'
                            589 ;------------------------------------------------------------
                            590 ;val                       Allocated to registers r2 
                            591 ;------------------------------------------------------------
                    00A2    592 	G$LCD_SendData$0$0 ==.
                    00A2    593 	C$lcd.c$108$1$1 ==.
                            594 ;	lcd.c:108: void LCD_SendData( byte val )
                            595 ;	-----------------------------------------
                            596 ;	 function LCD_SendData
                            597 ;	-----------------------------------------
   03C0                     598 _LCD_SendData:
   03C0 AA 82               599 	mov	r2,dpl
                    00A4    600 	C$lcd.c$110$1$1 ==.
                            601 ;	lcd.c:110: __bit ea=EA;
   03C2 A2 AF               602 	mov	c,_EA
   03C4 92 03               603 	mov	_LCD_SendData_ea_1_1,c
                    00A8    604 	C$lcd.c$111$1$1 ==.
                            605 ;	lcd.c:111: EA=0;
   03C6 C2 AF               606 	clr	_EA
                    00AA    607 	C$lcd.c$112$1$1 ==.
                            608 ;	lcd.c:112: DATA_NIBBLE((val>>4) & 0x0F)
   03C8 EA                  609 	mov	a,r2
   03C9 C4                  610 	swap	a
   03CA 54 0F               611 	anl	a,#0x0f
   03CC FB                  612 	mov	r3,a
   03CD 74 0F               613 	mov	a,#0x0F
   03CF 5B                  614 	anl	a,r3
   03D0 44 10               615 	orl	a,#0x10
   03D2 F5 A0               616 	mov	_P2,a
   03D4 90 00 01            617 	mov	dptr,#0x0001
   03D7 C0 02               618 	push	ar2
   03D9 12 03 1E            619 	lcall	_Pause
   03DC D2 A6               620 	setb	_P2_6
   03DE 90 00 01            621 	mov	dptr,#0x0001
   03E1 12 03 1E            622 	lcall	_Pause
   03E4 D0 02               623 	pop	ar2
   03E6 C2 A6               624 	clr	_P2_6
                    00CA    625 	C$lcd.c$113$1$1 ==.
                            626 ;	lcd.c:113: DATA_NIBBLE(val & 0x0F)
   03E8 74 0F               627 	mov	a,#0x0F
   03EA 5A                  628 	anl	a,r2
   03EB 44 10               629 	orl	a,#0x10
   03ED F5 A0               630 	mov	_P2,a
   03EF 90 00 01            631 	mov	dptr,#0x0001
   03F2 12 03 1E            632 	lcall	_Pause
   03F5 D2 A6               633 	setb	_P2_6
   03F7 90 00 01            634 	mov	dptr,#0x0001
   03FA 12 03 1E            635 	lcall	_Pause
   03FD C2 A6               636 	clr	_P2_6
                    00E1    637 	C$lcd.c$114$1$1 ==.
                            638 ;	lcd.c:114: while(LCD_State(1) & BUSY_FLAG);
   03FF                     639 00101$:
   03FF D2 01               640 	setb	_LCD_State_PARM_1
   0401 12 03 2C            641 	lcall	_LCD_State
   0404 E5 82               642 	mov	a,dpl
   0406 20 E7 F6            643 	jb	acc.7,00101$
                    00EB    644 	C$lcd.c$115$1$1 ==.
                            645 ;	lcd.c:115: LCD_Pos++;
   0409 05 12               646 	inc	_LCD_Pos
                    00ED    647 	C$lcd.c$116$1$1 ==.
                            648 ;	lcd.c:116: EA=ea;
   040B A2 03               649 	mov	c,_LCD_SendData_ea_1_1
   040D 92 AF               650 	mov	_EA,c
                    00F1    651 	C$lcd.c$117$1$1 ==.
                    00F1    652 	XG$LCD_SendData$0$0 ==.
   040F 22                  653 	ret
                            654 ;------------------------------------------------------------
                            655 ;Allocation info for local variables in function 'LcdInit'
                            656 ;------------------------------------------------------------
                            657 ;------------------------------------------------------------
                    00F2    658 	G$LcdInit$0$0 ==.
                    00F2    659 	C$lcd.c$120$1$1 ==.
                            660 ;	lcd.c:120: void LcdInit(void)
                            661 ;	-----------------------------------------
                            662 ;	 function LcdInit
                            663 ;	-----------------------------------------
   0410                     664 _LcdInit:
                    00F2    665 	C$lcd.c$123$1$1 ==.
                            666 ;	lcd.c:123: P2=( 0 );                         // nulovani RS, RW a EN
   0410 75 A0 00            667 	mov	_P2,#0x00
                    00F5    668 	C$lcd.c$124$1$1 ==.
                            669 ;	lcd.c:124: Pause(8000);                      //po zapnuti - prodleva > 15 ms
   0413 90 1F 40            670 	mov	dptr,#0x1F40
   0416 12 03 1E            671 	lcall	_Pause
                    00FB    672 	C$lcd.c$125$1$1 ==.
                            673 ;	lcd.c:125: CMD_NIBBLE(FUNCTION_INIT)         // 1. 8bitovy interface
   0419 75 A0 03            674 	mov	_P2,#0x03
   041C 90 00 01            675 	mov	dptr,#0x0001
   041F 12 03 1E            676 	lcall	_Pause
   0422 D2 A6               677 	setb	_P2_6
   0424 90 00 01            678 	mov	dptr,#0x0001
   0427 12 03 1E            679 	lcall	_Pause
   042A C2 A6               680 	clr	_P2_6
                    010E    681 	C$lcd.c$126$1$1 ==.
                            682 ;	lcd.c:126: Pause(2000);                      //prodleva > 4,1 ms
   042C 90 07 D0            683 	mov	dptr,#0x07D0
   042F 12 03 1E            684 	lcall	_Pause
                    0114    685 	C$lcd.c$127$1$1 ==.
                            686 ;	lcd.c:127: CMD_NIBBLE(FUNCTION_INIT)         // 2. 8bitovy interface
   0432 75 A0 03            687 	mov	_P2,#0x03
   0435 90 00 01            688 	mov	dptr,#0x0001
   0438 12 03 1E            689 	lcall	_Pause
   043B D2 A6               690 	setb	_P2_6
   043D 90 00 01            691 	mov	dptr,#0x0001
   0440 12 03 1E            692 	lcall	_Pause
   0443 C2 A6               693 	clr	_P2_6
                    0127    694 	C$lcd.c$128$1$1 ==.
                            695 ;	lcd.c:128: Pause(50);                        //prodleva > 100 us
   0445 90 00 32            696 	mov	dptr,#0x0032
   0448 12 03 1E            697 	lcall	_Pause
                    012D    698 	C$lcd.c$129$1$1 ==.
                            699 ;	lcd.c:129: CMD_NIBBLE(FUNCTION_INIT)         // 3. 8bitovy interface
   044B 75 A0 03            700 	mov	_P2,#0x03
   044E 90 00 01            701 	mov	dptr,#0x0001
   0451 12 03 1E            702 	lcall	_Pause
   0454 D2 A6               703 	setb	_P2_6
   0456 90 00 01            704 	mov	dptr,#0x0001
   0459 12 03 1E            705 	lcall	_Pause
   045C C2 A6               706 	clr	_P2_6
                    0140    707 	C$lcd.c$130$1$1 ==.
                            708 ;	lcd.c:130: while(LCD_State(0)& BUSY_FLAG);   // cekani dokud neni LCD volny
   045E                     709 00101$:
   045E C2 01               710 	clr	_LCD_State_PARM_1
   0460 12 03 2C            711 	lcall	_LCD_State
   0463 E5 82               712 	mov	a,dpl
   0465 20 E7 F6            713 	jb	acc.7,00101$
                    014A    714 	C$lcd.c$131$1$1 ==.
                            715 ;	lcd.c:131: CMD_NIBBLE(FUNCTION_SET>>4)       // 4bitovy interface
   0468 75 A0 02            716 	mov	_P2,#0x02
   046B 90 00 01            717 	mov	dptr,#0x0001
   046E 12 03 1E            718 	lcall	_Pause
   0471 D2 A6               719 	setb	_P2_6
   0473 90 00 01            720 	mov	dptr,#0x0001
   0476 12 03 1E            721 	lcall	_Pause
   0479 C2 A6               722 	clr	_P2_6
                    015D    723 	C$lcd.c$132$1$1 ==.
                            724 ;	lcd.c:132: while(LCD_State(0)& BUSY_FLAG);   // cekani dokud neni LCD volny
   047B                     725 00104$:
   047B C2 01               726 	clr	_LCD_State_PARM_1
   047D 12 03 2C            727 	lcall	_LCD_State
   0480 E5 82               728 	mov	a,dpl
   0482 20 E7 F6            729 	jb	acc.7,00104$
                    0167    730 	C$lcd.c$133$1$1 ==.
                            731 ;	lcd.c:133: LCD_SendCmd(FUNCTION_SET);        // 4bitovy interface, 2 radky, 5x8 font
   0485 75 82 28            732 	mov	dpl,#0x28
   0488 12 03 76            733 	lcall	_LCD_SendCmd
                    016D    734 	C$lcd.c$134$1$1 ==.
                            735 ;	lcd.c:134: LCD_SendCmd(CLEAR_DISPLAY);       // nulovani (vymazani) LCD
   048B 75 82 01            736 	mov	dpl,#0x01
   048E 12 03 76            737 	lcall	_LCD_SendCmd
                    0173    738 	C$lcd.c$135$1$1 ==.
                            739 ;	lcd.c:135: LCD_SendCmd(ENTRY_MODE);          // normalni zapis na LCD
   0491 75 82 06            740 	mov	dpl,#0x06
   0494 12 03 76            741 	lcall	_LCD_SendCmd
                    0179    742 	C$lcd.c$136$1$1 ==.
                            743 ;	lcd.c:136: LCD_SendCmd(DISPLAY_ON);          // LCD ON
   0497 75 82 0C            744 	mov	dpl,#0x0C
   049A 12 03 76            745 	lcall	_LCD_SendCmd
                    017F    746 	C$lcd.c$137$1$1 ==.
                            747 ;	lcd.c:137: LCD_Pos=0;
   049D 75 12 00            748 	mov	_LCD_Pos,#0x00
                    0182    749 	C$lcd.c$138$1$1 ==.
                    0182    750 	XG$LcdInit$0$0 ==.
   04A0 22                  751 	ret
                            752 ;------------------------------------------------------------
                            753 ;Allocation info for local variables in function 'putchar'
                            754 ;------------------------------------------------------------
                            755 ;cursor                    Allocated with name '_putchar_cursor_1_1'
                            756 ;last_cur                  Allocated with name '_putchar_last_cur_1_1'
                            757 ;c                         Allocated to registers r2 
                            758 ;n                         Allocated to registers r4 
                            759 ;linebuff                  Allocated with name '_putchar_linebuff_1_1'
                            760 ;------------------------------------------------------------
                    0183    761 	G$putchar$0$0 ==.
                    0183    762 	C$lcd.c$142$1$1 ==.
                            763 ;	lcd.c:142: void putchar(char c)
                            764 ;	-----------------------------------------
                            765 ;	 function putchar
                            766 ;	-----------------------------------------
   04A1                     767 _putchar:
   04A1 AA 82               768 	mov	r2,dpl
                    0185    769 	C$lcd.c$150$1$1 ==.
                            770 ;	lcd.c:150: if (c == '\r')
   04A3 BA 0D 11            771 	cjne	r2,#0x0D,00112$
                    0188    772 	C$lcd.c$152$2$2 ==.
                            773 ;	lcd.c:152: LCD_SendCmd(DDRAM_ADDRESS | LINE2_ORIGIN);
   04A6 75 82 C0            774 	mov	dpl,#0xC0
   04A9 12 03 76            775 	lcall	_LCD_SendCmd
                    018E    776 	C$lcd.c$153$2$2 ==.
                            777 ;	lcd.c:153: if (last_cur == 0)
   04AC E5 14               778 	mov	a,_putchar_last_cur_1_1
   04AE 70 03               779 	jnz	00102$
                    0192    780 	C$lcd.c$154$2$2 ==.
                            781 ;	lcd.c:154: last_cur = cursor;
   04B0 85 13 14            782 	mov	_putchar_last_cur_1_1,_putchar_cursor_1_1
   04B3                     783 00102$:
                    0195    784 	C$lcd.c$155$2$2 ==.
                            785 ;	lcd.c:155: cursor = 0;
   04B3 75 13 00            786 	mov	_putchar_cursor_1_1,#0x00
   04B6 22                  787 	ret
   04B7                     788 00112$:
                    0199    789 	C$lcd.c$157$1$1 ==.
                            790 ;	lcd.c:157: else if (c == '\n' || cursor == 16)
   04B7 E4                  791 	clr	a
   04B8 BA 0A 01            792 	cjne	r2,#0x0A,00131$
   04BB 04                  793 	inc	a
   04BC                     794 00131$:
   04BC FB                  795 	mov	r3,a
   04BD 70 05               796 	jnz	00107$
   04BF 74 10               797 	mov	a,#0x10
   04C1 B5 13 59            798 	cjne	a,_putchar_cursor_1_1,00108$
   04C4                     799 00107$:
                    01A6    800 	C$lcd.c$159$2$3 ==.
                            801 ;	lcd.c:159: LCD_SendCmd(CLEAR_DISPLAY);
   04C4 75 82 01            802 	mov	dpl,#0x01
   04C7 C0 02               803 	push	ar2
   04C9 C0 03               804 	push	ar3
   04CB 12 03 76            805 	lcall	_LCD_SendCmd
   04CE D0 03               806 	pop	ar3
   04D0 D0 02               807 	pop	ar2
                    01B4    808 	C$lcd.c$160$2$3 ==.
                            809 ;	lcd.c:160: if (last_cur < cursor)
   04D2 E5 14               810 	mov	a,_putchar_last_cur_1_1
   04D4 B5 13 00            811 	cjne	a,_putchar_cursor_1_1,00136$
   04D7                     812 00136$:
   04D7 50 03               813 	jnc	00125$
                    01BB    814 	C$lcd.c$161$2$3 ==.
                            815 ;	lcd.c:161: last_cur = cursor;
   04D9 85 13 14            816 	mov	_putchar_last_cur_1_1,_putchar_cursor_1_1
                    01BE    817 	C$lcd.c$163$1$1 ==.
                            818 ;	lcd.c:163: for (n = 0 ; n < last_cur ; n++)
   04DC                     819 00125$:
   04DC 7C 00               820 	mov	r4,#0x00
   04DE                     821 00114$:
   04DE EC                  822 	mov	a,r4
   04DF B5 14 00            823 	cjne	a,_putchar_last_cur_1_1,00138$
   04E2                     824 00138$:
   04E2 50 1F               825 	jnc	00117$
                    01C6    826 	C$lcd.c$165$3$4 ==.
                            827 ;	lcd.c:165: LCD_SendData(linebuff[n]);
   04E4 EC                  828 	mov	a,r4
   04E5 24 00               829 	add	a,#_putchar_linebuff_1_1
   04E7 F5 82               830 	mov	dpl,a
   04E9 E4                  831 	clr	a
   04EA 34 02               832 	addc	a,#(_putchar_linebuff_1_1 >> 8)
   04EC F5 83               833 	mov	dph,a
   04EE E0                  834 	movx	a,@dptr
   04EF F5 82               835 	mov	dpl,a
   04F1 C0 02               836 	push	ar2
   04F3 C0 03               837 	push	ar3
   04F5 C0 04               838 	push	ar4
   04F7 12 03 C0            839 	lcall	_LCD_SendData
   04FA D0 04               840 	pop	ar4
   04FC D0 03               841 	pop	ar3
   04FE D0 02               842 	pop	ar2
                    01E2    843 	C$lcd.c$163$2$3 ==.
                            844 ;	lcd.c:163: for (n = 0 ; n < last_cur ; n++)
   0500 0C                  845 	inc	r4
   0501 80 DB               846 	sjmp	00114$
   0503                     847 00117$:
                    01E5    848 	C$lcd.c$169$2$3 ==.
                            849 ;	lcd.c:169: LCD_SendCmd(DDRAM_ADDRESS | LINE2_ORIGIN);
   0503 75 82 C0            850 	mov	dpl,#0xC0
   0506 C0 02               851 	push	ar2
   0508 C0 03               852 	push	ar3
   050A 12 03 76            853 	lcall	_LCD_SendCmd
   050D D0 03               854 	pop	ar3
   050F D0 02               855 	pop	ar2
                    01F3    856 	C$lcd.c$171$2$3 ==.
                            857 ;	lcd.c:171: last_cur = cursor = 0;
                    01F3    858 	C$lcd.c$173$2$3 ==.
                            859 ;	lcd.c:173: if (c != '\n')
   0511 E4                  860 	clr	a
   0512 F5 13               861 	mov	_putchar_cursor_1_1,a
   0514 F5 14               862 	mov	_putchar_last_cur_1_1,a
   0516 EB                  863 	mov	a,r3
   0517 70 19               864 	jnz	00118$
                    01FB    865 	C$lcd.c$174$2$3 ==.
                            866 ;	lcd.c:174: putchar(c);
   0519 8A 82               867 	mov	dpl,r2
   051B 80 84               868 	sjmp	_putchar
   051D                     869 00108$:
                    01FF    870 	C$lcd.c$178$2$5 ==.
                            871 ;	lcd.c:178: linebuff[cursor++] = c;
   051D AB 13               872 	mov	r3,_putchar_cursor_1_1
   051F 05 13               873 	inc	_putchar_cursor_1_1
   0521 EB                  874 	mov	a,r3
   0522 24 00               875 	add	a,#_putchar_linebuff_1_1
   0524 F5 82               876 	mov	dpl,a
   0526 E4                  877 	clr	a
   0527 34 02               878 	addc	a,#(_putchar_linebuff_1_1 >> 8)
   0529 F5 83               879 	mov	dph,a
   052B EA                  880 	mov	a,r2
   052C F0                  881 	movx	@dptr,a
                    020F    882 	C$lcd.c$179$2$5 ==.
                            883 ;	lcd.c:179: LCD_SendData(c);
   052D 8A 82               884 	mov	dpl,r2
                    0211    885 	C$lcd.c$182$1$1 ==.
                    0211    886 	XG$putchar$0$0 ==.
   052F 02 03 C0            887 	ljmp	_LCD_SendData
   0532                     888 00118$:
   0532 22                  889 	ret
                            890 	.area CSEG    (CODE)
                            891 	.area CONST   (CODE)
                            892 	.area XINIT   (CODE)
                            893 	.area CABS    (ABS,CODE)
