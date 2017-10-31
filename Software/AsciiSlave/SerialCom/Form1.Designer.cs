namespace SerialCom
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.comPort = new System.IO.Ports.SerialPort(this.components);
            this.lPotak = new System.Windows.Forms.Label();
            this.comboPort = new System.Windows.Forms.ComboBox();
            this.comboBaud = new System.Windows.Forms.ComboBox();
            this.btnOpen = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.LED = new System.Windows.Forms.Panel();
            this.potak = new System.Windows.Forms.TrackBar();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.ts_adr = new System.Windows.Forms.ToolStripStatusLabel();
            this.ts_kod = new System.Windows.Forms.ToolStripStatusLabel();
            this.ts_reg = new System.Windows.Forms.ToolStripStatusLabel();
            this.ts_err = new System.Windows.Forms.ToolStripStatusLabel();
            ((System.ComponentModel.ISupportInitialize)(this.potak)).BeginInit();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // comPort
            // 
            this.comPort.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.comPort_DataReceived);
            // 
            // lPotak
            // 
            this.lPotak.AutoSize = true;
            this.lPotak.Location = new System.Drawing.Point(164, 118);
            this.lPotak.Name = "lPotak";
            this.lPotak.Size = new System.Drawing.Size(13, 13);
            this.lPotak.TabIndex = 1;
            this.lPotak.Text = "0";
            // 
            // comboPort
            // 
            this.comboPort.FormattingEnabled = true;
            this.comboPort.Location = new System.Drawing.Point(27, 13);
            this.comboPort.Name = "comboPort";
            this.comboPort.Size = new System.Drawing.Size(121, 21);
            this.comboPort.TabIndex = 2;
            // 
            // comboBaud
            // 
            this.comboBaud.FormattingEnabled = true;
            this.comboBaud.Location = new System.Drawing.Point(27, 40);
            this.comboBaud.Name = "comboBaud";
            this.comboBaud.Size = new System.Drawing.Size(121, 21);
            this.comboBaud.TabIndex = 2;
            // 
            // btnOpen
            // 
            this.btnOpen.Location = new System.Drawing.Point(166, 10);
            this.btnOpen.Name = "btnOpen";
            this.btnOpen.Size = new System.Drawing.Size(75, 23);
            this.btnOpen.TabIndex = 4;
            this.btnOpen.Text = "Open";
            this.btnOpen.UseVisualStyleBackColor = true;
            this.btnOpen.Click += new System.EventHandler(this.btnOpen_Click);
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(167, 39);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 4;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // LED
            // 
            this.LED.BackColor = System.Drawing.Color.White;
            this.LED.Location = new System.Drawing.Point(42, 184);
            this.LED.Name = "LED";
            this.LED.Size = new System.Drawing.Size(27, 23);
            this.LED.TabIndex = 5;
            // 
            // potak
            // 
            this.potak.Location = new System.Drawing.Point(42, 118);
            this.potak.Maximum = 1024;
            this.potak.Name = "potak";
            this.potak.Size = new System.Drawing.Size(104, 45);
            this.potak.TabIndex = 6;
            this.potak.ValueChanged += new System.EventHandler(this.potak_ValueChanged);
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ts_adr,
            this.ts_kod,
            this.ts_reg,
            this.ts_err});
            this.statusStrip1.Location = new System.Drawing.Point(0, 240);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(284, 22);
            this.statusStrip1.TabIndex = 7;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // ts_adr
            // 
            this.ts_adr.Name = "ts_adr";
            this.ts_adr.Size = new System.Drawing.Size(27, 17);
            this.ts_adr.Text = "adr:";
            // 
            // ts_kod
            // 
            this.ts_kod.Name = "ts_kod";
            this.ts_kod.Size = new System.Drawing.Size(30, 17);
            this.ts_kod.Text = "kod:";
            // 
            // ts_reg
            // 
            this.ts_reg.Name = "ts_reg";
            this.ts_reg.Size = new System.Drawing.Size(27, 17);
            this.ts_reg.Text = "reg:";
            // 
            // ts_err
            // 
            this.ts_err.Name = "ts_err";
            this.ts_err.Size = new System.Drawing.Size(24, 17);
            this.ts_err.Text = "err:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.potak);
            this.Controls.Add(this.LED);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnOpen);
            this.Controls.Add(this.comboBaud);
            this.Controls.Add(this.comboPort);
            this.Controls.Add(this.lPotak);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.potak)).EndInit();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.IO.Ports.SerialPort comPort;
        private System.Windows.Forms.Label lPotak;
        private System.Windows.Forms.ComboBox comboPort;
        private System.Windows.Forms.ComboBox comboBaud;
        private System.Windows.Forms.Button btnOpen;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Panel LED;
        private System.Windows.Forms.TrackBar potak;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel ts_adr;
        private System.Windows.Forms.ToolStripStatusLabel ts_kod;
        private System.Windows.Forms.ToolStripStatusLabel ts_reg;
        private System.Windows.Forms.ToolStripStatusLabel ts_err;
    }
}

