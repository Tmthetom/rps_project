/* Tom� Moravec JT1 */

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

#define LED_R P4_2
#define LED_G P4_4
#define LED_Y P4_3
#define tlac P3_2

byte cnt_ticks;
word valAD;
byte page;

void TimerInit()
{
	TMOD = 0x21;
	TR0 = 1;
	EA = 1;
	ET0 = 1;
	cnt_ticks = 0;
}


void main(void)
{
	LcdInit();
	AdcInit(1 << CHANNEL0);
	LBarInit();
	CanInit();
	TimerInit();

	while (1)
	{
		CANPAGE = 1 << 4;

		if (CANSTCH & MSK_CANSTCH_RxOk)
		{
			// Data jsou �sp�n� p�ijata
			// Zpracovani: CANMSG

			CANCONCH = DLC_TWO_BYTES | CH_RxENA;
			CANSTCH = 0;

			valAD = CANMSG;
			valAD |= CANMSG << 8;

			printf("Prijem: %d\n", valAD);
		}
	}
}

void timer0() __interrupt 1
{
	TH0 = (word)(-T_30MS) >> 8;
	TL0 = (byte)(-T_30MS);
	if (++cnt_ticks == N_TICKS)
	{
		cnt_ticks = 0;
		valAD = AdcConv(CHANNEL0);
		LedBar(valAD);

		page = CANPAGE;
		CANPAGE = 0 << 4;
		CANMSG = !tlac;

		CANCONCH = DLC_ONE_BYTE | CH_TxENA;
		CANSTCH = 0;

		CANPAGE = page;
	}
}
