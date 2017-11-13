
#ifndef _MODBUS_
#define _MODBUS_

#ifndef  _TYPEDEF_
#define _TYPEDEF_
typedef unsigned char byte;
typedef unsigned short word;
#endif


byte WrWord(word val,byte *bf);
word RdWord(byte *bf);

word MrtuRdCrc(byte *bf);
word MrtuCrc(byte *bf, byte len);
byte MrtuWrCrc(word crc,byte *bf );

byte MrtuWrOne(byte adr,byte fce,word reg,word val,byte *bf);
byte MrtuWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf);
byte MrtuRd(byte adr,byte fce,word reg,word nbr,byte *bf);

byte MrtuAnsErr(byte adr,byte fce,byte er,byte *bf);
byte MrtuAnsRd(byte adr,byte fce,byte reg,byte *vals,byte *bf);
#define  MrtuAnsWr MrtuWrOne


byte AHex(byte c);
byte HexAsc(byte b);
byte MbRdByte(byte *bf);
word MbRdWord(byte *bf);
byte MbWrByte(byte b,byte *bf);
byte MbWrWord(word w,byte *bf);

byte MbWrEoT(byte *bf);
byte MbLrc(byte *bf,byte len);

byte MbRd(byte adr,byte fce,word reg,word nbr,byte *bf);
byte MbWr(byte adr,byte fce,word reg,word nbr,byte *vals,byte *bf);
byte MbWrOne(byte adr,byte fce,word reg,word val,byte *bf);

byte MbAnsRd(byte adr, byte fce, byte bytes, byte *vals,byte *bf);
byte MbAnsErr(byte adr,byte fce,byte er,byte *bf);
#define  MbAnsWr MbWrOne

#endif
