
#include <AT89C51CC03.h>
#include "typy.h"

void AdcInit(byte channels)
{
   ADCF=channels;
   ADCLK=0x01;
   ADCON = MSK_ADCON_ADEN;
}

word AdcConv(byte channel)
{
	  ADCON &= ~MSK_ADCON_SCH;
	  ADCON |= (channel & MSK_ADCON_SCH);
	  ADCON |= MSK_ADCON_ADSST;                   /* Start conversion */
	  while((ADCON & MSK_ADCON_ADEOC)==0);
	  ADCON &= ~MSK_ADCON_ADEOC;
	  return (ADDH <<2)+(ADDL & 3);
}
