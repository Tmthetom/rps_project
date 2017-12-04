using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Master.Modbus
{
    public enum State
    {
        start,
        calm,
        waiting,
        receiving,
        broadcasting
    }
}
