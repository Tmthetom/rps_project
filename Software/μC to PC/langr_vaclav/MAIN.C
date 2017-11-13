// Semestrální práce Václav Langr

#include <AT89C51CC03.h>
#include <stdio.h>
#include "typy.h"
#include "modbus.h"

void LcdInit(void);
void putchar(char c);

void AdcInit(byte adconf);
word AdcConv(byte channel);

void LBarInit(void);
void LedBar(word);

//pro nastaveni casovaèù
#define T_30MS 50000
#define N_TICKS 7
#define TIMEOUT 17

//  pro 9600
//#define NBIT 65

/* pro 19200 */
#define NBIT 33 

#define N3_5 200*NBIT //pro RTU

// definice symbolu tlacitek a diod
#define CHANNEL0 0
#define LED_R  P4_2
#define TLAC   P3_2
#define TLAC2  P3_3
#define LED_G  P4_4
#define LED_Y  P4_3
#define DIR485 P3_7

// definice parametru komunikace
#define ADR_S  1
#define FCE_WBIT 5
#define FCE_RBIT 1
#define FCE_WREG 6
#define FCE_RREG 3
#define BIT_WR 0
#define BIT_RD 0
#define REG_RD 0
#define REG_WR 0

// globalni promenne
__bit prep;
int itx;
unsigned char index, lrc;

xbyte bufferIn[256], bufferOut[256];  // v externi pameti
enum { stKlid, stCekani, stPrijem } stav;
byte cnt_ticks;
word valAD;

// inicializace èasovaèù
void TimerInit()
{
	TMOD = 0x11;
	TR0 = 1;
	EA = 1;
	ET0 = 1;
	cnt_ticks = 0;
}

// inicializace seriove linky
void ComInit()
{
	//  SCON = 0xD8;  // 8,n,2
	SCON = 0x50;   // 7,n,2
	RCAP2H = (word)(-NBIT) >> 8;
	RCAP2L = -NBIT;
	T2CON = 0x34;
}


// vyslání zprávy (rámce)
void SendBuf(byte *bf, byte len)
{
	byte byteOut = *bf++;
	TI = 0;
	SBUF = byteOut;
	while (--len)
	{
		byteOut = *bf++;
		while (!TI);
		SBUF = byteOut;
		TI = 0;
	}
	while (!TI);
}

void restart() {
	TMOD = 0x11;
	TH1 = (word)(-N3_5) >> 8;
	TL1 = (byte)(-N3_5);
	TF1 = 0;
	TR1 = 1;
}


void main(void)
{
	// inicializace
	LcdInit();
	AdcInit(1 << CHANNEL0);
	LBarInit();
	ComInit();
	TimerInit();

	// další inicializace
	do {
		RI = 0;
		TH1 = (word)(-N3_5) >> 8;
		TL1 = (byte)(-N3_5);
		TR1 = 1;
		while (!TF1);
		TF1 = 0;
		TR1 = 0;
	} while (RI);
	stav = stKlid;
	index = 0;
	while (1)
	{
		if (TF0)   // tiky
		{
			TF0 = 0;
			TH0 = (byte)(-T_30MS >> 8);
			TL0 = (byte)(-T_30MS);
			cnt_ticks++;
			//if (cnt_ticks == N_TICKS && stav == stKlid)    //cas pro vyslani - pro Mastera
	 	    if(cnt_ticks == N_TICKS)  // /* hodnota potenciometru - pro Slave */
			{
				cnt_ticks = 0;
				prep = !prep;
				if (prep) {
					itx = MrtuAndWr(ADR_S, FCE_WBIT, BIT_WR, 1, bufferOut);
				}
				else {
					valAD = AdcConv(CHANNEL0);
					byte vals[];
					vals[0] = valAD >> 8;
					vals[1] = valAD;
					itx = MrtuAnsRd(ADR_S, FCE_RREG, 2, vals, bufferOut);
				}
				if(er)itx = MrtuAnsErr(ADR_S, kod_r|0x80, er, bufferOut);
				//DIR485 = 1; //na vysilani
				itx += MrtuWrCrc(MrtuCrc(bufferOut, itx), bufferOut + itx);
				SendBuf(bufferOut, itx);
				stav = stCekani;
				//DIR485 = 0; //na prijem
			}
		}

		if (RI) //prisel byte
		{
			bufferIn[index++] = SBUF;
			RI = 0;
			TH1 = (word)(-N3_5) >> 8;
			TL1 = (byte)(-N3_5);
			TF1 = 0;

			switch (stav)
			{
			case stCekani:
				index = 0;
				stav = stPrijem;
				TR1 = 1;
				break;
			case stPrijem:
				break;
			}
		}

		//   pro RTU - interval cca 3,5 znaku
		if (TF1) //interval vyprsel
		{
			TR1 = 0; //zastaveni casovace
			// TF1 = 0;
			// zpracovani pozadavku
			if (stav == stPrijem) {
				byte kod_r;
				if ((bufferIn[0] == ADR_S) && MrtuCrc(bufferIn, index - 2) == MrtuRdCrc(bufferIn + index - 2)) {
					kod_r = bufferIn[1];
					if (kod_r == FCE_WBIT) {
						__bit pressed = (RdWord(bufferIn + 3) == 0x00);
						pressed = pressed && (RdWord(bufferIn + 2) == 0xFF);
						if (pressed) {
							LED_G = 0;
						}
						else {
							LED_G = 1;
						}
					}
				}
				stav = stKlid;
			}
			index = 0;
		}
	}
}


