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
//using Modbus;

namespace projektModbus
{
    public partial class Form1 : Form
    {
        enum Tstav { stPocatek, stKlid, stVysilani, stPrijem };

        Tstav stav;
        byte[] bfin = new byte[256];
        byte[] bfout = new byte[256];
        static int BIT_WR = 0;
        static int REG_RD = 0;
        const byte FCE_RREG = 3;
        const byte FCE_WBIT = 5;

        int ix = 0;
        ModbusRTU Mr;
        const byte ADR_S = 1;
        byte kod_r;
        ushort reg;

        public Form1()
        {
            Mr = new ModbusRTU();
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
                buttonOpen.Enabled = true;
                comboPort.SelectedIndex = 0;
            }
            else
            {
                buttonOpen.Enabled = false;
                comboPort.Text = "NO COM PORTS";
            }

            comboSpeed.Items.Add("4800");
            comboSpeed.Items.Add("9600");
            comboSpeed.Items.Add("19200");
            comboSpeed.Items.Add("38400");
            comboSpeed.Items.Add("57600");
            comboSpeed.Items.Add("115200");
            comboSpeed.SelectedIndex = 2;
        }

        private void buttonOpen_Click(object sender, EventArgs e)
        {
            int baud;
            if(!serialPort1.IsOpen){
                if (!int.TryParse(comboSpeed.Text, out baud)) baud = 19200; serialPort1.BaudRate = baud;
                serialPort1.PortName = comboPort.Text;
                try
                {
                    serialPort1.Open();
                }
                catch
                (
                Exception err
                ){
                    MessageBox.Show("Port " + serialPort1.PortName + " nelze otevrit! " + err.Message);
                return;
                }
            buttonOpen.Enabled = false;
            buttonClose.Enabled = true;


            stav = Tstav.stPocatek;
            Console.WriteLine("C-Pocatek");
            timer1.Enabled = true;

            Console.WriteLine("Otevreni portu");
                }
            }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            //Console.WriteLine("DataReceived start");
            while (serialPort1.BytesToRead > 0)
            {
                
                byte b = (byte)serialPort1.ReadByte();
                switch (stav)
                {
                    case Tstav.stPocatek: //pocatek
                        if (!timer1.Enabled)
                        {
                            timer1.Enabled = true;
                        }
                        //timer1_Tick(sender, e);
                        
                        break;
                    case Tstav.stKlid: //klid
                        //timer1.Enabled=true;
                        stav=Tstav.stPrijem;
                        Console.WriteLine("S-Prijem");            
                        bfin[0]=b;
                        ix=0;
                        break;
                    case Tstav.stPrijem: //prijem
                        bfin[++ix]=b;
                        if (!timer1.Enabled)
                        {
                            timer1.Enabled = true;
                        }                   
                        //timer1_Tick(sender, e);
                        break;
                }
                Console.WriteLine("IX:" + ix + "TIMER ENABLED" + timer1.Enabled);
                
                        
            }    
        }

        private void timer1_Tick(object sender, EventArgs e)
        {

            if (stav == Tstav.stPrijem && ix == 0)
            {
                return;
            }
            
            //Console.WriteLine("TICK");
            int n = 0;
            byte[] vals = new byte[2];
            switch (stav)
            {
                case Tstav.stPocatek: 
                    stav = Tstav.stKlid;
                    Console.WriteLine("T-Klid");
            
                    break;
                case Tstav.stPrijem:
                    if (Mr.Crc(bfin, ix - 1) != Mr.RdCrc(bfin, ix - 1))
                    {
                        Console.WriteLine("CHYBA");
                        //možná chyba
                    }
                    else
                    {
                        stav = Tstav.stKlid;
                        Console.WriteLine("T-Klid");
                    
                        byte adr_r = bfin[0];
                        
                        label1.Text = "ADR:" + adr_r.ToString();
                        
                                    
                        if (adr_r == ADR_S)
                        {
                            kod_r = bfin[1];
                            label4.Text = "KOD:" + kod_r.ToString();
                        
                            byte er = 0;


                            switch (kod_r)
                            {
                                
                                case FCE_RREG:
                                    bfout[0] = 1;
                                    bfout[1] = FCE_RREG;
                                    ushort reg = Mr.RdWord(bfin,2);
                                    ushort pocet = Mr.RdWord(bfin,4);
                                    if (reg != REG_RD || pocet != 1) er = 2;
                                    else
                                    {
                                    
                                        int tp = trackPot.Value;

                                        vals[0] = (byte)(tp / 256);
                                        vals[1] = (byte)(tp % 256);
                                        //MSB->vals[0];
                                        //LSB->vals[1];
                                    }
                                    if(er==0) n = Mr.AnsRd(ADR_S,kod_r,2, vals, bfout);
                                    break;
                                case FCE_WBIT:
                                    bfout[0] = 1;
                                    bfout[1] = FCE_WBIT;
                                    reg = Mr.RdWord(bfin,2);
                                    label3.Text = "REG:" + reg.ToString();
                                    ushort val = Mr.RdWord(bfin,4);
                                    if (reg != BIT_WR) er=2;
                                    else switch (val) { 
                                          case 0xFF00: led.BackColor = Color.Yellow; break;
                                          case 0x0000: led.BackColor = Color.White; break;
                                          default: er=3; break;
                                     }
                                     if(er==0) n = Mr.AnsWr(ADR_S,kod_r,reg,val,bfout);
                                     break;
                                default: 
                                    er = 1;
                                    break;
                              }

                            label2.Text = "ER:" + er.ToString();
                            
                              if(er>0) n = Mr.AnsErr(adr_r,(byte)(kod_r|0x80),er,bfout);
                              n=Mr.WrCrc(Mr.Crc(bfout,n),bfout,n);
                              serialPort1.Write(bfout, 0, n);
                              
                        }
                        
                    }
                    //timer1.Enabled = false;        
                    break;          
            }
            
            
            

        }

        private void buttonClose_MouseClick(object sender, MouseEventArgs e)
        {
            buttonOpen.Enabled = true;
            buttonClose.Enabled = false;

            stav = Tstav.stKlid;
            Console.WriteLine("M-Klid");
            
            timer1.Enabled = false;
        }

    }
}
