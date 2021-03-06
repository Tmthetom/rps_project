// Semestr�ln� pr�ce p�edchoz�ch ro�n�k�

#include <AT89C51CC03.h>
#include <stdio.h>
#include "typy.h"

#include "modbus.h"

void LcdInit(void);
void putchar(char c);

void AdcInit(byte adconf);
word AdcConv(byte channel);

void LBanit(void);
void LedBar(word);

//pro nastaveni casova��
#define T_30MS 50000
#define N_TICKS 7
#define TIMEOUT 17

/*  pro 9600
#define NBIT 65

*/
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
xbyte bufferIn[256], bufferOut[256];  // v externi pameti
enum { stKlid, stCekani, stPrijem } stav;
byte cnt_ticks;
word itx, index, valWord, val;

// inicializace �asova��
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


// vysl�n� zpr�vy (r�mce)

/* pro ASCII rezim */
void SendBuf(byte *bf, byte len)
{
	while (len--)
	{
		SBUF = *bf++ | 0x80;
		while (!TI);
		TI = 0;
	}
}

void main(void)
{

	signed char byteIn, kod_r, pocet;
	unsigned char lrc;
	// inicializace
	itx = 0;
	index = 0;
	LcdInit();
	AdcInit(1 << CHANNEL0);
	//LBarInit();
	ComInit();
	TimerInit();
	stav = stKlid;

	// dal�� inicializace
	while (1)
	{

		if (RI) //prisel byte
		{
			//printf("\n Prisel byte");
			byteIn = SBUF & 0x7F;
			RI = 0;
			if (stav == stCekani && byteIn == ':')
			{
				stav = stPrijem;
				bufferIn[index = 0] = byteIn;
			}
			else if (stav == stPrijem)
			{
				if (byteIn == ':')index = 0;
				else index++;
				bufferIn[index] = byteIn;
				if (byteIn == '\n')
				{
					if (MbLrc(bufferIn + 1, index - 4) != (lrc = MbRdByte(bufferIn + index - 3)))
					{
						printf("\nChybne LRC\n");
					}

					if ((kod_r = MbRdByte(bufferIn + 3)) == FCE_RREG)
					{
						pocet = MbRdByte(bufferIn + 5);
						valWord = MbRdWord(bufferIn + 7);
						printf("\nMaster\nPot hod.: %d", valWord);
					}

					// zpracov�n� odpov�di

					stav = stKlid;
				}
			}
		}
	}
}
void timer1() __interrupt 1
{
	TH1 = (word)(-N3_5) >> 8;
	TL1 = (byte)(-N3_5);
	TF1 = 0;
	TR1 = 1;
	if (++cnt_ticks >= N_TICKS && stav == stKlid)
	{
		cnt_ticks = 0;
		//LedBar(val=AdcConv(CHANNEL0));
		prep = !prep;
		if (prep)
		{
			if (!TLAC) val = 0xFF00;
			else val = 0x0000;
			// val=TLAC;
			itx = MbWrOne(ADR_S, FCE_WBIT, BIT_WR, val, bufferOut);
		}
		else itx = MbRd(ADR_S, FCE_RREG, REG_RD, 1, bfout);
		itx += MbWrByte(MbLrc(bfout + 1, itx - 1), bfout + itx);
		itx += MbWrEoT(bfout + itx);
		SendBuf(bfout, itx);

		stav = stCekani;
	}

	//Time Out pro Mastera
	if (cnt_ticks == TIMEOUT && (stav == stCekani || stav == stPrijem))
	{
		cnt_ticks = 0;
		LED_R = !LED_R;  // napr. blikani cervene LED
		stav = stKlid;
	}
}


