`timescale 1ns / 1ps

module tb_DDS_FFT();
  reg clk;
  reg rst_n;
  reg [17:0] dds_phase_incr_0;
  reg [17:0] dds_phase_incr_1;
  reg [17:0] dds_phase_incr_2;
  reg [9:0] cnt_read;

  wire fft_m_data_tvalid;
  wire m_valid;
  wire signed [47:0] psd_avg_read;

  always #5 clk = ~clk; 

  DDS_FFT dut (
    .clk(clk),
    .rst_n(rst_n),
    .dds_phase_incr_0(dds_phase_incr_0),
    .dds_phase_incr_1(dds_phase_incr_1),
    .dds_phase_incr_2(dds_phase_incr_2),
    .cnt_read(cnt_read),
    .fft_m_data_tvalid(fft_m_data_tvalid),
    .m_valid(m_valid),
    .psd_avg_read(psd_avg_read)
  );

  initial begin
    clk = 0;
    rst_n = 0;
    dds_phase_incr_0 = 0;
    dds_phase_incr_1 = 0;
    dds_phase_incr_2 = 0;
    cnt_read = 0;
    #10;
    rst_n = 1;
    
    #20;
    dds_phase_incr_0 = 18'd26214; 
    dds_phase_incr_1 = 18'd52428; 
    dds_phase_incr_2 = 18'd78643; 

    #50;
    repeat (1024) begin
      cnt_read = cnt_read + 1; 
      #70; 
    end

    #500;
    dds_phase_incr_0 = 18'd117964;
    dds_phase_incr_1 = 18'd15728;
    dds_phase_incr_2 = 18'd2621;

    cnt_read = 0;
    repeat (1024) begin
      cnt_read = cnt_read + 1;
      #70;
    end

    #500;
    $stop; 
  end

endmodule
