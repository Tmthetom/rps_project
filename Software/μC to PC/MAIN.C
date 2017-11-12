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


xbyte bfin[256],bfout[256];  // v externi pameti
enum {stKlid,stCekani,stPrijem} stav;
byte cnt_ticks;

// inicializace èasovaèù
void TimerInit()
{

   TMOD=0x11;

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

/* pro ASCII rezim */
void SendBuf(byte *bf,byte len)
{
  while(len--)
  {
	SBUF=*bf++ | 0x80;
	while(!TI);
	TI=0;
  }
}


/* pro RTU rezim
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

*/



void main(void)
{
  // inicializace
  LcdInit();
	AdcInit(1<<CHANNEL0);
	LBarInit();
	ComInit();
        TimerInit();

  // další inicializace

  while(1)
  {
	if(TF0)   // tiky
	{
	   TF0=0;
	   TH0=(byte)(-T_30MS>>8);
	   TL0=(byte)(-T_30MS);
	   cnt_ticks++;
	   if(cnt_ticks==N_TICKS && stav==stKlid)    //cas pro vyslani - pro Mastera
/*	   if(cnt_ticks == N_TICKS)  // hodnota potenciometru - pro Slave */ 
	   {
		  cnt_ticks=0;



           }
/*  Time Out pro Mastera
	   if(cnt_ticks==TIMEOUT)
	   {
		  cnt_ticks=0;
		  LED_R=!LED_R;  // napr. blikani cervene LED
		  stav=stKlid;
	   }
*/

	}

	if (RI) //prisel byte
	{



	}

/*   pro RTU - interval cca 3,5 znaku
	if(TF1) //interval vyprsel
	{
	  TR1=0; //zastaveni casovace
	  TF1=0;
   // zpracovani ramce

	}
*/

  }
}


