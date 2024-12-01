module DDS_FFT
( 
  input wire clk,
  input wire rst_n,
  
  input wire [17:0] dds_phase_incr_0,
  input wire [17:0] dds_phase_incr_1,
  input wire [17:0] dds_phase_incr_2,
  input wire [2:0] pos_radar,
//  output wire fft_s_data_tready,
  output wire fft_m_data_tvalid,
  
  input wire [9:0] cnt_read,
  output wire m_valid,
  output wire signed [47:0] psd_avg_read
);
//wire [17:0] s_axis_config_tdata_0;
//wire [17:0] s_axis_config_tdata_1;
//wire [17:0] s_axis_config_tdata_2;
wire s_axis_config_tvalid_0;
wire s_axis_config_tvalid_1;
wire s_axis_config_tvalid_2;

wire [15:0] dout_dds_0;
wire [15:0] dout_dds_1;
wire [15:0] dout_dds_2;
wire m_axis_data_tvalid_0;
wire m_axis_data_tvalid_1;
wire m_axis_data_tvalid_2;

wire [15:0] dsine;
wire [15:0] dcosine;

//wire s_ready;

assign dsine = dout_dds_0;
assign dcosine = dout_dds_1 + dout_dds_2;

assign s_axis_config_tvalid_0 = 1'b1;
assign s_axis_config_tvalid_1 = 1'b1;
assign s_axis_config_tvalid_2 = 1'b1;

assign m_axis_data_tvalid = m_axis_data_tvalid_0 | m_axis_data_tvalid_1 | m_axis_data_tvalid_2;
dds_0 dds0 (
    .sclk(clk),
    .aresetn(rst_n),
    .s_axis_config_tdata(dds_phase_incr_0),
    .s_axis_config_tvalid(s_axis_config_tvalid_0),
    .dout(dout_dds_0),
    .m_axis_data_tvalid(m_axis_data_tvalid_0),
//    .s_ready(s_ready),
    .pos_radar(pos_radar)
);
dds_1 dds1 (
    .sclk(clk),
    .aresetn(rst_n),
    .s_axis_config_tdata(dds_phase_incr_1),
    .s_axis_config_tvalid(s_axis_config_tvalid_1),
    .dout(dout_dds_1),
    .m_axis_data_tvalid(m_axis_data_tvalid_1),
//    .s_ready(s_ready),
    .pos_radar(pos_radar)
);
dds_2 dds2 (
    .sclk(clk),
    .aresetn(rst_n),
    .s_axis_config_tdata(dds_phase_incr_2),
    .s_axis_config_tvalid(s_axis_config_tvalid_2),
    .dout(dout_dds_2),
    .m_axis_data_tvalid(m_axis_data_tvalid_2),
//    .s_ready(s_ready),
    .pos_radar(pos_radar)
);


FFT_control dut (
    .clk(clk),
    .rst_n(rst_n),
    .fft_s_data_i_re(dcosine),
    .fft_s_data_q_im(dsine),
    .fft_s_data_tready(),
    .fft_s_data_tvalid(m_axis_data_tvalid),
    .fft_m_data_tvalid(fft_m_data_tvalid),
    .fft_m_data_tready(1'b1),
    .cnt_read(cnt_read),
    .m_valid(m_valid),
//    .s_ready(s_ready),
    .psd_avg_read(psd_avg_read)
  );
endmodule
