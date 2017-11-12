;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Nov 23 17:14:08 2015
;--------------------------------------------------------
	.module modbus
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MrtuWr_PARM_6
	.globl _MrtuWr_PARM_5
	.globl _MrtuWr_PARM_4
	.globl _MrtuWr_PARM_3
	.globl _MrtuWr_PARM_2
	.globl _MrtuRd_PARM_5
	.globl _MrtuRd_PARM_4
	.globl _MrtuRd_PARM_3
	.globl _MrtuRd_PARM_2
	.globl _MrtuWrOne_PARM_5
	.globl _MrtuWrOne_PARM_4
	.globl _MrtuWrOne_PARM_3
	.globl _MrtuWrOne_PARM_2
	.globl _MrtuAnsRd_PARM_5
	.globl _MrtuAnsRd_PARM_4
	.globl _MrtuAnsRd_PARM_3
	.globl _MrtuAnsRd_PARM_2
	.globl _MrtuAnsErr_PARM_4
	.globl _MrtuAnsErr_PARM_3
	.globl _MrtuAnsErr_PARM_2
	.globl _MrtuWrCrc_PARM_2
	.globl _MrtuCrc_PARM_2
	.globl _MbLrc_PARM_2
	.globl _WrWord_PARM_2
	.globl _tabCRCLo
	.globl _tabCRCHi
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
	.globl _MbAnsErr_PARM_4
	.globl _MbAnsErr_PARM_3
	.globl _MbAnsErr_PARM_2
	.globl _MbAnsRd_PARM_5
	.globl _MbAnsRd_PARM_4
	.globl _MbAnsRd_PARM_3
	.globl _MbAnsRd_PARM_2
	.globl _MbWr_PARM_6
	.globl _MbWr_PARM_5
	.globl _MbWr_PARM_4
	.globl _MbWr_PARM_3
	.globl _MbWr_PARM_2
	.globl _MbWrOne_PARM_5
	.globl _MbWrOne_PARM_4
	.globl _MbWrOne_PARM_3
	.globl _MbWrOne_PARM_2
	.globl _MbRd_PARM_5
	.globl _MbRd_PARM_4
	.globl _MbRd_PARM_3
	.globl _MbRd_PARM_2
	.globl _MbWrWord_PARM_2
	.globl _MbWrByte_PARM_2
	.globl _RdWord
	.globl _WrWord
	.globl _AHex
	.globl _HexAsc
	.globl _MbRdByte
	.globl _MbRdWord
	.globl _MbWrByte
	.globl _MbWrWord
	.globl _MbWrEoT
	.globl _MbLrc
	.globl _MbRd
	.globl _MbWrOne
	.globl _MbWr
	.globl _MbAnsRd
	.globl _MbAnsErr
	.globl _MrtuCrc
	.globl _MrtuRdCrc
	.globl _MrtuWrCrc
	.globl _MrtuAnsErr
	.globl _MrtuAnsRd
	.globl _MrtuWrOne
	.globl _MrtuRd
	.globl _MrtuWr
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
LMbWrByte$bf$1$1==.
_MbWrByte_PARM_2:
	.ds 3
LMbWrWord$bf$1$1==.
_MbWrWord_PARM_2:
	.ds 3
LMbRd$fce$1$1==.
_MbRd_PARM_2:
	.ds 1
LMbRd$reg$1$1==.
_MbRd_PARM_3:
	.ds 2
LMbRd$nbr$1$1==.
_MbRd_PARM_4:
	.ds 2
LMbRd$bf$1$1==.
_MbRd_PARM_5:
	.ds 3
LMbWrOne$fce$1$1==.
_MbWrOne_PARM_2:
	.ds 1
LMbWrOne$reg$1$1==.
_MbWrOne_PARM_3:
	.ds 2
LMbWrOne$val$1$1==.
_MbWrOne_PARM_4:
	.ds 2
LMbWrOne$bf$1$1==.
_MbWrOne_PARM_5:
	.ds 3
LMbWr$fce$1$1==.
_MbWr_PARM_2:
	.ds 1
LMbWr$reg$1$1==.
_MbWr_PARM_3:
	.ds 2
LMbWr$nbr$1$1==.
_MbWr_PARM_4:
	.ds 2
LMbWr$vals$1$1==.
_MbWr_PARM_5:
	.ds 3
LMbWr$bf$1$1==.
_MbWr_PARM_6:
	.ds 3
LMbWr$n$1$1==.
_MbWr_n_1_1:
	.ds 1
LMbAnsRd$fce$1$1==.
_MbAnsRd_PARM_2:
	.ds 1
LMbAnsRd$bytes$1$1==.
_MbAnsRd_PARM_3:
	.ds 1
LMbAnsRd$vals$1$1==.
_MbAnsRd_PARM_4:
	.ds 3
LMbAnsRd$bf$1$1==.
_MbAnsRd_PARM_5:
	.ds 3
LMbAnsRd$n$1$1==.
_MbAnsRd_n_1_1:
	.ds 1
LMbAnsErr$fce$1$1==.
_MbAnsErr_PARM_2:
	.ds 1
LMbAnsErr$er$1$1==.
_MbAnsErr_PARM_3:
	.ds 1
LMbAnsErr$bf$1$1==.
_MbAnsErr_PARM_4:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LWrWord$bf$1$1==.
_WrWord_PARM_2::
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LMbLrc$len$1$1==.
_MbLrc_PARM_2::
	.ds 1
	.area	OSEG    (OVR,DATA)
LMrtuCrc$len$1$1==.
_MrtuCrc_PARM_2::
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LMrtuWrCrc$bf$1$1==.
_MrtuWrCrc_PARM_2::
	.ds 3
	.area	OSEG    (OVR,DATA)
LMrtuAnsErr$fce$1$1==.
_MrtuAnsErr_PARM_2::
	.ds 1
LMrtuAnsErr$err$1$1==.
_MrtuAnsErr_PARM_3::
	.ds 1
LMrtuAnsErr$bf$1$1==.
_MrtuAnsErr_PARM_4::
	.ds 3
	.area	OSEG    (OVR,DATA)
LMrtuAnsRd$fce$1$1==.
_MrtuAnsRd_PARM_2::
	.ds 1
LMrtuAnsRd$bytes$1$1==.
_MrtuAnsRd_PARM_3::
	.ds 1
LMrtuAnsRd$vals$1$1==.
_MrtuAnsRd_PARM_4::
	.ds 3
LMrtuAnsRd$bf$1$1==.
_MrtuAnsRd_PARM_5::
	.ds 3
LMrtuAnsRd$n$1$1==.
_MrtuAnsRd_n_1_1::
	.ds 1
	.area	OSEG    (OVR,DATA)
LMrtuWrOne$fce$1$1==.
_MrtuWrOne_PARM_2::
	.ds 1
LMrtuWrOne$reg$1$1==.
_MrtuWrOne_PARM_3::
	.ds 2
LMrtuWrOne$val$1$1==.
_MrtuWrOne_PARM_4::
	.ds 2
LMrtuWrOne$bf$1$1==.
_MrtuWrOne_PARM_5::
	.ds 3
	.area	OSEG    (OVR,DATA)
LMrtuRd$fce$1$1==.
_MrtuRd_PARM_2::
	.ds 1
LMrtuRd$reg$1$1==.
_MrtuRd_PARM_3::
	.ds 2
LMrtuRd$nbr$1$1==.
_MrtuRd_PARM_4::
	.ds 2
LMrtuRd$bf$1$1==.
_MrtuRd_PARM_5::
	.ds 3
	.area	OSEG    (OVR,DATA)
LMrtuWr$fce$1$1==.
_MrtuWr_PARM_2::
	.ds 1
LMrtuWr$reg$1$1==.
_MrtuWr_PARM_3::
	.ds 2
LMrtuWr$nbr$1$1==.
_MrtuWr_PARM_4::
	.ds 2
LMrtuWr$vals$1$1==.
_MrtuWr_PARM_5::
	.ds 3
LMrtuWr$bf$1$1==.
_MrtuWr_PARM_6::
	.ds 3
LMrtuWr$bytes$1$1==.
_MrtuWr_bytes_1_1::
	.ds 1
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;Allocation info for local variables in function 'RdWord'
;------------------------------------------------------------
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$RdWord$0$0 ==.
	C$modbus.c$7$0$0 ==.
;	modbus.c:7: word RdWord(byte * bf)
;	-----------------------------------------
;	 function RdWord
;	-----------------------------------------
_RdWord:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$modbus.c$9$1$1 ==.
;	modbus.c:9: return ( *bf<<8 | *(bf+1));
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov	r6,a
	mov	r5,#0x00
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,#0x00
	orl	a,r5
	mov	dpl,a
	mov	a,r3
	orl	a,r6
	mov	dph,a
	C$modbus.c$10$1$1 ==.
	XG$RdWord$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WrWord'
;------------------------------------------------------------
;bf                        Allocated with name '_WrWord_PARM_2'
;val                       Allocated to registers r2 r3 
;------------------------------------------------------------
	G$WrWord$0$0 ==.
	C$modbus.c$12$1$1 ==.
;	modbus.c:12: byte WrWord(word val,byte *bf)
;	-----------------------------------------
;	 function WrWord
;	-----------------------------------------
_WrWord:
	mov	r2,dpl
	mov	r3,dph
	C$modbus.c$14$1$1 ==.
;	modbus.c:14: *bf++ = val>>8;
	mov	r4,_WrWord_PARM_2
	mov	r5,(_WrWord_PARM_2 + 1)
	mov	r6,(_WrWord_PARM_2 + 2)
	mov	ar7,r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_WrWord_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_WrWord_PARM_2 + 1),a
	mov	(_WrWord_PARM_2 + 2),r6
	C$modbus.c$15$1$1 ==.
;	modbus.c:15: *bf   = val;
	mov	r4,_WrWord_PARM_2
	mov	r5,(_WrWord_PARM_2 + 1)
	mov	r6,(_WrWord_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	C$modbus.c$16$1$1 ==.
;	modbus.c:16: return 2;
	mov	dpl,#0x02
	C$modbus.c$18$1$1 ==.
	XG$WrWord$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AHex'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
	G$AHex$0$0 ==.
	C$modbus.c$23$1$1 ==.
;	modbus.c:23: byte AHex(byte c)
;	-----------------------------------------
;	 function AHex
;	-----------------------------------------
_AHex:
	mov	r2,dpl
	C$modbus.c$25$1$1 ==.
;	modbus.c:25: if ((c>=(byte)'0') && (c<=(byte)'9')) return (byte)(c-'0');
	cjne	r2,#0x30,00113$
00113$:
	jc	00102$
	mov	a,#0x39
	cjne	a,ar2,00115$
00115$:
	jc	00102$
	mov	a,r2
	add	a,#0xd0
	mov	dpl,a
	ret
00102$:
	C$modbus.c$26$1$1 ==.
;	modbus.c:26: if ((c>=(byte)'A') && (c<=(byte)'F')) return (byte)(c-'A'+10);
	cjne	r2,#0x41,00117$
00117$:
	jc	00105$
	mov	a,#0x46
	cjne	a,ar2,00119$
00119$:
	jc	00105$
	mov	a,#0xC9
	add	a,r2
	mov	dpl,a
	C$modbus.c$27$1$1 ==.
;	modbus.c:27: return 0xFF;
	C$modbus.c$28$1$1 ==.
	XG$AHex$0$0 ==.
	ret
00105$:
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HexAsc'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;------------------------------------------------------------
	G$HexAsc$0$0 ==.
	C$modbus.c$30$1$1 ==.
;	modbus.c:30: byte HexAsc(byte b)
;	-----------------------------------------
;	 function HexAsc
;	-----------------------------------------
_HexAsc:
	mov	r2,dpl
	C$modbus.c$32$1$1 ==.
;	modbus.c:32: if (b<10)  return (byte)(b+'0');
	cjne	r2,#0x0A,00106$
00106$:
	jnc	00102$
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	ret
00102$:
	C$modbus.c$33$1$1 ==.
;	modbus.c:33: return (byte)(b-10+'A');
	mov	a,#0x37
	add	a,r2
	mov	dpl,a
	C$modbus.c$34$1$1 ==.
	XG$HexAsc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbRdByte'
;------------------------------------------------------------
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$MbRdByte$0$0 ==.
	C$modbus.c$37$1$1 ==.
;	modbus.c:37: byte MbRdByte(byte *bf)
;	-----------------------------------------
;	 function MbRdByte
;	-----------------------------------------
_MbRdByte:
	C$modbus.c$39$1$1 ==.
;	modbus.c:39: return ((AHex(*bf) << 4) | AHex(*(bf+1)));
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_AHex
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	swap	a
	anl	a,#0xf0
	mov	r5,a
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	lcall	_AHex
	mov	r2,dpl
	pop	ar5
	mov	a,r2
	orl	a,r5
	mov	dpl,a
	C$modbus.c$40$1$1 ==.
	XG$MbRdByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbRdWord'
;------------------------------------------------------------
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$MbRdWord$0$0 ==.
	C$modbus.c$41$1$1 ==.
;	modbus.c:41: word MbRdWord(byte *bf)
;	-----------------------------------------
;	 function MbRdWord
;	-----------------------------------------
_MbRdWord:
	C$modbus.c$43$1$1 ==.
;	modbus.c:43: return ((AHex(*bf) << 12) | (AHex(*(bf+1)) << 8) | (AHex(*(bf+2)) << 4) | AHex(*(bf+3)));
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_AHex
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	r5,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_AHex
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	ar0,r7
	clr	a
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	a,#0x02
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_AHex
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	push	ar6
	lcall	_AHex
	mov	r2,dpl
	pop	ar6
	pop	ar5
	mov	r3,#0x00
	mov	a,r2
	orl	a,r5
	mov	dpl,a
	mov	a,r3
	orl	a,r6
	mov	dph,a
	C$modbus.c$44$1$1 ==.
	XG$MbRdWord$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbWrByte'
;------------------------------------------------------------
;bf                        Allocated with name '_MbWrByte_PARM_2'
;b                         Allocated to registers r2 
;------------------------------------------------------------
	G$MbWrByte$0$0 ==.
	C$modbus.c$48$1$1 ==.
;	modbus.c:48: byte MbWrByte(byte b,byte *bf)
;	-----------------------------------------
;	 function MbWrByte
;	-----------------------------------------
_MbWrByte:
	mov	r2,dpl
	C$modbus.c$50$1$1 ==.
;	modbus.c:50: *bf++ = HexAsc(b >> 4);
	mov	r3,_MbWrByte_PARM_2
	mov	r4,(_MbWrByte_PARM_2 + 1)
	mov	r5,(_MbWrByte_PARM_2 + 2)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HexAsc
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	C$modbus.c$51$1$1 ==.
;	modbus.c:51: *bf = HexAsc(b & 0xF);
	mov	r3,_MbWrByte_PARM_2
	mov	r4,(_MbWrByte_PARM_2 + 1)
	mov	r5,(_MbWrByte_PARM_2 + 2)
	mov	a,#0x0F
	anl	a,r2
	mov	dpl,a
	push	ar3
	push	ar4
	push	ar5
	lcall	_HexAsc
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	C$modbus.c$52$1$1 ==.
;	modbus.c:52: return 2;
	mov	dpl,#0x02
	C$modbus.c$53$1$1 ==.
	XG$MbWrByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbWrWord'
;------------------------------------------------------------
;bf                        Allocated with name '_MbWrWord_PARM_2'
;w                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$MbWrWord$0$0 ==.
	C$modbus.c$56$1$1 ==.
;	modbus.c:56: byte MbWrWord(word w,byte *bf)
;	-----------------------------------------
;	 function MbWrWord
;	-----------------------------------------
_MbWrWord:
	mov	r2,dpl
	mov	r3,dph
	C$modbus.c$58$1$1 ==.
;	modbus.c:58: *bf++ = HexAsc(w >> 12);
	mov	r4,_MbWrWord_PARM_2
	mov	r5,(_MbWrWord_PARM_2 + 1)
	mov	r6,(_MbWrWord_PARM_2 + 2)
	mov	a,r3
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HexAsc
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r6
	C$modbus.c$59$1$1 ==.
;	modbus.c:59: *bf++ = HexAsc((w >> 8) & 0xF);
	mov	r4,_MbWrWord_PARM_2
	mov	r5,(_MbWrWord_PARM_2 + 1)
	mov	r6,(_MbWrWord_PARM_2 + 2)
	mov	ar7,r3
	mov	a,#0x0F
	anl	a,r7
	mov	dpl,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HexAsc
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r6
	C$modbus.c$60$1$1 ==.
;	modbus.c:60: *bf++ = HexAsc((w >> 4) & 0xF);
	mov	r4,_MbWrWord_PARM_2
	mov	r5,(_MbWrWord_PARM_2 + 1)
	mov	r6,(_MbWrWord_PARM_2 + 2)
	mov	ar7,r2
	mov	a,r3
	swap	a
	xch	a,r7
	swap	a
	anl	a,#0x0f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x0f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	ar7,#0x0F
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HexAsc
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r6
	C$modbus.c$61$1$1 ==.
;	modbus.c:61: *bf = HexAsc(w & 0xF);
	mov	r4,_MbWrWord_PARM_2
	mov	r5,(_MbWrWord_PARM_2 + 1)
	mov	r6,(_MbWrWord_PARM_2 + 2)
	anl	ar2,#0x0F
	mov	dpl,r2
	push	ar4
	push	ar5
	push	ar6
	lcall	_HexAsc
	mov	r2,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	C$modbus.c$62$1$1 ==.
;	modbus.c:62: return 4;
	mov	dpl,#0x04
	C$modbus.c$63$1$1 ==.
	XG$MbWrWord$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbWrEoT'
;------------------------------------------------------------
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$MbWrEoT$0$0 ==.
	C$modbus.c$65$1$1 ==.
;	modbus.c:65: byte MbWrEoT(byte *bf)
;	-----------------------------------------
;	 function MbWrEoT
;	-----------------------------------------
_MbWrEoT:
	C$modbus.c$67$1$1 ==.
;	modbus.c:67: *bf++='\r';
	mov	r4,b
	mov	a,#0x0D
	lcall	__gptrput
	inc	dptr
	C$modbus.c$68$1$1 ==.
;	modbus.c:68: *bf='\n';
	mov	b,r4
	mov	a,#0x0A
	lcall	__gptrput
	C$modbus.c$69$1$1 ==.
;	modbus.c:69: return 2;
	mov	dpl,#0x02
	C$modbus.c$70$1$1 ==.
	XG$MbWrEoT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbLrc'
;------------------------------------------------------------
;len                       Allocated with name '_MbLrc_PARM_2'
;bf                        Allocated to registers r2 r3 r4 
;lrc                       Allocated to registers r5 
;------------------------------------------------------------
	G$MbLrc$0$0 ==.
	C$modbus.c$72$1$1 ==.
;	modbus.c:72: byte MbLrc(byte *bf,byte len)
;	-----------------------------------------
;	 function MbLrc
;	-----------------------------------------
_MbLrc:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$modbus.c$74$1$1 ==.
;	modbus.c:74: byte lrc=0;
	mov	r5,#0x00
	C$modbus.c$76$1$1 ==.
;	modbus.c:76: while(len--) lrc+=*bf++;
	mov	r6,_MbLrc_PARM_2
00101$:
	mov	ar7,r6
	dec	r6
	mov	a,r7
	jz	00103$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r7
	add	a,r5
	mov	r5,a
	sjmp	00101$
00103$:
	C$modbus.c$77$1$1 ==.
;	modbus.c:77: return -lrc;
	clr	c
	clr	a
	subb	a,r5
	mov	dpl,a
	C$modbus.c$78$1$1 ==.
	XG$MbLrc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbRd'
;------------------------------------------------------------
;fce                       Allocated with name '_MbRd_PARM_2'
;reg                       Allocated with name '_MbRd_PARM_3'
;nbr                       Allocated with name '_MbRd_PARM_4'
;bf                        Allocated with name '_MbRd_PARM_5'
;adr                       Allocated to registers r2 
;n                         Allocated to registers r2 
;------------------------------------------------------------
	G$MbRd$0$0 ==.
	C$modbus.c$81$1$1 ==.
;	modbus.c:81: byte MbRd(byte adr,byte fce,word reg,word nbr,byte *bf)
;	-----------------------------------------
;	 function MbRd
;	-----------------------------------------
_MbRd:
	mov	r2,dpl
	C$modbus.c$85$1$1 ==.
;	modbus.c:85: *bf = ':';
	mov	r3,_MbRd_PARM_5
	mov	r4,(_MbRd_PARM_5 + 1)
	mov	r5,(_MbRd_PARM_5 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x3A
	lcall	__gptrput
	C$modbus.c$86$1$1 ==.
;	modbus.c:86: n += MbWrByte(adr,bf+n);
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	inc	r2
	C$modbus.c$87$1$1 ==.
;	modbus.c:87: n += MbWrByte(fce,bf+n);
	mov	a,r2
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbRd_PARM_2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	add	a,r2
	C$modbus.c$88$1$1 ==.
;	modbus.c:88: n += MbWrWord(reg,bf+n);
	mov	r2,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbRd_PARM_3
	mov	dph,(_MbRd_PARM_3 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrWord
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	add	a,r2
	C$modbus.c$89$1$1 ==.
;	modbus.c:89: n += MbWrWord(nbr,bf+n);
	mov	r2,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbRd_PARM_4
	mov	dph,(_MbRd_PARM_4 + 1)
	push	ar2
	lcall	_MbWrWord
	mov	r3,dpl
	pop	ar2
	mov	a,r3
	add	a,r2
	C$modbus.c$90$1$1 ==.
;	modbus.c:90: return n;
	C$modbus.c$91$1$1 ==.
	XG$MbRd$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbWrOne'
;------------------------------------------------------------
;fce                       Allocated with name '_MbWrOne_PARM_2'
;reg                       Allocated with name '_MbWrOne_PARM_3'
;val                       Allocated with name '_MbWrOne_PARM_4'
;bf                        Allocated with name '_MbWrOne_PARM_5'
;adr                       Allocated to registers r2 
;n                         Allocated to registers r2 
;------------------------------------------------------------
	G$MbWrOne$0$0 ==.
	C$modbus.c$93$1$1 ==.
;	modbus.c:93: byte MbWrOne(byte adr,byte fce,word reg,word val,byte *bf)
;	-----------------------------------------
;	 function MbWrOne
;	-----------------------------------------
_MbWrOne:
	mov	r2,dpl
	C$modbus.c$97$1$1 ==.
;	modbus.c:97: *bf = ':';
	mov	r3,_MbWrOne_PARM_5
	mov	r4,(_MbWrOne_PARM_5 + 1)
	mov	r5,(_MbWrOne_PARM_5 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x3A
	lcall	__gptrput
	C$modbus.c$98$1$1 ==.
;	modbus.c:98: n += MbWrByte(adr,bf+n);
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	inc	r2
	C$modbus.c$99$1$1 ==.
;	modbus.c:99: n += MbWrByte(fce,bf+n);
	mov	a,r2
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbWrOne_PARM_2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	add	a,r2
	C$modbus.c$100$1$1 ==.
;	modbus.c:100: n += MbWrWord(reg,bf+n);
	mov	r2,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbWrOne_PARM_3
	mov	dph,(_MbWrOne_PARM_3 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrWord
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	add	a,r2
	C$modbus.c$101$1$1 ==.
;	modbus.c:101: n += MbWrWord(val,bf+n);
	mov	r2,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbWrOne_PARM_4
	mov	dph,(_MbWrOne_PARM_4 + 1)
	push	ar2
	lcall	_MbWrWord
	mov	r3,dpl
	pop	ar2
	mov	a,r3
	add	a,r2
	C$modbus.c$102$1$1 ==.
;	modbus.c:102: return n;
	C$modbus.c$103$1$1 ==.
	XG$MbWrOne$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbWr'
;------------------------------------------------------------
;fce                       Allocated with name '_MbWr_PARM_2'
;reg                       Allocated with name '_MbWr_PARM_3'
;nbr                       Allocated with name '_MbWr_PARM_4'
;vals                      Allocated with name '_MbWr_PARM_5'
;bf                        Allocated with name '_MbWr_PARM_6'
;adr                       Allocated to registers r2 
;n                         Allocated with name '_MbWr_n_1_1'
;bytes                     Allocated to registers r6 
;------------------------------------------------------------
	G$MbWr$0$0 ==.
	C$modbus.c$106$1$1 ==.
;	modbus.c:106: byte MbWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf)
;	-----------------------------------------
;	 function MbWr
;	-----------------------------------------
_MbWr:
	mov	r2,dpl
	C$modbus.c$109$1$1 ==.
;	modbus.c:109: *bf = ':';
	mov	r3,_MbWr_PARM_6
	mov	r4,(_MbWr_PARM_6 + 1)
	mov	r5,(_MbWr_PARM_6 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x3A
	lcall	__gptrput
	C$modbus.c$110$1$1 ==.
;	modbus.c:110: n += MbWrByte(adr,bf+n);
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r2
	inc	a
	C$modbus.c$111$1$1 ==.
;	modbus.c:111: n += MbWrByte(fce,bf+n);
	mov	_MbWr_n_1_1,a
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbWr_PARM_2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r6
	add	a,_MbWr_n_1_1
	C$modbus.c$112$1$1 ==.
;	modbus.c:112: n += MbWrWord(reg,bf+n);
	mov	_MbWr_n_1_1,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbWr_PARM_3
	mov	dph,(_MbWr_PARM_3 + 1)
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrWord
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r6
	add	a,_MbWr_n_1_1
	C$modbus.c$113$1$1 ==.
;	modbus.c:113: n += MbWrWord(nbr,bf+n);
	mov	_MbWr_n_1_1,a
	add	a,r3
	mov	_MbWrWord_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrWord_PARM_2 + 1),a
	mov	(_MbWrWord_PARM_2 + 2),r5
	mov	dpl,_MbWr_PARM_4
	mov	dph,(_MbWr_PARM_4 + 1)
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrWord
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r6
	add	a,_MbWr_n_1_1
	mov	_MbWr_n_1_1,a
	C$modbus.c$114$1$1 ==.
;	modbus.c:114: switch(fce)
	mov	a,#0x0F
	cjne	a,_MbWr_PARM_2,00115$
	sjmp	00102$
00115$:
	mov	a,#0x10
	cjne	a,_MbWr_PARM_2,00103$
	C$modbus.c$116$2$2 ==.
;	modbus.c:116: case 0x10: bytes = 2*nbr;break;
	mov	a,_MbWr_PARM_4
	add	a,acc
	mov	r6,a
	C$modbus.c$117$2$2 ==.
;	modbus.c:117: case 0x0F: bytes = (nbr+7)/8;break;
	sjmp	00104$
00102$:
	mov	a,#0x07
	add	a,_MbWr_PARM_4
	mov	r7,a
	clr	a
	addc	a,(_MbWr_PARM_4 + 1)
	swap	a
	rl	a
	xch	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x1f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	mov	r0,a
	mov	ar6,r7
	C$modbus.c$118$2$2 ==.
;	modbus.c:118: default  : bytes = 0;
	sjmp	00104$
00103$:
	mov	r6,#0x00
	C$modbus.c$119$1$1 ==.
;	modbus.c:119: }
00104$:
	C$modbus.c$120$1$1 ==.
;	modbus.c:120: n += MbWrByte(bytes,bf+n);
	mov	a,_MbWr_n_1_1
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r6
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_MbWrByte
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r7
	add	a,_MbWr_n_1_1
	mov	_MbWr_n_1_1,a
	C$modbus.c$121$1$1 ==.
;	modbus.c:121: while(bytes--)
	mov	r7,_MbWr_PARM_5
	mov	r0,(_MbWr_PARM_5 + 1)
	mov	r1,(_MbWr_PARM_5 + 2)
00105$:
	mov	ar2,r6
	dec	r6
	mov	a,r2
	jz	00107$
	C$modbus.c$122$1$1 ==.
;	modbus.c:122: n += MbWrByte(*vals++,bf+n);
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r7,dpl
	mov	r0,dph
	mov	a,_MbWr_n_1_1
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r2
	add	a,_MbWr_n_1_1
	mov	_MbWr_n_1_1,a
	sjmp	00105$
00107$:
	C$modbus.c$123$1$1 ==.
;	modbus.c:123: return n;
	mov	dpl,_MbWr_n_1_1
	C$modbus.c$124$1$1 ==.
	XG$MbWr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbAnsRd'
;------------------------------------------------------------
;fce                       Allocated with name '_MbAnsRd_PARM_2'
;bytes                     Allocated with name '_MbAnsRd_PARM_3'
;vals                      Allocated with name '_MbAnsRd_PARM_4'
;bf                        Allocated with name '_MbAnsRd_PARM_5'
;adr                       Allocated to registers r2 
;n                         Allocated with name '_MbAnsRd_n_1_1'
;------------------------------------------------------------
	G$MbAnsRd$0$0 ==.
	C$modbus.c$127$1$1 ==.
;	modbus.c:127: byte MbAnsRd(byte adr, byte fce, byte bytes, byte *vals,byte *bf)
;	-----------------------------------------
;	 function MbAnsRd
;	-----------------------------------------
_MbAnsRd:
	mov	r2,dpl
	C$modbus.c$130$1$1 ==.
;	modbus.c:130: *bf = ':';
	mov	r3,_MbAnsRd_PARM_5
	mov	r4,(_MbAnsRd_PARM_5 + 1)
	mov	r5,(_MbAnsRd_PARM_5 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x3A
	lcall	__gptrput
	C$modbus.c$131$1$1 ==.
;	modbus.c:131: n += MbWrByte(adr,bf+n);
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r2
	inc	a
	C$modbus.c$132$1$1 ==.
;	modbus.c:132: n += MbWrByte(fce,bf+n);
	mov	_MbAnsRd_n_1_1,a
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbAnsRd_PARM_2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r6
	add	a,_MbAnsRd_n_1_1
	C$modbus.c$133$1$1 ==.
;	modbus.c:133: n += MbWrByte(bytes,bf+n);
	mov	_MbAnsRd_n_1_1,a
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbAnsRd_PARM_3
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r6
	add	a,_MbAnsRd_n_1_1
	mov	_MbAnsRd_n_1_1,a
	C$modbus.c$134$1$1 ==.
;	modbus.c:134: while(bytes--)
	mov	r6,_MbAnsRd_PARM_4
	mov	r7,(_MbAnsRd_PARM_4 + 1)
	mov	r0,(_MbAnsRd_PARM_4 + 2)
	mov	r1,_MbAnsRd_PARM_3
00101$:
	mov	ar2,r1
	dec	r1
	mov	a,r2
	jz	00103$
	C$modbus.c$135$1$1 ==.
;	modbus.c:135: n += MbWrByte(*vals++,bf+n);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,_MbAnsRd_n_1_1
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r2
	add	a,_MbAnsRd_n_1_1
	mov	_MbAnsRd_n_1_1,a
	sjmp	00101$
00103$:
	C$modbus.c$136$1$1 ==.
;	modbus.c:136: return n;
	mov	dpl,_MbAnsRd_n_1_1
	C$modbus.c$137$1$1 ==.
	XG$MbAnsRd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MbAnsErr'
;------------------------------------------------------------
;fce                       Allocated with name '_MbAnsErr_PARM_2'
;er                        Allocated with name '_MbAnsErr_PARM_3'
;bf                        Allocated with name '_MbAnsErr_PARM_4'
;adr                       Allocated to registers r2 
;n                         Allocated to registers r2 
;------------------------------------------------------------
	G$MbAnsErr$0$0 ==.
	C$modbus.c$140$1$1 ==.
;	modbus.c:140: byte MbAnsErr(byte adr,byte fce,byte er,byte *bf)
;	-----------------------------------------
;	 function MbAnsErr
;	-----------------------------------------
_MbAnsErr:
	mov	r2,dpl
	C$modbus.c$144$1$1 ==.
;	modbus.c:144: *bf = ':';
	mov	r3,_MbAnsErr_PARM_4
	mov	r4,(_MbAnsErr_PARM_4 + 1)
	mov	r5,(_MbAnsErr_PARM_4 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x3A
	lcall	__gptrput
	C$modbus.c$145$1$1 ==.
;	modbus.c:145: n += MbWrByte(adr,bf+n);
	mov	a,#0x01
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,r2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r2,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	inc	r2
	C$modbus.c$146$1$1 ==.
;	modbus.c:146: n += MbWrByte(fce,bf+n);
	mov	a,r2
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbAnsErr_PARM_2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_MbWrByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	add	a,r2
	C$modbus.c$147$1$1 ==.
;	modbus.c:147: n += MbWrByte(er,bf+n);
	mov	r2,a
	add	a,r3
	mov	_MbWrByte_PARM_2,a
	clr	a
	addc	a,r4
	mov	(_MbWrByte_PARM_2 + 1),a
	mov	(_MbWrByte_PARM_2 + 2),r5
	mov	dpl,_MbAnsErr_PARM_3
	push	ar2
	lcall	_MbWrByte
	mov	r3,dpl
	pop	ar2
	mov	a,r3
	add	a,r2
	C$modbus.c$148$1$1 ==.
;	modbus.c:148: return n;
	C$modbus.c$149$1$1 ==.
	XG$MbAnsErr$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuCrc'
;------------------------------------------------------------
;len                       Allocated with name '_MrtuCrc_PARM_2'
;bf                        Allocated to registers r2 r3 r4 
;CRCHi                     Allocated to registers r5 
;CRCLo                     Allocated to registers r6 
;index                     Allocated to registers r0 
;------------------------------------------------------------
	G$MrtuCrc$0$0 ==.
	C$modbus.c$194$1$1 ==.
;	modbus.c:194: word MrtuCrc(byte * bf, byte len )
;	-----------------------------------------
;	 function MrtuCrc
;	-----------------------------------------
_MrtuCrc:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$modbus.c$196$1$1 ==.
;	modbus.c:196: byte CRCHi = 0xFF ;  /* MSB CRC */
	mov	r5,#0xFF
	C$modbus.c$197$1$1 ==.
;	modbus.c:197: byte CRCLo = 0xFF ;  /* LSB CRC  */
	mov	r6,#0xFF
	C$modbus.c$199$2$2 ==.
;	modbus.c:199: while (len--)
	mov	r7,_MrtuCrc_PARM_2
00101$:
	mov	ar0,r7
	dec	r7
	mov	a,r0
	jz	00103$
	C$modbus.c$201$2$2 ==.
;	modbus.c:201: index = CRCLo ^ *bf++ ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r6
	xrl	ar0,a
	C$modbus.c$202$2$2 ==.
;	modbus.c:202: CRCLo = CRCHi ^ tabCRCHi[index] ;
	mov	a,r0
	mov	dptr,#_tabCRCHi
	movc	a,@a+dptr
	mov	r1,a
	xrl	a,r5
	mov	r6,a
	C$modbus.c$203$2$2 ==.
;	modbus.c:203: CRCHi = tabCRCLo[index] ;
	mov	a,r0
	mov	dptr,#_tabCRCLo
	movc	a,@a+dptr
	mov	r5,a
	sjmp	00101$
00103$:
	C$modbus.c$206$1$1 ==.
;	modbus.c:206: return (CRCHi << 8 | CRCLo) ;
	mov	ar2,r5
	clr	a
	mov	r5,a
	mov	r3,a
	mov	a,r6
	orl	a,r5
	mov	dpl,a
	mov	a,r3
	orl	a,r2
	mov	dph,a
	C$modbus.c$207$1$1 ==.
	XG$MrtuCrc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuRdCrc'
;------------------------------------------------------------
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$MrtuRdCrc$0$0 ==.
	C$modbus.c$209$1$1 ==.
;	modbus.c:209: word MrtuRdCrc(byte * bf)
;	-----------------------------------------
;	 function MrtuRdCrc
;	-----------------------------------------
_MrtuRdCrc:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$modbus.c$211$1$1 ==.
;	modbus.c:211: return ( *(bf+1)<<8 | *bf);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,#0x00
	orl	a,r5
	mov	dpl,a
	mov	a,r3
	orl	a,r6
	mov	dph,a
	C$modbus.c$212$1$1 ==.
	XG$MrtuRdCrc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuWrCrc'
;------------------------------------------------------------
;bf                        Allocated with name '_MrtuWrCrc_PARM_2'
;crc                       Allocated to registers r2 r3 
;------------------------------------------------------------
	G$MrtuWrCrc$0$0 ==.
	C$modbus.c$214$1$1 ==.
;	modbus.c:214: byte MrtuWrCrc(word crc,byte * bf)
;	-----------------------------------------
;	 function MrtuWrCrc
;	-----------------------------------------
_MrtuWrCrc:
	mov	r2,dpl
	mov	r3,dph
	C$modbus.c$216$1$1 ==.
;	modbus.c:216: *bf++ = crc;
	mov	r4,_MrtuWrCrc_PARM_2
	mov	r5,(_MrtuWrCrc_PARM_2 + 1)
	mov	r6,(_MrtuWrCrc_PARM_2 + 2)
	mov	ar7,r2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_MrtuWrCrc_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_MrtuWrCrc_PARM_2 + 1),a
	mov	(_MrtuWrCrc_PARM_2 + 2),r6
	C$modbus.c$217$1$1 ==.
;	modbus.c:217: *bf   = crc>>8;
	mov	r4,_MrtuWrCrc_PARM_2
	mov	r5,(_MrtuWrCrc_PARM_2 + 1)
	mov	r6,(_MrtuWrCrc_PARM_2 + 2)
	mov	ar2,r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	C$modbus.c$218$1$1 ==.
;	modbus.c:218: return 2;
	mov	dpl,#0x02
	C$modbus.c$220$1$1 ==.
	XG$MrtuWrCrc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuAnsErr'
;------------------------------------------------------------
;fce                       Allocated with name '_MrtuAnsErr_PARM_2'
;err                       Allocated with name '_MrtuAnsErr_PARM_3'
;bf                        Allocated with name '_MrtuAnsErr_PARM_4'
;adr                       Allocated to registers r2 
;------------------------------------------------------------
	G$MrtuAnsErr$0$0 ==.
	C$modbus.c$223$1$1 ==.
;	modbus.c:223: byte MrtuAnsErr(byte adr,byte fce,byte err,byte *bf)
;	-----------------------------------------
;	 function MrtuAnsErr
;	-----------------------------------------
_MrtuAnsErr:
	mov	r2,dpl
	C$modbus.c$225$1$1 ==.
;	modbus.c:225: *bf++=adr;
	mov	r3,_MrtuAnsErr_PARM_4
	mov	r4,(_MrtuAnsErr_PARM_4 + 1)
	mov	r5,(_MrtuAnsErr_PARM_4 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MrtuAnsErr_PARM_4,a
	clr	a
	addc	a,r4
	mov	(_MrtuAnsErr_PARM_4 + 1),a
	mov	(_MrtuAnsErr_PARM_4 + 2),r5
	C$modbus.c$226$1$1 ==.
;	modbus.c:226: *bf++=fce;
	mov	r2,_MrtuAnsErr_PARM_4
	mov	r3,(_MrtuAnsErr_PARM_4 + 1)
	mov	r4,(_MrtuAnsErr_PARM_4 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_MrtuAnsErr_PARM_2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuAnsErr_PARM_4,a
	clr	a
	addc	a,r3
	mov	(_MrtuAnsErr_PARM_4 + 1),a
	mov	(_MrtuAnsErr_PARM_4 + 2),r4
	C$modbus.c$227$1$1 ==.
;	modbus.c:227: *bf++=err;
	mov	r2,_MrtuAnsErr_PARM_4
	mov	r3,(_MrtuAnsErr_PARM_4 + 1)
	mov	r4,(_MrtuAnsErr_PARM_4 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_MrtuAnsErr_PARM_3
	lcall	__gptrput
	C$modbus.c$228$1$1 ==.
;	modbus.c:228: return 3;
	mov	dpl,#0x03
	C$modbus.c$229$1$1 ==.
	XG$MrtuAnsErr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuAnsRd'
;------------------------------------------------------------
;fce                       Allocated with name '_MrtuAnsRd_PARM_2'
;bytes                     Allocated with name '_MrtuAnsRd_PARM_3'
;vals                      Allocated with name '_MrtuAnsRd_PARM_4'
;bf                        Allocated with name '_MrtuAnsRd_PARM_5'
;adr                       Allocated to registers r2 
;n                         Allocated with name '_MrtuAnsRd_n_1_1'
;------------------------------------------------------------
	G$MrtuAnsRd$0$0 ==.
	C$modbus.c$230$1$1 ==.
;	modbus.c:230: byte MrtuAnsRd(byte adr,byte fce,byte bytes,byte *vals,byte *bf)
;	-----------------------------------------
;	 function MrtuAnsRd
;	-----------------------------------------
_MrtuAnsRd:
	mov	r2,dpl
	C$modbus.c$232$1$1 ==.
;	modbus.c:232: byte n=bytes+3;
	mov	a,#0x03
	add	a,_MrtuAnsRd_PARM_3
	mov	_MrtuAnsRd_n_1_1,a
	C$modbus.c$233$1$1 ==.
;	modbus.c:233: *bf++=adr;
	mov	r4,_MrtuAnsRd_PARM_5
	mov	r5,(_MrtuAnsRd_PARM_5 + 1)
	mov	r6,(_MrtuAnsRd_PARM_5 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	_MrtuAnsRd_PARM_5,a
	clr	a
	addc	a,r5
	mov	(_MrtuAnsRd_PARM_5 + 1),a
	mov	(_MrtuAnsRd_PARM_5 + 2),r6
	C$modbus.c$234$1$1 ==.
;	modbus.c:234: *bf++=fce;
	mov	r2,_MrtuAnsRd_PARM_5
	mov	r4,(_MrtuAnsRd_PARM_5 + 1)
	mov	r5,(_MrtuAnsRd_PARM_5 + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	mov	a,_MrtuAnsRd_PARM_2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuAnsRd_PARM_5,a
	clr	a
	addc	a,r4
	mov	(_MrtuAnsRd_PARM_5 + 1),a
	mov	(_MrtuAnsRd_PARM_5 + 2),r5
	C$modbus.c$235$1$1 ==.
;	modbus.c:235: *bf++=bytes;
	mov	r2,_MrtuAnsRd_PARM_5
	mov	r4,(_MrtuAnsRd_PARM_5 + 1)
	mov	r5,(_MrtuAnsRd_PARM_5 + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	mov	a,_MrtuAnsRd_PARM_3
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuAnsRd_PARM_5,a
	clr	a
	addc	a,r4
	mov	(_MrtuAnsRd_PARM_5 + 1),a
	mov	(_MrtuAnsRd_PARM_5 + 2),r5
	C$modbus.c$236$1$1 ==.
;	modbus.c:236: while(bytes--) *bf++ = *vals++;
	mov	r2,_MrtuAnsRd_PARM_4
	mov	r4,(_MrtuAnsRd_PARM_4 + 1)
	mov	r5,(_MrtuAnsRd_PARM_4 + 2)
	mov	r6,_MrtuAnsRd_PARM_5
	mov	r7,(_MrtuAnsRd_PARM_5 + 1)
	mov	r0,(_MrtuAnsRd_PARM_5 + 2)
	mov	r1,_MrtuAnsRd_PARM_3
00101$:
	mov	ar3,r1
	dec	r1
	mov	a,r3
	jz	00103$
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r2,dpl
	mov	r4,dph
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00101$
00103$:
	C$modbus.c$237$1$1 ==.
;	modbus.c:237: return n;
	mov	dpl,_MrtuAnsRd_n_1_1
	C$modbus.c$238$1$1 ==.
	XG$MrtuAnsRd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuWrOne'
;------------------------------------------------------------
;fce                       Allocated with name '_MrtuWrOne_PARM_2'
;reg                       Allocated with name '_MrtuWrOne_PARM_3'
;val                       Allocated with name '_MrtuWrOne_PARM_4'
;bf                        Allocated with name '_MrtuWrOne_PARM_5'
;adr                       Allocated to registers r2 
;------------------------------------------------------------
	G$MrtuWrOne$0$0 ==.
	C$modbus.c$239$1$1 ==.
;	modbus.c:239: byte MrtuWrOne(byte adr,byte fce,word reg,word val,byte *bf)
;	-----------------------------------------
;	 function MrtuWrOne
;	-----------------------------------------
_MrtuWrOne:
	mov	r2,dpl
	C$modbus.c$241$1$1 ==.
;	modbus.c:241: *bf++=adr;
	mov	r3,_MrtuWrOne_PARM_5
	mov	r4,(_MrtuWrOne_PARM_5 + 1)
	mov	r5,(_MrtuWrOne_PARM_5 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MrtuWrOne_PARM_5,a
	clr	a
	addc	a,r4
	mov	(_MrtuWrOne_PARM_5 + 1),a
	mov	(_MrtuWrOne_PARM_5 + 2),r5
	C$modbus.c$242$1$1 ==.
;	modbus.c:242: *bf++=fce;
	mov	r2,_MrtuWrOne_PARM_5
	mov	r3,(_MrtuWrOne_PARM_5 + 1)
	mov	r4,(_MrtuWrOne_PARM_5 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_MrtuWrOne_PARM_2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWrOne_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuWrOne_PARM_5 + 1),a
	mov	(_MrtuWrOne_PARM_5 + 2),r4
	C$modbus.c$243$1$1 ==.
;	modbus.c:243: *bf++=reg>>8;
	mov	r2,_MrtuWrOne_PARM_5
	mov	r3,(_MrtuWrOne_PARM_5 + 1)
	mov	r4,(_MrtuWrOne_PARM_5 + 2)
	mov	r5,(_MrtuWrOne_PARM_3 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWrOne_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuWrOne_PARM_5 + 1),a
	mov	(_MrtuWrOne_PARM_5 + 2),r4
	C$modbus.c$244$1$1 ==.
;	modbus.c:244: *bf++=reg;
	mov	r2,_MrtuWrOne_PARM_5
	mov	r3,(_MrtuWrOne_PARM_5 + 1)
	mov	r4,(_MrtuWrOne_PARM_5 + 2)
	mov	r5,_MrtuWrOne_PARM_3
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWrOne_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuWrOne_PARM_5 + 1),a
	mov	(_MrtuWrOne_PARM_5 + 2),r4
	C$modbus.c$245$1$1 ==.
;	modbus.c:245: *bf++=val>>8;
	mov	r2,_MrtuWrOne_PARM_5
	mov	r3,(_MrtuWrOne_PARM_5 + 1)
	mov	r4,(_MrtuWrOne_PARM_5 + 2)
	mov	r5,(_MrtuWrOne_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWrOne_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuWrOne_PARM_5 + 1),a
	mov	(_MrtuWrOne_PARM_5 + 2),r4
	C$modbus.c$246$1$1 ==.
;	modbus.c:246: *bf++=val;
	mov	r2,_MrtuWrOne_PARM_5
	mov	r3,(_MrtuWrOne_PARM_5 + 1)
	mov	r4,(_MrtuWrOne_PARM_5 + 2)
	mov	r5,_MrtuWrOne_PARM_4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	C$modbus.c$247$1$1 ==.
;	modbus.c:247: return 6;
	mov	dpl,#0x06
	C$modbus.c$248$1$1 ==.
	XG$MrtuWrOne$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuRd'
;------------------------------------------------------------
;fce                       Allocated with name '_MrtuRd_PARM_2'
;reg                       Allocated with name '_MrtuRd_PARM_3'
;nbr                       Allocated with name '_MrtuRd_PARM_4'
;bf                        Allocated with name '_MrtuRd_PARM_5'
;adr                       Allocated to registers r2 
;------------------------------------------------------------
	G$MrtuRd$0$0 ==.
	C$modbus.c$250$1$1 ==.
;	modbus.c:250: byte MrtuRd(byte adr,byte fce,word reg,word nbr,byte *bf)
;	-----------------------------------------
;	 function MrtuRd
;	-----------------------------------------
_MrtuRd:
	mov	r2,dpl
	C$modbus.c$252$1$1 ==.
;	modbus.c:252: *bf++=adr;
	mov	r3,_MrtuRd_PARM_5
	mov	r4,(_MrtuRd_PARM_5 + 1)
	mov	r5,(_MrtuRd_PARM_5 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MrtuRd_PARM_5,a
	clr	a
	addc	a,r4
	mov	(_MrtuRd_PARM_5 + 1),a
	mov	(_MrtuRd_PARM_5 + 2),r5
	C$modbus.c$253$1$1 ==.
;	modbus.c:253: *bf++=fce;
	mov	r2,_MrtuRd_PARM_5
	mov	r3,(_MrtuRd_PARM_5 + 1)
	mov	r4,(_MrtuRd_PARM_5 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_MrtuRd_PARM_2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuRd_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuRd_PARM_5 + 1),a
	mov	(_MrtuRd_PARM_5 + 2),r4
	C$modbus.c$254$1$1 ==.
;	modbus.c:254: *bf++=reg>>8;
	mov	r2,_MrtuRd_PARM_5
	mov	r3,(_MrtuRd_PARM_5 + 1)
	mov	r4,(_MrtuRd_PARM_5 + 2)
	mov	r5,(_MrtuRd_PARM_3 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuRd_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuRd_PARM_5 + 1),a
	mov	(_MrtuRd_PARM_5 + 2),r4
	C$modbus.c$255$1$1 ==.
;	modbus.c:255: *bf++=reg;
	mov	r2,_MrtuRd_PARM_5
	mov	r3,(_MrtuRd_PARM_5 + 1)
	mov	r4,(_MrtuRd_PARM_5 + 2)
	mov	r5,_MrtuRd_PARM_3
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuRd_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuRd_PARM_5 + 1),a
	mov	(_MrtuRd_PARM_5 + 2),r4
	C$modbus.c$256$1$1 ==.
;	modbus.c:256: *bf++=nbr>>8;
	mov	r2,_MrtuRd_PARM_5
	mov	r3,(_MrtuRd_PARM_5 + 1)
	mov	r4,(_MrtuRd_PARM_5 + 2)
	mov	r5,(_MrtuRd_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuRd_PARM_5,a
	clr	a
	addc	a,r3
	mov	(_MrtuRd_PARM_5 + 1),a
	mov	(_MrtuRd_PARM_5 + 2),r4
	C$modbus.c$257$1$1 ==.
;	modbus.c:257: *bf++=nbr;
	mov	r2,_MrtuRd_PARM_5
	mov	r3,(_MrtuRd_PARM_5 + 1)
	mov	r4,(_MrtuRd_PARM_5 + 2)
	mov	r5,_MrtuRd_PARM_4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	C$modbus.c$258$1$1 ==.
;	modbus.c:258: return 6;
	mov	dpl,#0x06
	C$modbus.c$259$1$1 ==.
	XG$MrtuRd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MrtuWr'
;------------------------------------------------------------
;fce                       Allocated with name '_MrtuWr_PARM_2'
;reg                       Allocated with name '_MrtuWr_PARM_3'
;nbr                       Allocated with name '_MrtuWr_PARM_4'
;vals                      Allocated with name '_MrtuWr_PARM_5'
;bf                        Allocated with name '_MrtuWr_PARM_6'
;adr                       Allocated to registers r2 
;n                         Allocated to registers r1 
;bytes                     Allocated with name '_MrtuWr_bytes_1_1'
;------------------------------------------------------------
	G$MrtuWr$0$0 ==.
	C$modbus.c$261$1$1 ==.
;	modbus.c:261: byte MrtuWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf)
;	-----------------------------------------
;	 function MrtuWr
;	-----------------------------------------
_MrtuWr:
	mov	r2,dpl
	C$modbus.c$265$1$1 ==.
;	modbus.c:265: *bf++=adr;
	mov	r3,_MrtuWr_PARM_6
	mov	r4,(_MrtuWr_PARM_6 + 1)
	mov	r5,(_MrtuWr_PARM_6 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r4
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r5
	C$modbus.c$266$1$1 ==.
;	modbus.c:266: *bf++=fce;
	mov	r2,_MrtuWr_PARM_6
	mov	r3,(_MrtuWr_PARM_6 + 1)
	mov	r4,(_MrtuWr_PARM_6 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_MrtuWr_PARM_2
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r3
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r4
	C$modbus.c$267$1$1 ==.
;	modbus.c:267: *bf++=reg>>8;
	mov	r2,_MrtuWr_PARM_6
	mov	r3,(_MrtuWr_PARM_6 + 1)
	mov	r4,(_MrtuWr_PARM_6 + 2)
	mov	r5,(_MrtuWr_PARM_3 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r3
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r4
	C$modbus.c$268$1$1 ==.
;	modbus.c:268: *bf++=reg;
	mov	r2,_MrtuWr_PARM_6
	mov	r3,(_MrtuWr_PARM_6 + 1)
	mov	r4,(_MrtuWr_PARM_6 + 2)
	mov	r5,_MrtuWr_PARM_3
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r3
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r4
	C$modbus.c$269$1$1 ==.
;	modbus.c:269: *bf++=nbr>>8;
	mov	r2,_MrtuWr_PARM_6
	mov	r3,(_MrtuWr_PARM_6 + 1)
	mov	r4,(_MrtuWr_PARM_6 + 2)
	mov	r5,(_MrtuWr_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r3
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r4
	C$modbus.c$270$1$1 ==.
;	modbus.c:270: *bf++=nbr;
	mov	r2,_MrtuWr_PARM_6
	mov	r3,(_MrtuWr_PARM_6 + 1)
	mov	r4,(_MrtuWr_PARM_6 + 2)
	mov	r5,_MrtuWr_PARM_4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r3
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r4
	C$modbus.c$271$1$1 ==.
;	modbus.c:271: switch(fce)
	mov	a,#0x0F
	cjne	a,_MrtuWr_PARM_2,00115$
	sjmp	00102$
00115$:
	mov	a,#0x10
	cjne	a,_MrtuWr_PARM_2,00103$
	C$modbus.c$273$2$2 ==.
;	modbus.c:273: case 16: bytes=2*nbr;break;
	mov	a,r5
	add	a,r5
	mov	_MrtuWr_bytes_1_1,a
	C$modbus.c$274$2$2 ==.
;	modbus.c:274: case 15: bytes= (nbr+7)/8;break;
	sjmp	00104$
00102$:
	mov	a,#0x07
	add	a,_MrtuWr_PARM_4
	mov	r3,a
	clr	a
	addc	a,(_MrtuWr_PARM_4 + 1)
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	_MrtuWr_bytes_1_1,r3
	C$modbus.c$275$2$2 ==.
;	modbus.c:275: default: bytes=0;
	sjmp	00104$
00103$:
	mov	_MrtuWr_bytes_1_1,#0x00
	C$modbus.c$276$1$1 ==.
;	modbus.c:276: }
00104$:
	C$modbus.c$277$1$1 ==.
;	modbus.c:277: *bf++=n=bytes;
	mov	r3,_MrtuWr_PARM_6
	mov	r4,(_MrtuWr_PARM_6 + 1)
	mov	r5,(_MrtuWr_PARM_6 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_MrtuWr_bytes_1_1
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	_MrtuWr_PARM_6,a
	clr	a
	addc	a,r4
	mov	(_MrtuWr_PARM_6 + 1),a
	mov	(_MrtuWr_PARM_6 + 2),r5
	C$modbus.c$278$1$1 ==.
;	modbus.c:278: while(n--) *bf++= *vals++;
	mov	r3,_MrtuWr_PARM_5
	mov	r4,(_MrtuWr_PARM_5 + 1)
	mov	r5,(_MrtuWr_PARM_5 + 2)
	mov	r6,_MrtuWr_PARM_6
	mov	r7,(_MrtuWr_PARM_6 + 1)
	mov	r0,(_MrtuWr_PARM_6 + 2)
	mov	r1,_MrtuWr_bytes_1_1
00105$:
	mov	ar2,r1
	dec	r1
	mov	a,r2
	jz	00107$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00105$
00107$:
	C$modbus.c$279$1$1 ==.
;	modbus.c:279: return bytes+7;
	mov	a,#0x07
	add	a,_MrtuWr_bytes_1_1
	mov	dpl,a
	C$modbus.c$280$1$1 ==.
	XG$MrtuWr$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$tabCRCHi$0$0 == .
_tabCRCHi:
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x01	; 1
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0xC1	; 193
	.db #0x81	; 129
	.db #0x40	; 64
G$tabCRCLo$0$0 == .
_tabCRCLo:
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0xC1	; 193
	.db #0x01	; 1
	.db #0xC3	; 195
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0xC2	; 194
	.db #0xC6	; 198
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0xC7	; 199
	.db #0x05	; 5
	.db #0xC5	; 197
	.db #0xC4	; 196
	.db #0x04	; 4
	.db #0xCC	; 204
	.db #0x0C	; 12
	.db #0x0D	; 13
	.db #0xCD	; 205
	.db #0x0F	; 15
	.db #0xCF	; 207
	.db #0xCE	; 206
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0xCA	; 202
	.db #0xCB	; 203
	.db #0x0B	; 11
	.db #0xC9	; 201
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0xC8	; 200
	.db #0xD8	; 216
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0xD9	; 217
	.db #0x1B	; 27
	.db #0xDB	; 219
	.db #0xDA	; 218
	.db #0x1A	; 26
	.db #0x1E	; 30
	.db #0xDE	; 222
	.db #0xDF	; 223
	.db #0x1F	; 31
	.db #0xDD	; 221
	.db #0x1D	; 29
	.db #0x1C	; 28
	.db #0xDC	; 220
	.db #0x14	; 20
	.db #0xD4	; 212
	.db #0xD5	; 213
	.db #0x15	; 21
	.db #0xD7	; 215
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0xD6	; 214
	.db #0xD2	; 210
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0xD3	; 211
	.db #0x11	; 17
	.db #0xD1	; 209
	.db #0xD0	; 208
	.db #0x10	; 16
	.db #0xF0	; 240
	.db #0x30	; 48
	.db #0x31	; 49
	.db #0xF1	; 241
	.db #0x33	; 51
	.db #0xF3	; 243
	.db #0xF2	; 242
	.db #0x32	; 50
	.db #0x36	; 54
	.db #0xF6	; 246
	.db #0xF7	; 247
	.db #0x37	; 55
	.db #0xF5	; 245
	.db #0x35	; 53
	.db #0x34	; 52
	.db #0xF4	; 244
	.db #0x3C	; 60
	.db #0xFC	; 252
	.db #0xFD	; 253
	.db #0x3D	; 61
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0x3E	; 62
	.db #0xFE	; 254
	.db #0xFA	; 250
	.db #0x3A	; 58
	.db #0x3B	; 59
	.db #0xFB	; 251
	.db #0x39	; 57
	.db #0xF9	; 249
	.db #0xF8	; 248
	.db #0x38	; 56
	.db #0x28	; 40
	.db #0xE8	; 232
	.db #0xE9	; 233
	.db #0x29	; 41
	.db #0xEB	; 235
	.db #0x2B	; 43
	.db #0x2A	; 42
	.db #0xEA	; 234
	.db #0xEE	; 238
	.db #0x2E	; 46
	.db #0x2F	; 47
	.db #0xEF	; 239
	.db #0x2D	; 45
	.db #0xED	; 237
	.db #0xEC	; 236
	.db #0x2C	; 44
	.db #0xE4	; 228
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0xE5	; 229
	.db #0x27	; 39
	.db #0xE7	; 231
	.db #0xE6	; 230
	.db #0x26	; 38
	.db #0x22	; 34
	.db #0xE2	; 226
	.db #0xE3	; 227
	.db #0x23	; 35
	.db #0xE1	; 225
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0xE0	; 224
	.db #0xA0	; 160
	.db #0x60	; 96
	.db #0x61	; 97	a
	.db #0xA1	; 161
	.db #0x63	; 99	c
	.db #0xA3	; 163
	.db #0xA2	; 162
	.db #0x62	; 98	b
	.db #0x66	; 102	f
	.db #0xA6	; 166
	.db #0xA7	; 167
	.db #0x67	; 103	g
	.db #0xA5	; 165
	.db #0x65	; 101	e
	.db #0x64	; 100	d
	.db #0xA4	; 164
	.db #0x6C	; 108	l
	.db #0xAC	; 172
	.db #0xAD	; 173
	.db #0x6D	; 109	m
	.db #0xAF	; 175
	.db #0x6F	; 111	o
	.db #0x6E	; 110	n
	.db #0xAE	; 174
	.db #0xAA	; 170
	.db #0x6A	; 106	j
	.db #0x6B	; 107	k
	.db #0xAB	; 171
	.db #0x69	; 105	i
	.db #0xA9	; 169
	.db #0xA8	; 168
	.db #0x68	; 104	h
	.db #0x78	; 120	x
	.db #0xB8	; 184
	.db #0xB9	; 185
	.db #0x79	; 121	y
	.db #0xBB	; 187
	.db #0x7B	; 123
	.db #0x7A	; 122	z
	.db #0xBA	; 186
	.db #0xBE	; 190
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0xBF	; 191
	.db #0x7D	; 125
	.db #0xBD	; 189
	.db #0xBC	; 188
	.db #0x7C	; 124
	.db #0xB4	; 180
	.db #0x74	; 116	t
	.db #0x75	; 117	u
	.db #0xB5	; 181
	.db #0x77	; 119	w
	.db #0xB7	; 183
	.db #0xB6	; 182
	.db #0x76	; 118	v
	.db #0x72	; 114	r
	.db #0xB2	; 178
	.db #0xB3	; 179
	.db #0x73	; 115	s
	.db #0xB1	; 177
	.db #0x71	; 113	q
	.db #0x70	; 112	p
	.db #0xB0	; 176
	.db #0x50	; 80	P
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x51	; 81	Q
	.db #0x93	; 147
	.db #0x53	; 83	S
	.db #0x52	; 82	R
	.db #0x92	; 146
	.db #0x96	; 150
	.db #0x56	; 86	V
	.db #0x57	; 87	W
	.db #0x97	; 151
	.db #0x55	; 85	U
	.db #0x95	; 149
	.db #0x94	; 148
	.db #0x54	; 84	T
	.db #0x9C	; 156
	.db #0x5C	; 92
	.db #0x5D	; 93
	.db #0x9D	; 157
	.db #0x5F	; 95
	.db #0x9F	; 159
	.db #0x9E	; 158
	.db #0x5E	; 94
	.db #0x5A	; 90	Z
	.db #0x9A	; 154
	.db #0x9B	; 155
	.db #0x5B	; 91
	.db #0x99	; 153
	.db #0x59	; 89	Y
	.db #0x58	; 88	X
	.db #0x98	; 152
	.db #0x88	; 136
	.db #0x48	; 72	H
	.db #0x49	; 73	I
	.db #0x89	; 137
	.db #0x4B	; 75	K
	.db #0x8B	; 139
	.db #0x8A	; 138
	.db #0x4A	; 74	J
	.db #0x4E	; 78	N
	.db #0x8E	; 142
	.db #0x8F	; 143
	.db #0x4F	; 79	O
	.db #0x8D	; 141
	.db #0x4D	; 77	M
	.db #0x4C	; 76	L
	.db #0x8C	; 140
	.db #0x44	; 68	D
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x45	; 69	E
	.db #0x87	; 135
	.db #0x47	; 71	G
	.db #0x46	; 70	F
	.db #0x86	; 134
	.db #0x82	; 130
	.db #0x42	; 66	B
	.db #0x43	; 67	C
	.db #0x83	; 131
	.db #0x41	; 65	A
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x40	; 64
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
