using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Management;
using Master.Modbus;

namespace Master
{
    public partial class Form1 : Form
    {
        private ModbusASCII modbusASCII = new ModbusASCII();
        private SerialPort serialPort = new SerialPort();
        private State state;
        private byte[] bfin = new byte[256];
        private byte[] bfout = new byte[256];
        private int ix = 0;

        /// <summary>
        /// Initialization
        /// </summary>
        public Form1()
        {
            InitializeComponent();
            InitializationSerial();
            InitializeControls();
        }

        #region Connection

        private void InitializationSerial()
        {
            // Function called, when serial data received
            serialPort.DataReceived += new SerialDataReceivedEventHandler(DataReceived);
        }

        /// <summary>
        /// Connect to serial
        /// </summary>
        /// <param name="portName">COM name</param>
        /// <param name="baudRate">Communication speed</param>
        public void Connect(string portName, int baudRate)
        {
            if (!serialPort.IsOpen)
            {
                serialPort.PortName = portName;
                serialPort.BaudRate = baudRate;
                serialPort.Open();

                state = State.stPocatek;
                timer.Enabled = true;
            }
        }

        /// <summary>
        /// Disconnect from serial
        /// </summary>
        public void Disconnect()
        {
            serialPort.Close();
            state = State.stKlid;
        }

        #endregion Connection

        #region Communication

        /// <summary>
        /// Called when sending serial data
        /// </summary>
        /// <param name="o"></param>
        private void SendData(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Called when serial data received
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            /*
            string typ = "";

            int n = -1;

            typ = "Cteni registru";
            n = modbusASCII.Rd(ModbusSettings.ADR_S, ModbusSettings.FCE_RREG, ModbusSettings.REG_RD, 1, MainWindow.BfOut);

            n += modbusASCII.WrByte(modbusASCII.Lrc(MainWindow.BfOut, 1, n - 1), MainWindow.BfOut, n);
            n += modbusASCII.WrEoT(MainWindow.BfOut, n);

            state = State.cekani;

            //MainWindow.TimeOut.Stop();

            SerialPortClass.SendData(DataType.modbus, MainWindow.BfOut, n);

            //MainWindow.TimeOut.Start();

            MainWindow.AddTextToStack(typ, MessageType.System);
            */
        }

        #endregion Communication

        #region Form initialization

        private void InitializeControls()
        {
            InitPorts();
            InitBaudRates();
        }

        private int numberOfPorts = 0;

        /// <summary>
        /// Init ports for connection
        /// </summary>
        private void InitPorts()
        {
            // Get ports
            string[] ports = SerialPort.GetPortNames();

            // Save new ports if their are not same
            if (ports.Length != numberOfPorts)
            {
                comboBoxPorts.Items.Clear();
                foreach (string port in ports) comboBoxPorts.Items.Add(port);
                if (ports.Length > 0) comboBoxPorts.SelectedIndex = 0;
                this.numberOfPorts = ports.Length;
            }
        }

        /// <summary>
        /// Init baudRates for connection
        /// </summary>
        private void InitBaudRates()
        {
            // All baudrates
            string[] baudRates = new string[] {
                "4800",
                "9600",
                "19200",
                "38400",
                "57600",
                "115200",
            };

            // Add all in comboBox
            foreach (string baudRate in baudRates) comboBoxBaudRates.Items.Add(baudRate);

            // Select index of wanted baudRate
            for (int i = 0; i < baudRates.Length; i++)
            {
                if (comboBoxBaudRates.Items[i].ToString() == "9600")
                {
                    comboBoxBaudRates.SelectedIndex = i;
                    break;
                }
            }
        }

        /// <summary>
        /// Autocalled when selected port changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ComboBoxPorts_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetDeviceName(comboBoxPorts.SelectedItem.ToString());
        }

        /// <summary>
        /// Get device name on selected port
        /// </summary>
        /// <param name="portName">Port name</param>
        private void SetDeviceName(string portName)
        {
            try
            {
                using (var searcher = new ManagementObjectSearcher("SELECT * FROM WIN32_SerialPort"))
                {
                    string[] portnames = SerialPort.GetPortNames();
                    List<ManagementBaseObject> ports = searcher.Get().Cast<ManagementBaseObject>().ToList();

                    foreach (ManagementBaseObject port in ports)
                    {
                        if (port["DeviceID"].ToString().Equals(portName))
                        {
                            textBoxDeviceName.Text = port["Description"].ToString();  // Hint: Win32_SerialPort class
                            break;
                        }
                    }
                }
            }
            catch
            {
                ;
            }
        }

        #endregion Form initialization

        #region UI Control

        #region Connection button

        private void ConnectDisconnect(object sender, EventArgs e)
        {
            try
            {
                // Connect
                if (!serialPort.IsOpen)
                {
                    string portName = comboBoxPorts.Text;
                    int baudRate = Int32.Parse(comboBoxBaudRates.Text);

                    Connect(portName, baudRate);
                    buttonStartStop.Text = "CLOSE";
                    buttonStartStop.BackColor = Color.IndianRed;
                }

                // Disconnect
                else
                {
                    Disconnect();
                    buttonStartStop.Text = "OPEN";
                    buttonStartStop.BackColor = Color.GreenYellow;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }

        #endregion Connection button

        #region Bulb control

        private Bitmap bulbOff = Properties.Resources.bulbOff;
        private Bitmap bulbOn = Properties.Resources.bulbOn;

        public void ChangeBulbStateImage(bool state)
        {
            pictureBox.Image = (state) ? bulbOn : bulbOff;
        }

        #endregion Bulb control

        #region Trackbar

        private void TrackBar_ValueChanged(object sender, EventArgs e)
        {
            labelTrackBarValue.Text = trackBar.Value.ToString();
        }

        #endregion Trackbar

        #endregion UI Control
    }
}