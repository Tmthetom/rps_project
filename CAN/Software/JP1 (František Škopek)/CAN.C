//**********************************************************************
//**********************************************************************
//***                                                                ***
//***                       C A N   V1.0                       ***
//***                                                                ***
//**********************************************************************
//**********************************************************************

#include <AT89C51CC03.h>
#include "typy.h"

#define BRP    0x03
#define SJW    0x03
#define PRS    0x07
#define PHS1   0x06
#define PHS2   0x03

#define ID_TR  0x3C9
#define ID_RX  0x4A1

#define ID_TXR 0x6A0
#define ID_RXR 0x6A1

#define CHECK_ALL_ID_BITS 0x7FF


byte num_channel,num_data;


void CanInit(void)
{
	CANGCON = MSK_CANGCON_GRES;

	for (num_channel = 0; num_channel < 15; num_channel++)
	{
	  CANPAGE  = num_channel << 4;
	  CANCONCH = DLC_ONE_BYTE | CH_RxENA | CH_RPLV;
	  CANSTCH  = 0;
	  CANIDT1  = ID_RXR >> 3;
	  CANIDT2  = ID_RXR << 5;
	  CANIDT3  = 0;
	  CANIDT4  = MSK_CANIDT4_RTRTAG;
	  CANIDM1  = CHECK_ALL_ID_BITS>>3;
	  CANIDM2  = CHECK_ALL_ID_BITS<<5;
	  CANIDM3  = 0;
	  CANIDM4  = MSK_CANIDM4_RTRMSK;
	  for (num_data = 0; num_data < 8; num_data++) CANMSG = 0;
	}

	/*nastaveni casovani bitu*/

	CANBT1 = BRP<<1;
	CANBT2 = (SJW<<5) | (PRS<<1);
	CANBT3 = (PHS2<<4) | (PHS1<<1);
	CANGCON = MSK_CANGCON_ENA;

	/*start CAN*/
	/*nastaeni objektu 0*/
	CANPAGE = (0 << 4);

	/*objekt 0 pocatecni konfigurace*/
	CANIDT1 = ID_TR >> 3;
	CANIDT2 = ID_TR << 5;

	/*objekt 1 identifikator = 11bitu*/

	CANPAGE = (1 << 4);
	CANIDT1 = ID_RX >> 3;
	CANIDT2 = ID_RX << 5;
	CANCONCH = DLC_ONE_BYTE | CH_RxENA;

	/*objekt 1 pocatecni konfigurace*/



	/*Nastaveni objektu 2*/
	CANPAGE = (2 << 4);
	CANPAGE = (3 << 4);
}


