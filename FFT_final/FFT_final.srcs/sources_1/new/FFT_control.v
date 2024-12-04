`timescale 1ns / 1ps
//`define cnt_m 64
//`define cnt_m_width 6
`define cnt_m 8
`define cnt_m_width 3
module FFT_control
//#(parameter num_FFT = 8)
(
  input wire clk,
  input wire rst_n,

  input wire signed [15:0] fft_s_data_i_re,
  input wire signed [15:0] fft_s_data_q_im,
  input wire fft_s_data_tvalid,
  output wire fft_s_data_tready,
  output wire fft_m_data_tvalid,
  
  input wire fft_m_data_tready,

  input wire [9:0] cnt_read,
  output wire m_valid, //64 FFT dau ra
//  output wire s_ready, //64 FFT dau vao
  output reg signed [47:0] psd_avg_read
  );
  wire fft_m_data_tlast;
  wire [9:0]  fft_m_data_tuser;
  wire signed [47:0] psd_avg;
  
  wire [7:0] fft_s_config_tdata;
  wire fft_s_config_tvalid;
  wire fft_s_config_tready;
  
//  reg fft_s_data_tvalid;
  reg signed [31:0] fft_s_data_tdata;
  wire fft_s_data_tlast;
  
  
  wire signed [63:0] fft_m_data_tdata;
  
  reg [9:0] cnt_s;
  reg [6:0] cnt_m_fft;
//  reg [5:0] cnt_s_fft;
  
  assign fft_s_config_tdata = 8'd1;   //INPUT, Noi dung thong so cai dat loi IP, 1: FFT, 0: IFFT
  assign fft_s_config_tvalid = 1'b1;  //INPUT, cho biet du lieu cau hinh do master cung cap la hop le
  assign fft_s_data_tlast = ((cnt_s == 1023) && fft_s_data_tvalid && fft_s_data_tready) ? 1 : 0;



  always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      cnt_m_fft <= 0;
    end
    else begin
      if (fft_m_data_tlast) begin
        cnt_m_fft <= cnt_m_fft + 1;
      end
      else begin
        cnt_m_fft <= cnt_m_fft;
      end
    end
  end
   
//  always @ (posedge clk or negedge rst_n) begin
//    if (!rst_n) begin
//      cnt_s_fft <= 0;
//    end
//    else begin
//      if (fft_s_data_tlast) begin
//        cnt_s_fft <= cnt_s_fft + 1;
//      end
//      else begin
//        cnt_s_fft <= cnt_s_fft;
//      end
//    end
//  end
   
  always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      cnt_s <= 10'd0;
    end
    else begin
      if (fft_s_data_tready && fft_s_data_tvalid) begin
        cnt_s <= cnt_s + 1;
      end
      else begin
        cnt_s <= cnt_s;
      end
    end
  end

//  always @ (posedge clk or negedge rst_n) begin
//    if (!rst_n) begin
//      fft_s_data_tvalid <= 1'b0;
//    end
//    else begin
////      if (fft_s_data_tready)
//        fft_s_data_tvalid <= 1'b1;
////      else
////        fft_s_data_tvalid <= 1'b0;
//    end
//  end
  
  always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      fft_s_data_tdata  <= 32'd0;
    end
    else if (fft_s_data_tready && fft_s_data_tvalid) begin
      fft_s_data_tdata <= {fft_s_data_q_im, fft_s_data_i_re};
    end
  end
  
  xfft_0 u_fft(
    .aclk(clk),                                                // INPUT
    .aresetn(rst_n),                                           // INPUT, active low
    //----------------------//
    .s_axis_config_tdata(fft_s_config_tdata),                  // INPUT, Noi dung thong so cai dat loi IP, 1: FFT, 0: IFFT
    .s_axis_config_tvalid(fft_s_config_tvalid),                // INPUT, cho biet du lieu cau hinh do master cung cap la hop le
    .s_axis_config_tready(fft_s_config_tready),                // output wire s_axis_config_tready
    //----------------------//
    .s_axis_data_tdata(fft_s_data_tdata),                      // INPUT   .. Master --> Slave, Du lieu dau vao trong mien thoi gian de bien doi FFT
                                                               // [31:16] la phan ao
                                                               // [15:0] la phan thuc
    .s_axis_data_tvalid(fft_s_data_tvalid),                    // INPUT   .. Master --> Slave, Cho biet Master dang duoc truyen hop le
    .s_axis_data_tready(fft_s_data_tready),                    // OUTPUT  .. Slave --> Master, Cho biet Slave da san sang nhan truyen du lieu 
    .s_axis_data_tlast(fft_s_data_tlast),                      // INPUT   .. Master --> Slave, Master gui tin hieu ket thuc truyen den Slave, muc cao ve cuoi
    //----------------------//
    .m_axis_data_tdata(fft_m_data_tdata),                      // OUTPUT  .. Master --> Slave, Dau ra du lieu pho FFT
                                                               // [47:24] tuong ung du lieu phan ao
                                                               // [23:0] tuong ung du lieu phan thuc
    .m_axis_data_tuser(fft_m_data_tuser),                      // OUTPUT  .. Master --> Slave, chi so cua pho dau ra, gia tri *fs/N la diem tan so tuong ung
    .m_axis_data_tvalid(fft_m_data_tvalid),                    // OUTPUT  .. Master --> Slave, Cho biet Master dang duoc truyen hop le
    .m_axis_data_tready(fft_m_data_tready),                    // INPUT   .. Slave -> Master, cho biet Slave da san sang nhan truyen du lieu
                                                               // Khi tvalid va tReady cung muc cao, qua trinh truyen du lieu bat dau
    .m_axis_data_tlast(fft_m_data_tlast),                      // OUTPUT  .. Master --> Slave, Master gui tin hieu ket thuc truyen den Slave, muc cao ve cuoi
    //----------------------//
//    .event_frame_started(fft_event_frame_started),                  // output, FFT IP core bat dau xu ly khung du lieu m.
//    .event_tlast_unexpected(fft_event_tlast_unexpected),            // output wire event_tlast_unexpected
//    .event_tlast_missing(fft_event_tlast_missing),                  // output wire event_tlast_missing
//    .event_status_channel_halt(fft_event_status_channel_halt),      // output wire event_status_channel_halt
//    .event_data_in_channel_halt(fft_event_data_in_channel_halt),    // output wire event_data_in_channel_halt
//    .event_data_out_channel_halt(fft_event_data_out_channel_halt)   // output wire event_data_out_channel_halt
    
    .event_frame_started(),                                   // output, FFT IP core bat dau xu ly khung du lieu m.
    .event_tlast_unexpected(),                                // output wire event_tlast_unexpected
    .event_tlast_missing(),                                   // output wire event_tlast_missing
    .event_status_channel_halt(),                             // output wire event_status_channel_halt
    .event_data_in_channel_halt(),                            // output wire event_data_in_channel_halt
    .event_data_out_channel_halt()                            // output wire event_data_out_channel_halt
  );  
  
  wire signed [23:0] dout_re;
  assign dout_re = fft_m_data_tdata[23 : 0];

  wire signed [23:0] dout_im;
  assign dout_im = fft_m_data_tdata[55 : 32];

  wire signed [47:0] psd;
  assign psd = dout_re*dout_re + dout_im*dout_im;
  
  reg signed [174:0] psd_array [0:1023];

  always @(posedge clk) begin
    if (fft_m_data_tvalid && fft_m_data_tready) begin
      if (cnt_m_fft == 0)
        psd_array[fft_m_data_tuser] <= psd;
      else
        psd_array[fft_m_data_tuser] <= psd_array[fft_m_data_tuser] + psd;
    end
  end
  
  assign psd_avg = (fft_m_data_tvalid && fft_m_data_tready && (cnt_m_fft == 127))
                                            ?(psd_array[fft_m_data_tuser]+psd) >> 7 : 0;
//  assign m_valid = (fft_m_data_tvalid && fft_m_data_tready && (cnt_m_fft == 63) && fft_m_data_tuser == 1023);
  assign m_valid = fft_m_data_tvalid && fft_m_data_tready && (cnt_m_fft == 127);
//  assign s_ready = fft_m_data_tvalid && fft_m_data_tready && (cnt_s_fft == 63) && (cnt_s == 1023);

  reg signed [47:0] psd_avg_array [0:1023];
//  reg signed [47:0] psd_avg_array [0:1023];
  always @(posedge clk) begin
    if (fft_m_data_tvalid && fft_m_data_tready) begin
      if (cnt_m_fft == 127)
        psd_avg_array[fft_m_data_tuser] <= psd_avg;
    end
  end
  
  always @(posedge clk) begin
    psd_avg_read <= psd_avg_array[cnt_read];
  end
////  always @(*) begin
////      psd_avg_read = psd_avg_array[cnt_read] ;
////  end  
  
  
//  integer file_dout_re;
//  integer file_dout_im;
//  reg [47:0] file_dout_psd;
//  reg [47:0] file_dout_avg;
////  reg [63:0] file_dout_avg1;
//  initial begin
//    file_dout_re = $fopen("out_re.txt","w"); 
//    file_dout_im = $fopen("out_im.txt","w"); 
//    file_dout_psd = $fopen("out_abs.txt","w");
//    wait(fft_m_data_tlast);
//    $fclose(file_dout_re);
//    $fclose(file_dout_im);   
//    $fclose(file_dout_psd);
//  end
//  initial begin
//    wait (cnt_m_fft == 0);
//    file_dout_avg = $fopen("out_avg.txt","w");
//    wait(cnt_m_fft == (`cnt_m-1) && fft_m_data_tuser == 1023);
//    wait (cnt_m_fft == 0);
//    wait(cnt_m_fft == (`cnt_m-1) && fft_m_data_tuser == 1023);
//    $fclose(file_dout_avg);
//  end

//  always @(posedge clk) begin
//    if (fft_m_data_tready && fft_m_data_tvalid) begin
//      $fdisplay(file_dout_re, "%d", dout_re);
//      $fdisplay(file_dout_im, "%d", dout_im);
//      $fdisplay(file_dout_psd,"%d", psd);
//    end
//    if (fft_m_data_tvalid && fft_m_data_tready && (cnt_m_fft == (`cnt_m-1))) begin
//      $fdisplay(file_dout_avg, "%d", psd_avg);
////      $fdisplay(file_dout_avg1, "%d", psd_avg);
//    end
//  end
endmodule

