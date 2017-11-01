using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Master.Modbus
{
    class ModbusSettings
    {
        public const byte ADR_S = 1;
        public const byte FCE_RREG = 3;
        public const byte FCE_WREG = 6;
        public const byte FCE_RBIT = 1;
        public const byte FCE_WBIT = 5;
        public const short REG_RD = 0;
        public const short REG_WR = 0;
        public const byte BIT_WR = 0;
        public const byte BIT_RD = 0;
    }
}
