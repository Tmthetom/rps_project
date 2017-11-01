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
    public partial class Main : Form
    {
        #region Form initialization (buttons, values, serial, ...)

        /// <summary>
        /// Default initialization
        /// </summary>
        public Main()
        {
            InitializeComponent();
            InitializationSerial();
            InitializeControls();
        }

        /// <summary>
        /// Initialize default controls
        /// </summary>
        private void InitializeControls()
        {
            InitPorts();
            InitBaudRates();

            mainFormWidth = this.Width;
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
        /// Initialize default serial handler
        /// </summary>
        private void InitializationSerial()
        {
            // Master and Slave are switched in ModeChanged event handler

            // Default serial data received
            serialPort.DataReceived += new SerialDataReceivedEventHandler(MasterClientHandler);
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

        #endregion

        #region Connection (serial port connect/disconnect)

        private SerialPort serialPort = new SerialPort();

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
            }
        }

        /// <summary>
        /// Disconnect from serial
        /// </summary>
        public void Disconnect()
        {
            serialPort.Close();
        }

        #endregion

        #region Communication (master-client/slave-server)

        private ModbusASCII modbusASCII = new ModbusASCII();

        #region Master (Client)

        /// <summary>
        /// Called when serial data received
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MasterClientHandler(object sender, SerialDataReceivedEventArgs e)
        {
            MessageBox.Show("Beeem");
        }

        #endregion

        #region Slave (Server)

        int value;
        int index = 0;
        int messageOut = 0;
        bool fmsg = false;
        byte adr_r = ModbusSettings.ADR_S;
        byte registerCode = 0;
        byte errorCode = 0;
        ushort readedRegister = 0;
        ushort readedValue;
        byte[] vals = new byte[2];
        byte[] bufferIn = new byte[512];
        byte[] bufferOut = new byte[512];

        /// <summary>
        /// Called when serial data received
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SlaveServerHandler(object sender, SerialDataReceivedEventArgs e)
        {
            // While we have data to read
            while (serialPort.BytesToRead > 0)
            {
                // Read byte
                byte readedByte = (byte)serialPort.ReadByte();

                // Modbus transmission start sign
                if (readedByte == (byte)':')
                {
                    bufferIn = new byte[512];
                    bufferOut = new byte[512];
                    index = 0;
                    fmsg = true;
                    messageOut = 0;
                }

                // Continue previous reading
                else if (fmsg)
                {
                    index++;
                }

                // Move reader byte into buffer to process
                bufferIn[index] = readedByte;

                // Check if byte start with newline
                if (readedByte == (byte)'\n' && fmsg)
                {
                    if ((modbusASCII.Lrc(bufferIn, index - 4) == modbusASCII.RdByte(bufferIn, index - 3)))
                    {
                        adr_r = modbusASCII.RdByte(bufferIn, 1);
                        if (adr_r == ModbusSettings.ADR_S)
                        {
                            registerCode = modbusASCII.RdByte(bufferIn, 3);
                            errorCode = 0;
                            switch (registerCode)
                            {
                                // Function: Send value of trackbar
                                case ModbusSettings.FCE_RREG:

                                    // Read from buffer
                                    readedRegister = modbusASCII.RdWord(bufferIn, 5);
                                    readedValue = modbusASCII.RdWord(bufferIn, 9);

                                    // Check if register remains its function
                                    if (readedRegister == ModbusSettings.REG_RD || readedValue != 1)
                                    {
                                        // Convert values
                                        vals[0] = (byte)(value / 256);  // MSB -> vals[0]
                                        vals[1] = (byte)(value % 256);  // LSB -> vals[1]

                                        // Prepare message to send
                                        messageOut = modbusASCII.AnsRd(ModbusSettings.ADR_S, registerCode, 2, vals, bufferOut);

                                        // Send message
                                        messageOut = modbusASCII.WrByte(modbusASCII.Lrc(bufferOut, messageOut - 1), bufferOut, messageOut);
                                        messageOut = modbusASCII.WrEoT(bufferOut, messageOut);
                                        serialPort.Write(bufferOut, 0, messageOut);
                                    }
                                    break;

                                // Function: Button will light up bulb
                                case ModbusSettings.FCE_WBIT:

                                    // Read from buffer
                                    readedRegister = modbusASCII.RdWord(bufferIn, 5);
                                    readedValue = modbusASCII.RdWord(bufferIn, 9);

                                    // Check if register remains its function
                                    if (readedRegister == ModbusSettings.BIT_WR)
                                    {
                                        switch (readedValue)
                                        {
                                            // LIGHT ON
                                            case 0xFF00:
                                                ChangeBulbStateImage(true);
                                                break;

                                            // LIGHT OFF
                                            case 0x0000:
                                                ChangeBulbStateImage(false);
                                                break;

                                            // ERROR
                                            default:
                                                errorCode = 3;
                                                break;
                                        }
                                    }

                                    // If not remains -> ERROR
                                    else
                                    {
                                        errorCode = 2;
                                    }

                                    // No error response
                                    if (errorCode == 0)
                                    {
                                        messageOut = modbusASCII.AnsWr(ModbusSettings.ADR_S, registerCode, readedRegister, readedValue, bufferOut);
                                    }

                                    // Error response
                                    if (errorCode > 0)
                                    {
                                        messageOut = modbusASCII.AnsErr(adr_r, (byte)(registerCode | 0x80), errorCode, bufferOut);
                                    }

                                    // Send message
                                    messageOut = modbusASCII.WrByte(modbusASCII.Lrc(bufferOut, messageOut - 1), bufferOut, messageOut);
                                    messageOut = modbusASCII.WrEoT(bufferOut, messageOut);
                                    serialPort.Write(bufferOut, 0, messageOut);
                                    break;

                                // ERROR
                                default:
                                    errorCode = 1;
                                    break;
                            }
                        }
                        fmsg = false;
                    }
                }
            }
        }

        #endregion

        #endregion

        #region UI Control (controls, mode change, ...])

        #region Mode change

        int mainFormWidth;

        /// <summary>
        /// Called when mode (master, slave) changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ModeChanged(object sender, EventArgs e)
        {
            // Master (Client)
            if (radioButtonMaster.Checked)
            {
                // Listener
                serialPort.DataReceived -= SlaveServerHandler;
                serialPort.DataReceived += new SerialDataReceivedEventHandler(MasterClientHandler);

                // Hide
                groupBoxValue.Visible = false;

                // Show
                groupBoxLed.Visible = true;
                groupBoxTrackbar.Visible = true;

                // Size
                this.Width = mainFormWidth;
            }

            // Slave (Server)
            else
            {
                // Listener
                serialPort.DataReceived -= MasterClientHandler;
                serialPort.DataReceived += new SerialDataReceivedEventHandler(SlaveServerHandler);

                // Hide
                groupBoxTrackbar.Visible = false;
                groupBoxLed.Visible = false;

                // Show
                groupBoxValue.Visible = true;

                // Size
                this.Width = mainFormWidth - 220;
            }
        }

        #endregion

        #region Connection button

        /// <summary>
        /// Open/Close button click event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OpenCloseButton(object sender, EventArgs e)
        {
            try
            {
                // Open
                if (!serialPort.IsOpen)
                {
                    // Serial port
                    string portName = comboBoxPorts.Text;
                    int baudRate = Int32.Parse(comboBoxBaudRates.Text);
                    Connect(portName, baudRate);

                    // Button
                    buttonStartStop.Text = "CLOSE";
                    buttonStartStop.BackColor = Color.IndianRed;

                    // Trackbar
                    groupBoxTrackbar.Enabled = true;

                    // Bulb button
                    groupBoxLed.Enabled = true;

                    // Value
                    groupBoxValue.Enabled = true;

                    // Combobox
                    comboBoxPorts.Enabled = false;
                    comboBoxBaudRates.Enabled = false;

                    // Mode
                    groupBoxMode.Enabled = false;
                }

                // Close
                else
                {
                    // Serial port
                    Disconnect();

                    // Button
                    buttonStartStop.Text = "OPEN";
                    buttonStartStop.BackColor = Color.GreenYellow;

                    // Trackbar
                    groupBoxTrackbar.Enabled = false;

                    // Bulb button
                    groupBoxLed.Enabled = false;

                    // Value
                    groupBoxValue.Enabled = false;

                    // Combobox
                    comboBoxPorts.Enabled = true;
                    comboBoxBaudRates.Enabled = true;

                    // Mode
                    groupBoxMode.Enabled = true;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }

        #endregion

        #region Bulb control

        private Bitmap bulbOff = Properties.Resources.bulbOff;
        private Bitmap bulbOn = Properties.Resources.bulbOn;

        /// <summary>
        /// Change bulb state (on/off)
        /// </summary>
        /// <param name="state"></param>
        public void ChangeBulbStateImage(bool state)
        {
            pictureBox.Image = (state) ? bulbOn : bulbOff;
        }

        #endregion

        #region Trackbar

        /// <summary>
        /// Trackbar value changed event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrackBar_ValueChanged(object sender, EventArgs e)
        {
            labelTrackBarValue.Text = trackBar.Value.ToString();
            value = trackBar.Value;
        }

        #endregion

        #endregion
    }
}