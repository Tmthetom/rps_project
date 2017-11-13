// Semestrální práce Tomáš Moravec

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

// For timers settings
#define T_30MS 50000
#define N_TICKS 7
#define TIMEOUT 17

// For 19200 baud rate
#define NBIT 33 

// Define symbols of buttons and LEDs
#define CHANNEL0 0
#define LED_R  P4_2
#define TLAC   P3_2
#define TLAC2  P3_3
#define LED_G  P4_4
#define LED_Y  P4_3
#define DIR485 P3_7

// Define parameters of communication
#define ADR_S  1
#define FCE_WBIT 5
#define FCE_RBIT 1
#define FCE_WREG 6
#define FCE_RREG 3
#define BIT_WR 0
#define BIT_RD 0
#define REG_RD 0
#define REG_WR 0

// Global variables
xbyte bufferIn[256], bufferOut[256];  // In external memory
byte cnt_ticks, adr_r, bity[1];
word val;
int flagMessage, index, itx;
signed char readedByte, registerCode, pocet, errorCode;¨
unsigned char lrc;
unsigned short readedRegister;

// Initialization of timers
void TimerInit()
{
	TMOD = 0x11;
	TR0 = 1;
	EA = 1;
	ET0 = 1;
	cnt_ticks = 0;
}

//  Initialization of serial port
void ComInit()
{
	SCON = 0x50;   // 7,n,2
	RCAP2H = (word)(-NBIT) >> 8;
	RCAP2L = -NBIT;
	T2CON = 0x34;
}

// Initialization of variables
void VarInit()
{
	flagMessage = 0;
	index = 0;
	adr_r = ADR_S;
}

// Send message in ASCII
void SendBuf(byte *bf, byte len)
{
	while (len--)
	{
		SBUF = *bf++ | 0x80;
		while (!TI);
		TI = 0;
	}
}

// Main program
void main(void)
{
	// Initialization
	LcdInit();
	AdcInit(1 << CHANNEL0);
	LBarInit();
	ComInit();
	TimerInit();
	VarInit();

	// Main rutine
	while (1)
	{
		// If we have data to read
		if (RI)
		{
			// Modbus transmission start sign
			if ((readedByte = SBUF & 0x7F) == ':')
			{
				index = 0;
				flagMessage = 1;
				RI = 0;
			}

			// Continue previous reading
			else if (flagMessage)
			{
				index++;
				RI = 0;
			}

			// Move reader byte into buffer to process
			bufferIn[index] = readedByte;

			// Check if byte start with newline
			if (flagMessage && readedByte == '\n')
			{
				flagMessage = 0;

				if ((MbLrc(bufferIn + 1, index - 4) == (lrc = MbRdByte(bufferIn + index - 3))) && (MbRdByte(bufferIn + 1) == ADR_S))
				{
					registerCode = MbRdByte(bufferIn + 3);
					errorCode = 0;
					switch (registerCode)
					{
						// Function: Read value
						case FCE_WREG:

							// Check validity
							if ((readedRegister = MbRdWord(bufferIn + 5)) != REG_WR) errorCode = 2;
							else if ((val = MbRdWord(bufferIn + 9)) > 1023) errorCode = 3;

							// Show value
							else printf("\n--- Slave mode ---\nValue: %d", val);

							// Prepare answer
							if (errorCode == 0) itx = MbAnsWr(ADR_S, registerCode, readedRegister, val, bufferOut);
							break;

						// Function: Button state send
						case FCE_RBIT:

							// Send button state
							if ((readedRegister = MbRdWord(bufferIn + 5)) == BIT_RD && (pocet = MbRdWord(bufferIn + 9)) == 1)
							{
								bity[0] = !TLAC;
								itx = MbAnsRd(ADR_S, registerCode, 1, bity, bufferOut);
							}

							// Else send error code
							else errorCode = 2;
							break;

						// ERROR
						default: errorCode = 1;
					}

					// If error -> add to message
					if (errorCode) itx = MbAnsErr(adr_r, registerCode|0x80, errorCode, bufferOut);

					// Send response

					DIR485 = 1; /* Switch to sending mode */

					itx += MbWrByte(MbLrc(bufferOut + 1, itx - 1), bufferOut + itx);
					itx += MbWrEoT(bufferOut + itx);
					SendBuf(bufferOut, itx);

					DIR485 = 0; /* Switch back to receive mode */
				}
			}
		}
	}
}
