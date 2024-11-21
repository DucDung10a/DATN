using System;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace client
{
    partial class Client
    {
        private System.ComponentModel.IContainer components = null;
        private Label label1;
        private TextBox txtIP;
        private Button btnConnect;
        private TextBox txtInfo;
        private Button btnClear;
        private Chart fftChart;
        private Button btnSend;
        private TextBox txtFreq1;
        private Label label3;
        private TextBox txtFreq2;
        private Label label4;
        private TextBox txtFreq3;
        private Label label5;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.label1 = new System.Windows.Forms.Label();
            this.txtIP = new System.Windows.Forms.TextBox();
            this.btnConnect = new System.Windows.Forms.Button();
            this.txtInfo = new System.Windows.Forms.TextBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.fftChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.btnSend = new System.Windows.Forms.Button();
            this.txtFreq1 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtFreq2 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtFreq3 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.radarChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.label2 = new System.Windows.Forms.Label();
            this.cboRadar = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.fftChart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radarChart)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(842, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Server:";
            // 
            // txtIP
            // 
            this.txtIP.Location = new System.Drawing.Point(900, 17);
            this.txtIP.Name = "txtIP";
            this.txtIP.Size = new System.Drawing.Size(156, 22);
            this.txtIP.TabIndex = 1;
            this.txtIP.Text = "192.168.1.28:5001";
            // 
            // btnConnect
            // 
            this.btnConnect.Location = new System.Drawing.Point(1102, 14);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(91, 29);
            this.btnConnect.TabIndex = 2;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // txtInfo
            // 
            this.txtInfo.Location = new System.Drawing.Point(900, 54);
            this.txtInfo.Multiline = true;
            this.txtInfo.Name = "txtInfo";
            this.txtInfo.ReadOnly = true;
            this.txtInfo.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtInfo.Size = new System.Drawing.Size(408, 150);
            this.txtInfo.TabIndex = 3;
            this.txtInfo.TextChanged += new System.EventHandler(this.txtInfo_TextChanged);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(1217, 207);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(91, 29);
            this.btnClear.TabIndex = 6;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // fftChart
            // 
            this.fftChart.BackColor = System.Drawing.SystemColors.ControlDark;
            chartArea1.AxisX.Interval = 10D;
            chartArea1.AxisX.Minimum = 0D;
            chartArea1.AxisX.Maximum = 100D;
            chartArea1.AxisX.Title = "Frequency [MHz]";
            chartArea1.AxisX.TitleFont = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            chartArea1.AxisY.Maximum = 100D;
            chartArea1.AxisY.Minimum = 28D;
            chartArea1.AxisY.Title = "Amplitude [dB]";
            chartArea1.AxisY.TitleFont = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            chartArea1.Name = "ChartArea1";
            this.fftChart.ChartAreas.Add(chartArea1);
            this.fftChart.Location = new System.Drawing.Point(12, 12);
            this.fftChart.Name = "fftChart";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.Name = "fftSeries";
            series1.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Single;
            series1.YValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Double;
            this.fftChart.Series.Add(series1);
            this.fftChart.Size = new System.Drawing.Size(754, 626);
            this.fftChart.TabIndex = 7;
            this.fftChart.Text = "fftChart";
            this.fftChart.Click += new System.EventHandler(this.fftChart_Click);
            // 
            // btnSend
            // 
            this.btnSend.Location = new System.Drawing.Point(794, 207);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(91, 29);
            this.btnSend.TabIndex = 6;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // txtFreq1
            // 
            this.txtFreq1.Location = new System.Drawing.Point(794, 79);
            this.txtFreq1.Name = "txtFreq1";
            this.txtFreq1.Size = new System.Drawing.Size(100, 22);
            this.txtFreq1.TabIndex = 9;
            this.txtFreq1.Text = "10";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(791, 59);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 16);
            this.label3.TabIndex = 10;
            this.label3.Text = "Tần số (1)";
            // 
            // txtFreq2
            // 
            this.txtFreq2.Location = new System.Drawing.Point(794, 129);
            this.txtFreq2.Name = "txtFreq2";
            this.txtFreq2.Size = new System.Drawing.Size(100, 22);
            this.txtFreq2.TabIndex = 9;
            this.txtFreq2.Text = "22";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(791, 109);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 16);
            this.label4.TabIndex = 10;
            this.label4.Text = "Tần số (2)";
            // 
            // txtFreq3
            // 
            this.txtFreq3.Location = new System.Drawing.Point(794, 179);
            this.txtFreq3.Name = "txtFreq3";
            this.txtFreq3.Size = new System.Drawing.Size(100, 22);
            this.txtFreq3.TabIndex = 9;
            this.txtFreq3.Text = "33";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(791, 159);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(67, 16);
            this.label5.TabIndex = 10;
            this.label5.Text = "Tần số (3)";
            // 
            // radarChart
            // 
            chartArea2.Name = "RadarArea";
            this.radarChart.ChartAreas.Add(chartArea2);
            this.radarChart.Location = new System.Drawing.Point(900, 238);
            this.radarChart.Name = "radarChart";
            series2.ChartArea = "RadarArea";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Radar;
            series2.Name = "RadarSeries";
            this.radarChart.Series.Add(series2);
            this.radarChart.Size = new System.Drawing.Size(408, 400);
            this.radarChart.TabIndex = 8;
            this.radarChart.Text = "radarChart";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(791, 415);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 16);
            this.label2.TabIndex = 11;
            this.label2.Text = "Radar (1-8)";
            // 
            // cboRadar
            // 
            this.cboRadar.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboRadar.FormattingEnabled = true;
            this.cboRadar.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8"});
            this.cboRadar.Location = new System.Drawing.Point(771, 434);
            this.cboRadar.Name = "cboRadar";
            this.cboRadar.Size = new System.Drawing.Size(121, 24);
            this.cboRadar.TabIndex = 0;
            this.cboRadar.SelectedIndexChanged += new System.EventHandler(this.cboRadar_SelectedIndexChanged);
            // 
            // Client
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1320, 650);
            this.Controls.Add(this.cboRadar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.radarChart);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtIP);
            this.Controls.Add(this.txtInfo);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.txtFreq1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtFreq2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtFreq3);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.fftChart);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "Client";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "TCP/IP Client";
            this.Load += new System.EventHandler(this.Client_Load);
            ((System.ComponentModel.ISupportInitialize)(this.fftChart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radarChart)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private Chart radarChart;
        private Label label2;
        private ComboBox cboRadar;
    }
}
