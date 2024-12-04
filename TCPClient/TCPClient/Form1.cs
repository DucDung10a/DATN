using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using SuperSimpleTcp;

namespace client
{
    public partial class Client : Form
    {
        private SimpleTcpClient _client;
        private const int SamplingFrequency = 100; //Mhz
        private Queue<byte> dataQueue = new Queue<byte>();
        private Timer updateTimer;
        private Timer radarTimer;
        private float sweepAngle = 0; // Góc quét của radar
        private int receiverStatus = 0;
        private float redZoneEndAngle = -1; // Góc kết thúc của vùng quét đỏ
        private bool isSectorSelected = false; // Đánh dấu nếu radar đã quét qua phần được chọn
        public Client()
        {
            InitializeComponent();
            //LoadDataFromFile(@"D:\Vivado\_DATN\FFT\FFT\FFT.sim\sim_1\behav\xsim\out_avg.txt");

            cboRadar.SelectedIndex = pos_radar;
            // Thiết lập bộ đếm thời gian để cập nhật biểu đồ mỗi 100ms
            updateTimer = new Timer();
            updateTimer.Interval = 200; // 200 ms
            updateTimer.Tick += UpdateTimer_Tick;
            updateTimer.Start();


            radarTimer = new Timer();
            radarTimer.Interval = 15; // 2ms
            radarTimer.Tick += RadarTimer_Tick;
            radarTimer.Start();
            radarChart.Paint += RadarChart_Paint;
            radarChart.Invalidate();
        }




        private void RadarTimer_Tick(object sender, EventArgs e)
        {
            // Tăng góc quét
            sweepAngle += 1;
            if (sweepAngle >= 360)
                sweepAngle = 0;

            if (autoBox.Checked) // Chế độ tự động
            {
                // Cập nhật pos_radar khi quét sang vùng mới
                byte newPosRadar = (byte)(sweepAngle / 45); // Mỗi vùng là 45 độ
                if (newPosRadar != pos_radar) // Kiểm tra nếu đã quét sang vùng mới
                {
                    pos_radar = newPosRadar;

                    // Cập nhật combobox và gửi thông tin
                    cboRadar.SelectedIndex = pos_radar;
                    SendSectorUpdate(pos_radar);
                }
            }
            // Yêu cầu vẽ lại radar
            radarChart.Invalidate();
        }

        private void SendSectorUpdate(int sector)
        {
            if (_client != null && _client.IsConnected)
            {
                uint combinedData = (uint)((sector << 24) | (freq1 << 16) | (freq2 << 8) | freq3);
                byte[] dataToSend = BitConverter.GetBytes(combinedData);
                _client.Send(dataToSend);

                txtInfo.Text += $"Sent:({freq1}, {freq2}, {freq3}) - Radar:{pos_radar}{Environment.NewLine}";
            }
        }

        private void RadarChart_Paint(object sender, PaintEventArgs e)
        {
            int centerX = radarChart.Width / 2;
            int centerY = radarChart.Height / 2;
            int maxRadius = Math.Min(centerX, centerY) - 10;
            Graphics g = e.Graphics;
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

            // Vẽ các vòng tròn đồng tâm
            for (int i = 1; i <= 5; i++)
            {
                int radius = i * maxRadius / 5;
                g.DrawEllipse(Pens.Green, centerX - radius, centerY - radius, radius * 2, radius * 2);
            }

            // Vẽ các đường sọc ngăn cách
            for (int i = 0; i < 8; i++)
            {
                float angle = 45 * i * (float)(Math.PI / 180);
                float x = centerX + maxRadius * (float)Math.Cos(angle);
                float y = centerY + maxRadius * (float)Math.Sin(angle);
                g.DrawLine(Pens.Green, centerX, centerY, x, y);
            }

            // Vẽ số thứ tự cho từng phần
            for (int i = 0; i < 8; i++)
            {
                float angle = (45 * i + 22.5f) * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 0.85f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 0.85f) * (float)Math.Sin(angle);
                string text = (i).ToString();
                using (Font font = new Font("Arial", 10, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(text, font);
                    g.DrawString(text, font, Brushes.Black, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Vẽ các ký hiệu N, E, S, W
            string[] directions = { "N", "E", "S", "W" };
            for (int i = 0; i < 4; i++)
            {
                float angle = i * 90 * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 1.05f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 1.05f) * (float)Math.Sin(angle);
                using (Font font = new Font("Arial", 12, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(directions[i], font);
                    g.DrawString(directions[i], font, Brushes.Blue, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Vẽ hiệu ứng đuôi mờ cho đường quét radar
            for (int i = 0; i < 30; i++)
            {
                float fadeAngle = sweepAngle - i * 1;
                int alpha = 200 - (i * 6);
                if (alpha < 0) alpha = 0;

                using (Pen tailPen = new Pen(Color.FromArgb(alpha, Color.Lime), 2))
                {
                    float tailX = centerX + maxRadius * (float)Math.Cos(fadeAngle * Math.PI / 180);
                    float tailY = centerY + maxRadius * (float)Math.Sin(fadeAngle * Math.PI / 180);
                    g.DrawLine(tailPen, centerX, centerY, tailX, tailY);
                }
            }

            // Kiểm tra xem góc quét có nằm trong phần radar được chọn không
            int sectorStartAngle = 45 * receiverStatus; // Góc bắt đầu của phần radar được chọn
            int sectorEndAngle = sectorStartAngle + 45;

            if (sweepAngle >= sectorStartAngle && sweepAngle < sectorEndAngle)
            {
                redZoneEndAngle = sweepAngle; // Cập nhật góc kết thúc của vùng đỏ
                isSectorSelected = true; // Đánh dấu rằng phần radar đã được quét qua
            }
            else if (sweepAngle >= sectorEndAngle + 30 || sweepAngle < sectorStartAngle)
            {
                // Khi góc quét ra khỏi khu vực được chọn, đặt lại vùng đỏ và chuyển sang màu xanh nhạt
                redZoneEndAngle = -1;
                isSectorSelected = false;
            }

            // Tô màu đỏ chỉ trong phần radar được chọn nếu đang quét qua
            if (redZoneEndAngle >= sectorStartAngle && redZoneEndAngle <= sectorEndAngle)
            {
                using (Brush redBrush = new SolidBrush(Color.FromArgb(50, Color.Red)))
                {
                    g.FillPie(redBrush, centerX - maxRadius, centerY - maxRadius, maxRadius * 2, maxRadius * 2, sectorStartAngle, redZoneEndAngle - sectorStartAngle);
                }
            }

            // Sau khi quét qua, tô màu xanh nhạt để hiển thị radar được chọn
            if (!isSectorSelected && redZoneEndAngle == -1)
            {
                using (Brush greenBrush = new SolidBrush(Color.FromArgb(30, Color.LimeGreen)))
                {
                    g.FillPie(greenBrush, centerX - maxRadius, centerY - maxRadius, maxRadius * 2, maxRadius * 2, sectorStartAngle, 45);
                }
            }

            // Vẽ đường quét radar chính
            using (Pen sweepPen = new Pen(Color.FromArgb(128, Color.Lime), 2))
            {
                float x = centerX + maxRadius * (float)Math.Cos(sweepAngle * Math.PI / 180);
                float y = centerY + maxRadius * (float)Math.Sin(sweepAngle * Math.PI / 180);
                g.DrawLine(sweepPen, centerX, centerY, x, y);
            }
        }






        private void Client_Load(object sender, EventArgs e)
        {

            btnSend.Enabled = false;
        }

        private void Events_DataReceived(object sender, DataReceivedEventArgs e)
        {
            lock (dataQueue)
            {
                foreach (byte b in e.Data)
                {
                    dataQueue.Enqueue(b);
                }

            }
        }


        // Xử lý cập nhật biểu đồ theo định kỳ
        private void UpdateTimer_Tick(object sender, EventArgs e)
        {
            ProcessDataQueue();
            fftChart.Invalidate(); // Vẽ lại biểu đồ
        }


        private void ProcessDataQueue()
        {
            fftChart.Series["fftSeries"].Points.Clear();
            lock (dataQueue)
            {
                while (dataQueue.Count >= 8)
                {
                    byte[] buffer = new byte[8];
                    for (int i = 0; i < 8; i++)
                    {
                        buffer[i] = dataQueue.Dequeue();
                    }

                    // Xử lý dữ liệu FFT từ gói 8 byte
                    ulong psdValue = BitConverter.ToUInt64(buffer, 0) & 0xffffffffffff;
                    float pos = (BitConverter.ToUInt16(buffer, 6));

                    // Tính biên độ và chuyển đổi sang dB
                    double amplitude = Math.Abs(Math.Sqrt(psdValue)) / 1024f;
                    double amplitudeInDb = 20 * Math.Log10(amplitude);




                    // Kiểm soát số điểm hiển thị trên biểu đồ
                    var point = fftChart.Series["fftSeries"].Points.FirstOrDefault(p => p.XValue == pos * 100f / 1024f);

                    if (point != null)
                    {
                        // Cập nhật giá trị Y nếu điểm đã tồn tại
                        point.YValues[0] = amplitudeInDb;
                    }
                    else if (fftChart.Series["fftSeries"].Points.Count < 1024)
                    {
                        // Thêm điểm mới nếu số điểm chưa đạt 1024
                        fftChart.Series["fftSeries"].Points.AddXY(pos * 100f / 1024f, amplitudeInDb);
                    }
                    else
                    {
                        // Xóa điểm cũ nhất
                        fftChart.Series["fftSeries"].Points.RemoveAt(0);
                    }

                }
            }
        }



        private void btnConnect_Click(object sender, EventArgs e)
        {
            try
            {
                _client = new SimpleTcpClient(txtIP.Text);
                _client.Events.Connected += Events_Connected;
                _client.Events.Disconnected += Events_Disconnected;
                _client.Events.DataReceived += Events_DataReceived;
                _client.Connect();
                btnSend.Enabled = true;
                btnConnect.Enabled = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Events_Connected(object sender, ConnectionEventArgs e)
        {
            this.Invoke((MethodInvoker)(() =>
            {
                txtInfo.Text += "Server connected.\n";
            }));
        }

        private void Events_Disconnected(object sender, ConnectionEventArgs e)
        {
            this.Invoke((MethodInvoker)(() =>
            {
                txtInfo.Text += "Server disconnected.\n";
                btnSend.Enabled = false;
                btnConnect.Enabled = true;
            }));
        }


        private void btnClear_Click(object sender, ConnectionEventArgs e)
        {

        }
        private uint combinedData;
        private byte[] dataToSend;
        private byte freq1;
        private byte freq2;
        private byte freq3;
        private byte pos_radar = 1;

        private void btnSend_Click(object sender, EventArgs e)
        {
            if (_client.IsConnected)
            {
                freq1 = GetFrequencyValue(txtFreq1);
                freq2 = GetFrequencyValue(txtFreq2);
                freq3 = GetFrequencyValue(txtFreq3);

                combinedData = (uint)((pos_radar << 24) | (freq3 << 16) | (freq2 << 8) | freq1);
                dataToSend = BitConverter.GetBytes(combinedData);

                _client.Send(dataToSend);
                txtInfo.Text += $"Sent:({freq1}, {freq2}, {freq3}) - Radar:{pos_radar}{Environment.NewLine}";
            }
        }

        private byte GetFrequencyValue(TextBox txtBox)
        {
            if (int.TryParse(txtBox.Text, out int frequency) && frequency >= 0 && frequency <= 50)
            {
                return (byte)frequency;
            }
            else
            {
                MessageBox.Show("Please enter a valid integer between 0-50 for frequency.");
                return (byte)0;
            }
        }


        // Đọc file để kiểm tra mô phỏng
        private void LoadDataFromFile(string filePath)
        {
            try
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    float xValue = 0; // Giá trị x là chỉ số hoặc tần số giả định cho từng điểm FFT
                    fftChart.Series["fftSeries"].Points.Clear(); // Xóa dữ liệu cũ nếu có
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        if (double.TryParse(line, out double yValue))
                        {
                            fftChart.Series["fftSeries"].Points.AddXY(xValue * 100 / 1024, (double)Math.Sqrt(yValue) / 1024);
                            xValue++;
                        }
                    }
                }

                fftChart.Invalidate(); // Vẽ lại biểu đồ
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi đọc tệp: " + ex.Message);
            }
        }


        private void fftChart_Click(object sender, EventArgs e)
        {

        }

        private void txtMessage_TextChanged(object sender, EventArgs e)
        {

        }


        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void txtInfo_TextChanged(object sender, EventArgs e)
        {
            txtInfo.SelectionStart = txtInfo.Text.Length;
            txtInfo.ScrollToCaret();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtInfo.Clear();
        }

        private void cboRadar_SelectedIndexChanged(object sender, EventArgs e)
        {
            receiverStatus = cboRadar.SelectedIndex;
            if (byte.TryParse(cboRadar.Text, out byte posRadar_))
            {
                pos_radar = (byte)(posRadar_);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void autoBox_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}



/*using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using SuperSimpleTcp;

namespace client
{
    public partial class Client : Form
    {
        private SimpleTcpClient _client;
        private const int SamplingFrequency = 100; // 100 MHz
        private Queue<byte> dataQueue = new Queue<byte>();
        private Timer updateTimer;
        private Timer radarTimer;
        private float sweepAngle = 0; // Góc quét của radar
        private int receiverStatus = 0;
        public Client()
        {
            InitializeComponent();
            //LoadDataFromFile(@"D:\Vivado\_DATN\FFT\FFT\FFT.sim\sim_1\behav\xsim\out_avg.txt");

            // Thiết lập bộ đếm thời gian để cập nhật biểu đồ mỗi 100ms
            updateTimer = new Timer();
            updateTimer.Interval = 200; // 200 ms
            updateTimer.Tick += UpdateTimer_Tick;
            updateTimer.Start();
        }


        private void SetRadarMode()
        {
            // Dừng và hủy Timer cũ nếu có
            if (radarTimer != null)
            {
                radarTimer.Stop();
                radarTimer.Dispose();
            }

            // Tạo Timer mới
            radarTimer = new Timer();

            // Kiểm tra chế độ hiện tại từ autoBox
            if (autoBox.Checked) // Chế độ tự động
            {
                radarTimer.Interval = 2000; // 2 giây
                radarTimer.Tick += RadarTimer_Tick_Auto;

                // Xóa sự kiện Paint cũ và thêm sự kiện Paint chế độ tự động
                radarChart.Paint -= RadarChart_Paint_Manuel;
                radarChart.Paint += RadarChart_Paint_Auto;
            }
            else // Chế độ thủ công
            {
                radarTimer.Interval = 1; // 1ms
                radarTimer.Tick += RadarTimer_Tick_Manuel;

                // Xóa sự kiện Paint cũ và thêm sự kiện Paint chế độ thủ công
                radarChart.Paint -= RadarChart_Paint_Auto;
                radarChart.Paint += RadarChart_Paint_Manuel;
            }

            // Khởi động Timer mới
            radarTimer.Start();
        }


        private void RadarTimer_Tick_Auto(object sender, EventArgs e)
        {
            // Tăng vùng hiện tại
            pos_radar++;
            if (pos_radar > 7) // Reset về 0 nếu vượt qua 7
                pos_radar = 0;

            cboRadar.SelectedIndex = pos_radar;

            // Gửi thông tin qua Ethernet
            SendSectorUpdate(pos_radar);

            // Yêu cầu vẽ lại radar
            radarChart.Invalidate();
        }

        private void RadarChart_Paint_Auto(object sender, PaintEventArgs e)
        {
            int centerX = radarChart.Width / 2;
            int centerY = radarChart.Height / 2;
            int maxRadius = Math.Min(centerX, centerY) - 10;
            Graphics g = e.Graphics;
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

            // Vẽ các vòng tròn đồng tâm
            for (int i = 1; i <= 5; i++)
            {
                int radius = i * maxRadius / 5;
                g.DrawEllipse(Pens.Green, centerX - radius, centerY - radius, radius * 2, radius * 2);
            }

            // Vẽ các đường chia vùng
            for (int i = 0; i < 8; i++)
            {
                float angle = 45 * i * (float)(Math.PI / 180);
                float x = centerX + maxRadius * (float)Math.Cos(angle);
                float y = centerY + maxRadius * (float)Math.Sin(angle);
                g.DrawLine(Pens.Green, centerX, centerY, x, y);
            }

            // Vẽ số thứ tự cho từng vùng
            for (int i = 0; i < 8; i++)
            {
                float angle = (45 * i + 22.5f) * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 0.85f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 0.85f) * (float)Math.Sin(angle);
                string text = (i).ToString();
                using (Font font = new Font("Arial", 10, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(text, font);
                    g.DrawString(text, font, Brushes.Black, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Vẽ các ký hiệu N, E, S, W
            string[] directions = { "N", "E", "S", "W" };
            for (int i = 0; i < 4; i++)
            {
                float angle = i * 90 * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 1.05f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 1.05f) * (float)Math.Sin(angle);
                using (Font font = new Font("Arial", 12, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(directions[i], font);
                    g.DrawString(directions[i], font, Brushes.Blue, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Tô màu xanh nhạt cho vùng hiện tại
            int sectorStartAngle = 45 * pos_radar;
            using (Brush greenBrush = new SolidBrush(Color.FromArgb(50, Color.LimeGreen)))
            {
                g.FillPie(greenBrush, centerX - maxRadius, centerY - maxRadius, maxRadius * 2, maxRadius * 2, sectorStartAngle, 45);
            }
        }

        private void SendSectorUpdate(int sector)
        {
            if (_client != null && _client.IsConnected)
            {
                combinedData = (uint)((sector << 24) | (freq1 << 16) | (freq2 << 8) | freq3);
                dataToSend = BitConverter.GetBytes(combinedData);
                _client.Send(dataToSend);
    
                txtInfo.Text += $"Sent:({freq1}, {freq2}, {freq3}) - Radar:{pos_radar}{Environment.NewLine}";
            }
        }



        private void RadarTimer_Tick_Manuel(object sender, EventArgs e)
        {
            //  if (_client.IsConnected) { 
            // Tăng góc quét để tạo hiệu ứng quay
            sweepAngle += 1;
            if (sweepAngle >= 360)
                sweepAngle = 0;

            // Vẽ lại radarChart
            radarChart.Invalidate();
            //}
        }

        private float redZoneEndAngle = -1; // Góc kết thúc của vùng quét đỏ
        private bool isSectorSelected = false; // Đánh dấu nếu radar đã quét qua phần được chọn
        private void RadarChart_Paint_Manuel(object sender, PaintEventArgs e)
        {
            int centerX = radarChart.Width / 2;
            int centerY = radarChart.Height / 2;
            int maxRadius = Math.Min(centerX, centerY) - 10;
            Graphics g = e.Graphics;
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

            // Vẽ các vòng tròn đồng tâm
            for (int i = 1; i <= 5; i++)
            {
                int radius = i * maxRadius / 5;
                g.DrawEllipse(Pens.Green, centerX - radius, centerY - radius, radius * 2, radius * 2);
            }

            // Vẽ các đường sọc ngăn cách
            for (int i = 0; i < 8; i++)
            {
                float angle = 45 * i * (float)(Math.PI / 180);
                float x = centerX + maxRadius * (float)Math.Cos(angle);
                float y = centerY + maxRadius * (float)Math.Sin(angle);
                g.DrawLine(Pens.Green, centerX, centerY, x, y);
            }

            // Vẽ số thứ tự cho từng phần
            for (int i = 0; i < 8; i++)
            {
                float angle = (45 * i + 22.5f) * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 0.85f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 0.85f) * (float)Math.Sin(angle);
                string text = (i).ToString();
                using (Font font = new Font("Arial", 10, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(text, font);
                    g.DrawString(text, font, Brushes.Black, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Vẽ các ký hiệu N, E, S, W
            string[] directions = { "N", "E", "S", "W" };
            for (int i = 0; i < 4; i++)
            {
                float angle = i * 90 * (float)(Math.PI / 180);
                float textX = centerX + (maxRadius * 1.05f) * (float)Math.Cos(angle);
                float textY = centerY + (maxRadius * 1.05f) * (float)Math.Sin(angle);
                using (Font font = new Font("Arial", 12, FontStyle.Bold))
                {
                    SizeF textSize = g.MeasureString(directions[i], font);
                    g.DrawString(directions[i], font, Brushes.Blue, textX - textSize.Width / 2, textY - textSize.Height / 2);
                }
            }

            // Vẽ hiệu ứng đuôi mờ cho đường quét radar
            for (int i = 0; i < 30; i++)
            {
                float fadeAngle = sweepAngle - i * 1;
                int alpha = 200 - (i * 6);
                if (alpha < 0) alpha = 0;

                using (Pen tailPen = new Pen(Color.FromArgb(alpha, Color.Lime), 2))
                {
                    float tailX = centerX + maxRadius * (float)Math.Cos(fadeAngle * Math.PI / 180);
                    float tailY = centerY + maxRadius * (float)Math.Sin(fadeAngle * Math.PI / 180);
                    g.DrawLine(tailPen, centerX, centerY, tailX, tailY);
                }
            }

            // Kiểm tra xem góc quét có nằm trong phần radar được chọn không
            int sectorStartAngle = 45 * receiverStatus; // Góc bắt đầu của phần radar được chọn
            int sectorEndAngle = sectorStartAngle + 45;

            if (sweepAngle >= sectorStartAngle && sweepAngle < sectorEndAngle)
            {
                redZoneEndAngle = sweepAngle; // Cập nhật góc kết thúc của vùng đỏ
                isSectorSelected = true; // Đánh dấu rằng phần radar đã được quét qua
            }
            else if (sweepAngle >= sectorEndAngle + 30 || sweepAngle < sectorStartAngle)
            {
                // Khi góc quét ra khỏi khu vực được chọn, đặt lại vùng đỏ và chuyển sang màu xanh nhạt
                redZoneEndAngle = -1;
                isSectorSelected = false;
            }

            // Tô màu đỏ chỉ trong phần radar được chọn nếu đang quét qua
            if (redZoneEndAngle >= sectorStartAngle && redZoneEndAngle <= sectorEndAngle)
            {
                using (Brush redBrush = new SolidBrush(Color.FromArgb(50, Color.Red)))
                {
                    g.FillPie(redBrush, centerX - maxRadius, centerY - maxRadius, maxRadius * 2, maxRadius * 2, sectorStartAngle, redZoneEndAngle - sectorStartAngle);
                }
            }

            // Sau khi quét qua, tô màu xanh nhạt để hiển thị radar được chọn
            if (!isSectorSelected && redZoneEndAngle == -1)
            {
                using (Brush greenBrush = new SolidBrush(Color.FromArgb(30, Color.LimeGreen)))
                {
                    g.FillPie(greenBrush, centerX - maxRadius, centerY - maxRadius, maxRadius * 2, maxRadius * 2, sectorStartAngle, 45);
                }
            }

            // Vẽ đường quét radar chính
            using (Pen sweepPen = new Pen(Color.FromArgb(128, Color.Lime), 2))
            {
                float x = centerX + maxRadius * (float)Math.Cos(sweepAngle * Math.PI / 180);
                float y = centerY + maxRadius * (float)Math.Sin(sweepAngle * Math.PI / 180);
                g.DrawLine(sweepPen, centerX, centerY, x, y);
            }
        }



        private void Client_Load(object sender, EventArgs e)
        {

            btnSend.Enabled = false;
        }

        private void Events_DataReceived(object sender, DataReceivedEventArgs e)
        {
            lock (dataQueue)
            {
                foreach (byte b in e.Data)
                {
                    dataQueue.Enqueue(b);
                }

            }
        }


        // Xử lý cập nhật biểu đồ theo định kỳ
        private void UpdateTimer_Tick(object sender, EventArgs e)
        {
            ProcessDataQueue();
            fftChart.Invalidate(); // Vẽ lại biểu đồ
        }
        private void ProcessDataQueue()
        {
            fftChart.Series["fftSeries"].Points.Clear();
            lock (dataQueue)
            {
                while (dataQueue.Count >= 8)
                {
                    byte[] buffer = new byte[8];
                    for (int i = 0; i < 8; i++)
                    {
                        buffer[i] = dataQueue.Dequeue();
                    }

                    // Xử lý dữ liệu FFT từ gói 8 byte
                    ulong psdValue = BitConverter.ToUInt64(buffer, 0) & 0xffffffffffff;
                    float pos = (BitConverter.ToUInt16(buffer, 6));

                    // Tính biên độ và chuyển đổi sang dB
                    double amplitude = Math.Abs(Math.Sqrt(psdValue)) / 512f;
                    double amplitudeInDb = 20 * Math.Log10(amplitude);




                    // Kiểm soát số điểm hiển thị trên biểu đồ
                    var point = fftChart.Series["fftSeries"].Points.FirstOrDefault(p => p.XValue == pos * 100f / 1024f);

                    if (point != null)
                    {
                        // Cập nhật giá trị Y nếu điểm đã tồn tại
                        point.YValues[0] = amplitudeInDb;
                    }
                    else if (fftChart.Series["fftSeries"].Points.Count < 1024)
                    {
                        // Thêm điểm mới nếu số điểm chưa đạt 1024
                        fftChart.Series["fftSeries"].Points.AddXY(pos * 100f / 1024f, amplitudeInDb);
                    }
                    else
                    {
                        // Xóa điểm cũ nhất
                        fftChart.Series["fftSeries"].Points.RemoveAt(0);
                    }

                }
            }
        }



        private void btnConnect_Click(object sender, EventArgs e)
        {
            try
            {
                _client = new SimpleTcpClient(txtIP.Text);
                _client.Events.Connected += Events_Connected;
                _client.Events.Disconnected += Events_Disconnected;
                _client.Events.DataReceived += Events_DataReceived;
                _client.Connect();
                btnSend.Enabled = true;
                btnConnect.Enabled = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Events_Connected(object sender, ConnectionEventArgs e)
        {
            this.Invoke((MethodInvoker)(() =>
            {
                txtInfo.Text += "Server connected.\n";
            }));
        }

        private void Events_Disconnected(object sender, ConnectionEventArgs e)
        {
            this.Invoke((MethodInvoker)(() =>
            {
                txtInfo.Text += "Server disconnected.\n";
                btnSend.Enabled = false;
                btnConnect.Enabled = true;
            }));
        }


        private void btnClear_Click(object sender, ConnectionEventArgs e)
        {

        }
        private uint combinedData;
        private byte[] dataToSend;
        private byte freq1;
        private byte freq2;
        private byte freq3;
        private byte pos_radar = 1;

        private void btnSend_Click(object sender, EventArgs e)
        {
            if (_client.IsConnected)
            {
                freq1 = GetFrequencyValue(txtFreq1);
                freq2 = GetFrequencyValue(txtFreq2);
                freq3 = GetFrequencyValue(txtFreq3);

                combinedData = (uint)((pos_radar << 24) | (freq1 << 16) | (freq2 << 8) | freq3);
                dataToSend = BitConverter.GetBytes(combinedData);

                _client.Send(dataToSend);
                txtInfo.Text += $"Sent:({freq1}, {freq2}, {freq3}) - Radar:{pos_radar}{Environment.NewLine}";
            }
        }

        private byte GetFrequencyValue(TextBox txtBox)
        {
            if (int.TryParse(txtBox.Text, out int frequency) && frequency >= 0 && frequency <= 50)
            {
                return (byte)frequency;
            }
            else
            {
                MessageBox.Show("Please enter a valid integer between 0-50 for frequency.");
                return (byte)0;
            }
        }



        private void LoadDataFromFile(string filePath)
        {
            try
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    float xValue = 0; // Giá trị x là chỉ số hoặc tần số giả định cho từng điểm FFT
                    fftChart.Series["fftSeries"].Points.Clear(); // Xóa dữ liệu cũ nếu có
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        if (double.TryParse(line, out double yValue))
                        {
                            fftChart.Series["fftSeries"].Points.AddXY(xValue * 100 / 1024, (double)Math.Sqrt(yValue) / 1024);
                            xValue++;
                        }
                    }
                }

                fftChart.Invalidate(); // Vẽ lại biểu đồ
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi đọc tệp: " + ex.Message);
            }
        }


        private void fftChart_Click(object sender, EventArgs e)
        {

        }

        private void txtMessage_TextChanged(object sender, EventArgs e)
        {

        }


        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void txtInfo_TextChanged(object sender, EventArgs e)
        {
            txtInfo.SelectionStart = txtInfo.Text.Length;
            txtInfo.ScrollToCaret();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtInfo.Clear();
        }

        private void cboRadar_SelectedIndexChanged(object sender, EventArgs e)
        {
            receiverStatus = cboRadar.SelectedIndex;
            if (byte.TryParse(cboRadar.Text, out byte posRadar_))
            {
                pos_radar = (byte)(posRadar_);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void autoBox_CheckedChanged(object sender, EventArgs e)
        {
            SetRadarMode();
        }
    }
}
*/