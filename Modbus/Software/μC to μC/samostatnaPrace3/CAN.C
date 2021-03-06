//**********************************************************************
//**********************************************************************
//***                                                                ***
//***                       C A N   V1.0                       ***
//***                                                                ***
//**********************************************************************
//**********************************************************************

#include <AT89C51CC03.h>
#include "typy.h"

/*
	polozky registru pro casovani bitu
   - prenosova rychlost 125 kb/s
   - vzorkovaci bod 80% bitu
*/

#define BRP    0x03
#define SJW    0x03
#define PRS    0x07
#define PHS1   0x06
#define PHS2   0x03


#define ID_TX  0x3C3
#define ID_RX  0x4A3
#define ID_RR  0x000
#define ID_TR  0x000


#define CHECK_ALL_ID_BITS 0x7FF


byte num_channel,num_data;


void CanInit(void)
{
	CANGCON = MSK_CANGCON_GRES;		    /* reset CAN */

	for (num_channel = 0; num_channel < 15; num_channel++)
	{
	  CANPAGE  = num_channel << 4;
	  CANCONCH = CH_DISABLE;
	  CANSTCH  = 0;
	  CANIDT1  = 0;
	  CANIDT2  = 0;
	  CANIDT3  = 0;
	  CANIDT4  = 0;
	  CANIDM1  = CHECK_ALL_ID_BITS>>3;
	  CANIDM2  = CHECK_ALL_ID_BITS<<5;
	  CANIDM3  = 0;
	  CANIDM4  = MSK_CANIDM4_RTRMSK;
	  for (num_data = 0; num_data < 8; num_data++) CANMSG = 0;
	}

	/* nastaveni casovani bitu */

	CANBT1 = BRP<<1;
	CANBT2 = (SJW<<5) | (PRS<<1);
	CANBT3 = (PHS2<<4) | (PHS1<<1);
	CANGCON = MSK_CANGCON_ENA;             /* start CAN */

	/* Nastaveni objektu 0 */
	CANPAGE = (0 << 4);                     /* CHNB=0x00; objekt 0 */

   /* Objekt 0: identifikator = 11bitu */

	CANIDT1 = ID_TX >> 3;
	CANIDT2 = ID_TX << 5;


   /* Objekt 0: pocatecni konfigurace */


   /* Nastaveni objektu 1 */
	CANPAGE = (1 << 4);                     /* CHNB=0x01; objekt 1 */

   /* Objekt 1: identifikator = 11bitu */
	CANIDT1 = ID_RX >> 3;
	CANIDT2 = ID_RX << 5;
	CANCONCH = DLC_ONE_BYTE|CH_RxENA;


   /* Objekt 1: pocatecni konfigurace */


	/* Nastaveni objektu 2 */
	CANPAGE = (2 << 4);                     /* CHNB=0x02; objekt 2 */

   /* Objekt 2: identifikator = 11bitu */
		   

   

   /* Objekt 2: pocatecni konfigurace */




	/* Nastaveni objektu 3 */
	CANPAGE = (3 << 4);                     /* CHNB=0x03; objekt 3 */

   /* Objekt 3: identifikator = 11bitu */
		   

   

   /* Objekt 3: pocatecni konfigurace */





   /* Nastaveni dalsich objektu ..  */



}


