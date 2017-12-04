;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Dec 07 17:57:28 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0
	.globl _main
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
	.globl _valAD
	.globl _cnt_ticks
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
G$cnt_ticks$0$0==.
_cnt_ticks::
	.ds 1
G$valAD$0$0==.
_valAD::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0
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
	C$main.c$29$0$0 ==.
;	main.c:29: void TimerInit()
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
	C$main.c$31$1$1 ==.
;	main.c:31: TMOD=0x21;
	mov	_TMOD,#0x21
	C$main.c$32$1$1 ==.
;	main.c:32: TR0=1;
	setb	_TR0
	C$main.c$33$1$1 ==.
;	main.c:33: EA=1;
	setb	_EA
	C$main.c$34$1$1 ==.
;	main.c:34: ET0=1;
	setb	_ET0
	C$main.c$35$1$1 ==.
;	main.c:35: cnt_ticks=0;
	mov	_cnt_ticks,#0x00
	C$main.c$37$1$1 ==.
	XG$TimerInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$43$1$1 ==.
;	main.c:43: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$45$1$1 ==.
;	main.c:45: LcdInit();
	lcall	_LcdInit
	C$main.c$46$1$1 ==.
;	main.c:46: AdcInit(1<<CHANNEL0);
	mov	dpl,#0x01
	lcall	_AdcInit
	C$main.c$47$1$1 ==.
;	main.c:47: LBarInit();
	lcall	_LBarInit
	C$main.c$48$1$1 ==.
;	main.c:48: CanInit();
	lcall	_CanInit
	C$main.c$49$1$1 ==.
;	main.c:49: TimerInit();
	lcall	_TimerInit
	C$main.c$51$1$1 ==.
;	main.c:51: while(1)
00107$:
	C$main.c$53$2$2 ==.
;	main.c:53: CANPAGE = 1 << 4;
	mov	_CANPAGE,#0x10
	C$main.c$54$2$2 ==.
;	main.c:54: if(CANSTCH & MSK_CANSTCH_RxOk)
	mov	a,_CANSTCH
	jnb	acc.5,00107$
	C$main.c$58$3$3 ==.
;	main.c:58: if (CANMSG & 1) LED_G = 0;
	mov	a,_CANMSG
	jnb	acc.0,00102$
	clr	_P4_4
	sjmp	00103$
00102$:
	C$main.c$59$3$3 ==.
;	main.c:59: else  LED_G = 1;
	setb	_P4_4
00103$:
	C$main.c$60$3$3 ==.
;	main.c:60: CANSTCH = 0;
	mov	_CANSTCH,#0x00
	C$main.c$61$3$3 ==.
;	main.c:61: CANCONCH = DLC_ONE_BYTE | CH_RxENA ;
	mov	_CANCONCH,#0x81
	C$main.c$65$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;page                      Allocated to registers r2 
;------------------------------------------------------------
	G$timer0$0$0 ==.
	C$main.c$67$1$1 ==.
;	main.c:67: void timer0() __interrupt 1
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
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
	C$main.c$69$1$1 ==.
;	main.c:69: byte page = CANPAGE;
	mov	r2,_CANPAGE
	C$main.c$70$1$1 ==.
;	main.c:70: TH0=(word)(-T_30MS)>>8;
	mov	_TH0,#0x3C
	C$main.c$71$1$1 ==.
;	main.c:71: TL0=(byte)(-T_30MS);
	mov	_TL0,#0xB0
	C$main.c$72$1$1 ==.
;	main.c:72: if(++cnt_ticks == N_TICKS)
	inc	_cnt_ticks
	mov	a,#0x06
	cjne	a,_cnt_ticks,00102$
	C$main.c$74$2$2 ==.
;	main.c:74: cnt_ticks=0;
	mov	_cnt_ticks,#0x00
	C$main.c$75$2$2 ==.
;	main.c:75: valAD=AdcConv(CHANNEL0);
	mov	dpl,#0x00
	push	ar2
	lcall	_AdcConv
	C$main.c$76$2$2 ==.
;	main.c:76: LedBar(valAD);
	mov	_valAD,dpl
	mov	(_valAD + 1),dph
	mov	dph,(_valAD + 1)
	lcall	_LedBar
	C$main.c$78$2$2 ==.
;	main.c:78: CANPAGE = 0 << 4;
	mov	_CANPAGE,#0x00
	C$main.c$80$2$2 ==.
;	main.c:80: CANMSG = valAD;
	mov	_CANMSG,_valAD
	C$main.c$81$2$2 ==.
;	main.c:81: CANMSG = valAD>>8;
	mov	_CANMSG,(_valAD + 1)
	C$main.c$83$2$2 ==.
;	main.c:83: printf("Vyslani %d \n",valAD);
	push	_valAD
	push	(_valAD + 1)
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	C$main.c$84$2$2 ==.
;	main.c:84: CANCONCH = DLC_TWO_BYTES | CH_TxENA; ;
	mov	_CANCONCH,#0x42
00102$:
	C$main.c$87$1$1 ==.
;	main.c:87: CANPAGE = page;
	mov	_CANPAGE,r2
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
	C$main.c$89$1$1 ==.
	XG$timer0$0$0 ==.
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$_str_0$0$0 == .
__str_0:
	.ascii "Vyslani %d "
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
