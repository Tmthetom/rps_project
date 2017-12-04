// Karel Šír

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

//pro nastaveni casovačů
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
//#define DIR485 P3_7

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


xbyte bfin[256],bfout[256];  // v externi pameti
enum {stKlid,stCekani,stPrijem} stav;
byte cnt_ticks;
__bit prep;
int ix = 0;
int itx = 0;


// inicializace časovačů
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
   RCAP2H=(word)(-NBIT)>>8;
   RCAP2L=-NBIT;
   T2CON=0x34;
}


// vyslání zprávy (rámce)


/* pro RTU rezim  */
void SendBuf(byte *bf,byte len)
{
  byte byteOut=*bf++;
  TI=0;
  SBUF=byteOut;
  while(--len)
  {
		byteOut=*bf++;
		while(!TI);
		TI=0;
		SBUF=byteOut;

  }
  while(!TI);
}



void reStart(){
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
	AdcInit(1<<CHANNEL0);
	//LBarInit();
	ComInit();
	TimerInit();
	// další inicializace
	do   {
		RI = 0;
		TH1 = (word)(-N3_5) >> 8;
		TL1 = (byte)(-N3_5);
		TR1 = 1;
		while (!TF1);
		TF1 = 0;
		TR1 = 0;
	} while (RI);
	LED_Y = !LED_Y;
	stav = stKlid;


  while(1)
  {
	byte val;
	word val2;
	if(TF0)   // tiky
	{
	   TF0=0;
	   TH0=(byte)(-T_30MS>>8);
	   TL0=(byte)(-T_30MS);
	   cnt_ticks++;
	   if(cnt_ticks==N_TICKS && stav==stKlid){    //cas pro vyslani - pro Mastera
			LED_G = !LED_G;
			cnt_ticks = 0;
			//DIR485 = 1;  /* na vysílání */
			prep = !prep;
			if (prep){
				bity[0] = TLAC ? 0 : 0xFF00;
				itx = MrtuWrOne(ADR_S, FCE_WBIT, BIT_WR, bity, bfout);
			}
			else{
				itx = MrtuRd(ADR_S, FCE_RREG, REG_RD, 1, bfout);
			}
			itx += MrtuWrCrc(MrtuCrc(bfout, itx), bfout + itx);
			SendBuf(bfout, itx);
			stav = stCekani;
			//DIR485 = 0;  /* zpět na příjem */
		}



/*  Time Out pro Mastera   */
	   if(cnt_ticks==TIMEOUT)
	   {
		  cnt_ticks=0;
		  LED_R=!LED_R;  // napr. blikani cervene LED
		  stav=stKlid;
	   }


	}

	if (RI) //prisel byte
	{   byte byteIn;
		byteIn = SBUF;
		RI = 0;

		switch (stav){
			case stCekani:
				ix = 0;
				bfin[ix++] = byteIn;
				stav = stPrijem;
				TH1 = (word)(-N3_5) >> 8;
				TL1 = (byte)(-N3_5);
				TF1 = 0;
				TR1 = 1;
				break;
			case stPrijem:
				LED_Y=!LED_Y;
				bfin[ix++] = byteIn;
				TH1 = (word)(-N3_5) >> 8;
				TL1 = (byte)(-N3_5);
				TF1 = 0;
				break;
		}
	}

/*   pro RTU - interval cca 3,5 znaku  */
	if(TF1) //interval vyprsel
	{
		TR1=0; //zastaveni casovace
//	  	TF1=0;
   // zpracovani ramce
		if (stav == stPrijem)   {
			byte kod_r;
			if (MrtuCrc(bfin, ix - 2) == MrtuRdCrc(bfin + ix - 2)){
				if ((kod_r = bfin[1]) == FCE_RREG){
					byte horni;
					int celkem;
					val = RdWord(bfin + 3);
					horni = RdWord(bfin + 2);
					celkem = horni*256 + val;
					printf("Potento: %d\n",celkem);
				}
			}
			stav = stKlid;
		}

	}


  }
}