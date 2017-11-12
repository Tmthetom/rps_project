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
                if (comboBoxBaudRates.Items[i].ToString() == "19200")
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
            TimeOut.Elapsed += new System.Timers.ElapsedEventHandler(TimeOut_Tick);
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

        #region Variables

        // Common
        private ModbusASCII modbusASCII = new ModbusASCII();

        int value;
        int index = 0;
        int messageOut = 0;

        byte registerAddress = ModbusSettings.ADR_S;
        byte registerCode = 0;
        byte errorCode = 0;

        short readedShortRegister;
        short readedShortValue;

        ushort readedRegister;
        ushort readedValue;

        byte[] vals = new byte[1];
        byte[] bufferIn = new byte[512];
        byte[] bufferOut = new byte[512];

        // Master (Client)
        State state = State.calm;
        bool prepared = false;
        System.Timers.Timer TimeOut = new System.Timers.Timer(500);

        // Slave (Server)
        bool flagMessage = false;

        #endregion

        #region Master (Client)

        /// <summary>
        /// Timeout check after 500 ms wating
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void TimeOut_Tick(object sender, System.Timers.ElapsedEventArgs e)
        {
            if (state == State.waiting && serialPort.IsOpen)
            {
                state = State.calm;
            }
            TimeOut.Enabled = false;
        }

        /// <summary>
        /// Sending request every 200 ms
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MasterClientSender_Tick(object sender, EventArgs e)
        {
            if (serialPort.IsOpen && state == State.calm)
            {
                // Set broadcasting on
                state = State.broadcasting;
                prepared = !prepared;

                // Prepare message
                if (prepared) messageOut = modbusASCII.WrOne(ModbusSettings.ADR_S, ModbusSettings.FCE_WREG, 0, (ushort)trackBar.Value, bufferOut);
                else messageOut = modbusASCII.Rd(ModbusSettings.ADR_S, ModbusSettings.FCE_RBIT, ModbusSettings.BIT_RD, 1, bufferOut);

                // Send message
                messageOut = modbusASCII.WrByte(modbusASCII.Lrc(bufferOut, messageOut - 1), bufferOut, messageOut);
                messageOut = modbusASCII.WrEoT(bufferOut, messageOut);
                serialPort.Write(bufferOut, 0, messageOut);

                // Set timout for response
                TimeOut.Interval = 500;
                TimeOut.Enabled = true;
                state = State.waiting;
            }
        }

        /// <summary>
        /// Called when serial data received
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MasterClientHandler(object sender, SerialDataReceivedEventArgs e)
        {
            // While we have data to read
            while (serialPort.BytesToRead > 0)
            {
                // Read byte
                byte readedByte = (byte)serialPort.ReadByte();

                switch (state)
                {
                    case State.waiting:

                        // Modbus transmission start sign
                        if (readedByte == (byte)':')
                        {
                            // Set receiving
                            state = State.receiving;
                            bufferIn[index = 0] = readedByte;
                        }
                        break;

                    case State.receiving:

                        // Modbus transmission start sign
                        if (readedByte == (byte)':') index = 0;

                        // Continue previous reading
                        else index++;

                        // Read at index
                        bufferIn[index] = readedByte;

                        // Check if byte start with newline
                        if (readedByte == (byte)'\n')
                        {
                            if ((modbusASCII.Lrc(bufferIn, index - 4) != modbusASCII.RdByte(bufferIn, index - 3)))
                            {
                                ;
                            }

                            // Read register address and code from buffer
                            registerAddress = modbusASCII.RdByte(bufferIn, 1);
                            registerCode = modbusASCII.RdByte(bufferIn, 3);

                            // Read LED value
                            if (registerCode == ModbusSettings.FCE_RBIT)
                            {                                
                                // Read from buffer
                                readedShortRegister = modbusASCII.RdByte(bufferIn, 5);
                                readedShortValue = modbusASCII.RdByte(bufferIn, 7);

                                // Show color
                                if (registerAddress == ModbusSettings.ADR_S && readedShortRegister == 1)
                                {
                                    if (readedShortValue > 0)
                                    {
                                        ChangeBulbStateImage(true);
                                    }
                                    else
                                    {
                                        ChangeBulbStateImage(false);
                                    }
                                }
                            }
                            else if (registerCode >= 0x80)
                            {
                                errorCode = modbusASCII.RdByte(bufferIn, 5);
                            }
                            state = State.calm;
                        }
                        break;
                }
            }
        }

        #endregion

        #region Slave (Server)

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
                    // Reset variables
                    bufferIn = new byte[512];
                    bufferOut = new byte[512];
                    index = 0;
                    flagMessage = true;
                    messageOut = 0;
                }

                // Continue previous reading
                else if (flagMessage) index++;

                // Move reader byte into buffer to process
                bufferIn[index] = readedByte;

                // Check if byte start with newline
                if (readedByte == (byte)'\n' && flagMessage)
                {
                    if ((modbusASCII.Lrc(bufferIn, index - 4) == modbusASCII.RdByte(bufferIn, index - 3)))
                    {
                        registerAddress = modbusASCII.RdByte(bufferIn, 1);
                        if (registerAddress == ModbusSettings.ADR_S)
                        {
                            registerCode = modbusASCII.RdByte(bufferIn, 3);
                            errorCode = 0;
                            switch (registerCode)
                            {
                                // Function: Read value
                                case ModbusSettings.FCE_WREG:

                                    // Read from buffer
                                    readedRegister = modbusASCII.RdWord(bufferIn, 5);
                                    readedValue = modbusASCII.RdWord(bufferIn, 9);

                                    // Check validity
                                    if (readedRegister != ModbusSettings.REG_WR) errorCode = 2;  // Check if register remains its function
                                    else if (readedValue > 1023) errorCode = 3;  // Check if value is in range

                                    // Show value
                                    else {
                                        labelReceivedValue.Invoke((Action)delegate { labelReceivedValue.Text = readedValue.ToString(); });
                                    }

                                    // Prepare answer
                                    if (errorCode == 0) messageOut = modbusASCII.AnsWr(ModbusSettings.ADR_S, registerCode, readedRegister, readedValue, bufferOut);

                                    break;

                                // Function: Button state send
                                case ModbusSettings.FCE_RBIT:

                                    // Read from buffer
                                    readedRegister = modbusASCII.RdWord(bufferIn, 5);
                                    readedValue = modbusASCII.RdWord(bufferIn, 9);

                                    // Check validity
                                    if (readedRegister != ModbusSettings.BIT_RD || readedValue != 1) errorCode = 2;  // Check if register remains its function

                                    // Send button state
                                    else
                                    {
                                        vals[0] = (buttonLightUpOn) ? (byte)0xFF : (byte)0x00;
                                        messageOut = modbusASCII.AnsRd(ModbusSettings.ADR_S, registerCode, 1, vals, bufferOut);
                                    }
                                    break;

                                // ERROR
                                default:
                                    errorCode = 1;
                                    break;
                            }

                            // If error -> add to message
                            if (errorCode > 0) messageOut = modbusASCII.AnsErr(registerAddress, (byte)(registerCode | 0x80), errorCode, bufferOut);

                            // Send response
                            messageOut = modbusASCII.WrByte(modbusASCII.Lrc(bufferOut, messageOut - 1), bufferOut, messageOut);
                            messageOut = modbusASCII.WrEoT(bufferOut, messageOut);
                            serialPort.Write(bufferOut, 0, messageOut);
                        }
                        flagMessage = false;
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

        #region Light up button

        bool buttonLightUpOn = false;

        private void ButtonLightUp_MouseDown(object sender, MouseEventArgs e)
        {
            buttonLightUpOn = true;
        }

        private void ButtonLightUp_MouseUp(object sender, MouseEventArgs e)
        {
            buttonLightUpOn = false;
        }

        #endregion

        #endregion
    }
}