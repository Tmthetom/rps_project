using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using Modbus;
 
namespace SerialCom
{
    public partial class Form1 : Form
    {
        int value = 0;
 
        ModbusASCII Ma;
        bool fmsg = false;
 
        int ix = 0;
        byte adr_r = ADR_S;
        byte kod_r = 0;
        byte er = 0;
        ushort reg = 0;
        ushort pocet;
        byte[] vals = new byte[2];
        int n = 0;
        ushort val;
 
        byte[] bfin = new byte[512];
        byte[] bfout = new byte[512];
 
        const byte ADR_S = 1;
        const byte FCE_RREG = 3;
        const byte FCE_WBIT = 5;
        const byte REG_RD = 0;
        const byte BIT_WR = 0;
 
        // false – čekaní na požadavek
        // true – příjem,zpracování požadavku a vyslaní odpovědi
 
        private delegate void DlgB(byte data);
        private delegate void DlgS(string txt);
        private void RecS(string s) { lPotak.Text = s; }
        private void RecC(char c)
        {
            if (c == '1') LED.BackColor = Color.Yellow;
            else LED.BackColor = Color.White;
        }
        private void RecB(byte b)
        {
            if (b == 1) LED.BackColor = Color.Yellow;
            else LED.BackColor = Color.White;
        }
        private delegate void DlgC(char chr);
 
        public Form1()
        {
            InitializeComponent();
        }
 
        private void Form1_Load(object sender, EventArgs e)
        {
            string[] ports = SerialPort.GetPortNames();
            foreach (string port in ports)
            {
                comboPort.Items.Add(port);
            }
            if (comboPort.Items.Count > 0)
            {
                btnOpen.Enabled = true;
                comboPort.SelectedIndex = 0;
            }
            else
            {
                btnOpen.Enabled = false;
                comboPort.Text = "NO COM PORTS";
            }
            comboBaud.Items.Add("4800");
            comboBaud.Items.Add("9600");
            comboBaud.Items.Add("19200");
            comboBaud.Items.Add("38400");
            comboBaud.Items.Add("57600");
            comboBaud.Items.Add("115200");
            comboBaud.SelectedIndex = 2;
 
            Ma = new ModbusASCII();
        }
 
        private void btnOpen_Click(object sender, EventArgs e)
        {
            if (!comPort.IsOpen)
            {
                int baud;
                if (!int.TryParse(comboBaud.Text, out baud)) baud = 19200;
                comPort.BaudRate = baud;
                comPort.PortName = comboPort.Text;
                try
                {
                    comPort.Open();
                }
                catch (Exception err)
                {
                    MessageBox.Show("Port " + comPort.PortName +
                                     " nelze otevrit! " + err.Message);
                    return;
                }
                btnOpen.Enabled = false;
                btnClose.Enabled = true;
 
            }
        }
 
        private void btnClose_Click(object sender, EventArgs e)
        {
            if (comPort.IsOpen)
            {
                try
                {
                    comPort.Close();
                }
                catch (Exception err)
                {
                    MessageBox.Show("Port " + comPort.PortName +
                                     " nelze zavrit! " + err.Message);
                    return;
                }
                btnClose.Enabled = false;
                btnOpen.Enabled = true;
            }
        }
 
        private void comPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            while (comPort.BytesToRead > 0)
            {
                byte b = (byte)comPort.ReadByte();
                if (b == (byte)':')
                {
                    bfin = new byte[512];
                    bfout = new byte[512];
                    ix = 0;
                    fmsg = true;
                    n = 0;
                }
                else if (fmsg) ix++;
                bfin[ix] = b;
                if (b == (byte)'\n' && fmsg)
                {
                    if ((Ma.Lrc(bfin, ix - 4) != Ma.RdByte(bfin, ix - 3)))
                    {
                        //možná chyba LRC
                    }
                    else
                    {
                        adr_r = Ma.RdByte(bfin, 1);
                        if (adr_r == ADR_S)
                        {
                            kod_r = Ma.RdByte(bfin, 3);
                            er = 0;
                            switch (kod_r)
                            {
                                case FCE_RREG:
                                    reg = Ma.RdWord(bfin, 5);
                                    pocet = Ma.RdWord(bfin, 9);
                                    if (reg != REG_RD || pocet != 1) er = 2;
                                    else
                                    {
                                        //.. MSB -> vals[0] a LSB -> vals[1]
                                        vals[0] = (byte)(value / 256);
                                        vals[1] = (byte)(value % 256);
                                    }
                                    if (er == 0)
                                    {
                                        n = Ma.AnsRd(ADR_S, kod_r, 2, vals, bfout);
                                        n = Ma.WrByte(Ma.Lrc(bfout, n - 1), bfout, n);
                                        n = Ma.WrEoT(bfout, n);
                                        comPort.Write(bfout, 0, n);
                                    }
                                    break;
                                case FCE_WBIT:
                                    reg = Ma.RdWord(bfin, 5);
                                    val = Ma.RdWord(bfin, 9);
                                    if (reg != BIT_WR) er = 2;
                                    else
                                        switch (val)
                                        {
                                            case 0xFF00:
                                                LED.BackColor = Color.Yellow;
                                                break;
                                            case 0x0000:
                                                LED.BackColor = Color.White;
                                                break;
                                            default:
                                                er = 3;
                                                break;
                                        }
                                    if (er == 0) n = Ma.AnsWr(ADR_S, kod_r, reg, val, bfout);
                                    if (er > 0) n = Ma.AnsErr(adr_r, (byte)(kod_r | 0x80), er, bfout);
                                    n = Ma.WrByte(Ma.Lrc(bfout, n - 1), bfout, n);
                                    n = Ma.WrEoT(bfout, n);
                                    comPort.Write(bfout, 0, n);
                                    break;
                                default:
                                    er = 1;
                                    break;
                            }
                        }
 
                        fmsg = false;
                        ts_adr.Text = "adr: " + adr_r.ToString();
                        ts_err.Text = "err: " + er.ToString();
                        ts_kod.Text = "kod: " + kod_r.ToString();
                        ts_reg.Text = "reg: " + reg.ToString();
                    }
                }
            }
        }
 
        private void potak_ValueChanged(object sender, EventArgs e)
        {
            lPotak.Text = potak.Value.ToString();
            value = potak.Value;
        }
    }
}