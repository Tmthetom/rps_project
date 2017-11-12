;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Nov 23 17:14:08 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SendBuf_PARM_2
	.globl _timer1
	.globl _main
	.globl _SendBuf
	.globl _ComInit
	.globl _TimerInit
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _ECAN
	.globl _EADC
	.globl _ETIM
	.globl _ESPI
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _P
	.globl _UD
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _P3_0
	.globl _P3_1
	.globl _P3_2
	.globl _P3_3
	.globl _P3_4
	.globl _P3_5
	.globl _P3_6
	.globl _P3_7
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _SPDAT
	.globl _SPSCR
	.globl _SPCON
	.globl _CANEN2
	.globl _CANEN1
	.globl _CANIDM4
	.globl _CANIDM3
	.globl _CANIDM2
	.globl _CANIDM1
	.globl _CANIE2
	.globl _CANIE1
	.globl _CANGIE
	.globl _CANIDT4
	.globl _CANIDT3
	.globl _CANIDT2
	.globl _CANIDT1
	.globl _CANSIT2
	.globl _CANSIT1
	.globl _CANBT3
	.globl _CANBT2
	.globl _CANBT1
	.globl _CANCONCH
	.globl _CANSTCH
	.globl _CANPAGE
	.globl _CANSTMPH
	.globl _CANSTMPL
	.globl _CANTIMH
	.globl _CANTIML
	.globl _CANGCON
	.globl _CANGSTA
	.globl _CANTTCH
	.globl _CANTTCL
	.globl _CANMSG
	.globl _CANTCON
	.globl _CANREC
	.globl _CANTEC
	.globl _CANGIT
	.globl _CCAPM4
	.globl _CCAP4L
	.globl _CCAP4H
	.globl _CCAPM3
	.globl _CCAP3L
	.globl _CCAP3H
	.globl _CCAPM2
	.globl _CCAP2L
	.globl _CCAP2H
	.globl _CCAPM1
	.globl _CCAP1L
	.globl _CCAP1H
	.globl _CCAPM0
	.globl _CCAP0L
	.globl _CCAP0H
	.globl _CL
	.globl _CH
	.globl _CMOD
	.globl _CCON
	.globl _IEN1
	.globl _IPH0
	.globl _IPL0
	.globl _IE
	.globl _IEN
	.globl _IEN0
	.globl _IPH1
	.globl _IPL1
	.globl _AUXR1
	.globl _AUXR
	.globl _EECON
	.globl _FSTA
	.globl _FCON
	.globl _ADCF
	.globl _ADDH
	.globl _ADDL
	.globl _ADCON
	.globl _ADCLK
	.globl _SADDR
	.globl _SADEN
	.globl _SBUF
	.globl _SCON
	.globl _WDTPRG
	.globl _WDTRST
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _TH2
	.globl _TH1
	.globl _TH0
	.globl _TL2
	.globl _TL1
	.globl _TL0
	.globl _T2MOD
	.globl _T2CON
	.globl _TMOD
	.globl _TCON
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKCON
	.globl _PCON
	.globl _DPTR
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _bfout
	.globl _bfin
	.globl _prep
	.globl _val
	.globl _valWord
	.globl _ix
	.globl _itx
	.globl _cnt_ticks
	.globl _stav
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$P4$0$0 == 0x00c0
_P4	=	0x00c0
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$DPTR$0$0 == 0x8382
_DPTR	=	0x8382
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$CKCON$0$0 == 0x008f
_CKCON	=	0x008f
G$CKCON0$0$0 == 0x008f
_CKCON0	=	0x008f
G$CKCON1$0$0 == 0x009f
_CKCON1	=	0x009f
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0$0 == 0x00c9
_T2MOD	=	0x00c9
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$WDTRST$0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SADEN$0$0 == 0x00b9
_SADEN	=	0x00b9
G$SADDR$0$0 == 0x00a9
_SADDR	=	0x00a9
G$ADCLK$0$0 == 0x00f2
_ADCLK	=	0x00f2
G$ADCON$0$0 == 0x00f3
_ADCON	=	0x00f3
G$ADDL$0$0 == 0x00f4
_ADDL	=	0x00f4
G$ADDH$0$0 == 0x00f5
_ADDH	=	0x00f5
G$ADCF$0$0 == 0x00f6
_ADCF	=	0x00f6
G$FCON$0$0 == 0x00d1
_FCON	=	0x00d1
G$FSTA$0$0 == 0x00d3
_FSTA	=	0x00d3
G$EECON$0$0 == 0x00d2
_EECON	=	0x00d2
G$AUXR$0$0 == 0x008e
_AUXR	=	0x008e
G$AUXR1$0$0 == 0x00a2
_AUXR1	=	0x00a2
G$IPL1$0$0 == 0x00f8
_IPL1	=	0x00f8
G$IPH1$0$0 == 0x00f7
_IPH1	=	0x00f7
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$IEN$0$0 == 0x00a8
_IEN	=	0x00a8
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IPL0$0$0 == 0x00b8
_IPL0	=	0x00b8
G$IPH0$0$0 == 0x00b7
_IPH0	=	0x00b7
G$IEN1$0$0 == 0x00e8
_IEN1	=	0x00e8
G$CCON$0$0 == 0x00d8
_CCON	=	0x00d8
G$CMOD$0$0 == 0x00d9
_CMOD	=	0x00d9
G$CH$0$0 == 0x00f9
_CH	=	0x00f9
G$CL$0$0 == 0x00e9
_CL	=	0x00e9
G$CCAP0H$0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP0L$0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAPM0$0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAP1H$0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP1L$0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAPM1$0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAP2H$0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP2L$0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAPM2$0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAP3H$0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP3L$0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAPM3$0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAP4H$0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$CCAP4L$0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAPM4$0$0 == 0x00de
_CCAPM4	=	0x00de
G$CANGIT$0$0 == 0x009b
_CANGIT	=	0x009b
G$CANTEC$0$0 == 0x009c
_CANTEC	=	0x009c
G$CANREC$0$0 == 0x009d
_CANREC	=	0x009d
G$CANTCON$0$0 == 0x00a1
_CANTCON	=	0x00a1
G$CANMSG$0$0 == 0x00a3
_CANMSG	=	0x00a3
G$CANTTCL$0$0 == 0x00a4
_CANTTCL	=	0x00a4
G$CANTTCH$0$0 == 0x00a5
_CANTTCH	=	0x00a5
G$CANGSTA$0$0 == 0x00aa
_CANGSTA	=	0x00aa
G$CANGCON$0$0 == 0x00ab
_CANGCON	=	0x00ab
G$CANTIML$0$0 == 0x00ac
_CANTIML	=	0x00ac
G$CANTIMH$0$0 == 0x00ad
_CANTIMH	=	0x00ad
G$CANSTMPL$0$0 == 0x00ae
_CANSTMPL	=	0x00ae
G$CANSTMPH$0$0 == 0x00af
_CANSTMPH	=	0x00af
G$CANPAGE$0$0 == 0x00b1
_CANPAGE	=	0x00b1
G$CANSTCH$0$0 == 0x00b2
_CANSTCH	=	0x00b2
G$CANCONCH$0$0 == 0x00b3
_CANCONCH	=	0x00b3
G$CANBT1$0$0 == 0x00b4
_CANBT1	=	0x00b4
G$CANBT2$0$0 == 0x00b5
_CANBT2	=	0x00b5
G$CANBT3$0$0 == 0x00b6
_CANBT3	=	0x00b6
G$CANSIT1$0$0 == 0x00ba
_CANSIT1	=	0x00ba
G$CANSIT2$0$0 == 0x00bb
_CANSIT2	=	0x00bb
G$CANIDT1$0$0 == 0x00bc
_CANIDT1	=	0x00bc
G$CANIDT2$0$0 == 0x00bd
_CANIDT2	=	0x00bd
G$CANIDT3$0$0 == 0x00be
_CANIDT3	=	0x00be
G$CANIDT4$0$0 == 0x00bf
_CANIDT4	=	0x00bf
G$CANGIE$0$0 == 0x00c1
_CANGIE	=	0x00c1
G$CANIE1$0$0 == 0x00c2
_CANIE1	=	0x00c2
G$CANIE2$0$0 == 0x00c3
_CANIE2	=	0x00c3
G$CANIDM1$0$0 == 0x00c4
_CANIDM1	=	0x00c4
G$CANIDM2$0$0 == 0x00c5
_CANIDM2	=	0x00c5
G$CANIDM3$0$0 == 0x00c6
_CANIDM3	=	0x00c6
G$CANIDM4$0$0 == 0x00c7
_CANIDM4	=	0x00c7
G$CANEN1$0$0 == 0x00ce
_CANEN1	=	0x00ce
G$CANEN2$0$0 == 0x00cf
_CANEN2	=	0x00cf
G$SPCON$0$0 == 0x00d4
_SPCON	=	0x00d4
G$SPSCR$0$0 == 0x00d5
_SPSCR	=	0x00d5
G$SPDAT$0$0 == 0x00d6
_SPDAT	=	0x00d6
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$P4_0$0$0 == 0x00c0
_P4_0	=	0x00c0
G$P4_1$0$0 == 0x00c1
_P4_1	=	0x00c1
G$P4_2$0$0 == 0x00c2
_P4_2	=	0x00c2
G$P4_3$0$0 == 0x00c3
_P4_3	=	0x00c3
G$P4_4$0$0 == 0x00c4
_P4_4	=	0x00c4
G$P4_5$0$0 == 0x00c5
_P4_5	=	0x00c5
G$P4_6$0$0 == 0x00c6
_P4_6	=	0x00c6
G$P4_7$0$0 == 0x00c7
_P4_7	=	0x00c7
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$UD$0$0 == 0x00d1
_UD	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
G$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
G$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
G$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
G$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
G$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
G$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
G$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$FE$0$0 == 0x009f
_FE	=	0x009f
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$EC$0$0 == 0x00ae
_EC	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ESPI$0$0 == 0x00eb
_ESPI	=	0x00eb
G$ETIM$0$0 == 0x00ea
_ETIM	=	0x00ea
G$EADC$0$0 == 0x00e9
_EADC	=	0x00e9
G$ECAN$0$0 == 0x00e8
_ECAN	=	0x00e8
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$stav$0$0==.
_stav::
	.ds 1
G$cnt_ticks$0$0==.
_cnt_ticks::
	.ds 1
G$itx$0$0==.
_itx::
	.ds 2
G$ix$0$0==.
_ix::
	.ds 2
G$valWord$0$0==.
_valWord::
	.ds 2
G$val$0$0==.
_val::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LSendBuf$len$1$1==.
_SendBuf_PARM_2::
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
G$prep$0$0==.
_prep::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$bfin$0$0==.
_bfin::
	.ds 256
G$bfout$0$0==.
_bfout::
	.ds 256
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'TimerInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$TimerInit$0$0 ==.
	C$main.c$60$0$0 ==.
;	main.c:60: void TimerInit()
;	-----------------------------------------
;	 function TimerInit
;	-----------------------------------------
_TimerInit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$main.c$62$1$1 ==.
;	main.c:62: TMOD=0x11;
	mov	_TMOD,#0x11
	C$main.c$63$1$1 ==.
;	main.c:63: TR0=1;
	setb	_TR0
	C$main.c$64$1$1 ==.
;	main.c:64: EA=1;
	setb	_EA
	C$main.c$65$1$1 ==.
;	main.c:65: ET0=1;
	setb	_ET0
	C$main.c$66$1$1 ==.
;	main.c:66: cnt_ticks=0;
	mov	_cnt_ticks,#0x00
	C$main.c$67$1$1 ==.
	XG$TimerInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ComInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ComInit$0$0 ==.
	C$main.c$70$1$1 ==.
;	main.c:70: void ComInit()
;	-----------------------------------------
;	 function ComInit
;	-----------------------------------------
_ComInit:
	C$main.c$73$1$1 ==.
;	main.c:73: SCON = 0x50;   // 7,n,2
	mov	_SCON,#0x50
	C$main.c$74$1$1 ==.
;	main.c:74: RCAP2H=(word)(-NBIT)>>8;
	mov	_RCAP2H,#0xFF
	C$main.c$75$1$1 ==.
;	main.c:75: RCAP2L=-NBIT;
	mov	_RCAP2L,#0xDF
	C$main.c$76$1$1 ==.
;	main.c:76: T2CON=0x34;
	mov	_T2CON,#0x34
	C$main.c$77$1$1 ==.
	XG$ComInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendBuf'
;------------------------------------------------------------
;len                       Allocated with name '_SendBuf_PARM_2'
;bf                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$SendBuf$0$0 ==.
	C$main.c$83$1$1 ==.
;	main.c:83: void SendBuf(byte *bf,byte len)
;	-----------------------------------------
;	 function SendBuf
;	-----------------------------------------
_SendBuf:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$main.c$85$1$1 ==.
;	main.c:85: while(len--)
	mov	r5,_SendBuf_PARM_2
00104$:
	mov	ar6,r5
	dec	r5
	mov	a,r6
	jz	00107$
	C$main.c$87$2$2 ==.
;	main.c:87: SBUF=*bf++ | 0x80;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,#0x80
	orl	a,r6
	mov	_SBUF,a
	C$main.c$88$2$2 ==.
;	main.c:88: while(!TI); 
00101$:
	C$main.c$89$2$2 ==.
;	main.c:89: TI=0;
	jbc	_TI,00115$
	sjmp	00101$
00115$:
	sjmp	00104$
00107$:
	C$main.c$91$1$1 ==.
	XG$SendBuf$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;byteIn                    Allocated to registers r2 
;kod_r                     Allocated to registers 
;pocet                     Allocated to registers 
;lrc                       Allocated to registers 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$93$1$1 ==.
;	main.c:93: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$99$1$1 ==.
;	main.c:99: itx=0;
	clr	a
	mov	_itx,a
	mov	(_itx + 1),a
	C$main.c$100$1$1 ==.
;	main.c:100: ix=0;
	clr	a
	mov	_ix,a
	mov	(_ix + 1),a
	C$main.c$101$1$1 ==.
;	main.c:101: LcdInit();
	lcall	_LcdInit
	C$main.c$102$1$1 ==.
;	main.c:102: AdcInit(1<<CHANNEL0);
	mov	dpl,#0x01
	lcall	_AdcInit
	C$main.c$104$1$1 ==.
;	main.c:104: ComInit();
	lcall	_ComInit
	C$main.c$105$1$1 ==.
;	main.c:105: TimerInit();
	lcall	_TimerInit
	C$main.c$106$1$1 ==.
;	main.c:106: stav=stKlid;
	mov	_stav,#0x00
	C$main.c$109$1$1 ==.
;	main.c:109: while(1)
00119$:
	C$main.c$112$2$2 ==.
;	main.c:112: if (RI) //prisel byte
	jnb	_RI,00119$
	C$main.c$115$3$3 ==.
;	main.c:115: byteIn=SBUF&0x7F;
	mov	a,#0x7F
	anl	a,_SBUF
	mov	r2,a
	C$main.c$116$3$3 ==.
;	main.c:116: RI=0;
	clr	_RI
	C$main.c$117$3$3 ==.
;	main.c:117: if(stav==stCekani && byteIn==':')
	mov	a,#0x01
	cjne	a,_stav,00113$
	cjne	r2,#0x3A,00113$
	C$main.c$119$4$4 ==.
;	main.c:119: stav=stPrijem;
	mov	_stav,#0x02
	C$main.c$120$4$4 ==.
;	main.c:120: bfin[ix=0]=byteIn;
	clr	a
	mov	_ix,a
	mov	(_ix + 1),a
	mov	dptr,#_bfin
	mov	a,r2
	movx	@dptr,a
	sjmp	00119$
00113$:
	C$main.c$122$3$3 ==.
;	main.c:122: else if(stav==stPrijem)
	mov	a,#0x02
	cjne	a,_stav,00119$
	C$main.c$124$4$5 ==.
;	main.c:124: if(byteIn==':')ix=0;
	cjne	r2,#0x3A,00102$
	clr	a
	mov	_ix,a
	mov	(_ix + 1),a
	sjmp	00103$
00102$:
	C$main.c$125$4$5 ==.
;	main.c:125: else ix++;
	inc	_ix
	clr	a
	cjne	a,_ix,00141$
	inc	(_ix + 1)
00141$:
00103$:
	C$main.c$126$4$5 ==.
;	main.c:126: bfin[ix]=byteIn;
	mov	a,_ix
	add	a,#_bfin
	mov	dpl,a
	mov	a,(_ix + 1)
	addc	a,#(_bfin >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
	C$main.c$127$4$5 ==.
;	main.c:127: if(byteIn=='\n')
	cjne	r2,#0x0A,00119$
	C$main.c$129$5$6 ==.
;	main.c:129: if(MbLrc(bfin+1,ix-4)!=(lrc=MbRdByte(bfin+ix-3)))
	mov	a,_ix
	add	a,#0xfc
	mov	_MbLrc_PARM_2,a
	mov	dptr,#(_bfin + 0x0001)
	mov	b,#0x00
	lcall	_MbLrc
	mov	r2,dpl
	mov	a,_ix
	add	a,#_bfin
	mov	r3,a
	mov	a,(_ix + 1)
	addc	a,#(_bfin >> 8)
	mov	r4,a
	mov	a,r3
	add	a,#0xfd
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	r5,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_MbRdByte
	mov	r3,dpl
	pop	ar2
	mov	a,r2
	cjne	a,ar3,00144$
	sjmp	00105$
00144$:
	C$main.c$131$6$7 ==.
;	main.c:131: printf("\nChybne LRC\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00105$:
	C$main.c$134$5$6 ==.
;	main.c:134: if( (kod_r=MbRdByte(bfin+3))==FCE_RREG)
	mov	dptr,#(_bfin + 0x0003)
	mov	b,#0x00
	lcall	_MbRdByte
	mov	r2,dpl
	cjne	r2,#0x03,00107$
	C$main.c$136$6$8 ==.
;	main.c:136: pocet=MbRdByte(bfin+5);
	mov	dptr,#(_bfin + 0x0005)
	mov	b,#0x00
	lcall	_MbRdByte
	C$main.c$137$6$8 ==.
;	main.c:137: valWord=MbRdWord(bfin+7);
	mov	dptr,#(_bfin + 0x0007)
	mov	b,#0x00
	lcall	_MbRdWord
	mov	_valWord,dpl
	mov	(_valWord + 1),dph
	C$main.c$138$6$8 ==.
;	main.c:138: printf("\nMaster\nPot hod.: %d",valWord);
	push	_valWord
	push	(_valWord + 1)
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00107$:
	C$main.c$143$5$6 ==.
;	main.c:143: stav=stKlid;
	mov	_stav,#0x00
	C$main.c$148$1$1 ==.
	XG$main$0$0 ==.
	ljmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
;------------------------------------------------------------
	G$timer1$0$0 ==.
	C$main.c$149$1$1 ==.
;	main.c:149: void timer1() __interrupt 1
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$main.c$151$1$1 ==.
;	main.c:151: TH1=(word)(-N3_5) >> 8;
	mov	_TH1,#0xE6
	C$main.c$152$1$1 ==.
;	main.c:152: TL1=(byte)(-N3_5);
	mov	_TL1,#0x38
	C$main.c$153$1$1 ==.
;	main.c:153: TF1=0;
	clr	_TF1
	C$main.c$154$1$1 ==.
;	main.c:154: TR1=1;
	setb	_TR1
	C$main.c$155$1$1 ==.
;	main.c:155: if(++cnt_ticks>=N_TICKS && stav==stKlid)
	inc	_cnt_ticks
	mov	a,#0x100 - 0x07
	add	a,_cnt_ticks
	jc	00122$
	ljmp	00108$
00122$:
	mov	a,_stav
	jz	00123$
	ljmp	00108$
00123$:
	C$main.c$157$2$2 ==.
;	main.c:157: cnt_ticks=0;
	mov	_cnt_ticks,#0x00
	C$main.c$159$2$2 ==.
;	main.c:159: prep=!prep;
	cpl	_prep
	C$main.c$160$2$2 ==.
;	main.c:160: if(prep) 
	jnb	_prep,00105$
	C$main.c$162$3$3 ==.
;	main.c:162: if (!TLAC) val = 0xFF00;
	jb	_P3_2,00102$
	mov	_val,#0x00
	mov	(_val + 1),#0xFF
	sjmp	00103$
00102$:
	C$main.c$163$3$3 ==.
;	main.c:163: else val = 0x0000;
	clr	a
	mov	_val,a
	mov	(_val + 1),a
00103$:
	C$main.c$165$3$3 ==.
;	main.c:165: itx=MbWrOne(ADR_S,FCE_WBIT,BIT_WR,val,bfout);
	mov	_MbWrOne_PARM_5,#_bfout
	mov	(_MbWrOne_PARM_5 + 1),#(_bfout >> 8)
	mov	(_MbWrOne_PARM_5 + 2),#0x00
	mov	_MbWrOne_PARM_2,#0x05
	clr	a
	mov	_MbWrOne_PARM_3,a
	mov	(_MbWrOne_PARM_3 + 1),a
	mov	_MbWrOne_PARM_4,_val
	mov	(_MbWrOne_PARM_4 + 1),(_val + 1)
	mov	dpl,#0x01
	lcall	_MbWrOne
	mov	r2,dpl
	mov	_itx,r2
	mov	(_itx + 1),#0x00
	sjmp	00106$
00105$:
	C$main.c$167$2$2 ==.
;	main.c:167: else itx=MbRd(ADR_S,FCE_RREG,REG_RD,1,bfout);
	mov	_MbRd_PARM_5,#_bfout
	mov	(_MbRd_PARM_5 + 1),#(_bfout >> 8)
	mov	(_MbRd_PARM_5 + 2),#0x00
	mov	_MbRd_PARM_2,#0x03
	clr	a
	mov	_MbRd_PARM_3,a
	mov	(_MbRd_PARM_3 + 1),a
	mov	_MbRd_PARM_4,#0x01
	mov	(_MbRd_PARM_4 + 1),#0x00
	mov	dpl,#0x01
	lcall	_MbRd
	mov	r2,dpl
	mov	_itx,r2
	mov	(_itx + 1),#0x00
00106$:
	C$main.c$168$2$2 ==.
;	main.c:168: itx+=MbWrByte(MbLrc(bfout+1,itx-1),bfout+itx);
	mov	a,_itx
	dec	a
	mov	_MbLrc_PARM_2,a
	mov	dptr,#(_bfout + 0x0001)
	mov	b,#0x00
	lcall	_MbLrc
	mov	a,_itx
	add	a,#_bfout
	mov	r2,a
	mov	a,(_itx + 1)
	addc	a,#(_bfout >> 8)
	mov	r3,a
	mov	_MbWrByte_PARM_2,r2
	mov	(_MbWrByte_PARM_2 + 1),r3
	mov	(_MbWrByte_PARM_2 + 2),#0x00
	lcall	_MbWrByte
	mov	r2,dpl
	mov	r3,#0x00
	mov	a,r2
	add	a,_itx
	mov	_itx,a
	mov	a,r3
	addc	a,(_itx + 1)
	mov	(_itx + 1),a
	C$main.c$169$2$2 ==.
;	main.c:169: itx+=MbWrEoT(bfout+itx);
	mov	a,_itx
	add	a,#_bfout
	mov	r2,a
	mov	a,(_itx + 1)
	addc	a,#(_bfout >> 8)
	mov	r3,a
	mov	r4,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_MbWrEoT
	mov	r2,dpl
	mov	r3,#0x00
	mov	a,r2
	add	a,_itx
	mov	_itx,a
	mov	a,r3
	addc	a,(_itx + 1)
	mov	(_itx + 1),a
	C$main.c$170$2$2 ==.
;	main.c:170: SendBuf(bfout,itx);
	mov	_SendBuf_PARM_2,_itx
	mov	dptr,#_bfout
	mov	b,#0x00
	lcall	_SendBuf
	C$main.c$172$2$2 ==.
;	main.c:172: stav=stCekani;
	mov	_stav,#0x01
00108$:
	C$main.c$176$1$1 ==.
;	main.c:176: if(cnt_ticks==TIMEOUT && (stav==stCekani || stav==stPrijem))
	mov	a,#0x11
	cjne	a,_cnt_ticks,00114$
	mov	a,#0x01
	cjne	a,_stav,00128$
	sjmp	00110$
00128$:
	mov	a,#0x02
	cjne	a,_stav,00114$
00110$:
	C$main.c$178$2$4 ==.
;	main.c:178: cnt_ticks=0;
	mov	_cnt_ticks,#0x00
	C$main.c$179$2$4 ==.
;	main.c:179: LED_R=!LED_R;  // napr. blikani cervene LED
	cpl	_P4_2
	C$main.c$180$2$4 ==.
;	main.c:180: stav=stKlid;
	mov	_stav,#0x00
00114$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$182$2$1 ==.
	XG$timer1$0$0 ==.
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$_str_0$0$0 == .
__str_0:
	.db 0x0A
	.ascii "Chybne LRC"
	.db 0x0A
	.db 0x00
Fmain$_str_1$0$0 == .
__str_1:
	.db 0x0A
	.ascii "Master"
	.db 0x0A
	.ascii "Pot hod.: %d"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
