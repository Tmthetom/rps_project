
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


byte cnt_ticks;
word valAD;

void TimerInit()
{
   TMOD=0x21;
   TR0=1;
   EA=1;
   ET0=1;
   cnt_ticks=0;

}

byte receive, page, i, j;
void main(void)
{
   LcdInit();
   AdcInit(1<<CHANNEL0);
   LBarInit();
   CanInit();
   TimerInit();

   while(1)
   {
		CANPAGE = 1 << 4;
		if(CANSTCH & MSK_CANSTCH_RxOk) {
			for(j = 0; j < 1; j++) {
				receive = CANMSG;
			}
			CANCONCH = DLC_ONE_BYTE | CH_RxENA;
			CANSTCH = 0;
			if(receive == 0) {
				LED_R = 1;
			} else {
				LED_R = 0;
			}
		}
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
		LedBar(valAD);

		page = CANPAGE;
		CANPAGE = 0 << 4;
		for(i = 0; i < 2; i++) {
			CANMSG = valAD >> i*8;
		}
		CANCONCH = DLC_TWO_BYTES | CH_TxENA;
		CANSTCH = 0;
		CANPAGE = page;
	 }

}


