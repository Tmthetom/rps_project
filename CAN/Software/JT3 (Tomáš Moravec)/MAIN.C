/* Tom� Moravec JT2 */

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

byte cnt_ticks, page, i, j, page2, receive;
word valAD, receivedAD;

void TimerInit()
{
	TMOD = 0x21;
	TR0 = 1;
	EA = 1;
	ET0 = 1;
	cnt_ticks = 0;
}

void InterrputInit() {
	EA = 1;
	ECAN = 1;
	CANIE2 = 13;
	CANIE1 = 0;
	CANGIE = MSK_CANGIE_ENRX | MSK_CANGIE_ENTX;
}

void printADs() {
	printf("\nPotT: %5d\nPotR: %5d", valAD, receivedAD);
}

void main(void)
{
	LcdInit();
	AdcInit(1 << CHANNEL0);
	LBarInit();
	CanInit();
	TimerInit();
	InterrputInit();

	while (1)
	{
		;
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
		printADs();

		page = CANPAGE;

		// Odes�l�n� stavu tla��tka u�itelsk� desce
		CANPAGE = 0 << 4;
		CANMSG = !tlac;
		CANCONCH = DLC_ONE_BYTE | CH_TxENA;
		CANSTCH = 0;
		
		// Odesl�n� stavu potenciometru kolegova modulu
		CANPAGE = 3 << 4;
		for (i = 0; i < 2; i++) {
			CANMSG = valAD >> i * 8;
		}

		// Odesl�n� ��dosti o data od kolegova modulu
		CANPAGE = 2 << 4;
		CANIDT4 |= MSK_CANIDT4_RTRTAG;
		CANCONCH = DLC_ONE_BYTE | CH_TxENA;

		CANPAGE = page;
	}
}

void CAN_it() __interrupt 7
{
	page2 = CANPAGE;
	// ----------------------------------------

	// U�itelsk� deska (p��jem potenciometru)
	CANPAGE = 1 << 4;
	if (CANSTCH & MSK_CANSTCH_RxOk)
	{
		receivedAD = 0;
		for (j = 0; j < 2; j++)
		{
			receivedAD |= CANMSG << j * 8;
		}
		printADs();
		CANCONCH = DLC_TWO_BYTES | CH_RxENA;
		CANSTCH = 0;
	}

	// Koleg�v modul (p��jem tla��tka)
	CANPAGE = 2 << 4;
	if (CANSTCH & MSK_CANSTCH_RxOk)
	{
		for (j = 0; j < 1; j++) {
			receive = CANMSG;
		}
		CANCONCH = DLC_ONE_BYTE | CH_RxENA;
		CANSTCH = 0;
		if (receive == 0) {
			LED_G = 1;
		}
		else {
			LED_G = 0;
		}
	}

	// P��jem ��dosti o data kolegova modulu
	CANPAGE = 3 << 4;
	if (CANSTCH & MSK_CANSTCH_TxOk)
	{
		CANIDT4 |= MSK_CANIDT4_RTRTAG;
		CANCONCH = DLC_TWO_BYTES | CH_RxENA | CH_RPLV;
		CANSTCH = 0;
	}

	// ----------------------------------------
	CANPAGE = page2;
	CANGIT = 0;
}
