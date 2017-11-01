namespace Master
{
    partial class Main
    {
        /// <summary>
        /// Vyžaduje se proměnná návrháře.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Uvolněte všechny používané prostředky.
        /// </summary>
        /// <param name="disposing">hodnota true, když by se měl spravovaný prostředek odstranit; jinak false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kód generovaný Návrhářem Windows Form

        /// <summary>
        /// Metoda vyžadovaná pro podporu Návrháře - neupravovat
        /// obsah této metody v editoru kódu.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBoxConnection = new System.Windows.Forms.GroupBox();
            this.textBoxDeviceName = new System.Windows.Forms.TextBox();
            this.buttonStartStop = new System.Windows.Forms.Button();
            this.comboBoxBaudRates = new System.Windows.Forms.ComboBox();
            this.comboBoxPorts = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.trackBar = new System.Windows.Forms.TrackBar();
            this.pictureBox = new System.Windows.Forms.PictureBox();
            this.labelTrackBarValue = new System.Windows.Forms.Label();
            this.groupBoxTrackbar = new System.Windows.Forms.GroupBox();
            this.groupBoxValue = new System.Windows.Forms.GroupBox();
            this.buttonLightUp = new System.Windows.Forms.Button();
            this.labelReceivedValue = new System.Windows.Forms.Label();
            this.groupBoxLed = new System.Windows.Forms.GroupBox();
            this.groupBoxMode = new System.Windows.Forms.GroupBox();
            this.radioButtonSlave = new System.Windows.Forms.RadioButton();
            this.radioButtonMaster = new System.Windows.Forms.RadioButton();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBoxConnection.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox)).BeginInit();
            this.groupBoxTrackbar.SuspendLayout();
            this.groupBoxValue.SuspendLayout();
            this.groupBoxLed.SuspendLayout();
            this.groupBoxMode.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxConnection
            // 
            this.groupBoxConnection.Controls.Add(this.textBoxDeviceName);
            this.groupBoxConnection.Controls.Add(this.buttonStartStop);
            this.groupBoxConnection.Controls.Add(this.comboBoxBaudRates);
            this.groupBoxConnection.Controls.Add(this.comboBoxPorts);
            this.groupBoxConnection.Controls.Add(this.label3);
            this.groupBoxConnection.Controls.Add(this.label2);
            this.groupBoxConnection.Controls.Add(this.label1);
            this.groupBoxConnection.Location = new System.Drawing.Point(12, 88);
            this.groupBoxConnection.Name = "groupBoxConnection";
            this.groupBoxConnection.Size = new System.Drawing.Size(436, 161);
            this.groupBoxConnection.TabIndex = 0;
            this.groupBoxConnection.TabStop = false;
            this.groupBoxConnection.Text = "Connection";
            // 
            // textBoxDeviceName
            // 
            this.textBoxDeviceName.Location = new System.Drawing.Point(115, 36);
            this.textBoxDeviceName.Name = "textBoxDeviceName";
            this.textBoxDeviceName.ReadOnly = true;
            this.textBoxDeviceName.Size = new System.Drawing.Size(210, 20);
            this.textBoxDeviceName.TabIndex = 7;
            // 
            // buttonStartStop
            // 
            this.buttonStartStop.BackColor = System.Drawing.Color.GreenYellow;
            this.buttonStartStop.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonStartStop.Location = new System.Drawing.Point(348, 34);
            this.buttonStartStop.Name = "buttonStartStop";
            this.buttonStartStop.Size = new System.Drawing.Size(65, 99);
            this.buttonStartStop.TabIndex = 6;
            this.buttonStartStop.Text = "OPEN";
            this.buttonStartStop.UseVisualStyleBackColor = false;
            this.buttonStartStop.Click += new System.EventHandler(this.OpenCloseButton);
            // 
            // comboBoxBaudRates
            // 
            this.comboBoxBaudRates.FormattingEnabled = true;
            this.comboBoxBaudRates.Location = new System.Drawing.Point(115, 112);
            this.comboBoxBaudRates.Name = "comboBoxBaudRates";
            this.comboBoxBaudRates.Size = new System.Drawing.Size(210, 21);
            this.comboBoxBaudRates.TabIndex = 5;
            // 
            // comboBoxPorts
            // 
            this.comboBoxPorts.FormattingEnabled = true;
            this.comboBoxPorts.Location = new System.Drawing.Point(115, 76);
            this.comboBoxPorts.Name = "comboBoxPorts";
            this.comboBoxPorts.Size = new System.Drawing.Size(210, 21);
            this.comboBoxPorts.TabIndex = 4;
            this.comboBoxPorts.SelectedIndexChanged += new System.EventHandler(this.ComboBoxPorts_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(25, 115);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "BaudRate:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 79);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Port:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Device:";
            // 
            // trackBar
            // 
            this.trackBar.Location = new System.Drawing.Point(6, 49);
            this.trackBar.Maximum = 1023;
            this.trackBar.Name = "trackBar";
            this.trackBar.Size = new System.Drawing.Size(424, 45);
            this.trackBar.TabIndex = 1;
            this.trackBar.TickFrequency = 30;
            this.trackBar.ValueChanged += new System.EventHandler(this.TrackBar_ValueChanged);
            // 
            // pictureBox
            // 
            this.pictureBox.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox.Image = global::Master.Properties.Resources.bulbOff;
            this.pictureBox.Location = new System.Drawing.Point(-23, 19);
            this.pictureBox.Name = "pictureBox";
            this.pictureBox.Size = new System.Drawing.Size(258, 321);
            this.pictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox.TabIndex = 2;
            this.pictureBox.TabStop = false;
            // 
            // labelTrackBarValue
            // 
            this.labelTrackBarValue.BackColor = System.Drawing.Color.Transparent;
            this.labelTrackBarValue.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labelTrackBarValue.Location = new System.Drawing.Point(192, 23);
            this.labelTrackBarValue.Name = "labelTrackBarValue";
            this.labelTrackBarValue.Size = new System.Drawing.Size(56, 23);
            this.labelTrackBarValue.TabIndex = 3;
            this.labelTrackBarValue.Text = "0";
            this.labelTrackBarValue.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // groupBoxTrackbar
            // 
            this.groupBoxTrackbar.Controls.Add(this.trackBar);
            this.groupBoxTrackbar.Controls.Add(this.labelTrackBarValue);
            this.groupBoxTrackbar.Enabled = false;
            this.groupBoxTrackbar.Location = new System.Drawing.Point(12, 258);
            this.groupBoxTrackbar.Name = "groupBoxTrackbar";
            this.groupBoxTrackbar.Size = new System.Drawing.Size(436, 100);
            this.groupBoxTrackbar.TabIndex = 4;
            this.groupBoxTrackbar.TabStop = false;
            this.groupBoxTrackbar.Text = "Trackbar";
            // 
            // groupBoxValue
            // 
            this.groupBoxValue.Controls.Add(this.buttonLightUp);
            this.groupBoxValue.Controls.Add(this.labelReceivedValue);
            this.groupBoxValue.Enabled = false;
            this.groupBoxValue.Location = new System.Drawing.Point(12, 258);
            this.groupBoxValue.Name = "groupBoxValue";
            this.groupBoxValue.Size = new System.Drawing.Size(436, 100);
            this.groupBoxValue.TabIndex = 5;
            this.groupBoxValue.TabStop = false;
            this.groupBoxValue.Text = "Value";
            // 
            // buttonLightUp
            // 
            this.buttonLightUp.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.buttonLightUp.Location = new System.Drawing.Point(254, 20);
            this.buttonLightUp.Name = "buttonLightUp";
            this.buttonLightUp.Size = new System.Drawing.Size(157, 60);
            this.buttonLightUp.TabIndex = 7;
            this.buttonLightUp.Text = "LIGHT UP";
            this.buttonLightUp.UseVisualStyleBackColor = true;
            // 
            // labelReceivedValue
            // 
            this.labelReceivedValue.BackColor = System.Drawing.Color.Transparent;
            this.labelReceivedValue.Font = new System.Drawing.Font("Microsoft Sans Serif", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labelReceivedValue.Location = new System.Drawing.Point(28, 23);
            this.labelReceivedValue.Name = "labelReceivedValue";
            this.labelReceivedValue.Size = new System.Drawing.Size(180, 57);
            this.labelReceivedValue.TabIndex = 6;
            this.labelReceivedValue.Text = "0";
            this.labelReceivedValue.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupBoxLed
            // 
            this.groupBoxLed.Controls.Add(this.pictureBox);
            this.groupBoxLed.Enabled = false;
            this.groupBoxLed.Location = new System.Drawing.Point(454, 12);
            this.groupBoxLed.Name = "groupBoxLed";
            this.groupBoxLed.Size = new System.Drawing.Size(215, 346);
            this.groupBoxLed.TabIndex = 5;
            this.groupBoxLed.TabStop = false;
            this.groupBoxLed.Text = "LED";
            // 
            // groupBoxMode
            // 
            this.groupBoxMode.Controls.Add(this.radioButtonSlave);
            this.groupBoxMode.Controls.Add(this.radioButtonMaster);
            this.groupBoxMode.Controls.Add(this.label4);
            this.groupBoxMode.Location = new System.Drawing.Point(12, 12);
            this.groupBoxMode.Name = "groupBoxMode";
            this.groupBoxMode.Size = new System.Drawing.Size(436, 70);
            this.groupBoxMode.TabIndex = 6;
            this.groupBoxMode.TabStop = false;
            this.groupBoxMode.Text = "Mode";
            // 
            // radioButtonSlave
            // 
            this.radioButtonSlave.AutoSize = true;
            this.radioButtonSlave.Location = new System.Drawing.Point(279, 30);
            this.radioButtonSlave.Name = "radioButtonSlave";
            this.radioButtonSlave.Size = new System.Drawing.Size(92, 17);
            this.radioButtonSlave.TabIndex = 10;
            this.radioButtonSlave.TabStop = true;
            this.radioButtonSlave.Text = "Slave (Server)";
            this.radioButtonSlave.UseVisualStyleBackColor = true;
            this.radioButtonSlave.CheckedChanged += new System.EventHandler(this.ModeChanged);
            // 
            // radioButtonMaster
            // 
            this.radioButtonMaster.AutoSize = true;
            this.radioButtonMaster.Checked = true;
            this.radioButtonMaster.Location = new System.Drawing.Point(129, 30);
            this.radioButtonMaster.Name = "radioButtonMaster";
            this.radioButtonMaster.Size = new System.Drawing.Size(92, 17);
            this.radioButtonMaster.TabIndex = 9;
            this.radioButtonMaster.TabStop = true;
            this.radioButtonMaster.Text = "Master (Client)";
            this.radioButtonMaster.UseVisualStyleBackColor = true;
            this.radioButtonMaster.CheckedChanged += new System.EventHandler(this.ModeChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 32);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(32, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Role:";
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(682, 368);
            this.Controls.Add(this.groupBoxMode);
            this.Controls.Add(this.groupBoxLed);
            this.Controls.Add(this.groupBoxConnection);
            this.Controls.Add(this.groupBoxTrackbar);
            this.Controls.Add(this.groupBoxValue);
            this.Name = "Main";
            this.Text = "Tomáš Moravec - MA1M - Modbus (Master-Slave) - ASCII";
            this.groupBoxConnection.ResumeLayout(false);
            this.groupBoxConnection.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox)).EndInit();
            this.groupBoxTrackbar.ResumeLayout(false);
            this.groupBoxTrackbar.PerformLayout();
            this.groupBoxValue.ResumeLayout(false);
            this.groupBoxLed.ResumeLayout(false);
            this.groupBoxMode.ResumeLayout(false);
            this.groupBoxMode.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxConnection;
        private System.Windows.Forms.TrackBar trackBar;
        private System.Windows.Forms.PictureBox pictureBox;
        private System.Windows.Forms.ComboBox comboBoxBaudRates;
        private System.Windows.Forms.ComboBox comboBoxPorts;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonStartStop;
        private System.Windows.Forms.Label labelTrackBarValue;
        private System.Windows.Forms.TextBox textBoxDeviceName;
        private System.Windows.Forms.GroupBox groupBoxTrackbar;
        private System.Windows.Forms.GroupBox groupBoxLed;
        private System.Windows.Forms.GroupBox groupBoxMode;
        private System.Windows.Forms.RadioButton radioButtonSlave;
        private System.Windows.Forms.RadioButton radioButtonMaster;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBoxValue;
        private System.Windows.Forms.Label labelReceivedValue;
        private System.Windows.Forms.Button buttonLightUp;
    }
}

