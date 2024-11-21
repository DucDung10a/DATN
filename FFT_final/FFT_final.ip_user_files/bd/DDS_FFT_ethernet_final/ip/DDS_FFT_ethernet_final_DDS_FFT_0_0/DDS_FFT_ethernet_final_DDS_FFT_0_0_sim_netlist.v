// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov  4 15:47:38 2024
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/_DATN/FFT/FFT_final/FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_DDS_FFT_0_0/DDS_FFT_ethernet_final_DDS_FFT_0_0_sim_netlist.v
// Design      : DDS_FFT_ethernet_final_DDS_FFT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DDS_FFT_ethernet_final_DDS_FFT_0_0,DDS_FFT,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DDS_FFT,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module DDS_FFT_ethernet_final_DDS_FFT_0_0
   (clk,
    rst_n,
    dds_phase_incr_0,
    dds_phase_incr_1,
    dds_phase_incr_2,
    fft_m_data_tvalid,
    cnt_read,
    m_valid,
    psd_avg_read);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDS_FFT_ethernet_final_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [17:0]dds_phase_incr_0;
  input [17:0]dds_phase_incr_1;
  input [17:0]dds_phase_incr_2;
  output fft_m_data_tvalid;
  input [9:0]cnt_read;
  output m_valid;
  output [47:0]psd_avg_read;

  wire \<const0> ;
  wire clk;
  wire [9:0]cnt_read;
  wire [17:0]dds_phase_incr_0;
  wire [17:0]dds_phase_incr_1;
  wire [17:0]dds_phase_incr_2;
  wire fft_m_data_tvalid;
  wire m_valid;
  wire [46:0]\^psd_avg_read ;
  wire rst_n;
  wire [47:47]NLW_inst_psd_avg_read_UNCONNECTED;

  assign psd_avg_read[47] = \<const0> ;
  assign psd_avg_read[46:0] = \^psd_avg_read [46:0];
  GND GND
       (.G(\<const0> ));
  DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT inst
       (.clk(clk),
        .cnt_read(cnt_read),
        .dds_phase_incr_0(dds_phase_incr_0),
        .dds_phase_incr_1(dds_phase_incr_1),
        .dds_phase_incr_2(dds_phase_incr_2),
        .fft_m_data_tvalid(fft_m_data_tvalid),
        .m_valid(m_valid),
        .psd_avg_read({NLW_inst_psd_avg_read_UNCONNECTED[47],\^psd_avg_read }),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "DDS_FFT" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT
   (clk,
    rst_n,
    dds_phase_incr_0,
    dds_phase_incr_1,
    dds_phase_incr_2,
    fft_m_data_tvalid,
    cnt_read,
    m_valid,
    psd_avg_read);
  input clk;
  input rst_n;
  input [17:0]dds_phase_incr_0;
  input [17:0]dds_phase_incr_1;
  input [17:0]dds_phase_incr_2;
  output fft_m_data_tvalid;
  input [9:0]cnt_read;
  output m_valid;
  output [47:0]psd_avg_read;

  wire \<const0> ;
  wire clk;
  wire [9:0]cnt_read;
  wire cnt_s0;
  wire [15:0]dcosine;
  wire [17:0]dds_phase_incr_0;
  wire [17:0]dds_phase_incr_1;
  wire [17:0]dds_phase_incr_2;
  wire [15:0]dout_dds_0;
  wire [15:0]dout_dds_2;
  wire dut_n_0;
  wire [55:0]fft_m_data_tdata;
  wire fft_m_data_tvalid;
  wire m_axis_data_tvalid;
  wire m_axis_data_tvalid_0;
  wire m_axis_data_tvalid_1;
  wire m_axis_data_tvalid_2;
  wire m_valid;
  wire [47:0]p_0_in;
  wire p_1_out__1_n_100;
  wire p_1_out__1_n_101;
  wire p_1_out__1_n_102;
  wire p_1_out__1_n_103;
  wire p_1_out__1_n_104;
  wire p_1_out__1_n_105;
  wire p_1_out__1_n_106;
  wire p_1_out__1_n_107;
  wire p_1_out__1_n_108;
  wire p_1_out__1_n_109;
  wire p_1_out__1_n_110;
  wire p_1_out__1_n_111;
  wire p_1_out__1_n_112;
  wire p_1_out__1_n_113;
  wire p_1_out__1_n_114;
  wire p_1_out__1_n_115;
  wire p_1_out__1_n_116;
  wire p_1_out__1_n_117;
  wire p_1_out__1_n_118;
  wire p_1_out__1_n_119;
  wire p_1_out__1_n_120;
  wire p_1_out__1_n_121;
  wire p_1_out__1_n_122;
  wire p_1_out__1_n_123;
  wire p_1_out__1_n_124;
  wire p_1_out__1_n_125;
  wire p_1_out__1_n_126;
  wire p_1_out__1_n_127;
  wire p_1_out__1_n_128;
  wire p_1_out__1_n_129;
  wire p_1_out__1_n_130;
  wire p_1_out__1_n_131;
  wire p_1_out__1_n_132;
  wire p_1_out__1_n_133;
  wire p_1_out__1_n_134;
  wire p_1_out__1_n_135;
  wire p_1_out__1_n_136;
  wire p_1_out__1_n_137;
  wire p_1_out__1_n_138;
  wire p_1_out__1_n_139;
  wire p_1_out__1_n_140;
  wire p_1_out__1_n_141;
  wire p_1_out__1_n_142;
  wire p_1_out__1_n_143;
  wire p_1_out__1_n_144;
  wire p_1_out__1_n_145;
  wire p_1_out__1_n_146;
  wire p_1_out__1_n_147;
  wire p_1_out__1_n_148;
  wire p_1_out__1_n_149;
  wire p_1_out__1_n_150;
  wire p_1_out__1_n_151;
  wire p_1_out__1_n_152;
  wire p_1_out__1_n_153;
  wire p_1_out__1_n_58;
  wire p_1_out__1_n_59;
  wire p_1_out__1_n_60;
  wire p_1_out__1_n_61;
  wire p_1_out__1_n_62;
  wire p_1_out__1_n_63;
  wire p_1_out__1_n_64;
  wire p_1_out__1_n_65;
  wire p_1_out__1_n_66;
  wire p_1_out__1_n_67;
  wire p_1_out__1_n_68;
  wire p_1_out__1_n_69;
  wire p_1_out__1_n_70;
  wire p_1_out__1_n_71;
  wire p_1_out__1_n_72;
  wire p_1_out__1_n_73;
  wire p_1_out__1_n_74;
  wire p_1_out__1_n_75;
  wire p_1_out__1_n_76;
  wire p_1_out__1_n_77;
  wire p_1_out__1_n_78;
  wire p_1_out__1_n_79;
  wire p_1_out__1_n_80;
  wire p_1_out__1_n_81;
  wire p_1_out__1_n_82;
  wire p_1_out__1_n_83;
  wire p_1_out__1_n_84;
  wire p_1_out__1_n_85;
  wire p_1_out__1_n_86;
  wire p_1_out__1_n_87;
  wire p_1_out__1_n_88;
  wire p_1_out__1_n_89;
  wire p_1_out__1_n_90;
  wire p_1_out__1_n_91;
  wire p_1_out__1_n_92;
  wire p_1_out__1_n_93;
  wire p_1_out__1_n_94;
  wire p_1_out__1_n_95;
  wire p_1_out__1_n_96;
  wire p_1_out__1_n_97;
  wire p_1_out__1_n_98;
  wire p_1_out__1_n_99;
  wire p_1_out__2_n_100;
  wire p_1_out__2_n_101;
  wire p_1_out__2_n_102;
  wire p_1_out__2_n_103;
  wire p_1_out__2_n_104;
  wire p_1_out__2_n_105;
  wire p_1_out__2_n_75;
  wire p_1_out__2_n_76;
  wire p_1_out__2_n_77;
  wire p_1_out__2_n_78;
  wire p_1_out__2_n_79;
  wire p_1_out__2_n_80;
  wire p_1_out__2_n_81;
  wire p_1_out__2_n_82;
  wire p_1_out__2_n_83;
  wire p_1_out__2_n_84;
  wire p_1_out__2_n_85;
  wire p_1_out__2_n_86;
  wire p_1_out__2_n_87;
  wire p_1_out__2_n_88;
  wire p_1_out__2_n_89;
  wire p_1_out__2_n_90;
  wire p_1_out__2_n_91;
  wire p_1_out__2_n_92;
  wire p_1_out__2_n_93;
  wire p_1_out__2_n_94;
  wire p_1_out__2_n_95;
  wire p_1_out__2_n_96;
  wire p_1_out__2_n_97;
  wire p_1_out__2_n_98;
  wire p_1_out__2_n_99;
  wire p_1_out_n_106;
  wire p_1_out_n_107;
  wire p_1_out_n_108;
  wire p_1_out_n_109;
  wire p_1_out_n_110;
  wire p_1_out_n_111;
  wire p_1_out_n_112;
  wire p_1_out_n_113;
  wire p_1_out_n_114;
  wire p_1_out_n_115;
  wire p_1_out_n_116;
  wire p_1_out_n_117;
  wire p_1_out_n_118;
  wire p_1_out_n_119;
  wire p_1_out_n_120;
  wire p_1_out_n_121;
  wire p_1_out_n_122;
  wire p_1_out_n_123;
  wire p_1_out_n_124;
  wire p_1_out_n_125;
  wire p_1_out_n_126;
  wire p_1_out_n_127;
  wire p_1_out_n_128;
  wire p_1_out_n_129;
  wire p_1_out_n_130;
  wire p_1_out_n_131;
  wire p_1_out_n_132;
  wire p_1_out_n_133;
  wire p_1_out_n_134;
  wire p_1_out_n_135;
  wire p_1_out_n_136;
  wire p_1_out_n_137;
  wire p_1_out_n_138;
  wire p_1_out_n_139;
  wire p_1_out_n_140;
  wire p_1_out_n_141;
  wire p_1_out_n_142;
  wire p_1_out_n_143;
  wire p_1_out_n_144;
  wire p_1_out_n_145;
  wire p_1_out_n_146;
  wire p_1_out_n_147;
  wire p_1_out_n_148;
  wire p_1_out_n_149;
  wire p_1_out_n_150;
  wire p_1_out_n_151;
  wire p_1_out_n_152;
  wire p_1_out_n_153;
  wire p_1_out_n_58;
  wire p_1_out_n_59;
  wire p_1_out_n_60;
  wire p_1_out_n_61;
  wire p_1_out_n_62;
  wire p_1_out_n_63;
  wire p_1_out_n_64;
  wire p_1_out_n_65;
  wire p_1_out_n_66;
  wire p_1_out_n_67;
  wire p_1_out_n_68;
  wire p_1_out_n_69;
  wire p_1_out_n_70;
  wire p_1_out_n_71;
  wire p_1_out_n_72;
  wire p_1_out_n_73;
  wire p_1_out_n_74;
  wire p_1_out_n_75;
  wire p_1_out_n_76;
  wire p_1_out_n_77;
  wire p_1_out_n_78;
  wire p_1_out_n_79;
  wire p_1_out_n_80;
  wire p_1_out_n_81;
  wire p_1_out_n_82;
  wire p_1_out_n_83;
  wire p_1_out_n_84;
  wire p_1_out_n_85;
  wire p_1_out_n_86;
  wire p_1_out_n_87;
  wire p_1_out_n_88;
  wire [46:0]\^psd_avg_read ;
  wire rst_n;
  wire NLW_p_1_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out_CARRYOUT_UNCONNECTED;
  wire NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_p_1_out__0_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out__0_PCOUT_UNCONNECTED;
  wire NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__1_CARRYOUT_UNCONNECTED;
  wire NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__2_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__2_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_p_1_out__2_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out__2_PCOUT_UNCONNECTED;

  assign psd_avg_read[47] = \<const0> ;
  assign psd_avg_read[46:0] = \^psd_avg_read [46:0];
  GND GND
       (.G(\<const0> ));
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0 dds0
       (.D(dout_dds_0),
        .E(cnt_s0),
        .clk(clk),
        .dds_phase_incr_0(dds_phase_incr_0),
        .\fft_s_data_tdata_reg[31] (m_axis_data_tvalid_2),
        .\fft_s_data_tdata_reg[31]_0 (m_axis_data_tvalid_1),
        .m_axis_data_tvalid(m_axis_data_tvalid_0),
        .rst_n(rst_n),
        .s_axis_data_tready(dut_n_0));
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1 dds1
       (.clk(clk),
        .dcosine(dcosine),
        .dds_phase_incr_1(dds_phase_incr_1),
        .m_axis_data_tdata(dout_dds_2),
        .m_axis_data_tvalid(m_axis_data_tvalid_1),
        .p_1_out__0(m_axis_data_tvalid_2),
        .p_1_out__0_0(m_axis_data_tvalid_0),
        .rst_n(rst_n),
        .s_axis_data_tvalid(m_axis_data_tvalid));
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2 dds2
       (.clk(clk),
        .dds_phase_incr_2(dds_phase_incr_2),
        .m_axis_data_tdata(dout_dds_2),
        .m_axis_data_tvalid(m_axis_data_tvalid_2),
        .rst_n(rst_n));
  DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control dut
       (.D({dout_dds_0,dcosine}),
        .E(cnt_s0),
        .P({p_1_out__1_n_89,p_1_out__1_n_90,p_1_out__1_n_91,p_1_out__1_n_92,p_1_out__1_n_93,p_1_out__1_n_94,p_1_out__1_n_95,p_1_out__1_n_96,p_1_out__1_n_97,p_1_out__1_n_98,p_1_out__1_n_99,p_1_out__1_n_100,p_1_out__1_n_101,p_1_out__1_n_102,p_1_out__1_n_103,p_1_out__1_n_104,p_1_out__1_n_105}),
        .clk(clk),
        .cnt_read(cnt_read),
        .m_axis_data_tdata({fft_m_data_tdata[55:32],fft_m_data_tdata[23:0]}),
        .m_axis_data_tvalid(fft_m_data_tvalid),
        .m_valid(m_valid),
        .p_1_out__0(m_axis_data_tvalid_1),
        .p_1_out__0_0(m_axis_data_tvalid_2),
        .p_1_out__0_1(m_axis_data_tvalid_0),
        .psd_avg_read(\^psd_avg_read ),
        .psd_carry__10_0({p_1_out__2_n_75,p_1_out__2_n_76,p_1_out__2_n_77,p_1_out__2_n_78,p_1_out__2_n_79,p_1_out__2_n_80,p_1_out__2_n_81,p_1_out__2_n_82,p_1_out__2_n_83,p_1_out__2_n_84,p_1_out__2_n_85,p_1_out__2_n_86,p_1_out__2_n_87,p_1_out__2_n_88,p_1_out__2_n_89,p_1_out__2_n_90,p_1_out__2_n_91,p_1_out__2_n_92,p_1_out__2_n_93,p_1_out__2_n_94,p_1_out__2_n_95,p_1_out__2_n_96,p_1_out__2_n_97,p_1_out__2_n_98,p_1_out__2_n_99,p_1_out__2_n_100,p_1_out__2_n_101,p_1_out__2_n_102,p_1_out__2_n_103,p_1_out__2_n_104,p_1_out__2_n_105}),
        .psd_carry__10_1(p_0_in),
        .rst_n(rst_n),
        .s_axis_data_tready(dut_n_0),
        .s_axis_data_tvalid(m_axis_data_tvalid));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out
       (.A({fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fft_m_data_tdata[48:32]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out_OVERFLOW_UNCONNECTED),
        .P({p_1_out_n_58,p_1_out_n_59,p_1_out_n_60,p_1_out_n_61,p_1_out_n_62,p_1_out_n_63,p_1_out_n_64,p_1_out_n_65,p_1_out_n_66,p_1_out_n_67,p_1_out_n_68,p_1_out_n_69,p_1_out_n_70,p_1_out_n_71,p_1_out_n_72,p_1_out_n_73,p_1_out_n_74,p_1_out_n_75,p_1_out_n_76,p_1_out_n_77,p_1_out_n_78,p_1_out_n_79,p_1_out_n_80,p_1_out_n_81,p_1_out_n_82,p_1_out_n_83,p_1_out_n_84,p_1_out_n_85,p_1_out_n_86,p_1_out_n_87,p_1_out_n_88,p_0_in[16:0]}),
        .PATTERNBDETECT(NLW_p_1_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_1_out_n_106,p_1_out_n_107,p_1_out_n_108,p_1_out_n_109,p_1_out_n_110,p_1_out_n_111,p_1_out_n_112,p_1_out_n_113,p_1_out_n_114,p_1_out_n_115,p_1_out_n_116,p_1_out_n_117,p_1_out_n_118,p_1_out_n_119,p_1_out_n_120,p_1_out_n_121,p_1_out_n_122,p_1_out_n_123,p_1_out_n_124,p_1_out_n_125,p_1_out_n_126,p_1_out_n_127,p_1_out_n_128,p_1_out_n_129,p_1_out_n_130,p_1_out_n_131,p_1_out_n_132,p_1_out_n_133,p_1_out_n_134,p_1_out_n_135,p_1_out_n_136,p_1_out_n_137,p_1_out_n_138,p_1_out_n_139,p_1_out_n_140,p_1_out_n_141,p_1_out_n_142,p_1_out_n_143,p_1_out_n_144,p_1_out_n_145,p_1_out_n_146,p_1_out_n_147,p_1_out_n_148,p_1_out_n_149,p_1_out_n_150,p_1_out_n_151,p_1_out_n_152,p_1_out_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__0
       (.A({fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55],fft_m_data_tdata[55:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__0_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out__0_P_UNCONNECTED[47:31],p_0_in[47:17]}),
        .PATTERNBDETECT(NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_1_out_n_106,p_1_out_n_107,p_1_out_n_108,p_1_out_n_109,p_1_out_n_110,p_1_out_n_111,p_1_out_n_112,p_1_out_n_113,p_1_out_n_114,p_1_out_n_115,p_1_out_n_116,p_1_out_n_117,p_1_out_n_118,p_1_out_n_119,p_1_out_n_120,p_1_out_n_121,p_1_out_n_122,p_1_out_n_123,p_1_out_n_124,p_1_out_n_125,p_1_out_n_126,p_1_out_n_127,p_1_out_n_128,p_1_out_n_129,p_1_out_n_130,p_1_out_n_131,p_1_out_n_132,p_1_out_n_133,p_1_out_n_134,p_1_out_n_135,p_1_out_n_136,p_1_out_n_137,p_1_out_n_138,p_1_out_n_139,p_1_out_n_140,p_1_out_n_141,p_1_out_n_142,p_1_out_n_143,p_1_out_n_144,p_1_out_n_145,p_1_out_n_146,p_1_out_n_147,p_1_out_n_148,p_1_out_n_149,p_1_out_n_150,p_1_out_n_151,p_1_out_n_152,p_1_out_n_153}),
        .PCOUT(NLW_p_1_out__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__1
       (.A({fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fft_m_data_tdata[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__1_OVERFLOW_UNCONNECTED),
        .P({p_1_out__1_n_58,p_1_out__1_n_59,p_1_out__1_n_60,p_1_out__1_n_61,p_1_out__1_n_62,p_1_out__1_n_63,p_1_out__1_n_64,p_1_out__1_n_65,p_1_out__1_n_66,p_1_out__1_n_67,p_1_out__1_n_68,p_1_out__1_n_69,p_1_out__1_n_70,p_1_out__1_n_71,p_1_out__1_n_72,p_1_out__1_n_73,p_1_out__1_n_74,p_1_out__1_n_75,p_1_out__1_n_76,p_1_out__1_n_77,p_1_out__1_n_78,p_1_out__1_n_79,p_1_out__1_n_80,p_1_out__1_n_81,p_1_out__1_n_82,p_1_out__1_n_83,p_1_out__1_n_84,p_1_out__1_n_85,p_1_out__1_n_86,p_1_out__1_n_87,p_1_out__1_n_88,p_1_out__1_n_89,p_1_out__1_n_90,p_1_out__1_n_91,p_1_out__1_n_92,p_1_out__1_n_93,p_1_out__1_n_94,p_1_out__1_n_95,p_1_out__1_n_96,p_1_out__1_n_97,p_1_out__1_n_98,p_1_out__1_n_99,p_1_out__1_n_100,p_1_out__1_n_101,p_1_out__1_n_102,p_1_out__1_n_103,p_1_out__1_n_104,p_1_out__1_n_105}),
        .PATTERNBDETECT(NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_1_out__1_n_106,p_1_out__1_n_107,p_1_out__1_n_108,p_1_out__1_n_109,p_1_out__1_n_110,p_1_out__1_n_111,p_1_out__1_n_112,p_1_out__1_n_113,p_1_out__1_n_114,p_1_out__1_n_115,p_1_out__1_n_116,p_1_out__1_n_117,p_1_out__1_n_118,p_1_out__1_n_119,p_1_out__1_n_120,p_1_out__1_n_121,p_1_out__1_n_122,p_1_out__1_n_123,p_1_out__1_n_124,p_1_out__1_n_125,p_1_out__1_n_126,p_1_out__1_n_127,p_1_out__1_n_128,p_1_out__1_n_129,p_1_out__1_n_130,p_1_out__1_n_131,p_1_out__1_n_132,p_1_out__1_n_133,p_1_out__1_n_134,p_1_out__1_n_135,p_1_out__1_n_136,p_1_out__1_n_137,p_1_out__1_n_138,p_1_out__1_n_139,p_1_out__1_n_140,p_1_out__1_n_141,p_1_out__1_n_142,p_1_out__1_n_143,p_1_out__1_n_144,p_1_out__1_n_145,p_1_out__1_n_146,p_1_out__1_n_147,p_1_out__1_n_148,p_1_out__1_n_149,p_1_out__1_n_150,p_1_out__1_n_151,p_1_out__1_n_152,p_1_out__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__2
       (.A({fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23],fft_m_data_tdata[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__2_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out__2_P_UNCONNECTED[47:31],p_1_out__2_n_75,p_1_out__2_n_76,p_1_out__2_n_77,p_1_out__2_n_78,p_1_out__2_n_79,p_1_out__2_n_80,p_1_out__2_n_81,p_1_out__2_n_82,p_1_out__2_n_83,p_1_out__2_n_84,p_1_out__2_n_85,p_1_out__2_n_86,p_1_out__2_n_87,p_1_out__2_n_88,p_1_out__2_n_89,p_1_out__2_n_90,p_1_out__2_n_91,p_1_out__2_n_92,p_1_out__2_n_93,p_1_out__2_n_94,p_1_out__2_n_95,p_1_out__2_n_96,p_1_out__2_n_97,p_1_out__2_n_98,p_1_out__2_n_99,p_1_out__2_n_100,p_1_out__2_n_101,p_1_out__2_n_102,p_1_out__2_n_103,p_1_out__2_n_104,p_1_out__2_n_105}),
        .PATTERNBDETECT(NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_1_out__1_n_106,p_1_out__1_n_107,p_1_out__1_n_108,p_1_out__1_n_109,p_1_out__1_n_110,p_1_out__1_n_111,p_1_out__1_n_112,p_1_out__1_n_113,p_1_out__1_n_114,p_1_out__1_n_115,p_1_out__1_n_116,p_1_out__1_n_117,p_1_out__1_n_118,p_1_out__1_n_119,p_1_out__1_n_120,p_1_out__1_n_121,p_1_out__1_n_122,p_1_out__1_n_123,p_1_out__1_n_124,p_1_out__1_n_125,p_1_out__1_n_126,p_1_out__1_n_127,p_1_out__1_n_128,p_1_out__1_n_129,p_1_out__1_n_130,p_1_out__1_n_131,p_1_out__1_n_132,p_1_out__1_n_133,p_1_out__1_n_134,p_1_out__1_n_135,p_1_out__1_n_136,p_1_out__1_n_137,p_1_out__1_n_138,p_1_out__1_n_139,p_1_out__1_n_140,p_1_out__1_n_141,p_1_out__1_n_142,p_1_out__1_n_143,p_1_out__1_n_144,p_1_out__1_n_145,p_1_out__1_n_146,p_1_out__1_n_147,p_1_out__1_n_148,p_1_out__1_n_149,p_1_out__1_n_150,p_1_out__1_n_151,p_1_out__1_n_152,p_1_out__1_n_153}),
        .PCOUT(NLW_p_1_out__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__2_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "FFT_control" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control
   (s_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_valid,
    psd_avg_read,
    clk,
    rst_n,
    s_axis_data_tvalid,
    P,
    psd_carry__10_0,
    p_1_out__0,
    p_1_out__0_0,
    p_1_out__0_1,
    psd_carry__10_1,
    cnt_read,
    E,
    D);
  output s_axis_data_tready;
  output [47:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  output m_valid;
  output [46:0]psd_avg_read;
  input clk;
  input rst_n;
  input s_axis_data_tvalid;
  input [16:0]P;
  input [30:0]psd_carry__10_0;
  input p_1_out__0;
  input p_1_out__0_0;
  input p_1_out__0_1;
  input [47:0]psd_carry__10_1;
  input [9:0]cnt_read;
  input [0:0]E;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire [16:0]P;
  wire _carry__0_i_5_n_0;
  wire _carry__0_i_6_n_0;
  wire _carry__0_i_7_n_0;
  wire _carry__0_i_8_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__0_n_4;
  wire _carry__0_n_5;
  wire _carry__0_n_6;
  wire _carry__0_n_7;
  wire _carry__10_i_4_n_0;
  wire _carry__10_i_5_n_0;
  wire _carry__10_i_6_n_0;
  wire _carry__10_i_7_n_0;
  wire _carry__10_n_0;
  wire _carry__10_n_1;
  wire _carry__10_n_2;
  wire _carry__10_n_3;
  wire _carry__10_n_4;
  wire _carry__10_n_5;
  wire _carry__10_n_6;
  wire _carry__10_n_7;
  wire _carry__11_i_4_n_0;
  wire _carry__11_i_5_n_0;
  wire _carry__11_i_6_n_0;
  wire _carry__11_i_7_n_0;
  wire _carry__11_i_8_n_0;
  wire _carry__11_n_0;
  wire _carry__11_n_1;
  wire _carry__11_n_2;
  wire _carry__11_n_3;
  wire _carry__11_n_4;
  wire _carry__11_n_5;
  wire _carry__11_n_6;
  wire _carry__11_n_7;
  wire _carry__12_i_1_n_0;
  wire _carry__12_n_7;
  wire _carry__1_i_5_n_0;
  wire _carry__1_i_6_n_0;
  wire _carry__1_i_7_n_0;
  wire _carry__1_i_8_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__1_n_4;
  wire _carry__1_n_5;
  wire _carry__1_n_6;
  wire _carry__1_n_7;
  wire _carry__2_i_5_n_0;
  wire _carry__2_i_6_n_0;
  wire _carry__2_i_7_n_0;
  wire _carry__2_i_8_n_0;
  wire _carry__2_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__2_n_4;
  wire _carry__2_n_5;
  wire _carry__2_n_6;
  wire _carry__2_n_7;
  wire _carry__3_i_5_n_0;
  wire _carry__3_i_6_n_0;
  wire _carry__3_i_7_n_0;
  wire _carry__3_i_8_n_0;
  wire _carry__3_n_0;
  wire _carry__3_n_1;
  wire _carry__3_n_2;
  wire _carry__3_n_3;
  wire _carry__3_n_4;
  wire _carry__3_n_5;
  wire _carry__3_n_6;
  wire _carry__3_n_7;
  wire _carry__4_i_5_n_0;
  wire _carry__4_i_6_n_0;
  wire _carry__4_i_7_n_0;
  wire _carry__4_i_8_n_0;
  wire _carry__4_n_0;
  wire _carry__4_n_1;
  wire _carry__4_n_2;
  wire _carry__4_n_3;
  wire _carry__4_n_4;
  wire _carry__4_n_5;
  wire _carry__4_n_6;
  wire _carry__4_n_7;
  wire _carry__5_i_5_n_0;
  wire _carry__5_i_6_n_0;
  wire _carry__5_i_7_n_0;
  wire _carry__5_i_8_n_0;
  wire _carry__5_n_0;
  wire _carry__5_n_1;
  wire _carry__5_n_2;
  wire _carry__5_n_3;
  wire _carry__5_n_4;
  wire _carry__5_n_5;
  wire _carry__5_n_6;
  wire _carry__5_n_7;
  wire _carry__6_i_5_n_0;
  wire _carry__6_i_6_n_0;
  wire _carry__6_i_7_n_0;
  wire _carry__6_i_8_n_0;
  wire _carry__6_n_0;
  wire _carry__6_n_1;
  wire _carry__6_n_2;
  wire _carry__6_n_3;
  wire _carry__6_n_4;
  wire _carry__6_n_5;
  wire _carry__6_n_6;
  wire _carry__6_n_7;
  wire _carry__7_i_5_n_0;
  wire _carry__7_i_6_n_0;
  wire _carry__7_i_7_n_0;
  wire _carry__7_i_8_n_0;
  wire _carry__7_n_0;
  wire _carry__7_n_1;
  wire _carry__7_n_2;
  wire _carry__7_n_3;
  wire _carry__7_n_4;
  wire _carry__7_n_5;
  wire _carry__7_n_6;
  wire _carry__7_n_7;
  wire _carry__8_i_5_n_0;
  wire _carry__8_i_6_n_0;
  wire _carry__8_i_7_n_0;
  wire _carry__8_i_8_n_0;
  wire _carry__8_n_0;
  wire _carry__8_n_1;
  wire _carry__8_n_2;
  wire _carry__8_n_3;
  wire _carry__8_n_4;
  wire _carry__8_n_5;
  wire _carry__8_n_6;
  wire _carry__8_n_7;
  wire _carry__9_i_5_n_0;
  wire _carry__9_i_6_n_0;
  wire _carry__9_i_7_n_0;
  wire _carry__9_i_8_n_0;
  wire _carry__9_n_0;
  wire _carry__9_n_1;
  wire _carry__9_n_2;
  wire _carry__9_n_3;
  wire _carry__9_n_4;
  wire _carry__9_n_5;
  wire _carry__9_n_6;
  wire _carry__9_n_7;
  wire _carry_i_5_n_0;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire _carry_i_8_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire _carry_n_4;
  wire _carry_n_5;
  wire _carry_n_6;
  wire _carry_n_7;
  wire clk;
  wire [5:0]cnt_m_fft_reg;
  wire [9:0]cnt_read;
  wire \cnt_s[9]_i_2_n_0 ;
  wire [9:0]cnt_s_reg;
  wire fft_m_data_tlast;
  wire [9:0]fft_m_data_tuser;
  wire [31:0]fft_s_data_tdata;
  wire \fft_s_data_tdata[31]_i_2_n_0 ;
  wire fft_s_data_tlast;
  wire [47:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire m_valid;
  wire m_valid_INST_0_i_1_n_0;
  wire [5:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [47:0]p_1_in;
  wire [52:0]p_1_out;
  wire p_1_out__0;
  wire p_1_out__0_0;
  wire p_1_out__0_1;
  wire [52:0]p_2_in;
  wire psd_array_reg_0_255_0_0_i_2_n_0;
  wire psd_array_reg_0_255_0_0_i_3_n_0;
  wire psd_array_reg_0_255_0_0_n_0;
  wire psd_array_reg_0_255_10_10_n_0;
  wire psd_array_reg_0_255_11_11_n_0;
  wire psd_array_reg_0_255_12_12_n_0;
  wire psd_array_reg_0_255_13_13_n_0;
  wire psd_array_reg_0_255_14_14_n_0;
  wire psd_array_reg_0_255_15_15_n_0;
  wire psd_array_reg_0_255_16_16_n_0;
  wire psd_array_reg_0_255_17_17_n_0;
  wire psd_array_reg_0_255_18_18_n_0;
  wire psd_array_reg_0_255_19_19_n_0;
  wire psd_array_reg_0_255_1_1_n_0;
  wire psd_array_reg_0_255_20_20_n_0;
  wire psd_array_reg_0_255_21_21_n_0;
  wire psd_array_reg_0_255_22_22_n_0;
  wire psd_array_reg_0_255_23_23_n_0;
  wire psd_array_reg_0_255_24_24_n_0;
  wire psd_array_reg_0_255_25_25_n_0;
  wire psd_array_reg_0_255_26_26_n_0;
  wire psd_array_reg_0_255_27_27_n_0;
  wire psd_array_reg_0_255_28_28_n_0;
  wire psd_array_reg_0_255_29_29_n_0;
  wire psd_array_reg_0_255_2_2_n_0;
  wire psd_array_reg_0_255_30_30_n_0;
  wire psd_array_reg_0_255_31_31_n_0;
  wire psd_array_reg_0_255_32_32_n_0;
  wire psd_array_reg_0_255_33_33_n_0;
  wire psd_array_reg_0_255_34_34_n_0;
  wire psd_array_reg_0_255_35_35_n_0;
  wire psd_array_reg_0_255_36_36_n_0;
  wire psd_array_reg_0_255_37_37_n_0;
  wire psd_array_reg_0_255_38_38_n_0;
  wire psd_array_reg_0_255_39_39_n_0;
  wire psd_array_reg_0_255_3_3_n_0;
  wire psd_array_reg_0_255_40_40_n_0;
  wire psd_array_reg_0_255_41_41_n_0;
  wire psd_array_reg_0_255_42_42_n_0;
  wire psd_array_reg_0_255_43_43_n_0;
  wire psd_array_reg_0_255_44_44_n_0;
  wire psd_array_reg_0_255_45_45_n_0;
  wire psd_array_reg_0_255_46_46_n_0;
  wire psd_array_reg_0_255_47_47_n_0;
  wire psd_array_reg_0_255_48_48_n_0;
  wire psd_array_reg_0_255_49_49_n_0;
  wire psd_array_reg_0_255_4_4_n_0;
  wire psd_array_reg_0_255_50_50_n_0;
  wire psd_array_reg_0_255_51_51_n_0;
  wire psd_array_reg_0_255_52_52_n_0;
  wire psd_array_reg_0_255_5_5_n_0;
  wire psd_array_reg_0_255_6_6_n_0;
  wire psd_array_reg_0_255_7_7_n_0;
  wire psd_array_reg_0_255_8_8_n_0;
  wire psd_array_reg_0_255_9_9_n_0;
  wire psd_array_reg_256_511_0_0_i_1_n_0;
  wire psd_array_reg_256_511_0_0_n_0;
  wire psd_array_reg_256_511_10_10_n_0;
  wire psd_array_reg_256_511_11_11_n_0;
  wire psd_array_reg_256_511_12_12_n_0;
  wire psd_array_reg_256_511_13_13_n_0;
  wire psd_array_reg_256_511_14_14_n_0;
  wire psd_array_reg_256_511_15_15_n_0;
  wire psd_array_reg_256_511_16_16_n_0;
  wire psd_array_reg_256_511_17_17_n_0;
  wire psd_array_reg_256_511_18_18_n_0;
  wire psd_array_reg_256_511_19_19_n_0;
  wire psd_array_reg_256_511_1_1_n_0;
  wire psd_array_reg_256_511_20_20_n_0;
  wire psd_array_reg_256_511_21_21_n_0;
  wire psd_array_reg_256_511_22_22_n_0;
  wire psd_array_reg_256_511_23_23_n_0;
  wire psd_array_reg_256_511_24_24_n_0;
  wire psd_array_reg_256_511_25_25_n_0;
  wire psd_array_reg_256_511_26_26_n_0;
  wire psd_array_reg_256_511_27_27_n_0;
  wire psd_array_reg_256_511_28_28_n_0;
  wire psd_array_reg_256_511_29_29_n_0;
  wire psd_array_reg_256_511_2_2_n_0;
  wire psd_array_reg_256_511_30_30_n_0;
  wire psd_array_reg_256_511_31_31_n_0;
  wire psd_array_reg_256_511_32_32_n_0;
  wire psd_array_reg_256_511_33_33_n_0;
  wire psd_array_reg_256_511_34_34_n_0;
  wire psd_array_reg_256_511_35_35_n_0;
  wire psd_array_reg_256_511_36_36_n_0;
  wire psd_array_reg_256_511_37_37_n_0;
  wire psd_array_reg_256_511_38_38_n_0;
  wire psd_array_reg_256_511_39_39_n_0;
  wire psd_array_reg_256_511_3_3_n_0;
  wire psd_array_reg_256_511_40_40_n_0;
  wire psd_array_reg_256_511_41_41_n_0;
  wire psd_array_reg_256_511_42_42_n_0;
  wire psd_array_reg_256_511_43_43_n_0;
  wire psd_array_reg_256_511_44_44_n_0;
  wire psd_array_reg_256_511_45_45_n_0;
  wire psd_array_reg_256_511_46_46_n_0;
  wire psd_array_reg_256_511_47_47_n_0;
  wire psd_array_reg_256_511_48_48_n_0;
  wire psd_array_reg_256_511_49_49_n_0;
  wire psd_array_reg_256_511_4_4_n_0;
  wire psd_array_reg_256_511_50_50_n_0;
  wire psd_array_reg_256_511_51_51_n_0;
  wire psd_array_reg_256_511_52_52_n_0;
  wire psd_array_reg_256_511_5_5_n_0;
  wire psd_array_reg_256_511_6_6_n_0;
  wire psd_array_reg_256_511_7_7_n_0;
  wire psd_array_reg_256_511_8_8_n_0;
  wire psd_array_reg_256_511_9_9_n_0;
  wire psd_array_reg_512_767_0_0_i_1_n_0;
  wire psd_array_reg_512_767_0_0_n_0;
  wire psd_array_reg_512_767_10_10_n_0;
  wire psd_array_reg_512_767_11_11_n_0;
  wire psd_array_reg_512_767_12_12_n_0;
  wire psd_array_reg_512_767_13_13_n_0;
  wire psd_array_reg_512_767_14_14_n_0;
  wire psd_array_reg_512_767_15_15_n_0;
  wire psd_array_reg_512_767_16_16_n_0;
  wire psd_array_reg_512_767_17_17_n_0;
  wire psd_array_reg_512_767_18_18_n_0;
  wire psd_array_reg_512_767_19_19_n_0;
  wire psd_array_reg_512_767_1_1_n_0;
  wire psd_array_reg_512_767_20_20_n_0;
  wire psd_array_reg_512_767_21_21_n_0;
  wire psd_array_reg_512_767_22_22_n_0;
  wire psd_array_reg_512_767_23_23_n_0;
  wire psd_array_reg_512_767_24_24_n_0;
  wire psd_array_reg_512_767_25_25_n_0;
  wire psd_array_reg_512_767_26_26_n_0;
  wire psd_array_reg_512_767_27_27_n_0;
  wire psd_array_reg_512_767_28_28_n_0;
  wire psd_array_reg_512_767_29_29_n_0;
  wire psd_array_reg_512_767_2_2_n_0;
  wire psd_array_reg_512_767_30_30_n_0;
  wire psd_array_reg_512_767_31_31_n_0;
  wire psd_array_reg_512_767_32_32_n_0;
  wire psd_array_reg_512_767_33_33_n_0;
  wire psd_array_reg_512_767_34_34_n_0;
  wire psd_array_reg_512_767_35_35_n_0;
  wire psd_array_reg_512_767_36_36_n_0;
  wire psd_array_reg_512_767_37_37_n_0;
  wire psd_array_reg_512_767_38_38_n_0;
  wire psd_array_reg_512_767_39_39_n_0;
  wire psd_array_reg_512_767_3_3_n_0;
  wire psd_array_reg_512_767_40_40_n_0;
  wire psd_array_reg_512_767_41_41_n_0;
  wire psd_array_reg_512_767_42_42_n_0;
  wire psd_array_reg_512_767_43_43_n_0;
  wire psd_array_reg_512_767_44_44_n_0;
  wire psd_array_reg_512_767_45_45_n_0;
  wire psd_array_reg_512_767_46_46_n_0;
  wire psd_array_reg_512_767_47_47_n_0;
  wire psd_array_reg_512_767_48_48_n_0;
  wire psd_array_reg_512_767_49_49_n_0;
  wire psd_array_reg_512_767_4_4_n_0;
  wire psd_array_reg_512_767_50_50_n_0;
  wire psd_array_reg_512_767_51_51_n_0;
  wire psd_array_reg_512_767_52_52_n_0;
  wire psd_array_reg_512_767_5_5_n_0;
  wire psd_array_reg_512_767_6_6_n_0;
  wire psd_array_reg_512_767_7_7_n_0;
  wire psd_array_reg_512_767_8_8_n_0;
  wire psd_array_reg_512_767_9_9_n_0;
  wire psd_array_reg_768_1023_0_0_i_1_n_0;
  wire psd_array_reg_768_1023_0_0_n_0;
  wire psd_array_reg_768_1023_10_10_n_0;
  wire psd_array_reg_768_1023_11_11_n_0;
  wire psd_array_reg_768_1023_12_12_n_0;
  wire psd_array_reg_768_1023_13_13_n_0;
  wire psd_array_reg_768_1023_14_14_n_0;
  wire psd_array_reg_768_1023_15_15_n_0;
  wire psd_array_reg_768_1023_16_16_n_0;
  wire psd_array_reg_768_1023_17_17_n_0;
  wire psd_array_reg_768_1023_18_18_n_0;
  wire psd_array_reg_768_1023_19_19_n_0;
  wire psd_array_reg_768_1023_1_1_n_0;
  wire psd_array_reg_768_1023_20_20_n_0;
  wire psd_array_reg_768_1023_21_21_n_0;
  wire psd_array_reg_768_1023_22_22_n_0;
  wire psd_array_reg_768_1023_23_23_n_0;
  wire psd_array_reg_768_1023_24_24_n_0;
  wire psd_array_reg_768_1023_25_25_n_0;
  wire psd_array_reg_768_1023_26_26_n_0;
  wire psd_array_reg_768_1023_27_27_n_0;
  wire psd_array_reg_768_1023_28_28_n_0;
  wire psd_array_reg_768_1023_29_29_n_0;
  wire psd_array_reg_768_1023_2_2_n_0;
  wire psd_array_reg_768_1023_30_30_n_0;
  wire psd_array_reg_768_1023_31_31_n_0;
  wire psd_array_reg_768_1023_32_32_n_0;
  wire psd_array_reg_768_1023_33_33_n_0;
  wire psd_array_reg_768_1023_34_34_n_0;
  wire psd_array_reg_768_1023_35_35_n_0;
  wire psd_array_reg_768_1023_36_36_n_0;
  wire psd_array_reg_768_1023_37_37_n_0;
  wire psd_array_reg_768_1023_38_38_n_0;
  wire psd_array_reg_768_1023_39_39_n_0;
  wire psd_array_reg_768_1023_3_3_n_0;
  wire psd_array_reg_768_1023_40_40_n_0;
  wire psd_array_reg_768_1023_41_41_n_0;
  wire psd_array_reg_768_1023_42_42_n_0;
  wire psd_array_reg_768_1023_43_43_n_0;
  wire psd_array_reg_768_1023_44_44_n_0;
  wire psd_array_reg_768_1023_45_45_n_0;
  wire psd_array_reg_768_1023_46_46_n_0;
  wire psd_array_reg_768_1023_47_47_n_0;
  wire psd_array_reg_768_1023_48_48_n_0;
  wire psd_array_reg_768_1023_49_49_n_0;
  wire psd_array_reg_768_1023_4_4_n_0;
  wire psd_array_reg_768_1023_50_50_n_0;
  wire psd_array_reg_768_1023_51_51_n_0;
  wire psd_array_reg_768_1023_52_52_n_0;
  wire psd_array_reg_768_1023_5_5_n_0;
  wire psd_array_reg_768_1023_6_6_n_0;
  wire psd_array_reg_768_1023_7_7_n_0;
  wire psd_array_reg_768_1023_8_8_n_0;
  wire psd_array_reg_768_1023_9_9_n_0;
  wire [46:0]psd_avg;
  wire [46:0]psd_avg_read;
  wire psd_carry__0_i_1_n_0;
  wire psd_carry__0_i_2_n_0;
  wire psd_carry__0_i_3_n_0;
  wire psd_carry__0_i_4_n_0;
  wire psd_carry__0_n_0;
  wire psd_carry__0_n_1;
  wire psd_carry__0_n_2;
  wire psd_carry__0_n_3;
  wire [30:0]psd_carry__10_0;
  wire [47:0]psd_carry__10_1;
  wire psd_carry__10_i_1_n_0;
  wire psd_carry__10_i_2_n_0;
  wire psd_carry__10_i_3_n_0;
  wire psd_carry__10_i_4_n_0;
  wire psd_carry__10_n_1;
  wire psd_carry__10_n_2;
  wire psd_carry__10_n_3;
  wire psd_carry__1_i_1_n_0;
  wire psd_carry__1_i_2_n_0;
  wire psd_carry__1_i_3_n_0;
  wire psd_carry__1_i_4_n_0;
  wire psd_carry__1_n_0;
  wire psd_carry__1_n_1;
  wire psd_carry__1_n_2;
  wire psd_carry__1_n_3;
  wire psd_carry__2_i_1_n_0;
  wire psd_carry__2_i_2_n_0;
  wire psd_carry__2_i_3_n_0;
  wire psd_carry__2_i_4_n_0;
  wire psd_carry__2_n_0;
  wire psd_carry__2_n_1;
  wire psd_carry__2_n_2;
  wire psd_carry__2_n_3;
  wire psd_carry__3_i_1_n_0;
  wire psd_carry__3_i_2_n_0;
  wire psd_carry__3_i_3_n_0;
  wire psd_carry__3_i_4_n_0;
  wire psd_carry__3_n_0;
  wire psd_carry__3_n_1;
  wire psd_carry__3_n_2;
  wire psd_carry__3_n_3;
  wire psd_carry__4_i_1_n_0;
  wire psd_carry__4_i_2_n_0;
  wire psd_carry__4_i_3_n_0;
  wire psd_carry__4_i_4_n_0;
  wire psd_carry__4_n_0;
  wire psd_carry__4_n_1;
  wire psd_carry__4_n_2;
  wire psd_carry__4_n_3;
  wire psd_carry__5_i_1_n_0;
  wire psd_carry__5_i_2_n_0;
  wire psd_carry__5_i_3_n_0;
  wire psd_carry__5_i_4_n_0;
  wire psd_carry__5_n_0;
  wire psd_carry__5_n_1;
  wire psd_carry__5_n_2;
  wire psd_carry__5_n_3;
  wire psd_carry__6_i_1_n_0;
  wire psd_carry__6_i_2_n_0;
  wire psd_carry__6_i_3_n_0;
  wire psd_carry__6_i_4_n_0;
  wire psd_carry__6_n_0;
  wire psd_carry__6_n_1;
  wire psd_carry__6_n_2;
  wire psd_carry__6_n_3;
  wire psd_carry__7_i_1_n_0;
  wire psd_carry__7_i_2_n_0;
  wire psd_carry__7_i_3_n_0;
  wire psd_carry__7_i_4_n_0;
  wire psd_carry__7_n_0;
  wire psd_carry__7_n_1;
  wire psd_carry__7_n_2;
  wire psd_carry__7_n_3;
  wire psd_carry__8_i_1_n_0;
  wire psd_carry__8_i_2_n_0;
  wire psd_carry__8_i_3_n_0;
  wire psd_carry__8_i_4_n_0;
  wire psd_carry__8_n_0;
  wire psd_carry__8_n_1;
  wire psd_carry__8_n_2;
  wire psd_carry__8_n_3;
  wire psd_carry__9_i_1_n_0;
  wire psd_carry__9_i_2_n_0;
  wire psd_carry__9_i_3_n_0;
  wire psd_carry__9_i_4_n_0;
  wire psd_carry__9_n_0;
  wire psd_carry__9_n_1;
  wire psd_carry__9_n_2;
  wire psd_carry__9_n_3;
  wire psd_carry_i_1_n_0;
  wire psd_carry_i_2_n_0;
  wire psd_carry_i_3_n_0;
  wire psd_carry_i_4_n_0;
  wire psd_carry_n_0;
  wire psd_carry_n_1;
  wire psd_carry_n_2;
  wire psd_carry_n_3;
  wire rst_n;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire u_fft_i_3_n_0;
  wire [3:0]NLW__carry__12_CO_UNCONNECTED;
  wire [3:1]NLW__carry__12_O_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_DBITERR_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_psd_avg_array_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_psd_avg_array_reg_0_DOADO_UNCONNECTED;
  wire [3:0]NLW_psd_avg_array_reg_0_DOPADOP_UNCONNECTED;
  wire [7:0]NLW_psd_avg_array_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_psd_avg_array_reg_0_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_psd_avg_array_reg_1_DOADO_UNCONNECTED;
  wire [15:11]NLW_psd_avg_array_reg_1_DOBDO_UNCONNECTED;
  wire [1:0]NLW_psd_avg_array_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_psd_avg_array_reg_1_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_psd_carry__10_CO_UNCONNECTED;
  wire NLW_u_fft_event_data_in_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_data_out_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_frame_started_UNCONNECTED;
  wire NLW_u_fft_event_status_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_tlast_missing_UNCONNECTED;
  wire NLW_u_fft_event_tlast_unexpected_UNCONNECTED;
  wire NLW_u_fft_s_axis_config_tready_UNCONNECTED;
  wire [63:24]NLW_u_fft_m_axis_data_tdata_UNCONNECTED;
  wire [15:10]NLW_u_fft_m_axis_data_tuser_UNCONNECTED;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[3:0]),
        .O({_carry_n_4,_carry_n_5,_carry_n_6,_carry_n_7}),
        .S({_carry_i_5_n_0,_carry_i_6_n_0,_carry_i_7_n_0,_carry_i_8_n_0}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[7:4]),
        .O({_carry__0_n_4,_carry__0_n_5,_carry__0_n_6,_carry__0_n_7}),
        .S({_carry__0_i_5_n_0,_carry__0_i_6_n_0,_carry__0_i_7_n_0,_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__0_i_1
       (.I0(psd_array_reg_768_1023_7_7_n_0),
        .I1(psd_array_reg_512_767_7_7_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_7_7_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_7_7_n_0),
        .O(p_1_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__0_i_2
       (.I0(psd_array_reg_768_1023_6_6_n_0),
        .I1(psd_array_reg_512_767_6_6_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_6_6_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_6_6_n_0),
        .O(p_1_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__0_i_3
       (.I0(psd_array_reg_768_1023_5_5_n_0),
        .I1(psd_array_reg_512_767_5_5_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_5_5_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_5_5_n_0),
        .O(p_1_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__0_i_4
       (.I0(psd_array_reg_768_1023_4_4_n_0),
        .I1(psd_array_reg_512_767_4_4_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_4_4_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_4_4_n_0),
        .O(p_1_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_5
       (.I0(p_1_out[7]),
        .I1(p_1_in[7]),
        .O(_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_6
       (.I0(p_1_out[6]),
        .I1(p_1_in[6]),
        .O(_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_7
       (.I0(p_1_out[5]),
        .I1(p_1_in[5]),
        .O(_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_8
       (.I0(p_1_out[4]),
        .I1(p_1_in[4]),
        .O(_carry__0_i_8_n_0));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[11:8]),
        .O({_carry__1_n_4,_carry__1_n_5,_carry__1_n_6,_carry__1_n_7}),
        .S({_carry__1_i_5_n_0,_carry__1_i_6_n_0,_carry__1_i_7_n_0,_carry__1_i_8_n_0}));
  CARRY4 _carry__10
       (.CI(_carry__9_n_0),
        .CO({_carry__10_n_0,_carry__10_n_1,_carry__10_n_2,_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_in[47],p_1_out[46:44]}),
        .O({_carry__10_n_4,_carry__10_n_5,_carry__10_n_6,_carry__10_n_7}),
        .S({_carry__10_i_4_n_0,_carry__10_i_5_n_0,_carry__10_i_6_n_0,_carry__10_i_7_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__10_i_1
       (.I0(psd_array_reg_768_1023_46_46_n_0),
        .I1(psd_array_reg_512_767_46_46_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_46_46_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_46_46_n_0),
        .O(p_1_out[46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__10_i_2
       (.I0(psd_array_reg_768_1023_45_45_n_0),
        .I1(psd_array_reg_512_767_45_45_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_45_45_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_45_45_n_0),
        .O(p_1_out[45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__10_i_3
       (.I0(psd_array_reg_768_1023_44_44_n_0),
        .I1(psd_array_reg_512_767_44_44_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_44_44_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_44_44_n_0),
        .O(p_1_out[44]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__10_i_4
       (.I0(p_1_in[47]),
        .I1(p_1_out[47]),
        .O(_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__10_i_5
       (.I0(p_1_out[46]),
        .I1(p_1_in[46]),
        .O(_carry__10_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__10_i_6
       (.I0(p_1_out[45]),
        .I1(p_1_in[45]),
        .O(_carry__10_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__10_i_7
       (.I0(p_1_out[44]),
        .I1(p_1_in[44]),
        .O(_carry__10_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__10_i_8
       (.I0(psd_array_reg_768_1023_47_47_n_0),
        .I1(psd_array_reg_512_767_47_47_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_47_47_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_47_47_n_0),
        .O(p_1_out[47]));
  CARRY4 _carry__11
       (.CI(_carry__10_n_0),
        .CO({_carry__11_n_0,_carry__11_n_1,_carry__11_n_2,_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out[50:48],_carry__11_i_4_n_0}),
        .O({_carry__11_n_4,_carry__11_n_5,_carry__11_n_6,_carry__11_n_7}),
        .S({_carry__11_i_5_n_0,_carry__11_i_6_n_0,_carry__11_i_7_n_0,_carry__11_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__11_i_1
       (.I0(psd_array_reg_768_1023_50_50_n_0),
        .I1(psd_array_reg_512_767_50_50_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_50_50_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_50_50_n_0),
        .O(p_1_out[50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__11_i_2
       (.I0(psd_array_reg_768_1023_49_49_n_0),
        .I1(psd_array_reg_512_767_49_49_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_49_49_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_49_49_n_0),
        .O(p_1_out[49]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__11_i_3
       (.I0(psd_array_reg_768_1023_48_48_n_0),
        .I1(psd_array_reg_512_767_48_48_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_48_48_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_48_48_n_0),
        .O(p_1_out[48]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__11_i_4
       (.I0(p_1_in[47]),
        .O(_carry__11_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__11_i_5
       (.I0(p_1_out[50]),
        .I1(p_1_out[51]),
        .O(_carry__11_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__11_i_6
       (.I0(p_1_out[49]),
        .I1(p_1_out[50]),
        .O(_carry__11_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__11_i_7
       (.I0(p_1_out[48]),
        .I1(p_1_out[49]),
        .O(_carry__11_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__11_i_8
       (.I0(p_1_in[47]),
        .I1(p_1_out[48]),
        .O(_carry__11_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__11_i_9
       (.I0(psd_array_reg_768_1023_51_51_n_0),
        .I1(psd_array_reg_512_767_51_51_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_51_51_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_51_51_n_0),
        .O(p_1_out[51]));
  CARRY4 _carry__12
       (.CI(_carry__11_n_0),
        .CO(NLW__carry__12_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW__carry__12_O_UNCONNECTED[3:1],_carry__12_n_7}),
        .S({1'b0,1'b0,1'b0,_carry__12_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__12_i_1
       (.I0(p_1_out[51]),
        .I1(p_1_out[52]),
        .O(_carry__12_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__12_i_2
       (.I0(psd_array_reg_768_1023_52_52_n_0),
        .I1(psd_array_reg_512_767_52_52_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_52_52_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_52_52_n_0),
        .O(p_1_out[52]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__1_i_1
       (.I0(psd_array_reg_768_1023_11_11_n_0),
        .I1(psd_array_reg_512_767_11_11_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_11_11_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_11_11_n_0),
        .O(p_1_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__1_i_2
       (.I0(psd_array_reg_768_1023_10_10_n_0),
        .I1(psd_array_reg_512_767_10_10_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_10_10_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_10_10_n_0),
        .O(p_1_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__1_i_3
       (.I0(psd_array_reg_768_1023_9_9_n_0),
        .I1(psd_array_reg_512_767_9_9_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_9_9_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_9_9_n_0),
        .O(p_1_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__1_i_4
       (.I0(psd_array_reg_768_1023_8_8_n_0),
        .I1(psd_array_reg_512_767_8_8_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_8_8_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_8_8_n_0),
        .O(p_1_out[8]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__1_i_5
       (.I0(p_1_out[11]),
        .I1(p_1_in[11]),
        .O(_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__1_i_6
       (.I0(p_1_out[10]),
        .I1(p_1_in[10]),
        .O(_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__1_i_7
       (.I0(p_1_out[9]),
        .I1(p_1_in[9]),
        .O(_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__1_i_8
       (.I0(p_1_out[8]),
        .I1(p_1_in[8]),
        .O(_carry__1_i_8_n_0));
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[15:12]),
        .O({_carry__2_n_4,_carry__2_n_5,_carry__2_n_6,_carry__2_n_7}),
        .S({_carry__2_i_5_n_0,_carry__2_i_6_n_0,_carry__2_i_7_n_0,_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__2_i_1
       (.I0(psd_array_reg_768_1023_15_15_n_0),
        .I1(psd_array_reg_512_767_15_15_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_15_15_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_15_15_n_0),
        .O(p_1_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__2_i_2
       (.I0(psd_array_reg_768_1023_14_14_n_0),
        .I1(psd_array_reg_512_767_14_14_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_14_14_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_14_14_n_0),
        .O(p_1_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__2_i_3
       (.I0(psd_array_reg_768_1023_13_13_n_0),
        .I1(psd_array_reg_512_767_13_13_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_13_13_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_13_13_n_0),
        .O(p_1_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__2_i_4
       (.I0(psd_array_reg_768_1023_12_12_n_0),
        .I1(psd_array_reg_512_767_12_12_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_12_12_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_12_12_n_0),
        .O(p_1_out[12]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__2_i_5
       (.I0(p_1_out[15]),
        .I1(p_1_in[15]),
        .O(_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__2_i_6
       (.I0(p_1_out[14]),
        .I1(p_1_in[14]),
        .O(_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__2_i_7
       (.I0(p_1_out[13]),
        .I1(p_1_in[13]),
        .O(_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__2_i_8
       (.I0(p_1_out[12]),
        .I1(p_1_in[12]),
        .O(_carry__2_i_8_n_0));
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO({_carry__3_n_0,_carry__3_n_1,_carry__3_n_2,_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[19:16]),
        .O({_carry__3_n_4,_carry__3_n_5,_carry__3_n_6,_carry__3_n_7}),
        .S({_carry__3_i_5_n_0,_carry__3_i_6_n_0,_carry__3_i_7_n_0,_carry__3_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__3_i_1
       (.I0(psd_array_reg_768_1023_19_19_n_0),
        .I1(psd_array_reg_512_767_19_19_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_19_19_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_19_19_n_0),
        .O(p_1_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__3_i_2
       (.I0(psd_array_reg_768_1023_18_18_n_0),
        .I1(psd_array_reg_512_767_18_18_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_18_18_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_18_18_n_0),
        .O(p_1_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__3_i_3
       (.I0(psd_array_reg_768_1023_17_17_n_0),
        .I1(psd_array_reg_512_767_17_17_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_17_17_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_17_17_n_0),
        .O(p_1_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__3_i_4
       (.I0(psd_array_reg_768_1023_16_16_n_0),
        .I1(psd_array_reg_512_767_16_16_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_16_16_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_16_16_n_0),
        .O(p_1_out[16]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__3_i_5
       (.I0(p_1_out[19]),
        .I1(p_1_in[19]),
        .O(_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__3_i_6
       (.I0(p_1_out[18]),
        .I1(p_1_in[18]),
        .O(_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__3_i_7
       (.I0(p_1_out[17]),
        .I1(p_1_in[17]),
        .O(_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__3_i_8
       (.I0(p_1_out[16]),
        .I1(p_1_in[16]),
        .O(_carry__3_i_8_n_0));
  CARRY4 _carry__4
       (.CI(_carry__3_n_0),
        .CO({_carry__4_n_0,_carry__4_n_1,_carry__4_n_2,_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[23:20]),
        .O({_carry__4_n_4,_carry__4_n_5,_carry__4_n_6,_carry__4_n_7}),
        .S({_carry__4_i_5_n_0,_carry__4_i_6_n_0,_carry__4_i_7_n_0,_carry__4_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__4_i_1
       (.I0(psd_array_reg_768_1023_23_23_n_0),
        .I1(psd_array_reg_512_767_23_23_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_23_23_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_23_23_n_0),
        .O(p_1_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__4_i_2
       (.I0(psd_array_reg_768_1023_22_22_n_0),
        .I1(psd_array_reg_512_767_22_22_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_22_22_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_22_22_n_0),
        .O(p_1_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__4_i_3
       (.I0(psd_array_reg_768_1023_21_21_n_0),
        .I1(psd_array_reg_512_767_21_21_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_21_21_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_21_21_n_0),
        .O(p_1_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__4_i_4
       (.I0(psd_array_reg_768_1023_20_20_n_0),
        .I1(psd_array_reg_512_767_20_20_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_20_20_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_20_20_n_0),
        .O(p_1_out[20]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__4_i_5
       (.I0(p_1_out[23]),
        .I1(p_1_in[23]),
        .O(_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__4_i_6
       (.I0(p_1_out[22]),
        .I1(p_1_in[22]),
        .O(_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__4_i_7
       (.I0(p_1_out[21]),
        .I1(p_1_in[21]),
        .O(_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__4_i_8
       (.I0(p_1_out[20]),
        .I1(p_1_in[20]),
        .O(_carry__4_i_8_n_0));
  CARRY4 _carry__5
       (.CI(_carry__4_n_0),
        .CO({_carry__5_n_0,_carry__5_n_1,_carry__5_n_2,_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[27:24]),
        .O({_carry__5_n_4,_carry__5_n_5,_carry__5_n_6,_carry__5_n_7}),
        .S({_carry__5_i_5_n_0,_carry__5_i_6_n_0,_carry__5_i_7_n_0,_carry__5_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__5_i_1
       (.I0(psd_array_reg_768_1023_27_27_n_0),
        .I1(psd_array_reg_512_767_27_27_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_27_27_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_27_27_n_0),
        .O(p_1_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__5_i_2
       (.I0(psd_array_reg_768_1023_26_26_n_0),
        .I1(psd_array_reg_512_767_26_26_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_26_26_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_26_26_n_0),
        .O(p_1_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__5_i_3
       (.I0(psd_array_reg_768_1023_25_25_n_0),
        .I1(psd_array_reg_512_767_25_25_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_25_25_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_25_25_n_0),
        .O(p_1_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__5_i_4
       (.I0(psd_array_reg_768_1023_24_24_n_0),
        .I1(psd_array_reg_512_767_24_24_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_24_24_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_24_24_n_0),
        .O(p_1_out[24]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__5_i_5
       (.I0(p_1_out[27]),
        .I1(p_1_in[27]),
        .O(_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__5_i_6
       (.I0(p_1_out[26]),
        .I1(p_1_in[26]),
        .O(_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__5_i_7
       (.I0(p_1_out[25]),
        .I1(p_1_in[25]),
        .O(_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__5_i_8
       (.I0(p_1_out[24]),
        .I1(p_1_in[24]),
        .O(_carry__5_i_8_n_0));
  CARRY4 _carry__6
       (.CI(_carry__5_n_0),
        .CO({_carry__6_n_0,_carry__6_n_1,_carry__6_n_2,_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[31:28]),
        .O({_carry__6_n_4,_carry__6_n_5,_carry__6_n_6,_carry__6_n_7}),
        .S({_carry__6_i_5_n_0,_carry__6_i_6_n_0,_carry__6_i_7_n_0,_carry__6_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__6_i_1
       (.I0(psd_array_reg_768_1023_31_31_n_0),
        .I1(psd_array_reg_512_767_31_31_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_31_31_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_31_31_n_0),
        .O(p_1_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__6_i_2
       (.I0(psd_array_reg_768_1023_30_30_n_0),
        .I1(psd_array_reg_512_767_30_30_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_30_30_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_30_30_n_0),
        .O(p_1_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__6_i_3
       (.I0(psd_array_reg_768_1023_29_29_n_0),
        .I1(psd_array_reg_512_767_29_29_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_29_29_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_29_29_n_0),
        .O(p_1_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__6_i_4
       (.I0(psd_array_reg_768_1023_28_28_n_0),
        .I1(psd_array_reg_512_767_28_28_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_28_28_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_28_28_n_0),
        .O(p_1_out[28]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__6_i_5
       (.I0(p_1_out[31]),
        .I1(p_1_in[31]),
        .O(_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__6_i_6
       (.I0(p_1_out[30]),
        .I1(p_1_in[30]),
        .O(_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__6_i_7
       (.I0(p_1_out[29]),
        .I1(p_1_in[29]),
        .O(_carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__6_i_8
       (.I0(p_1_out[28]),
        .I1(p_1_in[28]),
        .O(_carry__6_i_8_n_0));
  CARRY4 _carry__7
       (.CI(_carry__6_n_0),
        .CO({_carry__7_n_0,_carry__7_n_1,_carry__7_n_2,_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[35:32]),
        .O({_carry__7_n_4,_carry__7_n_5,_carry__7_n_6,_carry__7_n_7}),
        .S({_carry__7_i_5_n_0,_carry__7_i_6_n_0,_carry__7_i_7_n_0,_carry__7_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__7_i_1
       (.I0(psd_array_reg_768_1023_35_35_n_0),
        .I1(psd_array_reg_512_767_35_35_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_35_35_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_35_35_n_0),
        .O(p_1_out[35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__7_i_2
       (.I0(psd_array_reg_768_1023_34_34_n_0),
        .I1(psd_array_reg_512_767_34_34_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_34_34_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_34_34_n_0),
        .O(p_1_out[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__7_i_3
       (.I0(psd_array_reg_768_1023_33_33_n_0),
        .I1(psd_array_reg_512_767_33_33_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_33_33_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_33_33_n_0),
        .O(p_1_out[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__7_i_4
       (.I0(psd_array_reg_768_1023_32_32_n_0),
        .I1(psd_array_reg_512_767_32_32_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_32_32_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_32_32_n_0),
        .O(p_1_out[32]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__7_i_5
       (.I0(p_1_out[35]),
        .I1(p_1_in[35]),
        .O(_carry__7_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__7_i_6
       (.I0(p_1_out[34]),
        .I1(p_1_in[34]),
        .O(_carry__7_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__7_i_7
       (.I0(p_1_out[33]),
        .I1(p_1_in[33]),
        .O(_carry__7_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__7_i_8
       (.I0(p_1_out[32]),
        .I1(p_1_in[32]),
        .O(_carry__7_i_8_n_0));
  CARRY4 _carry__8
       (.CI(_carry__7_n_0),
        .CO({_carry__8_n_0,_carry__8_n_1,_carry__8_n_2,_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[39:36]),
        .O({_carry__8_n_4,_carry__8_n_5,_carry__8_n_6,_carry__8_n_7}),
        .S({_carry__8_i_5_n_0,_carry__8_i_6_n_0,_carry__8_i_7_n_0,_carry__8_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__8_i_1
       (.I0(psd_array_reg_768_1023_39_39_n_0),
        .I1(psd_array_reg_512_767_39_39_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_39_39_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_39_39_n_0),
        .O(p_1_out[39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__8_i_2
       (.I0(psd_array_reg_768_1023_38_38_n_0),
        .I1(psd_array_reg_512_767_38_38_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_38_38_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_38_38_n_0),
        .O(p_1_out[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__8_i_3
       (.I0(psd_array_reg_768_1023_37_37_n_0),
        .I1(psd_array_reg_512_767_37_37_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_37_37_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_37_37_n_0),
        .O(p_1_out[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__8_i_4
       (.I0(psd_array_reg_768_1023_36_36_n_0),
        .I1(psd_array_reg_512_767_36_36_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_36_36_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_36_36_n_0),
        .O(p_1_out[36]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__8_i_5
       (.I0(p_1_out[39]),
        .I1(p_1_in[39]),
        .O(_carry__8_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__8_i_6
       (.I0(p_1_out[38]),
        .I1(p_1_in[38]),
        .O(_carry__8_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__8_i_7
       (.I0(p_1_out[37]),
        .I1(p_1_in[37]),
        .O(_carry__8_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__8_i_8
       (.I0(p_1_out[36]),
        .I1(p_1_in[36]),
        .O(_carry__8_i_8_n_0));
  CARRY4 _carry__9
       (.CI(_carry__8_n_0),
        .CO({_carry__9_n_0,_carry__9_n_1,_carry__9_n_2,_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_out[43:40]),
        .O({_carry__9_n_4,_carry__9_n_5,_carry__9_n_6,_carry__9_n_7}),
        .S({_carry__9_i_5_n_0,_carry__9_i_6_n_0,_carry__9_i_7_n_0,_carry__9_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__9_i_1
       (.I0(psd_array_reg_768_1023_43_43_n_0),
        .I1(psd_array_reg_512_767_43_43_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_43_43_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_43_43_n_0),
        .O(p_1_out[43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__9_i_2
       (.I0(psd_array_reg_768_1023_42_42_n_0),
        .I1(psd_array_reg_512_767_42_42_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_42_42_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_42_42_n_0),
        .O(p_1_out[42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__9_i_3
       (.I0(psd_array_reg_768_1023_41_41_n_0),
        .I1(psd_array_reg_512_767_41_41_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_41_41_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_41_41_n_0),
        .O(p_1_out[41]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry__9_i_4
       (.I0(psd_array_reg_768_1023_40_40_n_0),
        .I1(psd_array_reg_512_767_40_40_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_40_40_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_40_40_n_0),
        .O(p_1_out[40]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__9_i_5
       (.I0(p_1_out[43]),
        .I1(p_1_in[43]),
        .O(_carry__9_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__9_i_6
       (.I0(p_1_out[42]),
        .I1(p_1_in[42]),
        .O(_carry__9_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__9_i_7
       (.I0(p_1_out[41]),
        .I1(p_1_in[41]),
        .O(_carry__9_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__9_i_8
       (.I0(p_1_out[40]),
        .I1(p_1_in[40]),
        .O(_carry__9_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry_i_1
       (.I0(psd_array_reg_768_1023_3_3_n_0),
        .I1(psd_array_reg_512_767_3_3_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_3_3_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_3_3_n_0),
        .O(p_1_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry_i_2
       (.I0(psd_array_reg_768_1023_2_2_n_0),
        .I1(psd_array_reg_512_767_2_2_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_2_2_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_2_2_n_0),
        .O(p_1_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry_i_3
       (.I0(psd_array_reg_768_1023_1_1_n_0),
        .I1(psd_array_reg_512_767_1_1_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_1_1_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_1_1_n_0),
        .O(p_1_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    _carry_i_4
       (.I0(psd_array_reg_768_1023_0_0_n_0),
        .I1(psd_array_reg_512_767_0_0_n_0),
        .I2(fft_m_data_tuser[9]),
        .I3(psd_array_reg_256_511_0_0_n_0),
        .I4(fft_m_data_tuser[8]),
        .I5(psd_array_reg_0_255_0_0_n_0),
        .O(p_1_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_5
       (.I0(p_1_out[3]),
        .I1(p_1_in[3]),
        .O(_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_6
       (.I0(p_1_out[2]),
        .I1(p_1_in[2]),
        .O(_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_7
       (.I0(p_1_out[1]),
        .I1(p_1_in[1]),
        .O(_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_8
       (.I0(p_1_out[0]),
        .I1(p_1_in[0]),
        .O(_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_m_fft[0]_i_1 
       (.I0(cnt_m_fft_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_m_fft[1]_i_1 
       (.I0(cnt_m_fft_reg[0]),
        .I1(cnt_m_fft_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_m_fft[2]_i_1 
       (.I0(cnt_m_fft_reg[1]),
        .I1(cnt_m_fft_reg[0]),
        .I2(cnt_m_fft_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_m_fft[3]_i_1 
       (.I0(cnt_m_fft_reg[2]),
        .I1(cnt_m_fft_reg[0]),
        .I2(cnt_m_fft_reg[1]),
        .I3(cnt_m_fft_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_m_fft[4]_i_1 
       (.I0(cnt_m_fft_reg[3]),
        .I1(cnt_m_fft_reg[1]),
        .I2(cnt_m_fft_reg[0]),
        .I3(cnt_m_fft_reg[2]),
        .I4(cnt_m_fft_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_m_fft[5]_i_1 
       (.I0(cnt_m_fft_reg[4]),
        .I1(cnt_m_fft_reg[2]),
        .I2(cnt_m_fft_reg[0]),
        .I3(cnt_m_fft_reg[1]),
        .I4(cnt_m_fft_reg[3]),
        .I5(cnt_m_fft_reg[5]),
        .O(p_0_in[5]));
  FDCE \cnt_m_fft_reg[0] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(cnt_m_fft_reg[0]));
  FDCE \cnt_m_fft_reg[1] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(cnt_m_fft_reg[1]));
  FDCE \cnt_m_fft_reg[2] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(cnt_m_fft_reg[2]));
  FDCE \cnt_m_fft_reg[3] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(cnt_m_fft_reg[3]));
  FDCE \cnt_m_fft_reg[4] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(cnt_m_fft_reg[4]));
  FDCE \cnt_m_fft_reg[5] 
       (.C(clk),
        .CE(fft_m_data_tlast),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(cnt_m_fft_reg[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_s[0]_i_1 
       (.I0(cnt_s_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_s[1]_i_1 
       (.I0(cnt_s_reg[0]),
        .I1(cnt_s_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_s[2]_i_1 
       (.I0(cnt_s_reg[1]),
        .I1(cnt_s_reg[0]),
        .I2(cnt_s_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_s[3]_i_1 
       (.I0(cnt_s_reg[2]),
        .I1(cnt_s_reg[0]),
        .I2(cnt_s_reg[1]),
        .I3(cnt_s_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_s[4]_i_1 
       (.I0(cnt_s_reg[3]),
        .I1(cnt_s_reg[1]),
        .I2(cnt_s_reg[0]),
        .I3(cnt_s_reg[2]),
        .I4(cnt_s_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_s[5]_i_1 
       (.I0(cnt_s_reg[4]),
        .I1(cnt_s_reg[2]),
        .I2(cnt_s_reg[0]),
        .I3(cnt_s_reg[1]),
        .I4(cnt_s_reg[3]),
        .I5(cnt_s_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_s[6]_i_1 
       (.I0(\cnt_s[9]_i_2_n_0 ),
        .I1(cnt_s_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt_s[7]_i_1 
       (.I0(cnt_s_reg[6]),
        .I1(\cnt_s[9]_i_2_n_0 ),
        .I2(cnt_s_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \cnt_s[8]_i_1 
       (.I0(cnt_s_reg[7]),
        .I1(\cnt_s[9]_i_2_n_0 ),
        .I2(cnt_s_reg[6]),
        .I3(cnt_s_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \cnt_s[9]_i_1 
       (.I0(cnt_s_reg[8]),
        .I1(cnt_s_reg[6]),
        .I2(\cnt_s[9]_i_2_n_0 ),
        .I3(cnt_s_reg[7]),
        .I4(cnt_s_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_s[9]_i_2 
       (.I0(cnt_s_reg[4]),
        .I1(cnt_s_reg[2]),
        .I2(cnt_s_reg[0]),
        .I3(cnt_s_reg[1]),
        .I4(cnt_s_reg[3]),
        .I5(cnt_s_reg[5]),
        .O(\cnt_s[9]_i_2_n_0 ));
  FDCE \cnt_s_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(cnt_s_reg[0]));
  FDCE \cnt_s_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(cnt_s_reg[1]));
  FDCE \cnt_s_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(cnt_s_reg[2]));
  FDCE \cnt_s_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(cnt_s_reg[3]));
  FDCE \cnt_s_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(cnt_s_reg[4]));
  FDCE \cnt_s_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(cnt_s_reg[5]));
  FDCE \cnt_s_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(cnt_s_reg[6]));
  FDCE \cnt_s_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(cnt_s_reg[7]));
  FDCE \cnt_s_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(cnt_s_reg[8]));
  FDCE \cnt_s_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(cnt_s_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \fft_s_data_tdata[31]_i_2 
       (.I0(rst_n),
        .O(\fft_s_data_tdata[31]_i_2_n_0 ));
  FDCE \fft_s_data_tdata_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[0]),
        .Q(fft_s_data_tdata[0]));
  FDCE \fft_s_data_tdata_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[10]),
        .Q(fft_s_data_tdata[10]));
  FDCE \fft_s_data_tdata_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[11]),
        .Q(fft_s_data_tdata[11]));
  FDCE \fft_s_data_tdata_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[12]),
        .Q(fft_s_data_tdata[12]));
  FDCE \fft_s_data_tdata_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[13]),
        .Q(fft_s_data_tdata[13]));
  FDCE \fft_s_data_tdata_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[14]),
        .Q(fft_s_data_tdata[14]));
  FDCE \fft_s_data_tdata_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[15]),
        .Q(fft_s_data_tdata[15]));
  FDCE \fft_s_data_tdata_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[16]),
        .Q(fft_s_data_tdata[16]));
  FDCE \fft_s_data_tdata_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[17]),
        .Q(fft_s_data_tdata[17]));
  FDCE \fft_s_data_tdata_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[18]),
        .Q(fft_s_data_tdata[18]));
  FDCE \fft_s_data_tdata_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[19]),
        .Q(fft_s_data_tdata[19]));
  FDCE \fft_s_data_tdata_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[1]),
        .Q(fft_s_data_tdata[1]));
  FDCE \fft_s_data_tdata_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[20]),
        .Q(fft_s_data_tdata[20]));
  FDCE \fft_s_data_tdata_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[21]),
        .Q(fft_s_data_tdata[21]));
  FDCE \fft_s_data_tdata_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[22]),
        .Q(fft_s_data_tdata[22]));
  FDCE \fft_s_data_tdata_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[23]),
        .Q(fft_s_data_tdata[23]));
  FDCE \fft_s_data_tdata_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[24]),
        .Q(fft_s_data_tdata[24]));
  FDCE \fft_s_data_tdata_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[25]),
        .Q(fft_s_data_tdata[25]));
  FDCE \fft_s_data_tdata_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[26]),
        .Q(fft_s_data_tdata[26]));
  FDCE \fft_s_data_tdata_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[27]),
        .Q(fft_s_data_tdata[27]));
  FDCE \fft_s_data_tdata_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[28]),
        .Q(fft_s_data_tdata[28]));
  FDCE \fft_s_data_tdata_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[29]),
        .Q(fft_s_data_tdata[29]));
  FDCE \fft_s_data_tdata_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[2]),
        .Q(fft_s_data_tdata[2]));
  FDCE \fft_s_data_tdata_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[30]),
        .Q(fft_s_data_tdata[30]));
  FDCE \fft_s_data_tdata_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[31]),
        .Q(fft_s_data_tdata[31]));
  FDCE \fft_s_data_tdata_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[3]),
        .Q(fft_s_data_tdata[3]));
  FDCE \fft_s_data_tdata_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[4]),
        .Q(fft_s_data_tdata[4]));
  FDCE \fft_s_data_tdata_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[5]),
        .Q(fft_s_data_tdata[5]));
  FDCE \fft_s_data_tdata_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[6]),
        .Q(fft_s_data_tdata[6]));
  FDCE \fft_s_data_tdata_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[7]),
        .Q(fft_s_data_tdata[7]));
  FDCE \fft_s_data_tdata_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[8]),
        .Q(fft_s_data_tdata[8]));
  FDCE \fft_s_data_tdata_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\fft_s_data_tdata[31]_i_2_n_0 ),
        .D(D[9]),
        .Q(fft_s_data_tdata[9]));
  LUT2 #(
    .INIT(4'h8)) 
    m_valid_INST_0
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .O(m_valid));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_valid_INST_0_i_1
       (.I0(cnt_m_fft_reg[5]),
        .I1(cnt_m_fft_reg[4]),
        .I2(cnt_m_fft_reg[2]),
        .I3(cnt_m_fft_reg[0]),
        .I4(cnt_m_fft_reg[1]),
        .I5(cnt_m_fft_reg[3]),
        .O(m_valid_INST_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S psd_array_reg_0_255_0_0
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[0]),
        .O(psd_array_reg_0_255_0_0_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_0_0_i_1
       (.I0(_carry_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[0]),
        .O(p_2_in[0]));
  LUT3 #(
    .INIT(8'h02)) 
    psd_array_reg_0_255_0_0_i_2
       (.I0(m_axis_data_tvalid),
        .I1(fft_m_data_tuser[8]),
        .I2(fft_m_data_tuser[9]),
        .O(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    psd_array_reg_0_255_0_0_i_3
       (.I0(cnt_m_fft_reg[4]),
        .I1(cnt_m_fft_reg[5]),
        .I2(cnt_m_fft_reg[2]),
        .I3(cnt_m_fft_reg[3]),
        .I4(cnt_m_fft_reg[1]),
        .I5(cnt_m_fft_reg[0]),
        .O(psd_array_reg_0_255_0_0_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S psd_array_reg_0_255_10_10
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[10]),
        .O(psd_array_reg_0_255_10_10_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_10_10_i_1
       (.I0(_carry__1_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[10]),
        .O(p_2_in[10]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S psd_array_reg_0_255_11_11
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[11]),
        .O(psd_array_reg_0_255_11_11_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_11_11_i_1
       (.I0(_carry__1_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[11]),
        .O(p_2_in[11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S psd_array_reg_0_255_12_12
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[12]),
        .O(psd_array_reg_0_255_12_12_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_12_12_i_1
       (.I0(_carry__2_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[12]),
        .O(p_2_in[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S psd_array_reg_0_255_13_13
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[13]),
        .O(psd_array_reg_0_255_13_13_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_13_13_i_1
       (.I0(_carry__2_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[13]),
        .O(p_2_in[13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S psd_array_reg_0_255_14_14
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[14]),
        .O(psd_array_reg_0_255_14_14_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_14_14_i_1
       (.I0(_carry__2_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[14]),
        .O(p_2_in[14]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S psd_array_reg_0_255_15_15
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[15]),
        .O(psd_array_reg_0_255_15_15_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_15_15_i_1
       (.I0(_carry__2_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[15]),
        .O(p_2_in[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S psd_array_reg_0_255_16_16
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[16]),
        .O(psd_array_reg_0_255_16_16_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_16_16_i_1
       (.I0(_carry__3_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[16]),
        .O(p_2_in[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S psd_array_reg_0_255_17_17
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[17]),
        .O(psd_array_reg_0_255_17_17_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_17_17_i_1
       (.I0(_carry__3_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[17]),
        .O(p_2_in[17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S psd_array_reg_0_255_18_18
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[18]),
        .O(psd_array_reg_0_255_18_18_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_18_18_i_1
       (.I0(_carry__3_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[18]),
        .O(p_2_in[18]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S psd_array_reg_0_255_19_19
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[19]),
        .O(psd_array_reg_0_255_19_19_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_19_19_i_1
       (.I0(_carry__3_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[19]),
        .O(p_2_in[19]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S psd_array_reg_0_255_1_1
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[1]),
        .O(psd_array_reg_0_255_1_1_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_1_1_i_1
       (.I0(_carry_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[1]),
        .O(p_2_in[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S psd_array_reg_0_255_20_20
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[20]),
        .O(psd_array_reg_0_255_20_20_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_20_20_i_1
       (.I0(_carry__4_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[20]),
        .O(p_2_in[20]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S psd_array_reg_0_255_21_21
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[21]),
        .O(psd_array_reg_0_255_21_21_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_21_21_i_1
       (.I0(_carry__4_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[21]),
        .O(p_2_in[21]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S psd_array_reg_0_255_22_22
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[22]),
        .O(psd_array_reg_0_255_22_22_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_22_22_i_1
       (.I0(_carry__4_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[22]),
        .O(p_2_in[22]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S psd_array_reg_0_255_23_23
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[23]),
        .O(psd_array_reg_0_255_23_23_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_23_23_i_1
       (.I0(_carry__4_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[23]),
        .O(p_2_in[23]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S psd_array_reg_0_255_24_24
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[24]),
        .O(psd_array_reg_0_255_24_24_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_24_24_i_1
       (.I0(_carry__5_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[24]),
        .O(p_2_in[24]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S psd_array_reg_0_255_25_25
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[25]),
        .O(psd_array_reg_0_255_25_25_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_25_25_i_1
       (.I0(_carry__5_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[25]),
        .O(p_2_in[25]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S psd_array_reg_0_255_26_26
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[26]),
        .O(psd_array_reg_0_255_26_26_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_26_26_i_1
       (.I0(_carry__5_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[26]),
        .O(p_2_in[26]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S psd_array_reg_0_255_27_27
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[27]),
        .O(psd_array_reg_0_255_27_27_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_27_27_i_1
       (.I0(_carry__5_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[27]),
        .O(p_2_in[27]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S psd_array_reg_0_255_28_28
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[28]),
        .O(psd_array_reg_0_255_28_28_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_28_28_i_1
       (.I0(_carry__6_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[28]),
        .O(p_2_in[28]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S psd_array_reg_0_255_29_29
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[29]),
        .O(psd_array_reg_0_255_29_29_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_29_29_i_1
       (.I0(_carry__6_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[29]),
        .O(p_2_in[29]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S psd_array_reg_0_255_2_2
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[2]),
        .O(psd_array_reg_0_255_2_2_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_2_2_i_1
       (.I0(_carry_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[2]),
        .O(p_2_in[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S psd_array_reg_0_255_30_30
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[30]),
        .O(psd_array_reg_0_255_30_30_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_30_30_i_1
       (.I0(_carry__6_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[30]),
        .O(p_2_in[30]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S psd_array_reg_0_255_31_31
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[31]),
        .O(psd_array_reg_0_255_31_31_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_31_31_i_1
       (.I0(_carry__6_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[31]),
        .O(p_2_in[31]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM256X1S psd_array_reg_0_255_32_32
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[32]),
        .O(psd_array_reg_0_255_32_32_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_32_32_i_1
       (.I0(_carry__7_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[32]),
        .O(p_2_in[32]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM256X1S psd_array_reg_0_255_33_33
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[33]),
        .O(psd_array_reg_0_255_33_33_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_33_33_i_1
       (.I0(_carry__7_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[33]),
        .O(p_2_in[33]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM256X1S psd_array_reg_0_255_34_34
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[34]),
        .O(psd_array_reg_0_255_34_34_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_34_34_i_1
       (.I0(_carry__7_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[34]),
        .O(p_2_in[34]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM256X1S psd_array_reg_0_255_35_35
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[35]),
        .O(psd_array_reg_0_255_35_35_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_35_35_i_1
       (.I0(_carry__7_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[35]),
        .O(p_2_in[35]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM256X1S psd_array_reg_0_255_36_36
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[36]),
        .O(psd_array_reg_0_255_36_36_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_36_36_i_1
       (.I0(_carry__8_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[36]),
        .O(p_2_in[36]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM256X1S psd_array_reg_0_255_37_37
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[37]),
        .O(psd_array_reg_0_255_37_37_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_37_37_i_1
       (.I0(_carry__8_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[37]),
        .O(p_2_in[37]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM256X1S psd_array_reg_0_255_38_38
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[38]),
        .O(psd_array_reg_0_255_38_38_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_38_38_i_1
       (.I0(_carry__8_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[38]),
        .O(p_2_in[38]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM256X1S psd_array_reg_0_255_39_39
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[39]),
        .O(psd_array_reg_0_255_39_39_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_39_39_i_1
       (.I0(_carry__8_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[39]),
        .O(p_2_in[39]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S psd_array_reg_0_255_3_3
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[3]),
        .O(psd_array_reg_0_255_3_3_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_3_3_i_1
       (.I0(_carry_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[3]),
        .O(p_2_in[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM256X1S psd_array_reg_0_255_40_40
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[40]),
        .O(psd_array_reg_0_255_40_40_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_40_40_i_1
       (.I0(_carry__9_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[40]),
        .O(p_2_in[40]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM256X1S psd_array_reg_0_255_41_41
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[41]),
        .O(psd_array_reg_0_255_41_41_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_41_41_i_1
       (.I0(_carry__9_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[41]),
        .O(p_2_in[41]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM256X1S psd_array_reg_0_255_42_42
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[42]),
        .O(psd_array_reg_0_255_42_42_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_42_42_i_1
       (.I0(_carry__9_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[42]),
        .O(p_2_in[42]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM256X1S psd_array_reg_0_255_43_43
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[43]),
        .O(psd_array_reg_0_255_43_43_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_43_43_i_1
       (.I0(_carry__9_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[43]),
        .O(p_2_in[43]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM256X1S psd_array_reg_0_255_44_44
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[44]),
        .O(psd_array_reg_0_255_44_44_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_44_44_i_1
       (.I0(_carry__10_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[44]),
        .O(p_2_in[44]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM256X1S psd_array_reg_0_255_45_45
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[45]),
        .O(psd_array_reg_0_255_45_45_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_45_45_i_1
       (.I0(_carry__10_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[45]),
        .O(p_2_in[45]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM256X1S psd_array_reg_0_255_46_46
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[46]),
        .O(psd_array_reg_0_255_46_46_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_46_46_i_1
       (.I0(_carry__10_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[46]),
        .O(p_2_in[46]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM256X1S psd_array_reg_0_255_47_47
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[47]),
        .O(psd_array_reg_0_255_47_47_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_47_47_i_1
       (.I0(_carry__10_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[47]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM256X1S psd_array_reg_0_255_48_48
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[48]),
        .O(psd_array_reg_0_255_48_48_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_48_48_i_1
       (.I0(_carry__11_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[48]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM256X1S psd_array_reg_0_255_49_49
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[49]),
        .O(psd_array_reg_0_255_49_49_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_49_49_i_1
       (.I0(_carry__11_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[49]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S psd_array_reg_0_255_4_4
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[4]),
        .O(psd_array_reg_0_255_4_4_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_4_4_i_1
       (.I0(_carry__0_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[4]),
        .O(p_2_in[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM256X1S psd_array_reg_0_255_50_50
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[50]),
        .O(psd_array_reg_0_255_50_50_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_50_50_i_1
       (.I0(_carry__11_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[50]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM256X1S psd_array_reg_0_255_51_51
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[51]),
        .O(psd_array_reg_0_255_51_51_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_51_51_i_1
       (.I0(_carry__11_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[51]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM256X1S psd_array_reg_0_255_52_52
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[52]),
        .O(psd_array_reg_0_255_52_52_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_52_52_i_1
       (.I0(_carry__12_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[47]),
        .O(p_2_in[52]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S psd_array_reg_0_255_5_5
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[5]),
        .O(psd_array_reg_0_255_5_5_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_5_5_i_1
       (.I0(_carry__0_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[5]),
        .O(p_2_in[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S psd_array_reg_0_255_6_6
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[6]),
        .O(psd_array_reg_0_255_6_6_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_6_6_i_1
       (.I0(_carry__0_n_5),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[6]),
        .O(p_2_in[6]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S psd_array_reg_0_255_7_7
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[7]),
        .O(psd_array_reg_0_255_7_7_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_7_7_i_1
       (.I0(_carry__0_n_4),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[7]),
        .O(p_2_in[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S psd_array_reg_0_255_8_8
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[8]),
        .O(psd_array_reg_0_255_8_8_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_8_8_i_1
       (.I0(_carry__1_n_7),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[8]),
        .O(p_2_in[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S psd_array_reg_0_255_9_9
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[9]),
        .O(psd_array_reg_0_255_9_9_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_0_255_0_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    psd_array_reg_0_255_9_9_i_1
       (.I0(_carry__1_n_6),
        .I1(psd_array_reg_0_255_0_0_i_3_n_0),
        .I2(p_1_in[9]),
        .O(p_2_in[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S psd_array_reg_256_511_0_0
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[0]),
        .O(psd_array_reg_256_511_0_0_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    psd_array_reg_256_511_0_0_i_1
       (.I0(fft_m_data_tuser[9]),
        .I1(fft_m_data_tuser[8]),
        .I2(m_axis_data_tvalid),
        .O(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S psd_array_reg_256_511_10_10
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[10]),
        .O(psd_array_reg_256_511_10_10_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S psd_array_reg_256_511_11_11
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[11]),
        .O(psd_array_reg_256_511_11_11_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S psd_array_reg_256_511_12_12
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[12]),
        .O(psd_array_reg_256_511_12_12_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S psd_array_reg_256_511_13_13
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[13]),
        .O(psd_array_reg_256_511_13_13_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S psd_array_reg_256_511_14_14
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[14]),
        .O(psd_array_reg_256_511_14_14_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S psd_array_reg_256_511_15_15
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[15]),
        .O(psd_array_reg_256_511_15_15_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S psd_array_reg_256_511_16_16
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[16]),
        .O(psd_array_reg_256_511_16_16_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S psd_array_reg_256_511_17_17
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[17]),
        .O(psd_array_reg_256_511_17_17_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S psd_array_reg_256_511_18_18
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[18]),
        .O(psd_array_reg_256_511_18_18_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S psd_array_reg_256_511_19_19
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[19]),
        .O(psd_array_reg_256_511_19_19_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S psd_array_reg_256_511_1_1
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[1]),
        .O(psd_array_reg_256_511_1_1_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S psd_array_reg_256_511_20_20
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[20]),
        .O(psd_array_reg_256_511_20_20_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S psd_array_reg_256_511_21_21
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[21]),
        .O(psd_array_reg_256_511_21_21_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S psd_array_reg_256_511_22_22
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[22]),
        .O(psd_array_reg_256_511_22_22_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S psd_array_reg_256_511_23_23
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[23]),
        .O(psd_array_reg_256_511_23_23_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S psd_array_reg_256_511_24_24
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[24]),
        .O(psd_array_reg_256_511_24_24_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S psd_array_reg_256_511_25_25
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[25]),
        .O(psd_array_reg_256_511_25_25_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S psd_array_reg_256_511_26_26
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[26]),
        .O(psd_array_reg_256_511_26_26_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S psd_array_reg_256_511_27_27
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[27]),
        .O(psd_array_reg_256_511_27_27_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S psd_array_reg_256_511_28_28
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[28]),
        .O(psd_array_reg_256_511_28_28_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S psd_array_reg_256_511_29_29
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[29]),
        .O(psd_array_reg_256_511_29_29_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S psd_array_reg_256_511_2_2
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[2]),
        .O(psd_array_reg_256_511_2_2_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S psd_array_reg_256_511_30_30
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[30]),
        .O(psd_array_reg_256_511_30_30_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S psd_array_reg_256_511_31_31
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[31]),
        .O(psd_array_reg_256_511_31_31_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM256X1S psd_array_reg_256_511_32_32
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[32]),
        .O(psd_array_reg_256_511_32_32_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM256X1S psd_array_reg_256_511_33_33
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[33]),
        .O(psd_array_reg_256_511_33_33_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM256X1S psd_array_reg_256_511_34_34
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[34]),
        .O(psd_array_reg_256_511_34_34_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM256X1S psd_array_reg_256_511_35_35
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[35]),
        .O(psd_array_reg_256_511_35_35_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM256X1S psd_array_reg_256_511_36_36
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[36]),
        .O(psd_array_reg_256_511_36_36_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM256X1S psd_array_reg_256_511_37_37
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[37]),
        .O(psd_array_reg_256_511_37_37_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM256X1S psd_array_reg_256_511_38_38
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[38]),
        .O(psd_array_reg_256_511_38_38_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM256X1S psd_array_reg_256_511_39_39
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[39]),
        .O(psd_array_reg_256_511_39_39_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S psd_array_reg_256_511_3_3
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[3]),
        .O(psd_array_reg_256_511_3_3_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM256X1S psd_array_reg_256_511_40_40
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[40]),
        .O(psd_array_reg_256_511_40_40_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM256X1S psd_array_reg_256_511_41_41
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[41]),
        .O(psd_array_reg_256_511_41_41_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM256X1S psd_array_reg_256_511_42_42
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[42]),
        .O(psd_array_reg_256_511_42_42_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM256X1S psd_array_reg_256_511_43_43
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[43]),
        .O(psd_array_reg_256_511_43_43_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM256X1S psd_array_reg_256_511_44_44
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[44]),
        .O(psd_array_reg_256_511_44_44_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM256X1S psd_array_reg_256_511_45_45
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[45]),
        .O(psd_array_reg_256_511_45_45_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM256X1S psd_array_reg_256_511_46_46
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[46]),
        .O(psd_array_reg_256_511_46_46_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM256X1S psd_array_reg_256_511_47_47
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[47]),
        .O(psd_array_reg_256_511_47_47_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM256X1S psd_array_reg_256_511_48_48
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[48]),
        .O(psd_array_reg_256_511_48_48_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM256X1S psd_array_reg_256_511_49_49
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[49]),
        .O(psd_array_reg_256_511_49_49_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S psd_array_reg_256_511_4_4
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[4]),
        .O(psd_array_reg_256_511_4_4_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM256X1S psd_array_reg_256_511_50_50
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[50]),
        .O(psd_array_reg_256_511_50_50_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM256X1S psd_array_reg_256_511_51_51
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[51]),
        .O(psd_array_reg_256_511_51_51_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM256X1S psd_array_reg_256_511_52_52
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[52]),
        .O(psd_array_reg_256_511_52_52_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S psd_array_reg_256_511_5_5
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[5]),
        .O(psd_array_reg_256_511_5_5_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S psd_array_reg_256_511_6_6
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[6]),
        .O(psd_array_reg_256_511_6_6_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S psd_array_reg_256_511_7_7
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[7]),
        .O(psd_array_reg_256_511_7_7_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S psd_array_reg_256_511_8_8
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[8]),
        .O(psd_array_reg_256_511_8_8_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S psd_array_reg_256_511_9_9
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[9]),
        .O(psd_array_reg_256_511_9_9_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S psd_array_reg_512_767_0_0
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[0]),
        .O(psd_array_reg_512_767_0_0_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    psd_array_reg_512_767_0_0_i_1
       (.I0(fft_m_data_tuser[8]),
        .I1(fft_m_data_tuser[9]),
        .I2(m_axis_data_tvalid),
        .O(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S psd_array_reg_512_767_10_10
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[10]),
        .O(psd_array_reg_512_767_10_10_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S psd_array_reg_512_767_11_11
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[11]),
        .O(psd_array_reg_512_767_11_11_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S psd_array_reg_512_767_12_12
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[12]),
        .O(psd_array_reg_512_767_12_12_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S psd_array_reg_512_767_13_13
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[13]),
        .O(psd_array_reg_512_767_13_13_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S psd_array_reg_512_767_14_14
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[14]),
        .O(psd_array_reg_512_767_14_14_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S psd_array_reg_512_767_15_15
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[15]),
        .O(psd_array_reg_512_767_15_15_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S psd_array_reg_512_767_16_16
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[16]),
        .O(psd_array_reg_512_767_16_16_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S psd_array_reg_512_767_17_17
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[17]),
        .O(psd_array_reg_512_767_17_17_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S psd_array_reg_512_767_18_18
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[18]),
        .O(psd_array_reg_512_767_18_18_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S psd_array_reg_512_767_19_19
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[19]),
        .O(psd_array_reg_512_767_19_19_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S psd_array_reg_512_767_1_1
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[1]),
        .O(psd_array_reg_512_767_1_1_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S psd_array_reg_512_767_20_20
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[20]),
        .O(psd_array_reg_512_767_20_20_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S psd_array_reg_512_767_21_21
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[21]),
        .O(psd_array_reg_512_767_21_21_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S psd_array_reg_512_767_22_22
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[22]),
        .O(psd_array_reg_512_767_22_22_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S psd_array_reg_512_767_23_23
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[23]),
        .O(psd_array_reg_512_767_23_23_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S psd_array_reg_512_767_24_24
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[24]),
        .O(psd_array_reg_512_767_24_24_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S psd_array_reg_512_767_25_25
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[25]),
        .O(psd_array_reg_512_767_25_25_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S psd_array_reg_512_767_26_26
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[26]),
        .O(psd_array_reg_512_767_26_26_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S psd_array_reg_512_767_27_27
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[27]),
        .O(psd_array_reg_512_767_27_27_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S psd_array_reg_512_767_28_28
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[28]),
        .O(psd_array_reg_512_767_28_28_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S psd_array_reg_512_767_29_29
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[29]),
        .O(psd_array_reg_512_767_29_29_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S psd_array_reg_512_767_2_2
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[2]),
        .O(psd_array_reg_512_767_2_2_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S psd_array_reg_512_767_30_30
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[30]),
        .O(psd_array_reg_512_767_30_30_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S psd_array_reg_512_767_31_31
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[31]),
        .O(psd_array_reg_512_767_31_31_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM256X1S psd_array_reg_512_767_32_32
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[32]),
        .O(psd_array_reg_512_767_32_32_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM256X1S psd_array_reg_512_767_33_33
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[33]),
        .O(psd_array_reg_512_767_33_33_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM256X1S psd_array_reg_512_767_34_34
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[34]),
        .O(psd_array_reg_512_767_34_34_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM256X1S psd_array_reg_512_767_35_35
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[35]),
        .O(psd_array_reg_512_767_35_35_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM256X1S psd_array_reg_512_767_36_36
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[36]),
        .O(psd_array_reg_512_767_36_36_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM256X1S psd_array_reg_512_767_37_37
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[37]),
        .O(psd_array_reg_512_767_37_37_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM256X1S psd_array_reg_512_767_38_38
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[38]),
        .O(psd_array_reg_512_767_38_38_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM256X1S psd_array_reg_512_767_39_39
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[39]),
        .O(psd_array_reg_512_767_39_39_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S psd_array_reg_512_767_3_3
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[3]),
        .O(psd_array_reg_512_767_3_3_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM256X1S psd_array_reg_512_767_40_40
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[40]),
        .O(psd_array_reg_512_767_40_40_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM256X1S psd_array_reg_512_767_41_41
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[41]),
        .O(psd_array_reg_512_767_41_41_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM256X1S psd_array_reg_512_767_42_42
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[42]),
        .O(psd_array_reg_512_767_42_42_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM256X1S psd_array_reg_512_767_43_43
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[43]),
        .O(psd_array_reg_512_767_43_43_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM256X1S psd_array_reg_512_767_44_44
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[44]),
        .O(psd_array_reg_512_767_44_44_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM256X1S psd_array_reg_512_767_45_45
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[45]),
        .O(psd_array_reg_512_767_45_45_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM256X1S psd_array_reg_512_767_46_46
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[46]),
        .O(psd_array_reg_512_767_46_46_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM256X1S psd_array_reg_512_767_47_47
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[47]),
        .O(psd_array_reg_512_767_47_47_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM256X1S psd_array_reg_512_767_48_48
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[48]),
        .O(psd_array_reg_512_767_48_48_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM256X1S psd_array_reg_512_767_49_49
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[49]),
        .O(psd_array_reg_512_767_49_49_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S psd_array_reg_512_767_4_4
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[4]),
        .O(psd_array_reg_512_767_4_4_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM256X1S psd_array_reg_512_767_50_50
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[50]),
        .O(psd_array_reg_512_767_50_50_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM256X1S psd_array_reg_512_767_51_51
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[51]),
        .O(psd_array_reg_512_767_51_51_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM256X1S psd_array_reg_512_767_52_52
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[52]),
        .O(psd_array_reg_512_767_52_52_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S psd_array_reg_512_767_5_5
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[5]),
        .O(psd_array_reg_512_767_5_5_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S psd_array_reg_512_767_6_6
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[6]),
        .O(psd_array_reg_512_767_6_6_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S psd_array_reg_512_767_7_7
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[7]),
        .O(psd_array_reg_512_767_7_7_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S psd_array_reg_512_767_8_8
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[8]),
        .O(psd_array_reg_512_767_8_8_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S psd_array_reg_512_767_9_9
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[9]),
        .O(psd_array_reg_512_767_9_9_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S psd_array_reg_768_1023_0_0
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[0]),
        .O(psd_array_reg_768_1023_0_0_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    psd_array_reg_768_1023_0_0_i_1
       (.I0(m_axis_data_tvalid),
        .I1(fft_m_data_tuser[8]),
        .I2(fft_m_data_tuser[9]),
        .O(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S psd_array_reg_768_1023_10_10
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[10]),
        .O(psd_array_reg_768_1023_10_10_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S psd_array_reg_768_1023_11_11
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[11]),
        .O(psd_array_reg_768_1023_11_11_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S psd_array_reg_768_1023_12_12
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[12]),
        .O(psd_array_reg_768_1023_12_12_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S psd_array_reg_768_1023_13_13
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[13]),
        .O(psd_array_reg_768_1023_13_13_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S psd_array_reg_768_1023_14_14
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[14]),
        .O(psd_array_reg_768_1023_14_14_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S psd_array_reg_768_1023_15_15
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[15]),
        .O(psd_array_reg_768_1023_15_15_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S psd_array_reg_768_1023_16_16
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[16]),
        .O(psd_array_reg_768_1023_16_16_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S psd_array_reg_768_1023_17_17
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[17]),
        .O(psd_array_reg_768_1023_17_17_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S psd_array_reg_768_1023_18_18
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[18]),
        .O(psd_array_reg_768_1023_18_18_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S psd_array_reg_768_1023_19_19
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[19]),
        .O(psd_array_reg_768_1023_19_19_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S psd_array_reg_768_1023_1_1
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[1]),
        .O(psd_array_reg_768_1023_1_1_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S psd_array_reg_768_1023_20_20
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[20]),
        .O(psd_array_reg_768_1023_20_20_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S psd_array_reg_768_1023_21_21
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[21]),
        .O(psd_array_reg_768_1023_21_21_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S psd_array_reg_768_1023_22_22
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[22]),
        .O(psd_array_reg_768_1023_22_22_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S psd_array_reg_768_1023_23_23
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[23]),
        .O(psd_array_reg_768_1023_23_23_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S psd_array_reg_768_1023_24_24
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[24]),
        .O(psd_array_reg_768_1023_24_24_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S psd_array_reg_768_1023_25_25
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[25]),
        .O(psd_array_reg_768_1023_25_25_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S psd_array_reg_768_1023_26_26
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[26]),
        .O(psd_array_reg_768_1023_26_26_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S psd_array_reg_768_1023_27_27
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[27]),
        .O(psd_array_reg_768_1023_27_27_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S psd_array_reg_768_1023_28_28
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[28]),
        .O(psd_array_reg_768_1023_28_28_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S psd_array_reg_768_1023_29_29
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[29]),
        .O(psd_array_reg_768_1023_29_29_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S psd_array_reg_768_1023_2_2
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[2]),
        .O(psd_array_reg_768_1023_2_2_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S psd_array_reg_768_1023_30_30
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[30]),
        .O(psd_array_reg_768_1023_30_30_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S psd_array_reg_768_1023_31_31
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[31]),
        .O(psd_array_reg_768_1023_31_31_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM256X1S psd_array_reg_768_1023_32_32
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[32]),
        .O(psd_array_reg_768_1023_32_32_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM256X1S psd_array_reg_768_1023_33_33
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[33]),
        .O(psd_array_reg_768_1023_33_33_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM256X1S psd_array_reg_768_1023_34_34
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[34]),
        .O(psd_array_reg_768_1023_34_34_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM256X1S psd_array_reg_768_1023_35_35
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[35]),
        .O(psd_array_reg_768_1023_35_35_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM256X1S psd_array_reg_768_1023_36_36
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[36]),
        .O(psd_array_reg_768_1023_36_36_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM256X1S psd_array_reg_768_1023_37_37
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[37]),
        .O(psd_array_reg_768_1023_37_37_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM256X1S psd_array_reg_768_1023_38_38
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[38]),
        .O(psd_array_reg_768_1023_38_38_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM256X1S psd_array_reg_768_1023_39_39
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[39]),
        .O(psd_array_reg_768_1023_39_39_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S psd_array_reg_768_1023_3_3
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[3]),
        .O(psd_array_reg_768_1023_3_3_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM256X1S psd_array_reg_768_1023_40_40
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[40]),
        .O(psd_array_reg_768_1023_40_40_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM256X1S psd_array_reg_768_1023_41_41
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[41]),
        .O(psd_array_reg_768_1023_41_41_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM256X1S psd_array_reg_768_1023_42_42
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[42]),
        .O(psd_array_reg_768_1023_42_42_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM256X1S psd_array_reg_768_1023_43_43
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[43]),
        .O(psd_array_reg_768_1023_43_43_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM256X1S psd_array_reg_768_1023_44_44
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[44]),
        .O(psd_array_reg_768_1023_44_44_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM256X1S psd_array_reg_768_1023_45_45
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[45]),
        .O(psd_array_reg_768_1023_45_45_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM256X1S psd_array_reg_768_1023_46_46
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[46]),
        .O(psd_array_reg_768_1023_46_46_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM256X1S psd_array_reg_768_1023_47_47
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[47]),
        .O(psd_array_reg_768_1023_47_47_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM256X1S psd_array_reg_768_1023_48_48
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[48]),
        .O(psd_array_reg_768_1023_48_48_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM256X1S psd_array_reg_768_1023_49_49
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[49]),
        .O(psd_array_reg_768_1023_49_49_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S psd_array_reg_768_1023_4_4
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[4]),
        .O(psd_array_reg_768_1023_4_4_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM256X1S psd_array_reg_768_1023_50_50
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[50]),
        .O(psd_array_reg_768_1023_50_50_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM256X1S psd_array_reg_768_1023_51_51
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[51]),
        .O(psd_array_reg_768_1023_51_51_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM256X1S psd_array_reg_768_1023_52_52
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[52]),
        .O(psd_array_reg_768_1023_52_52_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S psd_array_reg_768_1023_5_5
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[5]),
        .O(psd_array_reg_768_1023_5_5_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S psd_array_reg_768_1023_6_6
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[6]),
        .O(psd_array_reg_768_1023_6_6_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S psd_array_reg_768_1023_7_7
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[7]),
        .O(psd_array_reg_768_1023_7_7_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S psd_array_reg_768_1023_8_8
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[8]),
        .O(psd_array_reg_768_1023_8_8_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "113664" *) 
  (* RTL_RAM_NAME = "dut/psd_array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S psd_array_reg_768_1023_9_9
       (.A(fft_m_data_tuser[7:0]),
        .D(p_2_in[9]),
        .O(psd_array_reg_768_1023_9_9_n_0),
        .WCLK(clk),
        .WE(psd_array_reg_768_1023_0_0_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "49152" *) 
  (* RTL_RAM_NAME = "inst/dut/psd_avg_array_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    psd_avg_array_reg_0
       (.ADDRARDADDR({1'b1,fft_m_data_tuser,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,cnt_read,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_psd_avg_array_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_psd_avg_array_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_psd_avg_array_reg_0_DBITERR_UNCONNECTED),
        .DIADI(psd_avg[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(psd_avg[35:32]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_psd_avg_array_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(psd_avg_read[31:0]),
        .DOPADOP(NLW_psd_avg_array_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(psd_avg_read[35:32]),
        .ECCPARITY(NLW_psd_avg_array_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(m_valid_INST_0_i_1_n_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_psd_avg_array_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_psd_avg_array_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_psd_avg_array_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_psd_avg_array_reg_0_SBITERR_UNCONNECTED),
        .WEA({m_axis_data_tvalid,m_axis_data_tvalid,m_axis_data_tvalid,m_axis_data_tvalid}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_1
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__8_n_6),
        .O(psd_avg[31]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_10
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__6_n_7),
        .O(psd_avg[22]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_11
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__5_n_4),
        .O(psd_avg[21]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_12
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__5_n_5),
        .O(psd_avg[20]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_13
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__5_n_6),
        .O(psd_avg[19]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_14
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__5_n_7),
        .O(psd_avg[18]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_15
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__4_n_4),
        .O(psd_avg[17]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_16
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__4_n_5),
        .O(psd_avg[16]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_17
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__4_n_6),
        .O(psd_avg[15]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_18
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__4_n_7),
        .O(psd_avg[14]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_19
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__3_n_4),
        .O(psd_avg[13]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_2
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__8_n_7),
        .O(psd_avg[30]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_20
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__3_n_5),
        .O(psd_avg[12]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_21
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__3_n_6),
        .O(psd_avg[11]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_22
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__3_n_7),
        .O(psd_avg[10]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_23
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__2_n_4),
        .O(psd_avg[9]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_24
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__2_n_5),
        .O(psd_avg[8]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_25
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__2_n_6),
        .O(psd_avg[7]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_26
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__2_n_7),
        .O(psd_avg[6]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_27
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__1_n_4),
        .O(psd_avg[5]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_28
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__1_n_5),
        .O(psd_avg[4]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_29
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__1_n_6),
        .O(psd_avg[3]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_3
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__7_n_4),
        .O(psd_avg[29]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_30
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__1_n_7),
        .O(psd_avg[2]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_31
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__0_n_4),
        .O(psd_avg[1]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_32
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__0_n_5),
        .O(psd_avg[0]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_33
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__9_n_6),
        .O(psd_avg[35]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_34
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__9_n_7),
        .O(psd_avg[34]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_35
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__8_n_4),
        .O(psd_avg[33]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_36
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__8_n_5),
        .O(psd_avg[32]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_4
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__7_n_5),
        .O(psd_avg[28]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_5
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__7_n_6),
        .O(psd_avg[27]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_6
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__7_n_7),
        .O(psd_avg[26]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_7
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__6_n_4),
        .O(psd_avg[25]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_8
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__6_n_5),
        .O(psd_avg[24]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_0_i_9
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__6_n_6),
        .O(psd_avg[23]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "49152" *) 
  (* RTL_RAM_NAME = "inst/dut/psd_avg_array_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "46" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    psd_avg_array_reg_1
       (.ADDRARDADDR({fft_m_data_tuser,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({cnt_read,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,psd_avg[46:36]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_psd_avg_array_reg_1_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_psd_avg_array_reg_1_DOBDO_UNCONNECTED[15:11],psd_avg_read[46:36]}),
        .DOPADOP(NLW_psd_avg_array_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_psd_avg_array_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(m_valid_INST_0_i_1_n_0),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({m_axis_data_tvalid,m_axis_data_tvalid}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_1
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__12_n_7),
        .O(psd_avg[46]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_10
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__9_n_4),
        .O(psd_avg[37]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_11
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__9_n_5),
        .O(psd_avg[36]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_2
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__11_n_4),
        .O(psd_avg[45]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_3
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__11_n_5),
        .O(psd_avg[44]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_4
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__11_n_6),
        .O(psd_avg[43]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_5
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__11_n_7),
        .O(psd_avg[42]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_6
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__10_n_4),
        .O(psd_avg[41]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_7
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__10_n_5),
        .O(psd_avg[40]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_8
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__10_n_6),
        .O(psd_avg[39]));
  LUT3 #(
    .INIT(8'h80)) 
    psd_avg_array_reg_1_i_9
       (.I0(m_valid_INST_0_i_1_n_0),
        .I1(m_axis_data_tvalid),
        .I2(_carry__10_n_7),
        .O(psd_avg[38]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry
       (.CI(1'b0),
        .CO({psd_carry_n_0,psd_carry_n_1,psd_carry_n_2,psd_carry_n_3}),
        .CYINIT(1'b0),
        .DI(P[3:0]),
        .O(p_1_in[3:0]),
        .S({psd_carry_i_1_n_0,psd_carry_i_2_n_0,psd_carry_i_3_n_0,psd_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__0
       (.CI(psd_carry_n_0),
        .CO({psd_carry__0_n_0,psd_carry__0_n_1,psd_carry__0_n_2,psd_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(P[7:4]),
        .O(p_1_in[7:4]),
        .S({psd_carry__0_i_1_n_0,psd_carry__0_i_2_n_0,psd_carry__0_i_3_n_0,psd_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__0_i_1
       (.I0(P[7]),
        .I1(psd_carry__10_1[7]),
        .O(psd_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__0_i_2
       (.I0(P[6]),
        .I1(psd_carry__10_1[6]),
        .O(psd_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__0_i_3
       (.I0(P[5]),
        .I1(psd_carry__10_1[5]),
        .O(psd_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__0_i_4
       (.I0(P[4]),
        .I1(psd_carry__10_1[4]),
        .O(psd_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__1
       (.CI(psd_carry__0_n_0),
        .CO({psd_carry__1_n_0,psd_carry__1_n_1,psd_carry__1_n_2,psd_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(P[11:8]),
        .O(p_1_in[11:8]),
        .S({psd_carry__1_i_1_n_0,psd_carry__1_i_2_n_0,psd_carry__1_i_3_n_0,psd_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__10
       (.CI(psd_carry__9_n_0),
        .CO({NLW_psd_carry__10_CO_UNCONNECTED[3],psd_carry__10_n_1,psd_carry__10_n_2,psd_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,psd_carry__10_0[29:27]}),
        .O(p_1_in[47:44]),
        .S({psd_carry__10_i_1_n_0,psd_carry__10_i_2_n_0,psd_carry__10_i_3_n_0,psd_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__10_i_1
       (.I0(psd_carry__10_0[30]),
        .I1(psd_carry__10_1[47]),
        .O(psd_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__10_i_2
       (.I0(psd_carry__10_0[29]),
        .I1(psd_carry__10_1[46]),
        .O(psd_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__10_i_3
       (.I0(psd_carry__10_0[28]),
        .I1(psd_carry__10_1[45]),
        .O(psd_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__10_i_4
       (.I0(psd_carry__10_0[27]),
        .I1(psd_carry__10_1[44]),
        .O(psd_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__1_i_1
       (.I0(P[11]),
        .I1(psd_carry__10_1[11]),
        .O(psd_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__1_i_2
       (.I0(P[10]),
        .I1(psd_carry__10_1[10]),
        .O(psd_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__1_i_3
       (.I0(P[9]),
        .I1(psd_carry__10_1[9]),
        .O(psd_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__1_i_4
       (.I0(P[8]),
        .I1(psd_carry__10_1[8]),
        .O(psd_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__2
       (.CI(psd_carry__1_n_0),
        .CO({psd_carry__2_n_0,psd_carry__2_n_1,psd_carry__2_n_2,psd_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(P[15:12]),
        .O(p_1_in[15:12]),
        .S({psd_carry__2_i_1_n_0,psd_carry__2_i_2_n_0,psd_carry__2_i_3_n_0,psd_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__2_i_1
       (.I0(P[15]),
        .I1(psd_carry__10_1[15]),
        .O(psd_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__2_i_2
       (.I0(P[14]),
        .I1(psd_carry__10_1[14]),
        .O(psd_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__2_i_3
       (.I0(P[13]),
        .I1(psd_carry__10_1[13]),
        .O(psd_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__2_i_4
       (.I0(P[12]),
        .I1(psd_carry__10_1[12]),
        .O(psd_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__3
       (.CI(psd_carry__2_n_0),
        .CO({psd_carry__3_n_0,psd_carry__3_n_1,psd_carry__3_n_2,psd_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({psd_carry__10_0[2:0],P[16]}),
        .O(p_1_in[19:16]),
        .S({psd_carry__3_i_1_n_0,psd_carry__3_i_2_n_0,psd_carry__3_i_3_n_0,psd_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__3_i_1
       (.I0(psd_carry__10_0[2]),
        .I1(psd_carry__10_1[19]),
        .O(psd_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__3_i_2
       (.I0(psd_carry__10_0[1]),
        .I1(psd_carry__10_1[18]),
        .O(psd_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__3_i_3
       (.I0(psd_carry__10_0[0]),
        .I1(psd_carry__10_1[17]),
        .O(psd_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__3_i_4
       (.I0(P[16]),
        .I1(psd_carry__10_1[16]),
        .O(psd_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__4
       (.CI(psd_carry__3_n_0),
        .CO({psd_carry__4_n_0,psd_carry__4_n_1,psd_carry__4_n_2,psd_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[6:3]),
        .O(p_1_in[23:20]),
        .S({psd_carry__4_i_1_n_0,psd_carry__4_i_2_n_0,psd_carry__4_i_3_n_0,psd_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__4_i_1
       (.I0(psd_carry__10_0[6]),
        .I1(psd_carry__10_1[23]),
        .O(psd_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__4_i_2
       (.I0(psd_carry__10_0[5]),
        .I1(psd_carry__10_1[22]),
        .O(psd_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__4_i_3
       (.I0(psd_carry__10_0[4]),
        .I1(psd_carry__10_1[21]),
        .O(psd_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__4_i_4
       (.I0(psd_carry__10_0[3]),
        .I1(psd_carry__10_1[20]),
        .O(psd_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__5
       (.CI(psd_carry__4_n_0),
        .CO({psd_carry__5_n_0,psd_carry__5_n_1,psd_carry__5_n_2,psd_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[10:7]),
        .O(p_1_in[27:24]),
        .S({psd_carry__5_i_1_n_0,psd_carry__5_i_2_n_0,psd_carry__5_i_3_n_0,psd_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__5_i_1
       (.I0(psd_carry__10_0[10]),
        .I1(psd_carry__10_1[27]),
        .O(psd_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__5_i_2
       (.I0(psd_carry__10_0[9]),
        .I1(psd_carry__10_1[26]),
        .O(psd_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__5_i_3
       (.I0(psd_carry__10_0[8]),
        .I1(psd_carry__10_1[25]),
        .O(psd_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__5_i_4
       (.I0(psd_carry__10_0[7]),
        .I1(psd_carry__10_1[24]),
        .O(psd_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__6
       (.CI(psd_carry__5_n_0),
        .CO({psd_carry__6_n_0,psd_carry__6_n_1,psd_carry__6_n_2,psd_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[14:11]),
        .O(p_1_in[31:28]),
        .S({psd_carry__6_i_1_n_0,psd_carry__6_i_2_n_0,psd_carry__6_i_3_n_0,psd_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__6_i_1
       (.I0(psd_carry__10_0[14]),
        .I1(psd_carry__10_1[31]),
        .O(psd_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__6_i_2
       (.I0(psd_carry__10_0[13]),
        .I1(psd_carry__10_1[30]),
        .O(psd_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__6_i_3
       (.I0(psd_carry__10_0[12]),
        .I1(psd_carry__10_1[29]),
        .O(psd_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__6_i_4
       (.I0(psd_carry__10_0[11]),
        .I1(psd_carry__10_1[28]),
        .O(psd_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__7
       (.CI(psd_carry__6_n_0),
        .CO({psd_carry__7_n_0,psd_carry__7_n_1,psd_carry__7_n_2,psd_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[18:15]),
        .O(p_1_in[35:32]),
        .S({psd_carry__7_i_1_n_0,psd_carry__7_i_2_n_0,psd_carry__7_i_3_n_0,psd_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__7_i_1
       (.I0(psd_carry__10_0[18]),
        .I1(psd_carry__10_1[35]),
        .O(psd_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__7_i_2
       (.I0(psd_carry__10_0[17]),
        .I1(psd_carry__10_1[34]),
        .O(psd_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__7_i_3
       (.I0(psd_carry__10_0[16]),
        .I1(psd_carry__10_1[33]),
        .O(psd_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__7_i_4
       (.I0(psd_carry__10_0[15]),
        .I1(psd_carry__10_1[32]),
        .O(psd_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__8
       (.CI(psd_carry__7_n_0),
        .CO({psd_carry__8_n_0,psd_carry__8_n_1,psd_carry__8_n_2,psd_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[22:19]),
        .O(p_1_in[39:36]),
        .S({psd_carry__8_i_1_n_0,psd_carry__8_i_2_n_0,psd_carry__8_i_3_n_0,psd_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__8_i_1
       (.I0(psd_carry__10_0[22]),
        .I1(psd_carry__10_1[39]),
        .O(psd_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__8_i_2
       (.I0(psd_carry__10_0[21]),
        .I1(psd_carry__10_1[38]),
        .O(psd_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__8_i_3
       (.I0(psd_carry__10_0[20]),
        .I1(psd_carry__10_1[37]),
        .O(psd_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__8_i_4
       (.I0(psd_carry__10_0[19]),
        .I1(psd_carry__10_1[36]),
        .O(psd_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 psd_carry__9
       (.CI(psd_carry__8_n_0),
        .CO({psd_carry__9_n_0,psd_carry__9_n_1,psd_carry__9_n_2,psd_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(psd_carry__10_0[26:23]),
        .O(p_1_in[43:40]),
        .S({psd_carry__9_i_1_n_0,psd_carry__9_i_2_n_0,psd_carry__9_i_3_n_0,psd_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__9_i_1
       (.I0(psd_carry__10_0[26]),
        .I1(psd_carry__10_1[43]),
        .O(psd_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__9_i_2
       (.I0(psd_carry__10_0[25]),
        .I1(psd_carry__10_1[42]),
        .O(psd_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__9_i_3
       (.I0(psd_carry__10_0[24]),
        .I1(psd_carry__10_1[41]),
        .O(psd_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry__9_i_4
       (.I0(psd_carry__10_0[23]),
        .I1(psd_carry__10_1[40]),
        .O(psd_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry_i_1
       (.I0(P[3]),
        .I1(psd_carry__10_1[3]),
        .O(psd_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry_i_2
       (.I0(P[2]),
        .I1(psd_carry__10_1[2]),
        .O(psd_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry_i_3
       (.I0(P[1]),
        .I1(psd_carry__10_1[1]),
        .O(psd_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    psd_carry_i_4
       (.I0(P[0]),
        .I1(psd_carry__10_1[0]),
        .O(psd_carry_i_4_n_0));
  (* x_core_info = "xfft_v9_1_8,Vivado 2022.2" *) 
  DDS_FFT_ethernet_final_DDS_FFT_0_0_xfft_0 u_fft
       (.aclk(clk),
        .aresetn(rst_n),
        .event_data_in_channel_halt(NLW_u_fft_event_data_in_channel_halt_UNCONNECTED),
        .event_data_out_channel_halt(NLW_u_fft_event_data_out_channel_halt_UNCONNECTED),
        .event_frame_started(NLW_u_fft_event_frame_started_UNCONNECTED),
        .event_status_channel_halt(NLW_u_fft_event_status_channel_halt_UNCONNECTED),
        .event_tlast_missing(NLW_u_fft_event_tlast_missing_UNCONNECTED),
        .event_tlast_unexpected(NLW_u_fft_event_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({NLW_u_fft_m_axis_data_tdata_UNCONNECTED[63:56],m_axis_data_tdata[47:24],NLW_u_fft_m_axis_data_tdata_UNCONNECTED[31:24],m_axis_data_tdata[23:0]}),
        .m_axis_data_tlast(fft_m_data_tlast),
        .m_axis_data_tready(1'b1),
        .m_axis_data_tuser({NLW_u_fft_m_axis_data_tuser_UNCONNECTED[15:10],fft_m_data_tuser}),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .s_axis_config_tready(NLW_u_fft_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b1),
        .s_axis_data_tdata(fft_s_data_tdata),
        .s_axis_data_tlast(fft_s_data_tlast),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid(s_axis_data_tvalid));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    u_fft_i_2
       (.I0(p_1_out__0),
        .I1(p_1_out__0_0),
        .I2(p_1_out__0_1),
        .I3(cnt_s_reg[9]),
        .I4(s_axis_data_tready),
        .I5(u_fft_i_3_n_0),
        .O(fft_s_data_tlast));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    u_fft_i_3
       (.I0(cnt_s_reg[7]),
        .I1(\cnt_s[9]_i_2_n_0 ),
        .I2(cnt_s_reg[6]),
        .I3(cnt_s_reg[8]),
        .O(u_fft_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "dds_0" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0
   (m_axis_data_tvalid,
    D,
    E,
    clk,
    rst_n,
    dds_phase_incr_0,
    \fft_s_data_tdata_reg[31] ,
    \fft_s_data_tdata_reg[31]_0 ,
    s_axis_data_tready);
  output m_axis_data_tvalid;
  output [15:0]D;
  output [0:0]E;
  input clk;
  input rst_n;
  input [17:0]dds_phase_incr_0;
  input \fft_s_data_tdata_reg[31] ;
  input \fft_s_data_tdata_reg[31]_0 ;
  input s_axis_data_tready;

  wire [15:0]D;
  wire [0:0]E;
  wire clk;
  wire [17:0]dds_phase_incr_0;
  wire \fft_s_data_tdata_reg[31] ;
  wire \fft_s_data_tdata_reg[31]_0 ;
  wire m_axis_data_tvalid;
  wire rst_n;
  wire s_axis_data_tready;

  LUT4 #(
    .INIT(16'hFE00)) 
    \fft_s_data_tdata[31]_i_1 
       (.I0(m_axis_data_tvalid),
        .I1(\fft_s_data_tdata_reg[31] ),
        .I2(\fft_s_data_tdata_reg[31]_0 ),
        .I3(s_axis_data_tready),
        .O(E));
  (* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_0 inst_dds_0
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata(D),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dds_phase_incr_0}),
        .s_axis_config_tvalid(1'b1));
endmodule

(* ORIG_REF_NAME = "dds_1" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1
   (m_axis_data_tvalid,
    s_axis_data_tvalid,
    dcosine,
    clk,
    rst_n,
    dds_phase_incr_1,
    p_1_out__0,
    p_1_out__0_0,
    m_axis_data_tdata);
  output m_axis_data_tvalid;
  output s_axis_data_tvalid;
  output [15:0]dcosine;
  input clk;
  input rst_n;
  input [17:0]dds_phase_incr_1;
  input p_1_out__0;
  input p_1_out__0_0;
  input [15:0]m_axis_data_tdata;

  wire clk;
  wire [15:0]dcosine;
  wire [17:0]dds_phase_incr_1;
  wire [15:0]dout_dds_1;
  wire \fft_s_data_tdata[11]_i_2_n_0 ;
  wire \fft_s_data_tdata[11]_i_3_n_0 ;
  wire \fft_s_data_tdata[11]_i_4_n_0 ;
  wire \fft_s_data_tdata[11]_i_5_n_0 ;
  wire \fft_s_data_tdata[15]_i_2_n_0 ;
  wire \fft_s_data_tdata[15]_i_3_n_0 ;
  wire \fft_s_data_tdata[15]_i_4_n_0 ;
  wire \fft_s_data_tdata[15]_i_5_n_0 ;
  wire \fft_s_data_tdata[3]_i_2_n_0 ;
  wire \fft_s_data_tdata[3]_i_3_n_0 ;
  wire \fft_s_data_tdata[3]_i_4_n_0 ;
  wire \fft_s_data_tdata[3]_i_5_n_0 ;
  wire \fft_s_data_tdata[7]_i_2_n_0 ;
  wire \fft_s_data_tdata[7]_i_3_n_0 ;
  wire \fft_s_data_tdata[7]_i_4_n_0 ;
  wire \fft_s_data_tdata[7]_i_5_n_0 ;
  wire \fft_s_data_tdata_reg[11]_i_1_n_0 ;
  wire \fft_s_data_tdata_reg[11]_i_1_n_1 ;
  wire \fft_s_data_tdata_reg[11]_i_1_n_2 ;
  wire \fft_s_data_tdata_reg[11]_i_1_n_3 ;
  wire \fft_s_data_tdata_reg[15]_i_1_n_1 ;
  wire \fft_s_data_tdata_reg[15]_i_1_n_2 ;
  wire \fft_s_data_tdata_reg[15]_i_1_n_3 ;
  wire \fft_s_data_tdata_reg[3]_i_1_n_0 ;
  wire \fft_s_data_tdata_reg[3]_i_1_n_1 ;
  wire \fft_s_data_tdata_reg[3]_i_1_n_2 ;
  wire \fft_s_data_tdata_reg[3]_i_1_n_3 ;
  wire \fft_s_data_tdata_reg[7]_i_1_n_0 ;
  wire \fft_s_data_tdata_reg[7]_i_1_n_1 ;
  wire \fft_s_data_tdata_reg[7]_i_1_n_2 ;
  wire \fft_s_data_tdata_reg[7]_i_1_n_3 ;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire p_1_out__0;
  wire p_1_out__0_0;
  wire rst_n;
  wire s_axis_data_tvalid;
  wire [3:3]\NLW_fft_s_data_tdata_reg[15]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[11]_i_2 
       (.I0(dout_dds_1[11]),
        .I1(m_axis_data_tdata[11]),
        .O(\fft_s_data_tdata[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[11]_i_3 
       (.I0(dout_dds_1[10]),
        .I1(m_axis_data_tdata[10]),
        .O(\fft_s_data_tdata[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[11]_i_4 
       (.I0(dout_dds_1[9]),
        .I1(m_axis_data_tdata[9]),
        .O(\fft_s_data_tdata[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[11]_i_5 
       (.I0(dout_dds_1[8]),
        .I1(m_axis_data_tdata[8]),
        .O(\fft_s_data_tdata[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[15]_i_2 
       (.I0(dout_dds_1[15]),
        .I1(m_axis_data_tdata[15]),
        .O(\fft_s_data_tdata[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[15]_i_3 
       (.I0(dout_dds_1[14]),
        .I1(m_axis_data_tdata[14]),
        .O(\fft_s_data_tdata[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[15]_i_4 
       (.I0(dout_dds_1[13]),
        .I1(m_axis_data_tdata[13]),
        .O(\fft_s_data_tdata[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[15]_i_5 
       (.I0(dout_dds_1[12]),
        .I1(m_axis_data_tdata[12]),
        .O(\fft_s_data_tdata[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[3]_i_2 
       (.I0(dout_dds_1[3]),
        .I1(m_axis_data_tdata[3]),
        .O(\fft_s_data_tdata[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[3]_i_3 
       (.I0(dout_dds_1[2]),
        .I1(m_axis_data_tdata[2]),
        .O(\fft_s_data_tdata[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[3]_i_4 
       (.I0(dout_dds_1[1]),
        .I1(m_axis_data_tdata[1]),
        .O(\fft_s_data_tdata[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[3]_i_5 
       (.I0(dout_dds_1[0]),
        .I1(m_axis_data_tdata[0]),
        .O(\fft_s_data_tdata[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[7]_i_2 
       (.I0(dout_dds_1[7]),
        .I1(m_axis_data_tdata[7]),
        .O(\fft_s_data_tdata[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[7]_i_3 
       (.I0(dout_dds_1[6]),
        .I1(m_axis_data_tdata[6]),
        .O(\fft_s_data_tdata[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[7]_i_4 
       (.I0(dout_dds_1[5]),
        .I1(m_axis_data_tdata[5]),
        .O(\fft_s_data_tdata[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fft_s_data_tdata[7]_i_5 
       (.I0(dout_dds_1[4]),
        .I1(m_axis_data_tdata[4]),
        .O(\fft_s_data_tdata[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fft_s_data_tdata_reg[11]_i_1 
       (.CI(\fft_s_data_tdata_reg[7]_i_1_n_0 ),
        .CO({\fft_s_data_tdata_reg[11]_i_1_n_0 ,\fft_s_data_tdata_reg[11]_i_1_n_1 ,\fft_s_data_tdata_reg[11]_i_1_n_2 ,\fft_s_data_tdata_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(dout_dds_1[11:8]),
        .O(dcosine[11:8]),
        .S({\fft_s_data_tdata[11]_i_2_n_0 ,\fft_s_data_tdata[11]_i_3_n_0 ,\fft_s_data_tdata[11]_i_4_n_0 ,\fft_s_data_tdata[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fft_s_data_tdata_reg[15]_i_1 
       (.CI(\fft_s_data_tdata_reg[11]_i_1_n_0 ),
        .CO({\NLW_fft_s_data_tdata_reg[15]_i_1_CO_UNCONNECTED [3],\fft_s_data_tdata_reg[15]_i_1_n_1 ,\fft_s_data_tdata_reg[15]_i_1_n_2 ,\fft_s_data_tdata_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dout_dds_1[14:12]}),
        .O(dcosine[15:12]),
        .S({\fft_s_data_tdata[15]_i_2_n_0 ,\fft_s_data_tdata[15]_i_3_n_0 ,\fft_s_data_tdata[15]_i_4_n_0 ,\fft_s_data_tdata[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fft_s_data_tdata_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\fft_s_data_tdata_reg[3]_i_1_n_0 ,\fft_s_data_tdata_reg[3]_i_1_n_1 ,\fft_s_data_tdata_reg[3]_i_1_n_2 ,\fft_s_data_tdata_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(dout_dds_1[3:0]),
        .O(dcosine[3:0]),
        .S({\fft_s_data_tdata[3]_i_2_n_0 ,\fft_s_data_tdata[3]_i_3_n_0 ,\fft_s_data_tdata[3]_i_4_n_0 ,\fft_s_data_tdata[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fft_s_data_tdata_reg[7]_i_1 
       (.CI(\fft_s_data_tdata_reg[3]_i_1_n_0 ),
        .CO({\fft_s_data_tdata_reg[7]_i_1_n_0 ,\fft_s_data_tdata_reg[7]_i_1_n_1 ,\fft_s_data_tdata_reg[7]_i_1_n_2 ,\fft_s_data_tdata_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(dout_dds_1[7:4]),
        .O(dcosine[7:4]),
        .S({\fft_s_data_tdata[7]_i_2_n_0 ,\fft_s_data_tdata[7]_i_3_n_0 ,\fft_s_data_tdata[7]_i_4_n_0 ,\fft_s_data_tdata[7]_i_5_n_0 }));
  (* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_1 inst_dds_1
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata(dout_dds_1),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dds_phase_incr_1}),
        .s_axis_config_tvalid(1'b1));
  LUT3 #(
    .INIT(8'hFE)) 
    u_fft_i_1
       (.I0(m_axis_data_tvalid),
        .I1(p_1_out__0),
        .I2(p_1_out__0_0),
        .O(s_axis_data_tvalid));
endmodule

(* ORIG_REF_NAME = "dds_2" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2
   (m_axis_data_tvalid,
    m_axis_data_tdata,
    clk,
    rst_n,
    dds_phase_incr_2);
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;
  input clk;
  input rst_n;
  input [17:0]dds_phase_incr_2;

  wire clk;
  wire [17:0]dds_phase_incr_2;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire rst_n;

  (* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
  DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_2 inst_dds_2
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dds_phase_incr_2}),
        .s_axis_config_tvalid(1'b1));
endmodule

(* ORIG_REF_NAME = "dds_compiler_0" *) (* X_CORE_INFO = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_0
   (aclk,
    aresetn,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input aresetn;
  input s_axis_config_tvalid;
  input [23:0]s_axis_config_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "dds_compiler_1" *) (* X_CORE_INFO = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_1
   (aclk,
    aresetn,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input aresetn;
  input s_axis_config_tvalid;
  input [23:0]s_axis_config_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "dds_compiler_2" *) (* X_CORE_INFO = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_2
   (aclk,
    aresetn,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input aresetn;
  input s_axis_config_tvalid;
  input [23:0]s_axis_config_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "xfft_0" *) (* X_CORE_INFO = "xfft_v9_1_8,Vivado 2022.2" *) 
module DDS_FFT_ethernet_final_DDS_FFT_0_0_xfft_0
   (aclk,
    aresetn,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tlast,
    m_axis_data_tdata,
    m_axis_data_tuser,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tlast,
    event_frame_started,
    event_tlast_unexpected,
    event_tlast_missing,
    event_status_channel_halt,
    event_data_in_channel_halt,
    event_data_out_channel_halt);
  input aclk;
  input aresetn;
  input [7:0]s_axis_config_tdata;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [31:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input s_axis_data_tlast;
  output [63:0]m_axis_data_tdata;
  output [15:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output m_axis_data_tlast;
  output event_frame_started;
  output event_tlast_unexpected;
  output event_tlast_missing;
  output event_status_channel_halt;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
