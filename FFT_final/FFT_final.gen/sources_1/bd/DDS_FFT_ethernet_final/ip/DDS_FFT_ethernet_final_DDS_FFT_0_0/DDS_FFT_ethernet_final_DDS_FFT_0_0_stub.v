// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 30 17:32:16 2024
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/_DATN/FFT/FFT_final/FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_DDS_FFT_0_0/DDS_FFT_ethernet_final_DDS_FFT_0_0_stub.v
// Design      : DDS_FFT_ethernet_final_DDS_FFT_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DDS_FFT,Vivado 2022.2" *)
module DDS_FFT_ethernet_final_DDS_FFT_0_0(clk, rst_n, dds_phase_incr_0, dds_phase_incr_1, 
  dds_phase_incr_2, pos_radar, fft_m_data_tvalid, cnt_read, m_valid, psd_avg_read)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,dds_phase_incr_0[17:0],dds_phase_incr_1[17:0],dds_phase_incr_2[17:0],pos_radar[2:0],fft_m_data_tvalid,cnt_read[9:0],m_valid,psd_avg_read[47:0]" */;
  input clk;
  input rst_n;
  input [17:0]dds_phase_incr_0;
  input [17:0]dds_phase_incr_1;
  input [17:0]dds_phase_incr_2;
  input [2:0]pos_radar;
  output fft_m_data_tvalid;
  input [9:0]cnt_read;
  output m_valid;
  output [47:0]psd_avg_read;
endmodule
