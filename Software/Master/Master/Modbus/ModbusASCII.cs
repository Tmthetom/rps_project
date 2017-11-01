using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Master.Modbus
{
    public class ModbusASCII
    {
        public byte AHex(byte c)
        {
            if ((c >= (byte)'0') && (c <= (byte)'9')) return (byte)(c - '0');
            if ((c >= (byte)'A') && (c <= (byte)'F')) return (byte)(c - 'A' + 10);
            return 0xFF;
        }

        public byte HexAsc(byte b)
        {
            if (b < 10) return (byte)(b + '0');
            return (byte)(b - 10 + 'A');
        }
 
        public byte RdByte(byte[] bf, int n)
        {
            return (byte)(AHex(bf[n]) << 4 | AHex(bf[n + 1]));
        }

        public ushort RdWord(byte[] bf, int n)
        {
            return (ushort)(AHex(bf[n]) << 12 | (AHex(bf[n + 1]) << 8) | (AHex(bf[n + 2]) << 4) | AHex(bf[n + 3]));
        }

        public int WrByte(byte b, byte[] bf, int n)
        {
            bf[n++] = HexAsc((byte)(b >> 4));
            bf[n++] = HexAsc((byte)(b & 0xF));
            return n;
        }

        public int WrWord(ushort w, byte[] bf, int n)
        {
            bf[n++] = HexAsc((byte)(w >> 12));
            bf[n++] = HexAsc((byte)((w >> 8) & 0xF));
            bf[n++] = HexAsc((byte)((w >> 4) & 0xF));
            bf[n++] = HexAsc((byte)(w & 0xF));
            return n;
        }

        public int WrEoT(byte[] bf, int n)
        {
            bf[n++] = (byte)'\r';
            bf[n++] = (byte)'\n';
            return n;
        }

        public byte Lrc(byte[] bf, int len)
        {
            byte lrc = 0;
            while (len != 0)
                lrc += bf[len--];
            return (byte)(-lrc);
        }


        public int Rd(byte adr, byte fce, ushort reg, int nbr, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrWord(reg, bf, n);
            n = WrWord((ushort)nbr, bf, n);
            return n;
        }

        public int WrOne(byte adr, byte fce, ushort reg, ushort val, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrWord(reg, bf, n);
            n = WrWord(val, bf, n);
            return n;
        }

        public int Wr(byte adr, byte fce, ushort reg, int nbr, byte[] vals, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrWord(reg, bf, n);
            n = WrWord((ushort)nbr, bf, n);
            int bytes = 0;
            switch (fce)
            {
                case 0x10: bytes = 2 * nbr; break;
                case 0x0F: bytes = (nbr + 7) / 8; break;
            }
            n = WrByte((byte)bytes, bf, n);
            for (int i = 0; i < bytes; i++)
                n = WrByte(vals[i], bf, n);
            return n;
        }

        public int AnsRd(byte adr, byte fce, int bytes, byte[] vals, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrByte((byte)bytes, bf, n);
            for (int i = 0; i < bytes; i++)
                n = WrByte(vals[i], bf, n);
            return n;
        }

        public int AnsWr(byte adr, byte fce, ushort reg, ushort val, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrWord(reg, bf, n);
            n = WrWord(val, bf, n);
            return n;
        }


        public int AnsErr(byte adr, byte fce, byte er, byte[] bf)
        {
            bf[0] = (byte)':';
            int n = WrByte(adr, bf, 1);
            n = WrByte(fce, bf, n);
            n = WrByte(er, bf, n);
            return n;
        }
    }
}
