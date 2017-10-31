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


namespace Master
{
    public partial class Form1 : Form
    {
        #region Initialization

        public Form1()
        {
            InitializeComponent();
            InitializeControls();
        }

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

        #endregion Initialization

        #region Bulb control

        private Bitmap bulbOff = Properties.Resources.bulbOff;
        private Bitmap bulbOn = Properties.Resources.bulbOn;

        public void ChangeBulbStateImage(bool state)
        {
            pictureBox.Image = (state) ? bulbOn : bulbOff;
        }

        #endregion Bulb control


        private void TrackBar_ValueChanged(object sender, EventArgs e)
        {
            labelTrackBarValue.Text = trackBar.Value.ToString();
        }

        
    }
}