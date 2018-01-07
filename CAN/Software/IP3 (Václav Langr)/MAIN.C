
#include <AT89C51CC03.h>
#include <stdio.h>
#include "typy.h"


void LcdInit(void);
void putchar(char c);
void CanInit(void);

void LBarInit(void);
void LedBar(word val);

void AdcInit(byte adconf);
word AdcConv(byte channel);


#define T_30MS 50000
#define N_TICKS 6 
#define CHANNEL0 0
#define CHANNEL1 1
#define LED_R  P4_2
#define TLAC   P3_2
#define TLAC2  P3_3
#define LED_G  P4_4
#define LED_Y  P4_3


byte cnt_ticks;
word valAD, receivedAD;

void TimerInit()
{
   TMOD=0x21;
   TR0=1;
   EA=1;
   ET0=1;
   cnt_ticks=0;

}

void printADs() {
  printf("\nPotT: %5d\nPotR: %5d", valAD, receivedAD);
}

byte receive, page, i, j, page2;

void main(void)
{
   LcdInit();
   AdcInit(1<<CHANNEL0);
   LBarInit();
   CanInit();
   TimerInit();
   /*
   // uloha 3
   EA = 1;
   ECAN = 1;
   CANIE2 = 13;
   CANIE1 = 0;
   CANGIE = MSK_CANGIE_ENRX | MSK_CANGIE_ENTX;
    */
   while(1)
   {
    /*
    // uloha 2
    		CANPAGE = 1 << 4;
		if(CANSTCH & MSK_CANSTCH_RxOk) {
			for(j = 0; j < 1; j++) {
				receive = CANMSG;
			}
			CANCONCH = DLC_ONE_BYTE | CH_RxENA;
			CANSTCH = 0;
			if(receive == 0) {
				LED_G = 1;
			} else {
				LED_G = 0;
			}
		}

		CANPAGE = 2 << 4;
		if(CANSTCH & MSK_CANSTCH_RxOk) {
		receivedAD = 0;
		for(j = 0; j < 2; j++) {
			receivedAD |= CANMSG << j*8;
		}
			printADs();
			CANSTCH = 0;
		}

		CANPAGE = 3 << 4;
		if(CANSTCH & MSK_CANSTCH_TxOk) {
			CANIDT4 |= MSK_CANIDT4_RTRTAG;
			CANCONCH=DLC_ONE_BYTE | CH_RxENA | CH_RPLV;
			CANSTCH = 0;
		}
    */
   }
}

void timer0() __interrupt 1
{
	 TH0=(word)(-T_30MS)>>8;
	 TL0=(byte)(-T_30MS);
	 if(++cnt_ticks == N_TICKS)
	 {
		cnt_ticks=0;
		valAD=AdcConv(CHANNEL0);
		printADs();
		//LedBar(valAD);

		page = CANPAGE;
		CANPAGE = 0 << 4;
		for(i = 0; i < 2; i++) {
			CANMSG = valAD >> i*8;
		}
		CANCONCH = DLC_TWO_BYTES | CH_TxENA;
		CANSTCH = 0;

		CANPAGE = 2 << 4;
		CANIDT4 |= MSK_CANIDT4_RTRTAG;
		CANCONCH = DLC_TWO_BYTES | CH_TxENA;

		CANPAGE = 3 << 4;
		CANMSG = !TLAC;

		CANPAGE = page;
	 }

}

void CANint() __interrupt 7
{
/*
// uloha 3
	page2 = CANPAGE;
		CANPAGE = 1 << 4;
		if(CANSTCH & MSK_CANSTCH_RxOk) {
			for(j = 0; j < 1; j++) {
				receive = CANMSG;
			}
			CANCONCH = DLC_ONE_BYTE | CH_RxENA;
			CANSTCH = 0;
			if(receive == 0) {
				LED_G = 1;
			} else {
				LED_G = 0;
			}
		}

		CANPAGE = 2 << 4;
		if(CANSTCH & MSK_CANSTCH_RxOk) {
		receivedAD = 0;
		for(j = 0; j < 2; j++) {
			receivedAD |= CANMSG << j*8;
		}
			printADs();
			CANSTCH = 0;
		}

		CANPAGE = 3 << 4;
		if(CANSTCH & MSK_CANSTCH_TxOk) {
			CANIDT4 |= MSK_CANIDT4_RTRTAG;
			CANCONCH=DLC_ONE_BYTE | CH_RxENA | CH_RPLV;
			CANSTCH = 0;
		}
	CANPAGE = page2;
	CANGIT = 0;
*/
}


