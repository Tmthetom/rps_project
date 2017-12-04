;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Nov 13 12:41:44 2017
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _LcdInit
	.globl _LCD_SendData
	.globl _LCD_SendCmd
	.globl _LCD_State
	.globl _Pause
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _LCD_State_PARM_1
	.globl _LCD_Pos
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$LCD_Pos$0$0==.
_LCD_Pos::
	.ds 1
Lputchar$cursor$1$1==.
_putchar_cursor_1_1:
	.ds 1
Lputchar$last_cur$1$1==.
_putchar_last_cur_1_1:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
LLCD_State$b$1$1==.
_LCD_State_PARM_1:
	.ds 1
LLCD_SendCmd$ea$1$1==.
_LCD_SendCmd_ea_1_1:
	.ds 1
LLCD_SendData$ea$1$1==.
_LCD_SendData_ea_1_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Lputchar$linebuff$1$1==.
_putchar_linebuff_1_1:
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Pause'
;------------------------------------------------------------
;pause                     Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Pause$0$0 ==.
	C$lcd.c$66$0$0 ==.
;	lcd.c:66: void Pause(int pause)
;	-----------------------------------------
;	 function Pause
;	-----------------------------------------
_Pause:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	C$lcd.c$67$1$1 ==.
;	lcd.c:67: { do
00101$:
	C$lcd.c$68$1$1 ==.
;	lcd.c:68: pause--;
	dec	r2
	cjne	r2,#0xff,00108$
	dec	r3
00108$:
	C$lcd.c$69$1$1 ==.
;	lcd.c:69: while(pause);
	mov	a,r2
	orl	a,r3
	jnz	00101$
	C$lcd.c$70$1$1 ==.
	XG$Pause$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_State'
;------------------------------------------------------------
;temp                      Allocated to registers r2 
;------------------------------------------------------------
	G$LCD_State$0$0 ==.
	C$lcd.c$72$1$1 ==.
;	lcd.c:72: byte LCD_State(__bit b)
;	-----------------------------------------
;	 function LCD_State
;	-----------------------------------------
_LCD_State:
	C$lcd.c$76$1$1 ==.
;	lcd.c:76: Pause(1);
	mov	dptr,#0x0001
	lcall	_Pause
	C$lcd.c$77$1$1 ==.
;	lcd.c:77: P2=(LCD_RW | 0x0F);
	mov	_P2,#0x2F
	C$lcd.c$78$1$1 ==.
;	lcd.c:78: Pause(1);
	mov	dptr,#0x0001
	lcall	_Pause
	C$lcd.c$79$1$1 ==.
;	lcd.c:79: _EN=1;
	setb	_P2_6
	C$lcd.c$80$1$1 ==.
;	lcd.c:80: Pause(1);
	mov	dptr,#0x0001
	lcall	_Pause
	C$lcd.c$81$1$1 ==.
;	lcd.c:81: temp=(P2&0xF)<<4;
	mov	a,#0x0F
	anl	a,_P2
	swap	a
	anl	a,#0xf0
	mov	r2,a
	C$lcd.c$82$1$1 ==.
;	lcd.c:82: _EN=0;
	clr	_P2_6
	C$lcd.c$83$1$1 ==.
;	lcd.c:83: if(b)
	jnb	_LCD_State_PARM_1,00102$
	C$lcd.c$85$2$2 ==.
;	lcd.c:85: Pause(1);
	mov	dptr,#0x0001
	push	ar2
	lcall	_Pause
	C$lcd.c$86$2$2 ==.
;	lcd.c:86: P2=(LCD_RW | 0x0F);
	mov	_P2,#0x2F
	C$lcd.c$87$2$2 ==.
;	lcd.c:87: Pause(1);
	mov	dptr,#0x0001
	lcall	_Pause
	C$lcd.c$88$2$2 ==.
;	lcd.c:88: _EN=1;
	setb	_P2_6
	C$lcd.c$89$2$2 ==.
;	lcd.c:89: Pause(1);
	mov	dptr,#0x0001
	lcall	_Pause
	pop	ar2
	C$lcd.c$90$2$2 ==.
;	lcd.c:90: temp=temp+(P2&0x0F);
	mov	a,#0x0F
	anl	a,_P2
	add	a,r2
	mov	r2,a
	C$lcd.c$91$2$2 ==.
;	lcd.c:91: _EN=0;
	clr	_P2_6
00102$:
	C$lcd.c$93$1$1 ==.
;	lcd.c:93: return (temp);
	mov	dpl,r2
	C$lcd.c$94$1$1 ==.
	XG$LCD_State$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SendCmd'
;------------------------------------------------------------
;val                       Allocated to registers r2 
;------------------------------------------------------------
	G$LCD_SendCmd$0$0 ==.
	C$lcd.c$96$1$1 ==.
;	lcd.c:96: void LCD_SendCmd( byte val )
;	-----------------------------------------
;	 function LCD_SendCmd
;	-----------------------------------------
_LCD_SendCmd:
	mov	r2,dpl
	C$lcd.c$98$1$1 ==.
;	lcd.c:98: __bit ea=EA;
	mov	c,_EA
	mov	_LCD_SendCmd_ea_1_1,c
	C$lcd.c$99$1$1 ==.
;	lcd.c:99: EA=0;
	clr	_EA
	C$lcd.c$100$1$1 ==.
;	lcd.c:100: CMD_NIBBLE((val>>4) & 0x0F)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r3,a
	mov	a,#0x0F
	anl	a,r3
	mov	_P2,a
	mov	dptr,#0x0001
	push	ar2
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	pop	ar2
	clr	_P2_6
	C$lcd.c$101$1$1 ==.
;	lcd.c:101: CMD_NIBBLE(val & 0x0F)
	mov	a,#0x0F
	anl	a,r2
	mov	_P2,a
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$102$1$1 ==.
;	lcd.c:102: while(LCD_State(1) & BUSY_FLAG);
00101$:
	setb	_LCD_State_PARM_1
	lcall	_LCD_State
	mov	a,dpl
	jb	acc.7,00101$
	C$lcd.c$103$1$1 ==.
;	lcd.c:103: EA=ea;
	mov	c,_LCD_SendCmd_ea_1_1
	mov	_EA,c
	C$lcd.c$104$1$1 ==.
	XG$LCD_SendCmd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SendData'
;------------------------------------------------------------
;val                       Allocated to registers r2 
;------------------------------------------------------------
	G$LCD_SendData$0$0 ==.
	C$lcd.c$108$1$1 ==.
;	lcd.c:108: void LCD_SendData( byte val )
;	-----------------------------------------
;	 function LCD_SendData
;	-----------------------------------------
_LCD_SendData:
	mov	r2,dpl
	C$lcd.c$110$1$1 ==.
;	lcd.c:110: __bit ea=EA;
	mov	c,_EA
	mov	_LCD_SendData_ea_1_1,c
	C$lcd.c$111$1$1 ==.
;	lcd.c:111: EA=0;
	clr	_EA
	C$lcd.c$112$1$1 ==.
;	lcd.c:112: DATA_NIBBLE((val>>4) & 0x0F)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r3,a
	mov	a,#0x0F
	anl	a,r3
	orl	a,#0x10
	mov	_P2,a
	mov	dptr,#0x0001
	push	ar2
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	pop	ar2
	clr	_P2_6
	C$lcd.c$113$1$1 ==.
;	lcd.c:113: DATA_NIBBLE(val & 0x0F)
	mov	a,#0x0F
	anl	a,r2
	orl	a,#0x10
	mov	_P2,a
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$114$1$1 ==.
;	lcd.c:114: while(LCD_State(1) & BUSY_FLAG);
00101$:
	setb	_LCD_State_PARM_1
	lcall	_LCD_State
	mov	a,dpl
	jb	acc.7,00101$
	C$lcd.c$115$1$1 ==.
;	lcd.c:115: LCD_Pos++;
	inc	_LCD_Pos
	C$lcd.c$116$1$1 ==.
;	lcd.c:116: EA=ea;
	mov	c,_LCD_SendData_ea_1_1
	mov	_EA,c
	C$lcd.c$117$1$1 ==.
	XG$LCD_SendData$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$LcdInit$0$0 ==.
	C$lcd.c$120$1$1 ==.
;	lcd.c:120: void LcdInit(void)
;	-----------------------------------------
;	 function LcdInit
;	-----------------------------------------
_LcdInit:
	C$lcd.c$123$1$1 ==.
;	lcd.c:123: P2=( 0 );                         // nulovani RS, RW a EN
	mov	_P2,#0x00
	C$lcd.c$124$1$1 ==.
;	lcd.c:124: Pause(8000);                      //po zapnuti - prodleva > 15 ms
	mov	dptr,#0x1F40
	lcall	_Pause
	C$lcd.c$125$1$1 ==.
;	lcd.c:125: CMD_NIBBLE(FUNCTION_INIT)         // 1. 8bitovy interface
	mov	_P2,#0x03
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$126$1$1 ==.
;	lcd.c:126: Pause(2000);                      //prodleva > 4,1 ms
	mov	dptr,#0x07D0
	lcall	_Pause
	C$lcd.c$127$1$1 ==.
;	lcd.c:127: CMD_NIBBLE(FUNCTION_INIT)         // 2. 8bitovy interface
	mov	_P2,#0x03
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$128$1$1 ==.
;	lcd.c:128: Pause(50);                        //prodleva > 100 us
	mov	dptr,#0x0032
	lcall	_Pause
	C$lcd.c$129$1$1 ==.
;	lcd.c:129: CMD_NIBBLE(FUNCTION_INIT)         // 3. 8bitovy interface
	mov	_P2,#0x03
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$130$1$1 ==.
;	lcd.c:130: while(LCD_State(0)& BUSY_FLAG);   // cekani dokud neni LCD volny
00101$:
	clr	_LCD_State_PARM_1
	lcall	_LCD_State
	mov	a,dpl
	jb	acc.7,00101$
	C$lcd.c$131$1$1 ==.
;	lcd.c:131: CMD_NIBBLE(FUNCTION_SET>>4)       // 4bitovy interface
	mov	_P2,#0x02
	mov	dptr,#0x0001
	lcall	_Pause
	setb	_P2_6
	mov	dptr,#0x0001
	lcall	_Pause
	clr	_P2_6
	C$lcd.c$132$1$1 ==.
;	lcd.c:132: while(LCD_State(0)& BUSY_FLAG);   // cekani dokud neni LCD volny
00104$:
	clr	_LCD_State_PARM_1
	lcall	_LCD_State
	mov	a,dpl
	jb	acc.7,00104$
	C$lcd.c$133$1$1 ==.
;	lcd.c:133: LCD_SendCmd(FUNCTION_SET);        // 4bitovy interface, 2 radky, 5x8 font
	mov	dpl,#0x28
	lcall	_LCD_SendCmd
	C$lcd.c$134$1$1 ==.
;	lcd.c:134: LCD_SendCmd(CLEAR_DISPLAY);       // nulovani (vymazani) LCD
	mov	dpl,#0x01
	lcall	_LCD_SendCmd
	C$lcd.c$135$1$1 ==.
;	lcd.c:135: LCD_SendCmd(ENTRY_MODE);          // normalni zapis na LCD
	mov	dpl,#0x06
	lcall	_LCD_SendCmd
	C$lcd.c$136$1$1 ==.
;	lcd.c:136: LCD_SendCmd(DISPLAY_ON);          // LCD ON
	mov	dpl,#0x0C
	lcall	_LCD_SendCmd
	C$lcd.c$137$1$1 ==.
;	lcd.c:137: LCD_Pos=0;
	mov	_LCD_Pos,#0x00
	C$lcd.c$138$1$1 ==.
	XG$LcdInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;cursor                    Allocated with name '_putchar_cursor_1_1'
;last_cur                  Allocated with name '_putchar_last_cur_1_1'
;c                         Allocated to registers r2 
;n                         Allocated to registers r4 
;linebuff                  Allocated with name '_putchar_linebuff_1_1'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$lcd.c$142$1$1 ==.
;	lcd.c:142: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r2,dpl
	C$lcd.c$150$1$1 ==.
;	lcd.c:150: if (c == '\r')
	cjne	r2,#0x0D,00112$
	C$lcd.c$152$2$2 ==.
;	lcd.c:152: LCD_SendCmd(DDRAM_ADDRESS | LINE2_ORIGIN);
	mov	dpl,#0xC0
	lcall	_LCD_SendCmd
	C$lcd.c$153$2$2 ==.
;	lcd.c:153: if (last_cur == 0)
	mov	a,_putchar_last_cur_1_1
	jnz	00102$
	C$lcd.c$154$2$2 ==.
;	lcd.c:154: last_cur = cursor;
	mov	_putchar_last_cur_1_1,_putchar_cursor_1_1
00102$:
	C$lcd.c$155$2$2 ==.
;	lcd.c:155: cursor = 0;
	mov	_putchar_cursor_1_1,#0x00
	ret
00112$:
	C$lcd.c$157$1$1 ==.
;	lcd.c:157: else if (c == '\n' || cursor == 16)
	clr	a
	cjne	r2,#0x0A,00131$
	inc	a
00131$:
	mov	r3,a
	jnz	00107$
	mov	a,#0x10
	cjne	a,_putchar_cursor_1_1,00108$
00107$:
	C$lcd.c$159$2$3 ==.
;	lcd.c:159: LCD_SendCmd(CLEAR_DISPLAY);
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_LCD_SendCmd
	pop	ar3
	pop	ar2
	C$lcd.c$160$2$3 ==.
;	lcd.c:160: if (last_cur < cursor)
	mov	a,_putchar_last_cur_1_1
	cjne	a,_putchar_cursor_1_1,00136$
00136$:
	jnc	00125$
	C$lcd.c$161$2$3 ==.
;	lcd.c:161: last_cur = cursor;
	mov	_putchar_last_cur_1_1,_putchar_cursor_1_1
	C$lcd.c$163$1$1 ==.
;	lcd.c:163: for (n = 0 ; n < last_cur ; n++)
00125$:
	mov	r4,#0x00
00114$:
	mov	a,r4
	cjne	a,_putchar_last_cur_1_1,00138$
00138$:
	jnc	00117$
	C$lcd.c$165$3$4 ==.
;	lcd.c:165: LCD_SendData(linebuff[n]);
	mov	a,r4
	add	a,#_putchar_linebuff_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_putchar_linebuff_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_LCD_SendData
	pop	ar4
	pop	ar3
	pop	ar2
	C$lcd.c$163$2$3 ==.
;	lcd.c:163: for (n = 0 ; n < last_cur ; n++)
	inc	r4
	sjmp	00114$
00117$:
	C$lcd.c$169$2$3 ==.
;	lcd.c:169: LCD_SendCmd(DDRAM_ADDRESS | LINE2_ORIGIN);
	mov	dpl,#0xC0
	push	ar2
	push	ar3
	lcall	_LCD_SendCmd
	pop	ar3
	pop	ar2
	C$lcd.c$171$2$3 ==.
;	lcd.c:171: last_cur = cursor = 0;
	C$lcd.c$173$2$3 ==.
;	lcd.c:173: if (c != '\n')
	clr	a
	mov	_putchar_cursor_1_1,a
	mov	_putchar_last_cur_1_1,a
	mov	a,r3
	jnz	00118$
	C$lcd.c$174$2$3 ==.
;	lcd.c:174: putchar(c);
	mov	dpl,r2
	sjmp	_putchar
00108$:
	C$lcd.c$178$2$5 ==.
;	lcd.c:178: linebuff[cursor++] = c;
	mov	r3,_putchar_cursor_1_1
	inc	_putchar_cursor_1_1
	mov	a,r3
	add	a,#_putchar_linebuff_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_putchar_linebuff_1_1 >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
	C$lcd.c$179$2$5 ==.
;	lcd.c:179: LCD_SendData(c);
	mov	dpl,r2
	C$lcd.c$182$1$1 ==.
	XG$putchar$0$0 ==.
	ljmp	_LCD_SendData
00118$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
