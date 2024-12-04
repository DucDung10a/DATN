-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec  4 20:25:45 2024
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/_DATN/FFT/FFT_final/FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_DDS_FFT_0_0/DDS_FFT_ethernet_final_DDS_FFT_0_0_sim_netlist.vhdl
-- Design      : DDS_FFT_ethernet_final_DDS_FFT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control is
  port (
    s_axis_data_tready : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_valid : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    psd_avg_read : out STD_LOGIC_VECTOR ( 47 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \psd_carry__10_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \p_1_out__0\ : in STD_LOGIC;
    \p_1_out__0_0\ : in STD_LOGIC;
    \p_1_out__0_1\ : in STD_LOGIC;
    \psd_carry__10_1\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \psd_carry__3_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    cnt_read : in STD_LOGIC_VECTOR ( 9 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control : entity is "FFT_control";
end DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control is
  component DDS_FFT_ethernet_final_DDS_FFT_0_0_xfft_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component DDS_FFT_ethernet_final_DDS_FFT_0_0_xfft_0;
  signal \_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__0_n_4\ : STD_LOGIC;
  signal \_carry__0_n_5\ : STD_LOGIC;
  signal \_carry__0_n_6\ : STD_LOGIC;
  signal \_carry__0_n_7\ : STD_LOGIC;
  signal \_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \_carry__10_i_5_n_0\ : STD_LOGIC;
  signal \_carry__10_i_6_n_0\ : STD_LOGIC;
  signal \_carry__10_i_7_n_0\ : STD_LOGIC;
  signal \_carry__10_n_0\ : STD_LOGIC;
  signal \_carry__10_n_1\ : STD_LOGIC;
  signal \_carry__10_n_2\ : STD_LOGIC;
  signal \_carry__10_n_3\ : STD_LOGIC;
  signal \_carry__10_n_4\ : STD_LOGIC;
  signal \_carry__10_n_5\ : STD_LOGIC;
  signal \_carry__10_n_6\ : STD_LOGIC;
  signal \_carry__10_n_7\ : STD_LOGIC;
  signal \_carry__11_i_4_n_0\ : STD_LOGIC;
  signal \_carry__11_i_5_n_0\ : STD_LOGIC;
  signal \_carry__11_i_6_n_0\ : STD_LOGIC;
  signal \_carry__11_i_7_n_0\ : STD_LOGIC;
  signal \_carry__11_i_8_n_0\ : STD_LOGIC;
  signal \_carry__11_n_0\ : STD_LOGIC;
  signal \_carry__11_n_1\ : STD_LOGIC;
  signal \_carry__11_n_2\ : STD_LOGIC;
  signal \_carry__11_n_3\ : STD_LOGIC;
  signal \_carry__11_n_4\ : STD_LOGIC;
  signal \_carry__11_n_5\ : STD_LOGIC;
  signal \_carry__11_n_6\ : STD_LOGIC;
  signal \_carry__11_n_7\ : STD_LOGIC;
  signal \_carry__12_i_3_n_0\ : STD_LOGIC;
  signal \_carry__12_i_4_n_0\ : STD_LOGIC;
  signal \_carry__12_i_5_n_0\ : STD_LOGIC;
  signal \_carry__12_n_2\ : STD_LOGIC;
  signal \_carry__12_n_3\ : STD_LOGIC;
  signal \_carry__12_n_5\ : STD_LOGIC;
  signal \_carry__12_n_6\ : STD_LOGIC;
  signal \_carry__12_n_7\ : STD_LOGIC;
  signal \_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__1_n_4\ : STD_LOGIC;
  signal \_carry__1_n_5\ : STD_LOGIC;
  signal \_carry__1_n_6\ : STD_LOGIC;
  signal \_carry__1_n_7\ : STD_LOGIC;
  signal \_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \_carry__2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry__2_n_4\ : STD_LOGIC;
  signal \_carry__2_n_5\ : STD_LOGIC;
  signal \_carry__2_n_6\ : STD_LOGIC;
  signal \_carry__2_n_7\ : STD_LOGIC;
  signal \_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \_carry__3_n_0\ : STD_LOGIC;
  signal \_carry__3_n_1\ : STD_LOGIC;
  signal \_carry__3_n_2\ : STD_LOGIC;
  signal \_carry__3_n_3\ : STD_LOGIC;
  signal \_carry__3_n_4\ : STD_LOGIC;
  signal \_carry__3_n_5\ : STD_LOGIC;
  signal \_carry__3_n_6\ : STD_LOGIC;
  signal \_carry__3_n_7\ : STD_LOGIC;
  signal \_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \_carry__4_n_0\ : STD_LOGIC;
  signal \_carry__4_n_1\ : STD_LOGIC;
  signal \_carry__4_n_2\ : STD_LOGIC;
  signal \_carry__4_n_3\ : STD_LOGIC;
  signal \_carry__4_n_4\ : STD_LOGIC;
  signal \_carry__4_n_5\ : STD_LOGIC;
  signal \_carry__4_n_6\ : STD_LOGIC;
  signal \_carry__4_n_7\ : STD_LOGIC;
  signal \_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \_carry__5_n_0\ : STD_LOGIC;
  signal \_carry__5_n_1\ : STD_LOGIC;
  signal \_carry__5_n_2\ : STD_LOGIC;
  signal \_carry__5_n_3\ : STD_LOGIC;
  signal \_carry__5_n_4\ : STD_LOGIC;
  signal \_carry__5_n_5\ : STD_LOGIC;
  signal \_carry__5_n_6\ : STD_LOGIC;
  signal \_carry__5_n_7\ : STD_LOGIC;
  signal \_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \_carry__6_n_0\ : STD_LOGIC;
  signal \_carry__6_n_1\ : STD_LOGIC;
  signal \_carry__6_n_2\ : STD_LOGIC;
  signal \_carry__6_n_3\ : STD_LOGIC;
  signal \_carry__6_n_4\ : STD_LOGIC;
  signal \_carry__6_n_5\ : STD_LOGIC;
  signal \_carry__6_n_6\ : STD_LOGIC;
  signal \_carry__6_n_7\ : STD_LOGIC;
  signal \_carry__7_i_5_n_0\ : STD_LOGIC;
  signal \_carry__7_i_6_n_0\ : STD_LOGIC;
  signal \_carry__7_i_7_n_0\ : STD_LOGIC;
  signal \_carry__7_i_8_n_0\ : STD_LOGIC;
  signal \_carry__7_n_0\ : STD_LOGIC;
  signal \_carry__7_n_1\ : STD_LOGIC;
  signal \_carry__7_n_2\ : STD_LOGIC;
  signal \_carry__7_n_3\ : STD_LOGIC;
  signal \_carry__7_n_4\ : STD_LOGIC;
  signal \_carry__7_n_5\ : STD_LOGIC;
  signal \_carry__7_n_6\ : STD_LOGIC;
  signal \_carry__7_n_7\ : STD_LOGIC;
  signal \_carry__8_i_5_n_0\ : STD_LOGIC;
  signal \_carry__8_i_6_n_0\ : STD_LOGIC;
  signal \_carry__8_i_7_n_0\ : STD_LOGIC;
  signal \_carry__8_i_8_n_0\ : STD_LOGIC;
  signal \_carry__8_n_0\ : STD_LOGIC;
  signal \_carry__8_n_1\ : STD_LOGIC;
  signal \_carry__8_n_2\ : STD_LOGIC;
  signal \_carry__8_n_3\ : STD_LOGIC;
  signal \_carry__8_n_4\ : STD_LOGIC;
  signal \_carry__8_n_5\ : STD_LOGIC;
  signal \_carry__8_n_6\ : STD_LOGIC;
  signal \_carry__8_n_7\ : STD_LOGIC;
  signal \_carry__9_i_5_n_0\ : STD_LOGIC;
  signal \_carry__9_i_6_n_0\ : STD_LOGIC;
  signal \_carry__9_i_7_n_0\ : STD_LOGIC;
  signal \_carry__9_i_8_n_0\ : STD_LOGIC;
  signal \_carry__9_n_0\ : STD_LOGIC;
  signal \_carry__9_n_1\ : STD_LOGIC;
  signal \_carry__9_n_2\ : STD_LOGIC;
  signal \_carry__9_n_3\ : STD_LOGIC;
  signal \_carry__9_n_4\ : STD_LOGIC;
  signal \_carry__9_n_5\ : STD_LOGIC;
  signal \_carry__9_n_6\ : STD_LOGIC;
  signal \_carry__9_n_7\ : STD_LOGIC;
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_i_6_n_0\ : STD_LOGIC;
  signal \_carry_i_7_n_0\ : STD_LOGIC;
  signal \_carry_i_8_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_carry_n_4\ : STD_LOGIC;
  signal \_carry_n_5\ : STD_LOGIC;
  signal \_carry_n_6\ : STD_LOGIC;
  signal \_carry_n_7\ : STD_LOGIC;
  signal cnt_m_fft_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cnt_s[9]_i_2_n_0\ : STD_LOGIC;
  signal cnt_s_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fft_m_data_tlast : STD_LOGIC;
  signal fft_m_data_tuser : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fft_s_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_s_data_tlast : STD_LOGIC;
  signal \^m_axis_data_tvalid\ : STD_LOGIC;
  signal m_valid_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_1_out__3\ : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal psd_array_reg_0_255_0_0_i_2_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_0_0_i_3_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_10_10_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_11_11_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_12_12_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_13_13_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_14_14_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_15_15_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_16_16_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_17_17_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_18_18_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_19_19_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_20_20_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_21_21_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_22_22_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_23_23_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_24_24_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_25_25_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_26_26_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_27_27_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_28_28_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_29_29_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_30_30_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_31_31_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_32_32_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_33_33_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_34_34_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_35_35_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_36_36_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_37_37_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_38_38_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_39_39_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_40_40_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_41_41_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_42_42_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_43_43_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_44_44_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_45_45_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_46_46_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_47_47_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_48_48_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_49_49_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_50_50_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_51_51_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_52_52_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_53_53_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_54_54_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_8_8_n_0 : STD_LOGIC;
  signal psd_array_reg_0_255_9_9_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_0_0_i_1_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_10_10_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_11_11_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_12_12_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_13_13_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_14_14_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_15_15_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_16_16_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_17_17_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_18_18_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_19_19_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_20_20_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_21_21_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_22_22_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_23_23_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_24_24_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_25_25_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_26_26_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_27_27_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_28_28_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_29_29_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_30_30_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_31_31_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_32_32_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_33_33_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_34_34_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_35_35_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_36_36_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_37_37_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_38_38_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_39_39_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_40_40_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_41_41_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_42_42_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_43_43_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_44_44_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_45_45_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_46_46_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_47_47_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_48_48_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_49_49_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_50_50_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_51_51_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_52_52_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_53_53_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_54_54_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_8_8_n_0 : STD_LOGIC;
  signal psd_array_reg_256_511_9_9_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_0_0_i_1_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_10_10_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_11_11_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_12_12_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_13_13_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_14_14_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_15_15_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_16_16_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_17_17_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_18_18_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_19_19_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_20_20_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_21_21_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_22_22_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_23_23_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_24_24_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_25_25_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_26_26_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_27_27_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_28_28_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_29_29_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_30_30_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_31_31_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_32_32_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_33_33_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_34_34_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_35_35_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_36_36_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_37_37_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_38_38_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_39_39_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_40_40_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_41_41_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_42_42_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_43_43_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_44_44_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_45_45_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_46_46_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_47_47_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_48_48_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_49_49_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_50_50_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_51_51_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_52_52_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_53_53_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_54_54_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_8_8_n_0 : STD_LOGIC;
  signal psd_array_reg_512_767_9_9_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_0_0_i_1_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_10_10_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_11_11_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_12_12_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_13_13_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_14_14_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_15_15_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_16_16_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_17_17_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_18_18_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_19_19_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_20_20_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_21_21_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_22_22_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_23_23_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_24_24_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_25_25_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_26_26_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_27_27_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_28_28_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_29_29_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_30_30_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_31_31_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_32_32_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_33_33_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_34_34_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_35_35_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_36_36_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_37_37_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_38_38_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_39_39_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_40_40_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_41_41_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_42_42_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_43_43_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_44_44_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_45_45_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_46_46_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_47_47_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_48_48_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_49_49_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_50_50_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_51_51_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_52_52_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_53_53_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_54_54_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_7_7_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_8_8_n_0 : STD_LOGIC;
  signal psd_array_reg_768_1023_9_9_n_0 : STD_LOGIC;
  signal psd_avg : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal psd_avg_array_reg_1_i_1_n_0 : STD_LOGIC;
  signal \psd_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__0_n_0\ : STD_LOGIC;
  signal \psd_carry__0_n_1\ : STD_LOGIC;
  signal \psd_carry__0_n_2\ : STD_LOGIC;
  signal \psd_carry__0_n_3\ : STD_LOGIC;
  signal \psd_carry__0_n_4\ : STD_LOGIC;
  signal \psd_carry__0_n_5\ : STD_LOGIC;
  signal \psd_carry__0_n_6\ : STD_LOGIC;
  signal \psd_carry__0_n_7\ : STD_LOGIC;
  signal \psd_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__10_n_1\ : STD_LOGIC;
  signal \psd_carry__10_n_2\ : STD_LOGIC;
  signal \psd_carry__10_n_3\ : STD_LOGIC;
  signal \psd_carry__10_n_4\ : STD_LOGIC;
  signal \psd_carry__10_n_5\ : STD_LOGIC;
  signal \psd_carry__10_n_6\ : STD_LOGIC;
  signal \psd_carry__10_n_7\ : STD_LOGIC;
  signal \psd_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__1_n_0\ : STD_LOGIC;
  signal \psd_carry__1_n_1\ : STD_LOGIC;
  signal \psd_carry__1_n_2\ : STD_LOGIC;
  signal \psd_carry__1_n_3\ : STD_LOGIC;
  signal \psd_carry__1_n_4\ : STD_LOGIC;
  signal \psd_carry__1_n_5\ : STD_LOGIC;
  signal \psd_carry__1_n_6\ : STD_LOGIC;
  signal \psd_carry__1_n_7\ : STD_LOGIC;
  signal \psd_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__2_n_0\ : STD_LOGIC;
  signal \psd_carry__2_n_1\ : STD_LOGIC;
  signal \psd_carry__2_n_2\ : STD_LOGIC;
  signal \psd_carry__2_n_3\ : STD_LOGIC;
  signal \psd_carry__2_n_4\ : STD_LOGIC;
  signal \psd_carry__2_n_5\ : STD_LOGIC;
  signal \psd_carry__2_n_6\ : STD_LOGIC;
  signal \psd_carry__2_n_7\ : STD_LOGIC;
  signal \psd_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__3_n_0\ : STD_LOGIC;
  signal \psd_carry__3_n_1\ : STD_LOGIC;
  signal \psd_carry__3_n_2\ : STD_LOGIC;
  signal \psd_carry__3_n_3\ : STD_LOGIC;
  signal \psd_carry__3_n_4\ : STD_LOGIC;
  signal \psd_carry__3_n_5\ : STD_LOGIC;
  signal \psd_carry__3_n_6\ : STD_LOGIC;
  signal \psd_carry__3_n_7\ : STD_LOGIC;
  signal \psd_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__4_n_0\ : STD_LOGIC;
  signal \psd_carry__4_n_1\ : STD_LOGIC;
  signal \psd_carry__4_n_2\ : STD_LOGIC;
  signal \psd_carry__4_n_3\ : STD_LOGIC;
  signal \psd_carry__4_n_4\ : STD_LOGIC;
  signal \psd_carry__4_n_5\ : STD_LOGIC;
  signal \psd_carry__4_n_6\ : STD_LOGIC;
  signal \psd_carry__4_n_7\ : STD_LOGIC;
  signal \psd_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__5_n_0\ : STD_LOGIC;
  signal \psd_carry__5_n_1\ : STD_LOGIC;
  signal \psd_carry__5_n_2\ : STD_LOGIC;
  signal \psd_carry__5_n_3\ : STD_LOGIC;
  signal \psd_carry__5_n_4\ : STD_LOGIC;
  signal \psd_carry__5_n_5\ : STD_LOGIC;
  signal \psd_carry__5_n_6\ : STD_LOGIC;
  signal \psd_carry__5_n_7\ : STD_LOGIC;
  signal \psd_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__6_n_0\ : STD_LOGIC;
  signal \psd_carry__6_n_1\ : STD_LOGIC;
  signal \psd_carry__6_n_2\ : STD_LOGIC;
  signal \psd_carry__6_n_3\ : STD_LOGIC;
  signal \psd_carry__6_n_4\ : STD_LOGIC;
  signal \psd_carry__6_n_5\ : STD_LOGIC;
  signal \psd_carry__6_n_6\ : STD_LOGIC;
  signal \psd_carry__6_n_7\ : STD_LOGIC;
  signal \psd_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__7_n_0\ : STD_LOGIC;
  signal \psd_carry__7_n_1\ : STD_LOGIC;
  signal \psd_carry__7_n_2\ : STD_LOGIC;
  signal \psd_carry__7_n_3\ : STD_LOGIC;
  signal \psd_carry__7_n_4\ : STD_LOGIC;
  signal \psd_carry__7_n_5\ : STD_LOGIC;
  signal \psd_carry__7_n_6\ : STD_LOGIC;
  signal \psd_carry__7_n_7\ : STD_LOGIC;
  signal \psd_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__8_n_0\ : STD_LOGIC;
  signal \psd_carry__8_n_1\ : STD_LOGIC;
  signal \psd_carry__8_n_2\ : STD_LOGIC;
  signal \psd_carry__8_n_3\ : STD_LOGIC;
  signal \psd_carry__8_n_4\ : STD_LOGIC;
  signal \psd_carry__8_n_5\ : STD_LOGIC;
  signal \psd_carry__8_n_6\ : STD_LOGIC;
  signal \psd_carry__8_n_7\ : STD_LOGIC;
  signal \psd_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \psd_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \psd_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \psd_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \psd_carry__9_n_0\ : STD_LOGIC;
  signal \psd_carry__9_n_1\ : STD_LOGIC;
  signal \psd_carry__9_n_2\ : STD_LOGIC;
  signal \psd_carry__9_n_3\ : STD_LOGIC;
  signal \psd_carry__9_n_4\ : STD_LOGIC;
  signal \psd_carry__9_n_5\ : STD_LOGIC;
  signal \psd_carry__9_n_6\ : STD_LOGIC;
  signal \psd_carry__9_n_7\ : STD_LOGIC;
  signal psd_carry_i_1_n_0 : STD_LOGIC;
  signal psd_carry_i_2_n_0 : STD_LOGIC;
  signal psd_carry_i_3_n_0 : STD_LOGIC;
  signal psd_carry_i_4_n_0 : STD_LOGIC;
  signal psd_carry_n_0 : STD_LOGIC;
  signal psd_carry_n_1 : STD_LOGIC;
  signal psd_carry_n_2 : STD_LOGIC;
  signal psd_carry_n_3 : STD_LOGIC;
  signal psd_carry_n_4 : STD_LOGIC;
  signal psd_carry_n_5 : STD_LOGIC;
  signal psd_carry_n_6 : STD_LOGIC;
  signal psd_carry_n_7 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal \^s_axis_data_tready\ : STD_LOGIC;
  signal u_fft_i_3_n_0 : STD_LOGIC;
  signal \NLW__carry__12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__carry__12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_psd_avg_array_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_psd_avg_array_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_psd_avg_array_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_psd_avg_array_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_psd_avg_array_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_psd_avg_array_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_psd_avg_array_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_psd_avg_array_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_psd_avg_array_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_psd_carry__10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_u_fft_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 24 );
  signal NLW_u_fft_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_m_fft[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_m_fft[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_m_fft[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_m_fft[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_m_fft[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_s[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_s[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_s[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_s[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_s[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_s[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_s[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_valid_INST_0 : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of psd_array_reg_0_255_0_0 : label is 179200;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_0_0 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of psd_array_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of psd_array_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of psd_array_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of psd_array_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of psd_array_reg_0_255_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_10_10 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_10_10 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_10_10 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_10_10 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of psd_array_reg_0_255_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_11_11 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_11_11 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_11_11 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_11_11 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of psd_array_reg_0_255_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_12_12 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_12_12 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_12_12 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_12_12 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of psd_array_reg_0_255_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_13_13 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_13_13 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_13_13 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_13_13 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of psd_array_reg_0_255_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_14_14 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_14_14 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_14_14 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_14_14 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of psd_array_reg_0_255_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_15_15 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_15_15 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_15_15 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_15_15 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of psd_array_reg_0_255_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_16_16 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_16_16 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_16_16 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_16_16 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_16_16 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_16_16 : label is 16;
  attribute ram_slice_end of psd_array_reg_0_255_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_17_17 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_17_17 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_17_17 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_17_17 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_17_17 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_17_17 : label is 17;
  attribute ram_slice_end of psd_array_reg_0_255_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_18_18 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_18_18 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_18_18 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_18_18 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_18_18 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_18_18 : label is 18;
  attribute ram_slice_end of psd_array_reg_0_255_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_19_19 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_19_19 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_19_19 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_19_19 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_19_19 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_19_19 : label is 19;
  attribute ram_slice_end of psd_array_reg_0_255_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_1_1 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_1_1 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_1_1 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of psd_array_reg_0_255_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_20_20 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_20_20 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_20_20 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_20_20 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_20_20 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_20_20 : label is 20;
  attribute ram_slice_end of psd_array_reg_0_255_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_21_21 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_21_21 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_21_21 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_21_21 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_21_21 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_21_21 : label is 21;
  attribute ram_slice_end of psd_array_reg_0_255_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_22_22 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_22_22 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_22_22 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_22_22 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_22_22 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_22_22 : label is 22;
  attribute ram_slice_end of psd_array_reg_0_255_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_23_23 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_23_23 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_23_23 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_23_23 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_23_23 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_23_23 : label is 23;
  attribute ram_slice_end of psd_array_reg_0_255_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_24_24 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_24_24 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_24_24 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_24_24 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_24_24 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_24_24 : label is 24;
  attribute ram_slice_end of psd_array_reg_0_255_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_25_25 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_25_25 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_25_25 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_25_25 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_25_25 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_25_25 : label is 25;
  attribute ram_slice_end of psd_array_reg_0_255_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_26_26 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_26_26 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_26_26 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_26_26 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_26_26 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_26_26 : label is 26;
  attribute ram_slice_end of psd_array_reg_0_255_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_27_27 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_27_27 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_27_27 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_27_27 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_27_27 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_27_27 : label is 27;
  attribute ram_slice_end of psd_array_reg_0_255_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_28_28 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_28_28 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_28_28 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_28_28 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_28_28 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_28_28 : label is 28;
  attribute ram_slice_end of psd_array_reg_0_255_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_29_29 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_29_29 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_29_29 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_29_29 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_29_29 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_29_29 : label is 29;
  attribute ram_slice_end of psd_array_reg_0_255_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_2_2 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_2_2 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_2_2 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of psd_array_reg_0_255_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_30_30 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_30_30 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_30_30 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_30_30 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_30_30 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_30_30 : label is 30;
  attribute ram_slice_end of psd_array_reg_0_255_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_31_31 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_31_31 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_31_31 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_31_31 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_31_31 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_31_31 : label is 31;
  attribute ram_slice_end of psd_array_reg_0_255_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_32_32 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_32_32 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_32_32 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_32_32 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_32_32 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_32_32 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_32_32 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_32_32 : label is 32;
  attribute ram_slice_end of psd_array_reg_0_255_32_32 : label is 32;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_33_33 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_33_33 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_33_33 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_33_33 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_33_33 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_33_33 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_33_33 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_33_33 : label is 33;
  attribute ram_slice_end of psd_array_reg_0_255_33_33 : label is 33;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_34_34 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_34_34 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_34_34 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_34_34 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_34_34 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_34_34 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_34_34 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_34_34 : label is 34;
  attribute ram_slice_end of psd_array_reg_0_255_34_34 : label is 34;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_35_35 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_35_35 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_35_35 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_35_35 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_35_35 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_35_35 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_35_35 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_35_35 : label is 35;
  attribute ram_slice_end of psd_array_reg_0_255_35_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_36_36 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_36_36 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_36_36 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_36_36 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_36_36 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_36_36 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_36_36 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_36_36 : label is 36;
  attribute ram_slice_end of psd_array_reg_0_255_36_36 : label is 36;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_37_37 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_37_37 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_37_37 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_37_37 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_37_37 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_37_37 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_37_37 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_37_37 : label is 37;
  attribute ram_slice_end of psd_array_reg_0_255_37_37 : label is 37;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_38_38 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_38_38 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_38_38 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_38_38 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_38_38 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_38_38 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_38_38 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_38_38 : label is 38;
  attribute ram_slice_end of psd_array_reg_0_255_38_38 : label is 38;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_39_39 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_39_39 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_39_39 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_39_39 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_39_39 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_39_39 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_39_39 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_39_39 : label is 39;
  attribute ram_slice_end of psd_array_reg_0_255_39_39 : label is 39;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_3_3 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_3_3 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_3_3 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of psd_array_reg_0_255_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_40_40 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_40_40 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_40_40 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_40_40 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_40_40 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_40_40 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_40_40 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_40_40 : label is 40;
  attribute ram_slice_end of psd_array_reg_0_255_40_40 : label is 40;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_41_41 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_41_41 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_41_41 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_41_41 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_41_41 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_41_41 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_41_41 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_41_41 : label is 41;
  attribute ram_slice_end of psd_array_reg_0_255_41_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_42_42 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_42_42 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_42_42 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_42_42 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_42_42 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_42_42 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_42_42 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_42_42 : label is 42;
  attribute ram_slice_end of psd_array_reg_0_255_42_42 : label is 42;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_43_43 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_43_43 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_43_43 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_43_43 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_43_43 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_43_43 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_43_43 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_43_43 : label is 43;
  attribute ram_slice_end of psd_array_reg_0_255_43_43 : label is 43;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_44_44 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_44_44 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_44_44 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_44_44 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_44_44 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_44_44 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_44_44 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_44_44 : label is 44;
  attribute ram_slice_end of psd_array_reg_0_255_44_44 : label is 44;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_45_45 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_45_45 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_45_45 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_45_45 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_45_45 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_45_45 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_45_45 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_45_45 : label is 45;
  attribute ram_slice_end of psd_array_reg_0_255_45_45 : label is 45;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_46_46 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_46_46 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_46_46 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_46_46 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_46_46 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_46_46 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_46_46 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_46_46 : label is 46;
  attribute ram_slice_end of psd_array_reg_0_255_46_46 : label is 46;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_47_47 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_47_47 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_47_47 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_47_47 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_47_47 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_47_47 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_47_47 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_47_47 : label is 47;
  attribute ram_slice_end of psd_array_reg_0_255_47_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_48_48 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_48_48 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_48_48 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_48_48 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_48_48 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_48_48 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_48_48 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_48_48 : label is 48;
  attribute ram_slice_end of psd_array_reg_0_255_48_48 : label is 48;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_49_49 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_49_49 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_49_49 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_49_49 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_49_49 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_49_49 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_49_49 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_49_49 : label is 49;
  attribute ram_slice_end of psd_array_reg_0_255_49_49 : label is 49;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_4_4 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_4_4 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_4_4 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of psd_array_reg_0_255_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_50_50 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_50_50 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_50_50 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_50_50 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_50_50 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_50_50 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_50_50 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_50_50 : label is 50;
  attribute ram_slice_end of psd_array_reg_0_255_50_50 : label is 50;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_51_51 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_51_51 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_51_51 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_51_51 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_51_51 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_51_51 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_51_51 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_51_51 : label is 51;
  attribute ram_slice_end of psd_array_reg_0_255_51_51 : label is 51;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_52_52 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_52_52 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_52_52 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_52_52 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_52_52 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_52_52 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_52_52 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_52_52 : label is 52;
  attribute ram_slice_end of psd_array_reg_0_255_52_52 : label is 52;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_53_53 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_53_53 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_53_53 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_53_53 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_53_53 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_53_53 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_53_53 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_53_53 : label is 53;
  attribute ram_slice_end of psd_array_reg_0_255_53_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_54_54 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_54_54 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_54_54 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_54_54 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_54_54 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_54_54 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_54_54 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_54_54 : label is 54;
  attribute ram_slice_end of psd_array_reg_0_255_54_54 : label is 54;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_5_5 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_5_5 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_5_5 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of psd_array_reg_0_255_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_6_6 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_6_6 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_6_6 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of psd_array_reg_0_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_7_7 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_7_7 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_7_7 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of psd_array_reg_0_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_8_8 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_8_8 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_8_8 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_8_8 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of psd_array_reg_0_255_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_0_255_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_0_255_9_9 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_0_255_9_9 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_0_255_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of psd_array_reg_0_255_9_9 : label is 255;
  attribute ram_offset of psd_array_reg_0_255_9_9 : label is 0;
  attribute ram_slice_begin of psd_array_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of psd_array_reg_0_255_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_0_0 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_0_0 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_0_0 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_0_0 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_0_0 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_0_0 : label is 0;
  attribute ram_slice_end of psd_array_reg_256_511_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_10_10 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_10_10 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_10_10 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_10_10 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_10_10 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_10_10 : label is 10;
  attribute ram_slice_end of psd_array_reg_256_511_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_11_11 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_11_11 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_11_11 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_11_11 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_11_11 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_11_11 : label is 11;
  attribute ram_slice_end of psd_array_reg_256_511_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_12_12 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_12_12 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_12_12 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_12_12 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_12_12 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_12_12 : label is 12;
  attribute ram_slice_end of psd_array_reg_256_511_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_13_13 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_13_13 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_13_13 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_13_13 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_13_13 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_13_13 : label is 13;
  attribute ram_slice_end of psd_array_reg_256_511_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_14_14 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_14_14 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_14_14 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_14_14 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_14_14 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_14_14 : label is 14;
  attribute ram_slice_end of psd_array_reg_256_511_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_15_15 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_15_15 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_15_15 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_15_15 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_15_15 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_15_15 : label is 15;
  attribute ram_slice_end of psd_array_reg_256_511_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_16_16 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_16_16 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_16_16 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_16_16 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_16_16 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_16_16 : label is 16;
  attribute ram_slice_end of psd_array_reg_256_511_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_17_17 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_17_17 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_17_17 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_17_17 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_17_17 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_17_17 : label is 17;
  attribute ram_slice_end of psd_array_reg_256_511_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_18_18 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_18_18 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_18_18 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_18_18 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_18_18 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_18_18 : label is 18;
  attribute ram_slice_end of psd_array_reg_256_511_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_19_19 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_19_19 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_19_19 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_19_19 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_19_19 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_19_19 : label is 19;
  attribute ram_slice_end of psd_array_reg_256_511_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_1_1 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_1_1 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_1_1 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_1_1 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_1_1 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_1_1 : label is 1;
  attribute ram_slice_end of psd_array_reg_256_511_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_20_20 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_20_20 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_20_20 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_20_20 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_20_20 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_20_20 : label is 20;
  attribute ram_slice_end of psd_array_reg_256_511_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_21_21 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_21_21 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_21_21 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_21_21 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_21_21 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_21_21 : label is 21;
  attribute ram_slice_end of psd_array_reg_256_511_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_22_22 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_22_22 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_22_22 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_22_22 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_22_22 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_22_22 : label is 22;
  attribute ram_slice_end of psd_array_reg_256_511_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_23_23 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_23_23 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_23_23 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_23_23 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_23_23 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_23_23 : label is 23;
  attribute ram_slice_end of psd_array_reg_256_511_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_24_24 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_24_24 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_24_24 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_24_24 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_24_24 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_24_24 : label is 24;
  attribute ram_slice_end of psd_array_reg_256_511_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_25_25 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_25_25 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_25_25 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_25_25 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_25_25 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_25_25 : label is 25;
  attribute ram_slice_end of psd_array_reg_256_511_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_26_26 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_26_26 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_26_26 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_26_26 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_26_26 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_26_26 : label is 26;
  attribute ram_slice_end of psd_array_reg_256_511_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_27_27 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_27_27 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_27_27 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_27_27 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_27_27 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_27_27 : label is 27;
  attribute ram_slice_end of psd_array_reg_256_511_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_28_28 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_28_28 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_28_28 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_28_28 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_28_28 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_28_28 : label is 28;
  attribute ram_slice_end of psd_array_reg_256_511_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_29_29 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_29_29 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_29_29 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_29_29 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_29_29 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_29_29 : label is 29;
  attribute ram_slice_end of psd_array_reg_256_511_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_2_2 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_2_2 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_2_2 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_2_2 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_2_2 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_2_2 : label is 2;
  attribute ram_slice_end of psd_array_reg_256_511_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_30_30 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_30_30 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_30_30 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_30_30 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_30_30 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_30_30 : label is 30;
  attribute ram_slice_end of psd_array_reg_256_511_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_31_31 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_31_31 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_31_31 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_31_31 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_31_31 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_31_31 : label is 31;
  attribute ram_slice_end of psd_array_reg_256_511_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_32_32 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_32_32 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_32_32 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_32_32 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_32_32 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_32_32 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_32_32 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_32_32 : label is 32;
  attribute ram_slice_end of psd_array_reg_256_511_32_32 : label is 32;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_33_33 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_33_33 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_33_33 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_33_33 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_33_33 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_33_33 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_33_33 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_33_33 : label is 33;
  attribute ram_slice_end of psd_array_reg_256_511_33_33 : label is 33;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_34_34 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_34_34 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_34_34 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_34_34 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_34_34 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_34_34 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_34_34 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_34_34 : label is 34;
  attribute ram_slice_end of psd_array_reg_256_511_34_34 : label is 34;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_35_35 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_35_35 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_35_35 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_35_35 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_35_35 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_35_35 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_35_35 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_35_35 : label is 35;
  attribute ram_slice_end of psd_array_reg_256_511_35_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_36_36 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_36_36 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_36_36 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_36_36 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_36_36 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_36_36 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_36_36 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_36_36 : label is 36;
  attribute ram_slice_end of psd_array_reg_256_511_36_36 : label is 36;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_37_37 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_37_37 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_37_37 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_37_37 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_37_37 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_37_37 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_37_37 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_37_37 : label is 37;
  attribute ram_slice_end of psd_array_reg_256_511_37_37 : label is 37;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_38_38 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_38_38 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_38_38 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_38_38 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_38_38 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_38_38 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_38_38 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_38_38 : label is 38;
  attribute ram_slice_end of psd_array_reg_256_511_38_38 : label is 38;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_39_39 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_39_39 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_39_39 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_39_39 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_39_39 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_39_39 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_39_39 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_39_39 : label is 39;
  attribute ram_slice_end of psd_array_reg_256_511_39_39 : label is 39;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_3_3 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_3_3 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_3_3 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_3_3 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_3_3 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_3_3 : label is 3;
  attribute ram_slice_end of psd_array_reg_256_511_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_40_40 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_40_40 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_40_40 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_40_40 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_40_40 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_40_40 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_40_40 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_40_40 : label is 40;
  attribute ram_slice_end of psd_array_reg_256_511_40_40 : label is 40;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_41_41 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_41_41 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_41_41 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_41_41 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_41_41 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_41_41 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_41_41 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_41_41 : label is 41;
  attribute ram_slice_end of psd_array_reg_256_511_41_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_42_42 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_42_42 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_42_42 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_42_42 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_42_42 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_42_42 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_42_42 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_42_42 : label is 42;
  attribute ram_slice_end of psd_array_reg_256_511_42_42 : label is 42;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_43_43 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_43_43 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_43_43 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_43_43 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_43_43 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_43_43 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_43_43 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_43_43 : label is 43;
  attribute ram_slice_end of psd_array_reg_256_511_43_43 : label is 43;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_44_44 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_44_44 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_44_44 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_44_44 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_44_44 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_44_44 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_44_44 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_44_44 : label is 44;
  attribute ram_slice_end of psd_array_reg_256_511_44_44 : label is 44;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_45_45 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_45_45 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_45_45 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_45_45 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_45_45 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_45_45 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_45_45 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_45_45 : label is 45;
  attribute ram_slice_end of psd_array_reg_256_511_45_45 : label is 45;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_46_46 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_46_46 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_46_46 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_46_46 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_46_46 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_46_46 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_46_46 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_46_46 : label is 46;
  attribute ram_slice_end of psd_array_reg_256_511_46_46 : label is 46;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_47_47 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_47_47 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_47_47 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_47_47 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_47_47 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_47_47 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_47_47 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_47_47 : label is 47;
  attribute ram_slice_end of psd_array_reg_256_511_47_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_48_48 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_48_48 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_48_48 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_48_48 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_48_48 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_48_48 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_48_48 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_48_48 : label is 48;
  attribute ram_slice_end of psd_array_reg_256_511_48_48 : label is 48;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_49_49 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_49_49 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_49_49 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_49_49 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_49_49 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_49_49 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_49_49 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_49_49 : label is 49;
  attribute ram_slice_end of psd_array_reg_256_511_49_49 : label is 49;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_4_4 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_4_4 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_4_4 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_4_4 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_4_4 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_4_4 : label is 4;
  attribute ram_slice_end of psd_array_reg_256_511_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_50_50 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_50_50 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_50_50 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_50_50 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_50_50 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_50_50 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_50_50 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_50_50 : label is 50;
  attribute ram_slice_end of psd_array_reg_256_511_50_50 : label is 50;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_51_51 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_51_51 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_51_51 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_51_51 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_51_51 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_51_51 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_51_51 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_51_51 : label is 51;
  attribute ram_slice_end of psd_array_reg_256_511_51_51 : label is 51;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_52_52 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_52_52 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_52_52 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_52_52 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_52_52 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_52_52 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_52_52 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_52_52 : label is 52;
  attribute ram_slice_end of psd_array_reg_256_511_52_52 : label is 52;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_53_53 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_53_53 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_53_53 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_53_53 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_53_53 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_53_53 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_53_53 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_53_53 : label is 53;
  attribute ram_slice_end of psd_array_reg_256_511_53_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_54_54 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_54_54 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_54_54 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_54_54 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_54_54 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_54_54 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_54_54 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_54_54 : label is 54;
  attribute ram_slice_end of psd_array_reg_256_511_54_54 : label is 54;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_5_5 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_5_5 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_5_5 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_5_5 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_5_5 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_5_5 : label is 5;
  attribute ram_slice_end of psd_array_reg_256_511_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_6_6 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_6_6 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_6_6 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_6_6 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_6_6 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_6_6 : label is 6;
  attribute ram_slice_end of psd_array_reg_256_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_7_7 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_7_7 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_7_7 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_7_7 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_7_7 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_7_7 : label is 7;
  attribute ram_slice_end of psd_array_reg_256_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_8_8 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_8_8 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_8_8 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_8_8 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_8_8 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_8_8 : label is 8;
  attribute ram_slice_end of psd_array_reg_256_511_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_256_511_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_256_511_9_9 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_256_511_9_9 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_256_511_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_256_511_9_9 : label is 256;
  attribute ram_addr_end of psd_array_reg_256_511_9_9 : label is 511;
  attribute ram_offset of psd_array_reg_256_511_9_9 : label is 0;
  attribute ram_slice_begin of psd_array_reg_256_511_9_9 : label is 9;
  attribute ram_slice_end of psd_array_reg_256_511_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_0_0 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_0_0 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_0_0 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_0_0 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_0_0 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_0_0 : label is 0;
  attribute ram_slice_end of psd_array_reg_512_767_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_10_10 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_10_10 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_10_10 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_10_10 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_10_10 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_10_10 : label is 10;
  attribute ram_slice_end of psd_array_reg_512_767_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_11_11 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_11_11 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_11_11 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_11_11 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_11_11 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_11_11 : label is 11;
  attribute ram_slice_end of psd_array_reg_512_767_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_12_12 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_12_12 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_12_12 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_12_12 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_12_12 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_12_12 : label is 12;
  attribute ram_slice_end of psd_array_reg_512_767_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_13_13 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_13_13 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_13_13 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_13_13 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_13_13 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_13_13 : label is 13;
  attribute ram_slice_end of psd_array_reg_512_767_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_14_14 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_14_14 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_14_14 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_14_14 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_14_14 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_14_14 : label is 14;
  attribute ram_slice_end of psd_array_reg_512_767_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_15_15 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_15_15 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_15_15 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_15_15 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_15_15 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_15_15 : label is 15;
  attribute ram_slice_end of psd_array_reg_512_767_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_16_16 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_16_16 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_16_16 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_16_16 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_16_16 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_16_16 : label is 16;
  attribute ram_slice_end of psd_array_reg_512_767_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_17_17 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_17_17 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_17_17 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_17_17 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_17_17 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_17_17 : label is 17;
  attribute ram_slice_end of psd_array_reg_512_767_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_18_18 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_18_18 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_18_18 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_18_18 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_18_18 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_18_18 : label is 18;
  attribute ram_slice_end of psd_array_reg_512_767_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_19_19 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_19_19 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_19_19 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_19_19 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_19_19 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_19_19 : label is 19;
  attribute ram_slice_end of psd_array_reg_512_767_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_1_1 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_1_1 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_1_1 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_1_1 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_1_1 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_1_1 : label is 1;
  attribute ram_slice_end of psd_array_reg_512_767_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_20_20 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_20_20 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_20_20 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_20_20 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_20_20 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_20_20 : label is 20;
  attribute ram_slice_end of psd_array_reg_512_767_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_21_21 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_21_21 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_21_21 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_21_21 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_21_21 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_21_21 : label is 21;
  attribute ram_slice_end of psd_array_reg_512_767_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_22_22 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_22_22 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_22_22 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_22_22 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_22_22 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_22_22 : label is 22;
  attribute ram_slice_end of psd_array_reg_512_767_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_23_23 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_23_23 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_23_23 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_23_23 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_23_23 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_23_23 : label is 23;
  attribute ram_slice_end of psd_array_reg_512_767_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_24_24 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_24_24 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_24_24 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_24_24 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_24_24 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_24_24 : label is 24;
  attribute ram_slice_end of psd_array_reg_512_767_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_25_25 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_25_25 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_25_25 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_25_25 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_25_25 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_25_25 : label is 25;
  attribute ram_slice_end of psd_array_reg_512_767_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_26_26 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_26_26 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_26_26 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_26_26 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_26_26 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_26_26 : label is 26;
  attribute ram_slice_end of psd_array_reg_512_767_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_27_27 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_27_27 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_27_27 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_27_27 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_27_27 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_27_27 : label is 27;
  attribute ram_slice_end of psd_array_reg_512_767_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_28_28 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_28_28 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_28_28 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_28_28 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_28_28 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_28_28 : label is 28;
  attribute ram_slice_end of psd_array_reg_512_767_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_29_29 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_29_29 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_29_29 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_29_29 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_29_29 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_29_29 : label is 29;
  attribute ram_slice_end of psd_array_reg_512_767_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_2_2 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_2_2 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_2_2 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_2_2 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_2_2 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_2_2 : label is 2;
  attribute ram_slice_end of psd_array_reg_512_767_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_30_30 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_30_30 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_30_30 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_30_30 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_30_30 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_30_30 : label is 30;
  attribute ram_slice_end of psd_array_reg_512_767_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_31_31 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_31_31 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_31_31 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_31_31 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_31_31 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_31_31 : label is 31;
  attribute ram_slice_end of psd_array_reg_512_767_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_32_32 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_32_32 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_32_32 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_32_32 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_32_32 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_32_32 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_32_32 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_32_32 : label is 32;
  attribute ram_slice_end of psd_array_reg_512_767_32_32 : label is 32;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_33_33 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_33_33 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_33_33 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_33_33 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_33_33 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_33_33 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_33_33 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_33_33 : label is 33;
  attribute ram_slice_end of psd_array_reg_512_767_33_33 : label is 33;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_34_34 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_34_34 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_34_34 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_34_34 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_34_34 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_34_34 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_34_34 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_34_34 : label is 34;
  attribute ram_slice_end of psd_array_reg_512_767_34_34 : label is 34;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_35_35 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_35_35 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_35_35 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_35_35 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_35_35 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_35_35 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_35_35 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_35_35 : label is 35;
  attribute ram_slice_end of psd_array_reg_512_767_35_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_36_36 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_36_36 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_36_36 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_36_36 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_36_36 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_36_36 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_36_36 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_36_36 : label is 36;
  attribute ram_slice_end of psd_array_reg_512_767_36_36 : label is 36;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_37_37 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_37_37 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_37_37 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_37_37 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_37_37 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_37_37 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_37_37 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_37_37 : label is 37;
  attribute ram_slice_end of psd_array_reg_512_767_37_37 : label is 37;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_38_38 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_38_38 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_38_38 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_38_38 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_38_38 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_38_38 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_38_38 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_38_38 : label is 38;
  attribute ram_slice_end of psd_array_reg_512_767_38_38 : label is 38;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_39_39 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_39_39 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_39_39 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_39_39 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_39_39 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_39_39 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_39_39 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_39_39 : label is 39;
  attribute ram_slice_end of psd_array_reg_512_767_39_39 : label is 39;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_3_3 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_3_3 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_3_3 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_3_3 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_3_3 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_3_3 : label is 3;
  attribute ram_slice_end of psd_array_reg_512_767_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_40_40 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_40_40 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_40_40 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_40_40 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_40_40 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_40_40 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_40_40 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_40_40 : label is 40;
  attribute ram_slice_end of psd_array_reg_512_767_40_40 : label is 40;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_41_41 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_41_41 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_41_41 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_41_41 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_41_41 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_41_41 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_41_41 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_41_41 : label is 41;
  attribute ram_slice_end of psd_array_reg_512_767_41_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_42_42 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_42_42 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_42_42 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_42_42 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_42_42 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_42_42 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_42_42 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_42_42 : label is 42;
  attribute ram_slice_end of psd_array_reg_512_767_42_42 : label is 42;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_43_43 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_43_43 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_43_43 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_43_43 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_43_43 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_43_43 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_43_43 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_43_43 : label is 43;
  attribute ram_slice_end of psd_array_reg_512_767_43_43 : label is 43;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_44_44 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_44_44 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_44_44 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_44_44 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_44_44 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_44_44 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_44_44 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_44_44 : label is 44;
  attribute ram_slice_end of psd_array_reg_512_767_44_44 : label is 44;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_45_45 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_45_45 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_45_45 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_45_45 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_45_45 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_45_45 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_45_45 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_45_45 : label is 45;
  attribute ram_slice_end of psd_array_reg_512_767_45_45 : label is 45;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_46_46 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_46_46 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_46_46 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_46_46 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_46_46 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_46_46 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_46_46 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_46_46 : label is 46;
  attribute ram_slice_end of psd_array_reg_512_767_46_46 : label is 46;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_47_47 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_47_47 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_47_47 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_47_47 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_47_47 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_47_47 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_47_47 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_47_47 : label is 47;
  attribute ram_slice_end of psd_array_reg_512_767_47_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_48_48 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_48_48 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_48_48 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_48_48 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_48_48 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_48_48 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_48_48 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_48_48 : label is 48;
  attribute ram_slice_end of psd_array_reg_512_767_48_48 : label is 48;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_49_49 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_49_49 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_49_49 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_49_49 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_49_49 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_49_49 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_49_49 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_49_49 : label is 49;
  attribute ram_slice_end of psd_array_reg_512_767_49_49 : label is 49;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_4_4 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_4_4 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_4_4 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_4_4 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_4_4 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_4_4 : label is 4;
  attribute ram_slice_end of psd_array_reg_512_767_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_50_50 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_50_50 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_50_50 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_50_50 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_50_50 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_50_50 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_50_50 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_50_50 : label is 50;
  attribute ram_slice_end of psd_array_reg_512_767_50_50 : label is 50;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_51_51 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_51_51 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_51_51 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_51_51 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_51_51 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_51_51 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_51_51 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_51_51 : label is 51;
  attribute ram_slice_end of psd_array_reg_512_767_51_51 : label is 51;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_52_52 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_52_52 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_52_52 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_52_52 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_52_52 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_52_52 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_52_52 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_52_52 : label is 52;
  attribute ram_slice_end of psd_array_reg_512_767_52_52 : label is 52;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_53_53 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_53_53 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_53_53 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_53_53 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_53_53 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_53_53 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_53_53 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_53_53 : label is 53;
  attribute ram_slice_end of psd_array_reg_512_767_53_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_54_54 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_54_54 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_54_54 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_54_54 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_54_54 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_54_54 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_54_54 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_54_54 : label is 54;
  attribute ram_slice_end of psd_array_reg_512_767_54_54 : label is 54;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_5_5 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_5_5 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_5_5 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_5_5 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_5_5 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_5_5 : label is 5;
  attribute ram_slice_end of psd_array_reg_512_767_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_6_6 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_6_6 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_6_6 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_6_6 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_6_6 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_6_6 : label is 6;
  attribute ram_slice_end of psd_array_reg_512_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_7_7 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_7_7 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_7_7 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_7_7 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_7_7 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_7_7 : label is 7;
  attribute ram_slice_end of psd_array_reg_512_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_8_8 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_8_8 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_8_8 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_8_8 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_8_8 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_8_8 : label is 8;
  attribute ram_slice_end of psd_array_reg_512_767_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_512_767_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_512_767_9_9 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_512_767_9_9 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_512_767_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_512_767_9_9 : label is 512;
  attribute ram_addr_end of psd_array_reg_512_767_9_9 : label is 767;
  attribute ram_offset of psd_array_reg_512_767_9_9 : label is 0;
  attribute ram_slice_begin of psd_array_reg_512_767_9_9 : label is 9;
  attribute ram_slice_end of psd_array_reg_512_767_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_0_0 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_0_0 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_0_0 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_0_0 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_end of psd_array_reg_768_1023_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_10_10 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_10_10 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_10_10 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_10_10 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_10_10 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_10_10 : label is 10;
  attribute ram_slice_end of psd_array_reg_768_1023_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_11_11 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_11_11 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_11_11 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_11_11 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_11_11 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_11_11 : label is 11;
  attribute ram_slice_end of psd_array_reg_768_1023_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_12_12 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_12_12 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_12_12 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_12_12 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_12_12 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_12_12 : label is 12;
  attribute ram_slice_end of psd_array_reg_768_1023_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_13_13 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_13_13 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_13_13 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_13_13 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_13_13 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_13_13 : label is 13;
  attribute ram_slice_end of psd_array_reg_768_1023_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_14_14 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_14_14 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_14_14 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_14_14 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_14_14 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_14_14 : label is 14;
  attribute ram_slice_end of psd_array_reg_768_1023_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_15_15 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_15_15 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_15_15 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_15_15 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_15_15 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_15_15 : label is 15;
  attribute ram_slice_end of psd_array_reg_768_1023_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_16_16 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_16_16 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_16_16 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_16_16 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_16_16 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_16_16 : label is 16;
  attribute ram_slice_end of psd_array_reg_768_1023_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_17_17 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_17_17 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_17_17 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_17_17 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_17_17 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_17_17 : label is 17;
  attribute ram_slice_end of psd_array_reg_768_1023_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_18_18 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_18_18 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_18_18 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_18_18 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_18_18 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_18_18 : label is 18;
  attribute ram_slice_end of psd_array_reg_768_1023_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_19_19 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_19_19 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_19_19 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_19_19 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_19_19 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_19_19 : label is 19;
  attribute ram_slice_end of psd_array_reg_768_1023_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_1_1 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_1_1 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_1_1 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_1_1 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_1_1 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_1_1 : label is 1;
  attribute ram_slice_end of psd_array_reg_768_1023_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_20_20 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_20_20 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_20_20 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_20_20 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_20_20 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_20_20 : label is 20;
  attribute ram_slice_end of psd_array_reg_768_1023_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_21_21 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_21_21 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_21_21 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_21_21 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_21_21 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_21_21 : label is 21;
  attribute ram_slice_end of psd_array_reg_768_1023_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_22_22 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_22_22 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_22_22 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_22_22 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_22_22 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_22_22 : label is 22;
  attribute ram_slice_end of psd_array_reg_768_1023_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_23_23 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_23_23 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_23_23 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_23_23 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_23_23 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_23_23 : label is 23;
  attribute ram_slice_end of psd_array_reg_768_1023_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_24_24 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_24_24 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_24_24 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_24_24 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_24_24 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_24_24 : label is 24;
  attribute ram_slice_end of psd_array_reg_768_1023_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_25_25 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_25_25 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_25_25 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_25_25 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_25_25 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_25_25 : label is 25;
  attribute ram_slice_end of psd_array_reg_768_1023_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_26_26 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_26_26 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_26_26 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_26_26 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_26_26 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_26_26 : label is 26;
  attribute ram_slice_end of psd_array_reg_768_1023_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_27_27 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_27_27 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_27_27 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_27_27 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_27_27 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_27_27 : label is 27;
  attribute ram_slice_end of psd_array_reg_768_1023_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_28_28 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_28_28 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_28_28 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_28_28 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_28_28 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_28_28 : label is 28;
  attribute ram_slice_end of psd_array_reg_768_1023_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_29_29 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_29_29 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_29_29 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_29_29 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_29_29 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_29_29 : label is 29;
  attribute ram_slice_end of psd_array_reg_768_1023_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_2_2 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_2_2 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_2_2 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_2_2 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_2_2 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_2_2 : label is 2;
  attribute ram_slice_end of psd_array_reg_768_1023_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_30_30 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_30_30 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_30_30 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_30_30 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_30_30 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_30_30 : label is 30;
  attribute ram_slice_end of psd_array_reg_768_1023_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_31_31 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_31_31 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_31_31 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_31_31 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_31_31 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_31_31 : label is 31;
  attribute ram_slice_end of psd_array_reg_768_1023_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_32_32 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_32_32 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_32_32 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_32_32 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_32_32 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_32_32 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_32_32 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_32_32 : label is 32;
  attribute ram_slice_end of psd_array_reg_768_1023_32_32 : label is 32;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_33_33 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_33_33 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_33_33 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_33_33 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_33_33 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_33_33 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_33_33 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_33_33 : label is 33;
  attribute ram_slice_end of psd_array_reg_768_1023_33_33 : label is 33;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_34_34 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_34_34 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_34_34 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_34_34 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_34_34 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_34_34 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_34_34 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_34_34 : label is 34;
  attribute ram_slice_end of psd_array_reg_768_1023_34_34 : label is 34;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_35_35 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_35_35 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_35_35 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_35_35 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_35_35 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_35_35 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_35_35 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_35_35 : label is 35;
  attribute ram_slice_end of psd_array_reg_768_1023_35_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_36_36 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_36_36 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_36_36 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_36_36 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_36_36 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_36_36 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_36_36 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_36_36 : label is 36;
  attribute ram_slice_end of psd_array_reg_768_1023_36_36 : label is 36;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_37_37 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_37_37 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_37_37 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_37_37 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_37_37 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_37_37 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_37_37 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_37_37 : label is 37;
  attribute ram_slice_end of psd_array_reg_768_1023_37_37 : label is 37;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_38_38 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_38_38 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_38_38 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_38_38 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_38_38 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_38_38 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_38_38 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_38_38 : label is 38;
  attribute ram_slice_end of psd_array_reg_768_1023_38_38 : label is 38;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_39_39 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_39_39 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_39_39 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_39_39 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_39_39 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_39_39 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_39_39 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_39_39 : label is 39;
  attribute ram_slice_end of psd_array_reg_768_1023_39_39 : label is 39;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_3_3 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_3_3 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_3_3 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_3_3 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_3_3 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_3_3 : label is 3;
  attribute ram_slice_end of psd_array_reg_768_1023_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_40_40 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_40_40 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_40_40 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_40_40 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_40_40 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_40_40 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_40_40 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_40_40 : label is 40;
  attribute ram_slice_end of psd_array_reg_768_1023_40_40 : label is 40;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_41_41 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_41_41 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_41_41 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_41_41 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_41_41 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_41_41 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_41_41 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_41_41 : label is 41;
  attribute ram_slice_end of psd_array_reg_768_1023_41_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_42_42 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_42_42 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_42_42 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_42_42 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_42_42 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_42_42 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_42_42 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_42_42 : label is 42;
  attribute ram_slice_end of psd_array_reg_768_1023_42_42 : label is 42;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_43_43 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_43_43 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_43_43 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_43_43 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_43_43 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_43_43 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_43_43 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_43_43 : label is 43;
  attribute ram_slice_end of psd_array_reg_768_1023_43_43 : label is 43;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_44_44 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_44_44 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_44_44 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_44_44 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_44_44 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_44_44 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_44_44 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_44_44 : label is 44;
  attribute ram_slice_end of psd_array_reg_768_1023_44_44 : label is 44;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_45_45 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_45_45 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_45_45 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_45_45 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_45_45 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_45_45 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_45_45 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_45_45 : label is 45;
  attribute ram_slice_end of psd_array_reg_768_1023_45_45 : label is 45;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_46_46 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_46_46 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_46_46 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_46_46 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_46_46 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_46_46 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_46_46 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_46_46 : label is 46;
  attribute ram_slice_end of psd_array_reg_768_1023_46_46 : label is 46;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_47_47 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_47_47 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_47_47 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_47_47 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_47_47 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_47_47 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_47_47 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_47_47 : label is 47;
  attribute ram_slice_end of psd_array_reg_768_1023_47_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_48_48 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_48_48 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_48_48 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_48_48 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_48_48 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_48_48 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_48_48 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_48_48 : label is 48;
  attribute ram_slice_end of psd_array_reg_768_1023_48_48 : label is 48;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_49_49 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_49_49 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_49_49 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_49_49 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_49_49 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_49_49 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_49_49 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_49_49 : label is 49;
  attribute ram_slice_end of psd_array_reg_768_1023_49_49 : label is 49;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_4_4 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_4_4 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_4_4 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_4_4 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_4_4 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_4_4 : label is 4;
  attribute ram_slice_end of psd_array_reg_768_1023_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_50_50 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_50_50 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_50_50 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_50_50 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_50_50 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_50_50 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_50_50 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_50_50 : label is 50;
  attribute ram_slice_end of psd_array_reg_768_1023_50_50 : label is 50;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_51_51 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_51_51 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_51_51 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_51_51 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_51_51 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_51_51 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_51_51 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_51_51 : label is 51;
  attribute ram_slice_end of psd_array_reg_768_1023_51_51 : label is 51;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_52_52 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_52_52 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_52_52 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_52_52 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_52_52 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_52_52 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_52_52 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_52_52 : label is 52;
  attribute ram_slice_end of psd_array_reg_768_1023_52_52 : label is 52;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_53_53 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_53_53 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_53_53 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_53_53 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_53_53 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_53_53 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_53_53 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_53_53 : label is 53;
  attribute ram_slice_end of psd_array_reg_768_1023_53_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_54_54 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_54_54 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_54_54 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_54_54 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_54_54 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_54_54 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_54_54 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_54_54 : label is 54;
  attribute ram_slice_end of psd_array_reg_768_1023_54_54 : label is 54;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_5_5 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_5_5 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_5_5 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_5_5 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_5_5 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_5_5 : label is 5;
  attribute ram_slice_end of psd_array_reg_768_1023_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_6_6 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_6_6 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_6_6 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_6_6 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_6_6 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_6_6 : label is 6;
  attribute ram_slice_end of psd_array_reg_768_1023_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_7_7 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_7_7 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_7_7 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_7_7 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_7_7 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_7_7 : label is 7;
  attribute ram_slice_end of psd_array_reg_768_1023_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_8_8 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_8_8 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_8_8 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_8_8 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_8_8 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_8_8 : label is 8;
  attribute ram_slice_end of psd_array_reg_768_1023_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of psd_array_reg_768_1023_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_array_reg_768_1023_9_9 : label is 179200;
  attribute RTL_RAM_NAME of psd_array_reg_768_1023_9_9 : label is "dut/psd_array_reg";
  attribute RTL_RAM_TYPE of psd_array_reg_768_1023_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of psd_array_reg_768_1023_9_9 : label is 768;
  attribute ram_addr_end of psd_array_reg_768_1023_9_9 : label is 1023;
  attribute ram_offset of psd_array_reg_768_1023_9_9 : label is 0;
  attribute ram_slice_begin of psd_array_reg_768_1023_9_9 : label is 9;
  attribute ram_slice_end of psd_array_reg_768_1023_9_9 : label is 9;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of psd_avg_array_reg_0 : label is "p4_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of psd_avg_array_reg_0 : label is "p4_d32";
  attribute METHODOLOGY_DRC_VIOS of psd_avg_array_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_avg_array_reg_0 : label is 49152;
  attribute RTL_RAM_NAME of psd_avg_array_reg_0 : label is "inst/dut/psd_avg_array_reg_0";
  attribute RTL_RAM_TYPE of psd_avg_array_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin of psd_avg_array_reg_0 : label is 0;
  attribute ram_addr_end of psd_avg_array_reg_0 : label is 1023;
  attribute ram_offset of psd_avg_array_reg_0 : label is 0;
  attribute ram_slice_begin of psd_avg_array_reg_0 : label is 0;
  attribute ram_slice_end of psd_avg_array_reg_0 : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of psd_avg_array_reg_1 : label is "p0_d12";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of psd_avg_array_reg_1 : label is "p0_d12";
  attribute METHODOLOGY_DRC_VIOS of psd_avg_array_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of psd_avg_array_reg_1 : label is 49152;
  attribute RTL_RAM_NAME of psd_avg_array_reg_1 : label is "inst/dut/psd_avg_array_reg_1";
  attribute RTL_RAM_TYPE of psd_avg_array_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of psd_avg_array_reg_1 : label is 0;
  attribute ram_addr_end of psd_avg_array_reg_1 : label is 1023;
  attribute ram_offset of psd_avg_array_reg_1 : label is 0;
  attribute ram_slice_begin of psd_avg_array_reg_1 : label is 36;
  attribute ram_slice_end of psd_avg_array_reg_1 : label is 47;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of psd_carry : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__10\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \psd_carry__9\ : label is 35;
  attribute x_core_info : string;
  attribute x_core_info of u_fft : label is "xfft_v9_1_8,Vivado 2022.2";
  attribute SOFT_HLUTNM of u_fft_i_3 : label is "soft_lutpair3";
begin
  m_axis_data_tvalid <= \^m_axis_data_tvalid\;
  rst_n_0 <= \^rst_n_0\;
  s_axis_data_tready <= \^s_axis_data_tready\;
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(3 downto 0),
      O(3) => \_carry_n_4\,
      O(2) => \_carry_n_5\,
      O(1) => \_carry_n_6\,
      O(0) => \_carry_n_7\,
      S(3) => \_carry_i_5_n_0\,
      S(2) => \_carry_i_6_n_0\,
      S(1) => \_carry_i_7_n_0\,
      S(0) => \_carry_i_8_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(7 downto 4),
      O(3) => \_carry__0_n_4\,
      O(2) => \_carry__0_n_5\,
      O(1) => \_carry__0_n_6\,
      O(0) => \_carry__0_n_7\,
      S(3) => \_carry__0_i_5_n_0\,
      S(2) => \_carry__0_i_6_n_0\,
      S(1) => \_carry__0_i_7_n_0\,
      S(0) => \_carry__0_i_8_n_0\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_7_7_n_0,
      I1 => psd_array_reg_512_767_7_7_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_7_7_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_7_7_n_0,
      O => \p_1_out__3\(7)
    );
\_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_6_6_n_0,
      I1 => psd_array_reg_512_767_6_6_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_6_6_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_6_6_n_0,
      O => \p_1_out__3\(6)
    );
\_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_5_5_n_0,
      I1 => psd_array_reg_512_767_5_5_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_5_5_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_5_5_n_0,
      O => \p_1_out__3\(5)
    );
\_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_4_4_n_0,
      I1 => psd_array_reg_512_767_4_4_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_4_4_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_4_4_n_0,
      O => \p_1_out__3\(4)
    );
\_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(7),
      I1 => \psd_carry__0_n_4\,
      O => \_carry__0_i_5_n_0\
    );
\_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(6),
      I1 => \psd_carry__0_n_5\,
      O => \_carry__0_i_6_n_0\
    );
\_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(5),
      I1 => \psd_carry__0_n_6\,
      O => \_carry__0_i_7_n_0\
    );
\_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(4),
      I1 => \psd_carry__0_n_7\,
      O => \_carry__0_i_8_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(11 downto 8),
      O(3) => \_carry__1_n_4\,
      O(2) => \_carry__1_n_5\,
      O(1) => \_carry__1_n_6\,
      O(0) => \_carry__1_n_7\,
      S(3) => \_carry__1_i_5_n_0\,
      S(2) => \_carry__1_i_6_n_0\,
      S(1) => \_carry__1_i_7_n_0\,
      S(0) => \_carry__1_i_8_n_0\
    );
\_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__9_n_0\,
      CO(3) => \_carry__10_n_0\,
      CO(2) => \_carry__10_n_1\,
      CO(1) => \_carry__10_n_2\,
      CO(0) => \_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => \psd_carry__10_n_4\,
      DI(2 downto 0) => \p_1_out__3\(46 downto 44),
      O(3) => \_carry__10_n_4\,
      O(2) => \_carry__10_n_5\,
      O(1) => \_carry__10_n_6\,
      O(0) => \_carry__10_n_7\,
      S(3) => \_carry__10_i_4_n_0\,
      S(2) => \_carry__10_i_5_n_0\,
      S(1) => \_carry__10_i_6_n_0\,
      S(0) => \_carry__10_i_7_n_0\
    );
\_carry__10_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_46_46_n_0,
      I1 => psd_array_reg_512_767_46_46_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_46_46_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_46_46_n_0,
      O => \p_1_out__3\(46)
    );
\_carry__10_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_45_45_n_0,
      I1 => psd_array_reg_512_767_45_45_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_45_45_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_45_45_n_0,
      O => \p_1_out__3\(45)
    );
\_carry__10_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_44_44_n_0,
      I1 => psd_array_reg_512_767_44_44_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_44_44_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_44_44_n_0,
      O => \p_1_out__3\(44)
    );
\_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_n_4\,
      I1 => \p_1_out__3\(47),
      O => \_carry__10_i_4_n_0\
    );
\_carry__10_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(46),
      I1 => \psd_carry__10_n_5\,
      O => \_carry__10_i_5_n_0\
    );
\_carry__10_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(45),
      I1 => \psd_carry__10_n_6\,
      O => \_carry__10_i_6_n_0\
    );
\_carry__10_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(44),
      I1 => \psd_carry__10_n_7\,
      O => \_carry__10_i_7_n_0\
    );
\_carry__10_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_47_47_n_0,
      I1 => psd_array_reg_512_767_47_47_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_47_47_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_47_47_n_0,
      O => \p_1_out__3\(47)
    );
\_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__10_n_0\,
      CO(3) => \_carry__11_n_0\,
      CO(2) => \_carry__11_n_1\,
      CO(1) => \_carry__11_n_2\,
      CO(0) => \_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \p_1_out__3\(50 downto 48),
      DI(0) => \_carry__11_i_4_n_0\,
      O(3) => \_carry__11_n_4\,
      O(2) => \_carry__11_n_5\,
      O(1) => \_carry__11_n_6\,
      O(0) => \_carry__11_n_7\,
      S(3) => \_carry__11_i_5_n_0\,
      S(2) => \_carry__11_i_6_n_0\,
      S(1) => \_carry__11_i_7_n_0\,
      S(0) => \_carry__11_i_8_n_0\
    );
\_carry__11_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_50_50_n_0,
      I1 => psd_array_reg_512_767_50_50_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_50_50_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_50_50_n_0,
      O => \p_1_out__3\(50)
    );
\_carry__11_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_49_49_n_0,
      I1 => psd_array_reg_512_767_49_49_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_49_49_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_49_49_n_0,
      O => \p_1_out__3\(49)
    );
\_carry__11_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_48_48_n_0,
      I1 => psd_array_reg_512_767_48_48_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_48_48_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_48_48_n_0,
      O => \p_1_out__3\(48)
    );
\_carry__11_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \psd_carry__10_n_4\,
      O => \_carry__11_i_4_n_0\
    );
\_carry__11_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(50),
      I1 => \p_1_out__3\(51),
      O => \_carry__11_i_5_n_0\
    );
\_carry__11_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(49),
      I1 => \p_1_out__3\(50),
      O => \_carry__11_i_6_n_0\
    );
\_carry__11_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(48),
      I1 => \p_1_out__3\(49),
      O => \_carry__11_i_7_n_0\
    );
\_carry__11_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_n_4\,
      I1 => \p_1_out__3\(48),
      O => \_carry__11_i_8_n_0\
    );
\_carry__12\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__11_n_0\,
      CO(3 downto 2) => \NLW__carry__12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_carry__12_n_2\,
      CO(0) => \_carry__12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \p_1_out__3\(52 downto 51),
      O(3) => \NLW__carry__12_O_UNCONNECTED\(3),
      O(2) => \_carry__12_n_5\,
      O(1) => \_carry__12_n_6\,
      O(0) => \_carry__12_n_7\,
      S(3) => '0',
      S(2) => \_carry__12_i_3_n_0\,
      S(1) => \_carry__12_i_4_n_0\,
      S(0) => \_carry__12_i_5_n_0\
    );
\_carry__12_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_52_52_n_0,
      I1 => psd_array_reg_512_767_52_52_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_52_52_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_52_52_n_0,
      O => \p_1_out__3\(52)
    );
\_carry__12_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_51_51_n_0,
      I1 => psd_array_reg_512_767_51_51_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_51_51_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_51_51_n_0,
      O => \p_1_out__3\(51)
    );
\_carry__12_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(53),
      I1 => \p_1_out__3\(54),
      O => \_carry__12_i_3_n_0\
    );
\_carry__12_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(52),
      I1 => \p_1_out__3\(53),
      O => \_carry__12_i_4_n_0\
    );
\_carry__12_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p_1_out__3\(51),
      I1 => \p_1_out__3\(52),
      O => \_carry__12_i_5_n_0\
    );
\_carry__12_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_53_53_n_0,
      I1 => psd_array_reg_512_767_53_53_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_53_53_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_53_53_n_0,
      O => \p_1_out__3\(53)
    );
\_carry__12_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_54_54_n_0,
      I1 => psd_array_reg_512_767_54_54_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_54_54_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_54_54_n_0,
      O => \p_1_out__3\(54)
    );
\_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_11_11_n_0,
      I1 => psd_array_reg_512_767_11_11_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_11_11_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_11_11_n_0,
      O => \p_1_out__3\(11)
    );
\_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_10_10_n_0,
      I1 => psd_array_reg_512_767_10_10_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_10_10_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_10_10_n_0,
      O => \p_1_out__3\(10)
    );
\_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_9_9_n_0,
      I1 => psd_array_reg_512_767_9_9_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_9_9_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_9_9_n_0,
      O => \p_1_out__3\(9)
    );
\_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_8_8_n_0,
      I1 => psd_array_reg_512_767_8_8_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_8_8_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_8_8_n_0,
      O => \p_1_out__3\(8)
    );
\_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(11),
      I1 => \psd_carry__1_n_4\,
      O => \_carry__1_i_5_n_0\
    );
\_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(10),
      I1 => \psd_carry__1_n_5\,
      O => \_carry__1_i_6_n_0\
    );
\_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(9),
      I1 => \psd_carry__1_n_6\,
      O => \_carry__1_i_7_n_0\
    );
\_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(8),
      I1 => \psd_carry__1_n_7\,
      O => \_carry__1_i_8_n_0\
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \_carry__2_n_0\,
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(15 downto 12),
      O(3) => \_carry__2_n_4\,
      O(2) => \_carry__2_n_5\,
      O(1) => \_carry__2_n_6\,
      O(0) => \_carry__2_n_7\,
      S(3) => \_carry__2_i_5_n_0\,
      S(2) => \_carry__2_i_6_n_0\,
      S(1) => \_carry__2_i_7_n_0\,
      S(0) => \_carry__2_i_8_n_0\
    );
\_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_15_15_n_0,
      I1 => psd_array_reg_512_767_15_15_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_15_15_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_15_15_n_0,
      O => \p_1_out__3\(15)
    );
\_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_14_14_n_0,
      I1 => psd_array_reg_512_767_14_14_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_14_14_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_14_14_n_0,
      O => \p_1_out__3\(14)
    );
\_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_13_13_n_0,
      I1 => psd_array_reg_512_767_13_13_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_13_13_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_13_13_n_0,
      O => \p_1_out__3\(13)
    );
\_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_12_12_n_0,
      I1 => psd_array_reg_512_767_12_12_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_12_12_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_12_12_n_0,
      O => \p_1_out__3\(12)
    );
\_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(15),
      I1 => \psd_carry__2_n_4\,
      O => \_carry__2_i_5_n_0\
    );
\_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(14),
      I1 => \psd_carry__2_n_5\,
      O => \_carry__2_i_6_n_0\
    );
\_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(13),
      I1 => \psd_carry__2_n_6\,
      O => \_carry__2_i_7_n_0\
    );
\_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(12),
      I1 => \psd_carry__2_n_7\,
      O => \_carry__2_i_8_n_0\
    );
\_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__2_n_0\,
      CO(3) => \_carry__3_n_0\,
      CO(2) => \_carry__3_n_1\,
      CO(1) => \_carry__3_n_2\,
      CO(0) => \_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(19 downto 16),
      O(3) => \_carry__3_n_4\,
      O(2) => \_carry__3_n_5\,
      O(1) => \_carry__3_n_6\,
      O(0) => \_carry__3_n_7\,
      S(3) => \_carry__3_i_5_n_0\,
      S(2) => \_carry__3_i_6_n_0\,
      S(1) => \_carry__3_i_7_n_0\,
      S(0) => \_carry__3_i_8_n_0\
    );
\_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_19_19_n_0,
      I1 => psd_array_reg_512_767_19_19_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_19_19_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_19_19_n_0,
      O => \p_1_out__3\(19)
    );
\_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_18_18_n_0,
      I1 => psd_array_reg_512_767_18_18_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_18_18_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_18_18_n_0,
      O => \p_1_out__3\(18)
    );
\_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_17_17_n_0,
      I1 => psd_array_reg_512_767_17_17_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_17_17_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_17_17_n_0,
      O => \p_1_out__3\(17)
    );
\_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_16_16_n_0,
      I1 => psd_array_reg_512_767_16_16_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_16_16_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_16_16_n_0,
      O => \p_1_out__3\(16)
    );
\_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(19),
      I1 => \psd_carry__3_n_4\,
      O => \_carry__3_i_5_n_0\
    );
\_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(18),
      I1 => \psd_carry__3_n_5\,
      O => \_carry__3_i_6_n_0\
    );
\_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(17),
      I1 => \psd_carry__3_n_6\,
      O => \_carry__3_i_7_n_0\
    );
\_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(16),
      I1 => \psd_carry__3_n_7\,
      O => \_carry__3_i_8_n_0\
    );
\_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__3_n_0\,
      CO(3) => \_carry__4_n_0\,
      CO(2) => \_carry__4_n_1\,
      CO(1) => \_carry__4_n_2\,
      CO(0) => \_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(23 downto 20),
      O(3) => \_carry__4_n_4\,
      O(2) => \_carry__4_n_5\,
      O(1) => \_carry__4_n_6\,
      O(0) => \_carry__4_n_7\,
      S(3) => \_carry__4_i_5_n_0\,
      S(2) => \_carry__4_i_6_n_0\,
      S(1) => \_carry__4_i_7_n_0\,
      S(0) => \_carry__4_i_8_n_0\
    );
\_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_23_23_n_0,
      I1 => psd_array_reg_512_767_23_23_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_23_23_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_23_23_n_0,
      O => \p_1_out__3\(23)
    );
\_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_22_22_n_0,
      I1 => psd_array_reg_512_767_22_22_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_22_22_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_22_22_n_0,
      O => \p_1_out__3\(22)
    );
\_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_21_21_n_0,
      I1 => psd_array_reg_512_767_21_21_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_21_21_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_21_21_n_0,
      O => \p_1_out__3\(21)
    );
\_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_20_20_n_0,
      I1 => psd_array_reg_512_767_20_20_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_20_20_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_20_20_n_0,
      O => \p_1_out__3\(20)
    );
\_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(23),
      I1 => \psd_carry__4_n_4\,
      O => \_carry__4_i_5_n_0\
    );
\_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(22),
      I1 => \psd_carry__4_n_5\,
      O => \_carry__4_i_6_n_0\
    );
\_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(21),
      I1 => \psd_carry__4_n_6\,
      O => \_carry__4_i_7_n_0\
    );
\_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(20),
      I1 => \psd_carry__4_n_7\,
      O => \_carry__4_i_8_n_0\
    );
\_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__4_n_0\,
      CO(3) => \_carry__5_n_0\,
      CO(2) => \_carry__5_n_1\,
      CO(1) => \_carry__5_n_2\,
      CO(0) => \_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(27 downto 24),
      O(3) => \_carry__5_n_4\,
      O(2) => \_carry__5_n_5\,
      O(1) => \_carry__5_n_6\,
      O(0) => \_carry__5_n_7\,
      S(3) => \_carry__5_i_5_n_0\,
      S(2) => \_carry__5_i_6_n_0\,
      S(1) => \_carry__5_i_7_n_0\,
      S(0) => \_carry__5_i_8_n_0\
    );
\_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_27_27_n_0,
      I1 => psd_array_reg_512_767_27_27_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_27_27_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_27_27_n_0,
      O => \p_1_out__3\(27)
    );
\_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_26_26_n_0,
      I1 => psd_array_reg_512_767_26_26_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_26_26_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_26_26_n_0,
      O => \p_1_out__3\(26)
    );
\_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_25_25_n_0,
      I1 => psd_array_reg_512_767_25_25_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_25_25_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_25_25_n_0,
      O => \p_1_out__3\(25)
    );
\_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_24_24_n_0,
      I1 => psd_array_reg_512_767_24_24_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_24_24_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_24_24_n_0,
      O => \p_1_out__3\(24)
    );
\_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(27),
      I1 => \psd_carry__5_n_4\,
      O => \_carry__5_i_5_n_0\
    );
\_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(26),
      I1 => \psd_carry__5_n_5\,
      O => \_carry__5_i_6_n_0\
    );
\_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(25),
      I1 => \psd_carry__5_n_6\,
      O => \_carry__5_i_7_n_0\
    );
\_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(24),
      I1 => \psd_carry__5_n_7\,
      O => \_carry__5_i_8_n_0\
    );
\_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__5_n_0\,
      CO(3) => \_carry__6_n_0\,
      CO(2) => \_carry__6_n_1\,
      CO(1) => \_carry__6_n_2\,
      CO(0) => \_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(31 downto 28),
      O(3) => \_carry__6_n_4\,
      O(2) => \_carry__6_n_5\,
      O(1) => \_carry__6_n_6\,
      O(0) => \_carry__6_n_7\,
      S(3) => \_carry__6_i_5_n_0\,
      S(2) => \_carry__6_i_6_n_0\,
      S(1) => \_carry__6_i_7_n_0\,
      S(0) => \_carry__6_i_8_n_0\
    );
\_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_31_31_n_0,
      I1 => psd_array_reg_512_767_31_31_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_31_31_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_31_31_n_0,
      O => \p_1_out__3\(31)
    );
\_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_30_30_n_0,
      I1 => psd_array_reg_512_767_30_30_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_30_30_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_30_30_n_0,
      O => \p_1_out__3\(30)
    );
\_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_29_29_n_0,
      I1 => psd_array_reg_512_767_29_29_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_29_29_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_29_29_n_0,
      O => \p_1_out__3\(29)
    );
\_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_28_28_n_0,
      I1 => psd_array_reg_512_767_28_28_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_28_28_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_28_28_n_0,
      O => \p_1_out__3\(28)
    );
\_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(31),
      I1 => \psd_carry__6_n_4\,
      O => \_carry__6_i_5_n_0\
    );
\_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(30),
      I1 => \psd_carry__6_n_5\,
      O => \_carry__6_i_6_n_0\
    );
\_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(29),
      I1 => \psd_carry__6_n_6\,
      O => \_carry__6_i_7_n_0\
    );
\_carry__6_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(28),
      I1 => \psd_carry__6_n_7\,
      O => \_carry__6_i_8_n_0\
    );
\_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__6_n_0\,
      CO(3) => \_carry__7_n_0\,
      CO(2) => \_carry__7_n_1\,
      CO(1) => \_carry__7_n_2\,
      CO(0) => \_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(35 downto 32),
      O(3) => \_carry__7_n_4\,
      O(2) => \_carry__7_n_5\,
      O(1) => \_carry__7_n_6\,
      O(0) => \_carry__7_n_7\,
      S(3) => \_carry__7_i_5_n_0\,
      S(2) => \_carry__7_i_6_n_0\,
      S(1) => \_carry__7_i_7_n_0\,
      S(0) => \_carry__7_i_8_n_0\
    );
\_carry__7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_35_35_n_0,
      I1 => psd_array_reg_512_767_35_35_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_35_35_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_35_35_n_0,
      O => \p_1_out__3\(35)
    );
\_carry__7_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_34_34_n_0,
      I1 => psd_array_reg_512_767_34_34_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_34_34_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_34_34_n_0,
      O => \p_1_out__3\(34)
    );
\_carry__7_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_33_33_n_0,
      I1 => psd_array_reg_512_767_33_33_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_33_33_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_33_33_n_0,
      O => \p_1_out__3\(33)
    );
\_carry__7_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_32_32_n_0,
      I1 => psd_array_reg_512_767_32_32_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_32_32_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_32_32_n_0,
      O => \p_1_out__3\(32)
    );
\_carry__7_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(35),
      I1 => \psd_carry__7_n_4\,
      O => \_carry__7_i_5_n_0\
    );
\_carry__7_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(34),
      I1 => \psd_carry__7_n_5\,
      O => \_carry__7_i_6_n_0\
    );
\_carry__7_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(33),
      I1 => \psd_carry__7_n_6\,
      O => \_carry__7_i_7_n_0\
    );
\_carry__7_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(32),
      I1 => \psd_carry__7_n_7\,
      O => \_carry__7_i_8_n_0\
    );
\_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__7_n_0\,
      CO(3) => \_carry__8_n_0\,
      CO(2) => \_carry__8_n_1\,
      CO(1) => \_carry__8_n_2\,
      CO(0) => \_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(39 downto 36),
      O(3) => \_carry__8_n_4\,
      O(2) => \_carry__8_n_5\,
      O(1) => \_carry__8_n_6\,
      O(0) => \_carry__8_n_7\,
      S(3) => \_carry__8_i_5_n_0\,
      S(2) => \_carry__8_i_6_n_0\,
      S(1) => \_carry__8_i_7_n_0\,
      S(0) => \_carry__8_i_8_n_0\
    );
\_carry__8_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_39_39_n_0,
      I1 => psd_array_reg_512_767_39_39_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_39_39_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_39_39_n_0,
      O => \p_1_out__3\(39)
    );
\_carry__8_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_38_38_n_0,
      I1 => psd_array_reg_512_767_38_38_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_38_38_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_38_38_n_0,
      O => \p_1_out__3\(38)
    );
\_carry__8_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_37_37_n_0,
      I1 => psd_array_reg_512_767_37_37_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_37_37_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_37_37_n_0,
      O => \p_1_out__3\(37)
    );
\_carry__8_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_36_36_n_0,
      I1 => psd_array_reg_512_767_36_36_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_36_36_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_36_36_n_0,
      O => \p_1_out__3\(36)
    );
\_carry__8_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(39),
      I1 => \psd_carry__8_n_4\,
      O => \_carry__8_i_5_n_0\
    );
\_carry__8_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(38),
      I1 => \psd_carry__8_n_5\,
      O => \_carry__8_i_6_n_0\
    );
\_carry__8_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(37),
      I1 => \psd_carry__8_n_6\,
      O => \_carry__8_i_7_n_0\
    );
\_carry__8_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(36),
      I1 => \psd_carry__8_n_7\,
      O => \_carry__8_i_8_n_0\
    );
\_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__8_n_0\,
      CO(3) => \_carry__9_n_0\,
      CO(2) => \_carry__9_n_1\,
      CO(1) => \_carry__9_n_2\,
      CO(0) => \_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p_1_out__3\(43 downto 40),
      O(3) => \_carry__9_n_4\,
      O(2) => \_carry__9_n_5\,
      O(1) => \_carry__9_n_6\,
      O(0) => \_carry__9_n_7\,
      S(3) => \_carry__9_i_5_n_0\,
      S(2) => \_carry__9_i_6_n_0\,
      S(1) => \_carry__9_i_7_n_0\,
      S(0) => \_carry__9_i_8_n_0\
    );
\_carry__9_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_43_43_n_0,
      I1 => psd_array_reg_512_767_43_43_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_43_43_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_43_43_n_0,
      O => \p_1_out__3\(43)
    );
\_carry__9_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_42_42_n_0,
      I1 => psd_array_reg_512_767_42_42_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_42_42_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_42_42_n_0,
      O => \p_1_out__3\(42)
    );
\_carry__9_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_41_41_n_0,
      I1 => psd_array_reg_512_767_41_41_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_41_41_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_41_41_n_0,
      O => \p_1_out__3\(41)
    );
\_carry__9_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_40_40_n_0,
      I1 => psd_array_reg_512_767_40_40_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_40_40_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_40_40_n_0,
      O => \p_1_out__3\(40)
    );
\_carry__9_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(43),
      I1 => \psd_carry__9_n_4\,
      O => \_carry__9_i_5_n_0\
    );
\_carry__9_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(42),
      I1 => \psd_carry__9_n_5\,
      O => \_carry__9_i_6_n_0\
    );
\_carry__9_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(41),
      I1 => \psd_carry__9_n_6\,
      O => \_carry__9_i_7_n_0\
    );
\_carry__9_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(40),
      I1 => \psd_carry__9_n_7\,
      O => \_carry__9_i_8_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_3_3_n_0,
      I1 => psd_array_reg_512_767_3_3_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_3_3_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_3_3_n_0,
      O => \p_1_out__3\(3)
    );
\_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_2_2_n_0,
      I1 => psd_array_reg_512_767_2_2_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_2_2_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_2_2_n_0,
      O => \p_1_out__3\(2)
    );
\_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_1_1_n_0,
      I1 => psd_array_reg_512_767_1_1_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_1_1_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_1_1_n_0,
      O => \p_1_out__3\(1)
    );
\_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psd_array_reg_768_1023_0_0_n_0,
      I1 => psd_array_reg_512_767_0_0_n_0,
      I2 => fft_m_data_tuser(9),
      I3 => psd_array_reg_256_511_0_0_n_0,
      I4 => fft_m_data_tuser(8),
      I5 => psd_array_reg_0_255_0_0_n_0,
      O => \p_1_out__3\(0)
    );
\_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(3),
      I1 => psd_carry_n_4,
      O => \_carry_i_5_n_0\
    );
\_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(2),
      I1 => psd_carry_n_5,
      O => \_carry_i_6_n_0\
    );
\_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(1),
      I1 => psd_carry_n_6,
      O => \_carry_i_7_n_0\
    );
\_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_1_out__3\(0),
      I1 => psd_carry_n_7,
      O => \_carry_i_8_n_0\
    );
\cnt_m_fft[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_m_fft_reg(0),
      O => p_0_in(0)
    );
\cnt_m_fft[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_m_fft_reg(0),
      I1 => cnt_m_fft_reg(1),
      O => p_0_in(1)
    );
\cnt_m_fft[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_m_fft_reg(1),
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(2),
      O => p_0_in(2)
    );
\cnt_m_fft[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_m_fft_reg(2),
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(1),
      I3 => cnt_m_fft_reg(3),
      O => p_0_in(3)
    );
\cnt_m_fft[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_m_fft_reg(3),
      I1 => cnt_m_fft_reg(1),
      I2 => cnt_m_fft_reg(0),
      I3 => cnt_m_fft_reg(2),
      I4 => cnt_m_fft_reg(4),
      O => p_0_in(4)
    );
\cnt_m_fft[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_m_fft_reg(4),
      I1 => cnt_m_fft_reg(2),
      I2 => cnt_m_fft_reg(0),
      I3 => cnt_m_fft_reg(1),
      I4 => cnt_m_fft_reg(3),
      I5 => cnt_m_fft_reg(5),
      O => p_0_in(5)
    );
\cnt_m_fft[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      O => p_0_in(6)
    );
\cnt_m_fft_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(0),
      Q => cnt_m_fft_reg(0)
    );
\cnt_m_fft_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(1),
      Q => cnt_m_fft_reg(1)
    );
\cnt_m_fft_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(2),
      Q => cnt_m_fft_reg(2)
    );
\cnt_m_fft_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(3),
      Q => cnt_m_fft_reg(3)
    );
\cnt_m_fft_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(4),
      Q => cnt_m_fft_reg(4)
    );
\cnt_m_fft_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(5),
      Q => cnt_m_fft_reg(5)
    );
\cnt_m_fft_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_m_data_tlast,
      CLR => \^rst_n_0\,
      D => p_0_in(6),
      Q => cnt_m_fft_reg(6)
    );
\cnt_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_s_reg(0),
      O => \p_0_in__0\(0)
    );
\cnt_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_s_reg(0),
      I1 => cnt_s_reg(1),
      O => \p_0_in__0\(1)
    );
\cnt_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_s_reg(1),
      I1 => cnt_s_reg(0),
      I2 => cnt_s_reg(2),
      O => \p_0_in__0\(2)
    );
\cnt_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_s_reg(2),
      I1 => cnt_s_reg(0),
      I2 => cnt_s_reg(1),
      I3 => cnt_s_reg(3),
      O => \p_0_in__0\(3)
    );
\cnt_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_s_reg(3),
      I1 => cnt_s_reg(1),
      I2 => cnt_s_reg(0),
      I3 => cnt_s_reg(2),
      I4 => cnt_s_reg(4),
      O => \p_0_in__0\(4)
    );
\cnt_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_s_reg(4),
      I1 => cnt_s_reg(2),
      I2 => cnt_s_reg(0),
      I3 => cnt_s_reg(1),
      I4 => cnt_s_reg(3),
      I5 => cnt_s_reg(5),
      O => \p_0_in__0\(5)
    );
\cnt_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt_s[9]_i_2_n_0\,
      I1 => cnt_s_reg(6),
      O => \p_0_in__0\(6)
    );
\cnt_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => cnt_s_reg(6),
      I1 => \cnt_s[9]_i_2_n_0\,
      I2 => cnt_s_reg(7),
      O => \p_0_in__0\(7)
    );
\cnt_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => cnt_s_reg(7),
      I1 => \cnt_s[9]_i_2_n_0\,
      I2 => cnt_s_reg(6),
      I3 => cnt_s_reg(8),
      O => \p_0_in__0\(8)
    );
\cnt_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => cnt_s_reg(8),
      I1 => cnt_s_reg(6),
      I2 => \cnt_s[9]_i_2_n_0\,
      I3 => cnt_s_reg(7),
      I4 => cnt_s_reg(9),
      O => \p_0_in__0\(9)
    );
\cnt_s[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_s_reg(4),
      I1 => cnt_s_reg(2),
      I2 => cnt_s_reg(0),
      I3 => cnt_s_reg(1),
      I4 => cnt_s_reg(3),
      I5 => cnt_s_reg(5),
      O => \cnt_s[9]_i_2_n_0\
    );
\cnt_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(0),
      Q => cnt_s_reg(0)
    );
\cnt_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(1),
      Q => cnt_s_reg(1)
    );
\cnt_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(2),
      Q => cnt_s_reg(2)
    );
\cnt_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(3),
      Q => cnt_s_reg(3)
    );
\cnt_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(4),
      Q => cnt_s_reg(4)
    );
\cnt_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(5),
      Q => cnt_s_reg(5)
    );
\cnt_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(6),
      Q => cnt_s_reg(6)
    );
\cnt_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(7),
      Q => cnt_s_reg(7)
    );
\cnt_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(8),
      Q => cnt_s_reg(8)
    );
\cnt_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(9),
      Q => cnt_s_reg(9)
    );
\fft_s_data_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(0),
      Q => fft_s_data_tdata(0)
    );
\fft_s_data_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(10),
      Q => fft_s_data_tdata(10)
    );
\fft_s_data_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(11),
      Q => fft_s_data_tdata(11)
    );
\fft_s_data_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(12),
      Q => fft_s_data_tdata(12)
    );
\fft_s_data_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(13),
      Q => fft_s_data_tdata(15)
    );
\fft_s_data_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(14),
      Q => fft_s_data_tdata(16)
    );
\fft_s_data_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(15),
      Q => fft_s_data_tdata(17)
    );
\fft_s_data_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(16),
      Q => fft_s_data_tdata(18)
    );
\fft_s_data_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(17),
      Q => fft_s_data_tdata(19)
    );
\fft_s_data_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(1),
      Q => fft_s_data_tdata(1)
    );
\fft_s_data_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(18),
      Q => fft_s_data_tdata(20)
    );
\fft_s_data_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(19),
      Q => fft_s_data_tdata(21)
    );
\fft_s_data_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(20),
      Q => fft_s_data_tdata(22)
    );
\fft_s_data_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(21),
      Q => fft_s_data_tdata(23)
    );
\fft_s_data_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(22),
      Q => fft_s_data_tdata(24)
    );
\fft_s_data_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(23),
      Q => fft_s_data_tdata(25)
    );
\fft_s_data_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(24),
      Q => fft_s_data_tdata(26)
    );
\fft_s_data_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(25),
      Q => fft_s_data_tdata(27)
    );
\fft_s_data_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(2),
      Q => fft_s_data_tdata(2)
    );
\fft_s_data_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(26),
      Q => fft_s_data_tdata(31)
    );
\fft_s_data_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(3),
      Q => fft_s_data_tdata(3)
    );
\fft_s_data_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(4),
      Q => fft_s_data_tdata(4)
    );
\fft_s_data_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(5),
      Q => fft_s_data_tdata(5)
    );
\fft_s_data_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(6),
      Q => fft_s_data_tdata(6)
    );
\fft_s_data_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(7),
      Q => fft_s_data_tdata(7)
    );
\fft_s_data_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(8),
      Q => fft_s_data_tdata(8)
    );
\fft_s_data_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => D(9),
      Q => fft_s_data_tdata(9)
    );
\lfsr_noise[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
m_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      O => m_valid
    );
m_valid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_m_fft_reg(4),
      I1 => cnt_m_fft_reg(2),
      I2 => cnt_m_fft_reg(0),
      I3 => cnt_m_fft_reg(1),
      I4 => cnt_m_fft_reg(3),
      I5 => cnt_m_fft_reg(5),
      O => m_valid_INST_0_i_1_n_0
    );
psd_array_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(0),
      O => psd_array_reg_0_255_0_0_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry_n_7\,
      I5 => psd_carry_n_7,
      O => p_2_in(0)
    );
psd_array_reg_0_255_0_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^m_axis_data_tvalid\,
      I1 => fft_m_data_tuser(8),
      I2 => fft_m_data_tuser(9),
      O => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_m_fft_reg(2),
      I1 => cnt_m_fft_reg(1),
      I2 => cnt_m_fft_reg(4),
      I3 => cnt_m_fft_reg(3),
      O => psd_array_reg_0_255_0_0_i_3_n_0
    );
psd_array_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(10),
      O => psd_array_reg_0_255_10_10_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_10_10_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__1_n_5\,
      I5 => \psd_carry__1_n_5\,
      O => p_2_in(10)
    );
psd_array_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(11),
      O => psd_array_reg_0_255_11_11_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_11_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__1_n_4\,
      I5 => \psd_carry__1_n_4\,
      O => p_2_in(11)
    );
psd_array_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(12),
      O => psd_array_reg_0_255_12_12_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_12_12_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__2_n_7\,
      I5 => \psd_carry__2_n_7\,
      O => p_2_in(12)
    );
psd_array_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(13),
      O => psd_array_reg_0_255_13_13_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_13_13_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__2_n_6\,
      I5 => \psd_carry__2_n_6\,
      O => p_2_in(13)
    );
psd_array_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(14),
      O => psd_array_reg_0_255_14_14_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_14_14_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__2_n_5\,
      I5 => \psd_carry__2_n_5\,
      O => p_2_in(14)
    );
psd_array_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(15),
      O => psd_array_reg_0_255_15_15_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_15_15_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__2_n_4\,
      I5 => \psd_carry__2_n_4\,
      O => p_2_in(15)
    );
psd_array_reg_0_255_16_16: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(16),
      O => psd_array_reg_0_255_16_16_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_16_16_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__3_n_7\,
      I5 => \psd_carry__3_n_7\,
      O => p_2_in(16)
    );
psd_array_reg_0_255_17_17: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(17),
      O => psd_array_reg_0_255_17_17_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_17_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__3_n_6\,
      I5 => \psd_carry__3_n_6\,
      O => p_2_in(17)
    );
psd_array_reg_0_255_18_18: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(18),
      O => psd_array_reg_0_255_18_18_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_18_18_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__3_n_5\,
      I5 => \psd_carry__3_n_5\,
      O => p_2_in(18)
    );
psd_array_reg_0_255_19_19: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(19),
      O => psd_array_reg_0_255_19_19_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_19_19_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__3_n_4\,
      I5 => \psd_carry__3_n_4\,
      O => p_2_in(19)
    );
psd_array_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(1),
      O => psd_array_reg_0_255_1_1_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_1_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry_n_6\,
      I5 => psd_carry_n_6,
      O => p_2_in(1)
    );
psd_array_reg_0_255_20_20: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(20),
      O => psd_array_reg_0_255_20_20_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_20_20_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__4_n_7\,
      I5 => \psd_carry__4_n_7\,
      O => p_2_in(20)
    );
psd_array_reg_0_255_21_21: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(21),
      O => psd_array_reg_0_255_21_21_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_21_21_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__4_n_6\,
      I5 => \psd_carry__4_n_6\,
      O => p_2_in(21)
    );
psd_array_reg_0_255_22_22: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(22),
      O => psd_array_reg_0_255_22_22_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_22_22_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__4_n_5\,
      I5 => \psd_carry__4_n_5\,
      O => p_2_in(22)
    );
psd_array_reg_0_255_23_23: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(23),
      O => psd_array_reg_0_255_23_23_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_23_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__4_n_4\,
      I5 => \psd_carry__4_n_4\,
      O => p_2_in(23)
    );
psd_array_reg_0_255_24_24: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(24),
      O => psd_array_reg_0_255_24_24_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_24_24_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__5_n_7\,
      I5 => \psd_carry__5_n_7\,
      O => p_2_in(24)
    );
psd_array_reg_0_255_25_25: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(25),
      O => psd_array_reg_0_255_25_25_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_25_25_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__5_n_6\,
      I5 => \psd_carry__5_n_6\,
      O => p_2_in(25)
    );
psd_array_reg_0_255_26_26: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(26),
      O => psd_array_reg_0_255_26_26_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_26_26_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__5_n_5\,
      I5 => \psd_carry__5_n_5\,
      O => p_2_in(26)
    );
psd_array_reg_0_255_27_27: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(27),
      O => psd_array_reg_0_255_27_27_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_27_27_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__5_n_4\,
      I5 => \psd_carry__5_n_4\,
      O => p_2_in(27)
    );
psd_array_reg_0_255_28_28: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(28),
      O => psd_array_reg_0_255_28_28_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_28_28_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__6_n_7\,
      I5 => \psd_carry__6_n_7\,
      O => p_2_in(28)
    );
psd_array_reg_0_255_29_29: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(29),
      O => psd_array_reg_0_255_29_29_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_29_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__6_n_6\,
      I5 => \psd_carry__6_n_6\,
      O => p_2_in(29)
    );
psd_array_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(2),
      O => psd_array_reg_0_255_2_2_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_2_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry_n_5\,
      I5 => psd_carry_n_5,
      O => p_2_in(2)
    );
psd_array_reg_0_255_30_30: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(30),
      O => psd_array_reg_0_255_30_30_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_30_30_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__6_n_5\,
      I5 => \psd_carry__6_n_5\,
      O => p_2_in(30)
    );
psd_array_reg_0_255_31_31: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(31),
      O => psd_array_reg_0_255_31_31_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_31_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__6_n_4\,
      I5 => \psd_carry__6_n_4\,
      O => p_2_in(31)
    );
psd_array_reg_0_255_32_32: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(32),
      O => psd_array_reg_0_255_32_32_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_32_32_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__7_n_7\,
      I5 => \psd_carry__7_n_7\,
      O => p_2_in(32)
    );
psd_array_reg_0_255_33_33: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(33),
      O => psd_array_reg_0_255_33_33_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_33_33_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__7_n_6\,
      I5 => \psd_carry__7_n_6\,
      O => p_2_in(33)
    );
psd_array_reg_0_255_34_34: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(34),
      O => psd_array_reg_0_255_34_34_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_34_34_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__7_n_5\,
      I5 => \psd_carry__7_n_5\,
      O => p_2_in(34)
    );
psd_array_reg_0_255_35_35: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(35),
      O => psd_array_reg_0_255_35_35_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_35_35_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__7_n_4\,
      I5 => \psd_carry__7_n_4\,
      O => p_2_in(35)
    );
psd_array_reg_0_255_36_36: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(36),
      O => psd_array_reg_0_255_36_36_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_36_36_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__8_n_7\,
      I5 => \psd_carry__8_n_7\,
      O => p_2_in(36)
    );
psd_array_reg_0_255_37_37: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(37),
      O => psd_array_reg_0_255_37_37_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_37_37_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__8_n_6\,
      I5 => \psd_carry__8_n_6\,
      O => p_2_in(37)
    );
psd_array_reg_0_255_38_38: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(38),
      O => psd_array_reg_0_255_38_38_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_38_38_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__8_n_5\,
      I5 => \psd_carry__8_n_5\,
      O => p_2_in(38)
    );
psd_array_reg_0_255_39_39: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(39),
      O => psd_array_reg_0_255_39_39_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_39_39_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__8_n_4\,
      I5 => \psd_carry__8_n_4\,
      O => p_2_in(39)
    );
psd_array_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(3),
      O => psd_array_reg_0_255_3_3_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_3_3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry_n_4\,
      I5 => psd_carry_n_4,
      O => p_2_in(3)
    );
psd_array_reg_0_255_40_40: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(40),
      O => psd_array_reg_0_255_40_40_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_40_40_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__9_n_7\,
      I5 => \psd_carry__9_n_7\,
      O => p_2_in(40)
    );
psd_array_reg_0_255_41_41: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(41),
      O => psd_array_reg_0_255_41_41_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_41_41_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__9_n_6\,
      I5 => \psd_carry__9_n_6\,
      O => p_2_in(41)
    );
psd_array_reg_0_255_42_42: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(42),
      O => psd_array_reg_0_255_42_42_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_42_42_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__9_n_5\,
      I5 => \psd_carry__9_n_5\,
      O => p_2_in(42)
    );
psd_array_reg_0_255_43_43: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(43),
      O => psd_array_reg_0_255_43_43_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_43_43_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__9_n_4\,
      I5 => \psd_carry__9_n_4\,
      O => p_2_in(43)
    );
psd_array_reg_0_255_44_44: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(44),
      O => psd_array_reg_0_255_44_44_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_44_44_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__10_n_7\,
      I5 => \psd_carry__10_n_7\,
      O => p_2_in(44)
    );
psd_array_reg_0_255_45_45: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(45),
      O => psd_array_reg_0_255_45_45_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_45_45_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__10_n_6\,
      I5 => \psd_carry__10_n_6\,
      O => p_2_in(45)
    );
psd_array_reg_0_255_46_46: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(46),
      O => psd_array_reg_0_255_46_46_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_46_46_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__10_n_5\,
      I5 => \psd_carry__10_n_5\,
      O => p_2_in(46)
    );
psd_array_reg_0_255_47_47: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(47),
      O => psd_array_reg_0_255_47_47_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_47_47_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__10_n_4\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(47)
    );
psd_array_reg_0_255_48_48: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(48),
      O => psd_array_reg_0_255_48_48_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_48_48_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__11_n_7\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(48)
    );
psd_array_reg_0_255_49_49: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(49),
      O => psd_array_reg_0_255_49_49_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_49_49_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__11_n_6\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(49)
    );
psd_array_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(4),
      O => psd_array_reg_0_255_4_4_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_4_4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__0_n_7\,
      I5 => \psd_carry__0_n_7\,
      O => p_2_in(4)
    );
psd_array_reg_0_255_50_50: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(50),
      O => psd_array_reg_0_255_50_50_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_50_50_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__11_n_5\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(50)
    );
psd_array_reg_0_255_51_51: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(51),
      O => psd_array_reg_0_255_51_51_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_51_51_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__11_n_4\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(51)
    );
psd_array_reg_0_255_52_52: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(52),
      O => psd_array_reg_0_255_52_52_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_52_52_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__12_n_7\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(52)
    );
psd_array_reg_0_255_53_53: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(53),
      O => psd_array_reg_0_255_53_53_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_53_53_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__12_n_6\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(53)
    );
psd_array_reg_0_255_54_54: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(54),
      O => psd_array_reg_0_255_54_54_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_54_54_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__12_n_5\,
      I5 => \psd_carry__10_n_4\,
      O => p_2_in(54)
    );
psd_array_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(5),
      O => psd_array_reg_0_255_5_5_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_5_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__0_n_6\,
      I5 => \psd_carry__0_n_6\,
      O => p_2_in(5)
    );
psd_array_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(6),
      O => psd_array_reg_0_255_6_6_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_6_6_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__0_n_5\,
      I5 => \psd_carry__0_n_5\,
      O => p_2_in(6)
    );
psd_array_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(7),
      O => psd_array_reg_0_255_7_7_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_7_7_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__0_n_4\,
      I5 => \psd_carry__0_n_4\,
      O => p_2_in(7)
    );
psd_array_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(8),
      O => psd_array_reg_0_255_8_8_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__1_n_7\,
      I5 => \psd_carry__1_n_7\,
      O => p_2_in(8)
    );
psd_array_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(9),
      O => psd_array_reg_0_255_9_9_n_0,
      WCLK => clk,
      WE => psd_array_reg_0_255_0_0_i_2_n_0
    );
psd_array_reg_0_255_9_9_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => psd_array_reg_0_255_0_0_i_3_n_0,
      I1 => cnt_m_fft_reg(0),
      I2 => cnt_m_fft_reg(5),
      I3 => cnt_m_fft_reg(6),
      I4 => \_carry__1_n_6\,
      I5 => \psd_carry__1_n_6\,
      O => p_2_in(9)
    );
psd_array_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(0),
      O => psd_array_reg_256_511_0_0_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => fft_m_data_tuser(9),
      I1 => fft_m_data_tuser(8),
      I2 => \^m_axis_data_tvalid\,
      O => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_10_10: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(10),
      O => psd_array_reg_256_511_10_10_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_11_11: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(11),
      O => psd_array_reg_256_511_11_11_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_12_12: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(12),
      O => psd_array_reg_256_511_12_12_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_13_13: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(13),
      O => psd_array_reg_256_511_13_13_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_14_14: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(14),
      O => psd_array_reg_256_511_14_14_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_15_15: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(15),
      O => psd_array_reg_256_511_15_15_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_16_16: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(16),
      O => psd_array_reg_256_511_16_16_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_17_17: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(17),
      O => psd_array_reg_256_511_17_17_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_18_18: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(18),
      O => psd_array_reg_256_511_18_18_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_19_19: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(19),
      O => psd_array_reg_256_511_19_19_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(1),
      O => psd_array_reg_256_511_1_1_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_20_20: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(20),
      O => psd_array_reg_256_511_20_20_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_21_21: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(21),
      O => psd_array_reg_256_511_21_21_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_22_22: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(22),
      O => psd_array_reg_256_511_22_22_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_23_23: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(23),
      O => psd_array_reg_256_511_23_23_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_24_24: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(24),
      O => psd_array_reg_256_511_24_24_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_25_25: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(25),
      O => psd_array_reg_256_511_25_25_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_26_26: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(26),
      O => psd_array_reg_256_511_26_26_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_27_27: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(27),
      O => psd_array_reg_256_511_27_27_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_28_28: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(28),
      O => psd_array_reg_256_511_28_28_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_29_29: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(29),
      O => psd_array_reg_256_511_29_29_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(2),
      O => psd_array_reg_256_511_2_2_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_30_30: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(30),
      O => psd_array_reg_256_511_30_30_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_31_31: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(31),
      O => psd_array_reg_256_511_31_31_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_32_32: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(32),
      O => psd_array_reg_256_511_32_32_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_33_33: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(33),
      O => psd_array_reg_256_511_33_33_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_34_34: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(34),
      O => psd_array_reg_256_511_34_34_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_35_35: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(35),
      O => psd_array_reg_256_511_35_35_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_36_36: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(36),
      O => psd_array_reg_256_511_36_36_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_37_37: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(37),
      O => psd_array_reg_256_511_37_37_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_38_38: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(38),
      O => psd_array_reg_256_511_38_38_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_39_39: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(39),
      O => psd_array_reg_256_511_39_39_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(3),
      O => psd_array_reg_256_511_3_3_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_40_40: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(40),
      O => psd_array_reg_256_511_40_40_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_41_41: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(41),
      O => psd_array_reg_256_511_41_41_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_42_42: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(42),
      O => psd_array_reg_256_511_42_42_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_43_43: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(43),
      O => psd_array_reg_256_511_43_43_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_44_44: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(44),
      O => psd_array_reg_256_511_44_44_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_45_45: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(45),
      O => psd_array_reg_256_511_45_45_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_46_46: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(46),
      O => psd_array_reg_256_511_46_46_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_47_47: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(47),
      O => psd_array_reg_256_511_47_47_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_48_48: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(48),
      O => psd_array_reg_256_511_48_48_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_49_49: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(49),
      O => psd_array_reg_256_511_49_49_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(4),
      O => psd_array_reg_256_511_4_4_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_50_50: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(50),
      O => psd_array_reg_256_511_50_50_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_51_51: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(51),
      O => psd_array_reg_256_511_51_51_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_52_52: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(52),
      O => psd_array_reg_256_511_52_52_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_53_53: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(53),
      O => psd_array_reg_256_511_53_53_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_54_54: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(54),
      O => psd_array_reg_256_511_54_54_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(5),
      O => psd_array_reg_256_511_5_5_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(6),
      O => psd_array_reg_256_511_6_6_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(7),
      O => psd_array_reg_256_511_7_7_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_8_8: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(8),
      O => psd_array_reg_256_511_8_8_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_256_511_9_9: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(9),
      O => psd_array_reg_256_511_9_9_n_0,
      WCLK => clk,
      WE => psd_array_reg_256_511_0_0_i_1_n_0
    );
psd_array_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(0),
      O => psd_array_reg_512_767_0_0_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => fft_m_data_tuser(8),
      I1 => fft_m_data_tuser(9),
      I2 => \^m_axis_data_tvalid\,
      O => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_10_10: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(10),
      O => psd_array_reg_512_767_10_10_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_11_11: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(11),
      O => psd_array_reg_512_767_11_11_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_12_12: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(12),
      O => psd_array_reg_512_767_12_12_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_13_13: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(13),
      O => psd_array_reg_512_767_13_13_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_14_14: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(14),
      O => psd_array_reg_512_767_14_14_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_15_15: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(15),
      O => psd_array_reg_512_767_15_15_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_16_16: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(16),
      O => psd_array_reg_512_767_16_16_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_17_17: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(17),
      O => psd_array_reg_512_767_17_17_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_18_18: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(18),
      O => psd_array_reg_512_767_18_18_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_19_19: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(19),
      O => psd_array_reg_512_767_19_19_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(1),
      O => psd_array_reg_512_767_1_1_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_20_20: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(20),
      O => psd_array_reg_512_767_20_20_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_21_21: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(21),
      O => psd_array_reg_512_767_21_21_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_22_22: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(22),
      O => psd_array_reg_512_767_22_22_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_23_23: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(23),
      O => psd_array_reg_512_767_23_23_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_24_24: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(24),
      O => psd_array_reg_512_767_24_24_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_25_25: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(25),
      O => psd_array_reg_512_767_25_25_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_26_26: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(26),
      O => psd_array_reg_512_767_26_26_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_27_27: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(27),
      O => psd_array_reg_512_767_27_27_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_28_28: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(28),
      O => psd_array_reg_512_767_28_28_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_29_29: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(29),
      O => psd_array_reg_512_767_29_29_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(2),
      O => psd_array_reg_512_767_2_2_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_30_30: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(30),
      O => psd_array_reg_512_767_30_30_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_31_31: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(31),
      O => psd_array_reg_512_767_31_31_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_32_32: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(32),
      O => psd_array_reg_512_767_32_32_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_33_33: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(33),
      O => psd_array_reg_512_767_33_33_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_34_34: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(34),
      O => psd_array_reg_512_767_34_34_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_35_35: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(35),
      O => psd_array_reg_512_767_35_35_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_36_36: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(36),
      O => psd_array_reg_512_767_36_36_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_37_37: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(37),
      O => psd_array_reg_512_767_37_37_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_38_38: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(38),
      O => psd_array_reg_512_767_38_38_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_39_39: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(39),
      O => psd_array_reg_512_767_39_39_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(3),
      O => psd_array_reg_512_767_3_3_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_40_40: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(40),
      O => psd_array_reg_512_767_40_40_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_41_41: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(41),
      O => psd_array_reg_512_767_41_41_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_42_42: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(42),
      O => psd_array_reg_512_767_42_42_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_43_43: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(43),
      O => psd_array_reg_512_767_43_43_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_44_44: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(44),
      O => psd_array_reg_512_767_44_44_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_45_45: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(45),
      O => psd_array_reg_512_767_45_45_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_46_46: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(46),
      O => psd_array_reg_512_767_46_46_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_47_47: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(47),
      O => psd_array_reg_512_767_47_47_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_48_48: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(48),
      O => psd_array_reg_512_767_48_48_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_49_49: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(49),
      O => psd_array_reg_512_767_49_49_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(4),
      O => psd_array_reg_512_767_4_4_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_50_50: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(50),
      O => psd_array_reg_512_767_50_50_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_51_51: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(51),
      O => psd_array_reg_512_767_51_51_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_52_52: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(52),
      O => psd_array_reg_512_767_52_52_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_53_53: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(53),
      O => psd_array_reg_512_767_53_53_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_54_54: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(54),
      O => psd_array_reg_512_767_54_54_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(5),
      O => psd_array_reg_512_767_5_5_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(6),
      O => psd_array_reg_512_767_6_6_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(7),
      O => psd_array_reg_512_767_7_7_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_8_8: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(8),
      O => psd_array_reg_512_767_8_8_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_512_767_9_9: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(9),
      O => psd_array_reg_512_767_9_9_n_0,
      WCLK => clk,
      WE => psd_array_reg_512_767_0_0_i_1_n_0
    );
psd_array_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(0),
      O => psd_array_reg_768_1023_0_0_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_axis_data_tvalid\,
      I1 => fft_m_data_tuser(8),
      I2 => fft_m_data_tuser(9),
      O => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_10_10: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(10),
      O => psd_array_reg_768_1023_10_10_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_11_11: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(11),
      O => psd_array_reg_768_1023_11_11_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_12_12: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(12),
      O => psd_array_reg_768_1023_12_12_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_13_13: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(13),
      O => psd_array_reg_768_1023_13_13_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_14_14: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(14),
      O => psd_array_reg_768_1023_14_14_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_15_15: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(15),
      O => psd_array_reg_768_1023_15_15_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_16_16: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(16),
      O => psd_array_reg_768_1023_16_16_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_17_17: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(17),
      O => psd_array_reg_768_1023_17_17_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_18_18: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(18),
      O => psd_array_reg_768_1023_18_18_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_19_19: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(19),
      O => psd_array_reg_768_1023_19_19_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(1),
      O => psd_array_reg_768_1023_1_1_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_20_20: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(20),
      O => psd_array_reg_768_1023_20_20_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_21_21: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(21),
      O => psd_array_reg_768_1023_21_21_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_22_22: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(22),
      O => psd_array_reg_768_1023_22_22_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_23_23: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(23),
      O => psd_array_reg_768_1023_23_23_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_24_24: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(24),
      O => psd_array_reg_768_1023_24_24_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_25_25: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(25),
      O => psd_array_reg_768_1023_25_25_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_26_26: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(26),
      O => psd_array_reg_768_1023_26_26_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_27_27: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(27),
      O => psd_array_reg_768_1023_27_27_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_28_28: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(28),
      O => psd_array_reg_768_1023_28_28_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_29_29: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(29),
      O => psd_array_reg_768_1023_29_29_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(2),
      O => psd_array_reg_768_1023_2_2_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_30_30: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(30),
      O => psd_array_reg_768_1023_30_30_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_31_31: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(31),
      O => psd_array_reg_768_1023_31_31_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_32_32: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(32),
      O => psd_array_reg_768_1023_32_32_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_33_33: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(33),
      O => psd_array_reg_768_1023_33_33_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_34_34: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(34),
      O => psd_array_reg_768_1023_34_34_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_35_35: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(35),
      O => psd_array_reg_768_1023_35_35_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_36_36: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(36),
      O => psd_array_reg_768_1023_36_36_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_37_37: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(37),
      O => psd_array_reg_768_1023_37_37_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_38_38: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(38),
      O => psd_array_reg_768_1023_38_38_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_39_39: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(39),
      O => psd_array_reg_768_1023_39_39_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(3),
      O => psd_array_reg_768_1023_3_3_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_40_40: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(40),
      O => psd_array_reg_768_1023_40_40_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_41_41: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(41),
      O => psd_array_reg_768_1023_41_41_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_42_42: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(42),
      O => psd_array_reg_768_1023_42_42_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_43_43: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(43),
      O => psd_array_reg_768_1023_43_43_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_44_44: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(44),
      O => psd_array_reg_768_1023_44_44_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_45_45: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(45),
      O => psd_array_reg_768_1023_45_45_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_46_46: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(46),
      O => psd_array_reg_768_1023_46_46_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_47_47: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(47),
      O => psd_array_reg_768_1023_47_47_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_48_48: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(48),
      O => psd_array_reg_768_1023_48_48_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_49_49: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(49),
      O => psd_array_reg_768_1023_49_49_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(4),
      O => psd_array_reg_768_1023_4_4_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_50_50: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(50),
      O => psd_array_reg_768_1023_50_50_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_51_51: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(51),
      O => psd_array_reg_768_1023_51_51_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_52_52: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(52),
      O => psd_array_reg_768_1023_52_52_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_53_53: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(53),
      O => psd_array_reg_768_1023_53_53_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_54_54: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(54),
      O => psd_array_reg_768_1023_54_54_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(5),
      O => psd_array_reg_768_1023_5_5_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(6),
      O => psd_array_reg_768_1023_6_6_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(7),
      O => psd_array_reg_768_1023_7_7_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_8_8: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(8),
      O => psd_array_reg_768_1023_8_8_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_array_reg_768_1023_9_9: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => fft_m_data_tuser(7 downto 0),
      D => p_2_in(9),
      O => psd_array_reg_768_1023_9_9_n_0,
      WCLK => clk,
      WE => psd_array_reg_768_1023_0_0_i_1_n_0
    );
psd_avg_array_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => fft_m_data_tuser(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => cnt_read(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_psd_avg_array_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_psd_avg_array_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_psd_avg_array_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => psd_avg(31 downto 0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => psd_avg(35 downto 32),
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => NLW_psd_avg_array_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => psd_avg_read(31 downto 0),
      DOPADOP(3 downto 0) => NLW_psd_avg_array_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => psd_avg_read(35 downto 32),
      ECCPARITY(7 downto 0) => NLW_psd_avg_array_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => psd_avg_array_reg_1_i_1_n_0,
      ENBWREN => '1',
      INJECTDBITERR => NLW_psd_avg_array_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_psd_avg_array_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_psd_avg_array_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_psd_avg_array_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => \^m_axis_data_tvalid\,
      WEA(2) => \^m_axis_data_tvalid\,
      WEA(1) => \^m_axis_data_tvalid\,
      WEA(0) => \^m_axis_data_tvalid\,
      WEBWE(7 downto 0) => B"00000000"
    );
psd_avg_array_reg_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__8_n_5\,
      O => psd_avg(31)
    );
psd_avg_array_reg_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__6_n_6\,
      O => psd_avg(22)
    );
psd_avg_array_reg_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__6_n_7\,
      O => psd_avg(21)
    );
psd_avg_array_reg_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__5_n_4\,
      O => psd_avg(20)
    );
psd_avg_array_reg_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__5_n_5\,
      O => psd_avg(19)
    );
psd_avg_array_reg_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__5_n_6\,
      O => psd_avg(18)
    );
psd_avg_array_reg_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__5_n_7\,
      O => psd_avg(17)
    );
psd_avg_array_reg_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__4_n_4\,
      O => psd_avg(16)
    );
psd_avg_array_reg_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__4_n_5\,
      O => psd_avg(15)
    );
psd_avg_array_reg_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__4_n_6\,
      O => psd_avg(14)
    );
psd_avg_array_reg_0_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__4_n_7\,
      O => psd_avg(13)
    );
psd_avg_array_reg_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__8_n_6\,
      O => psd_avg(30)
    );
psd_avg_array_reg_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__3_n_4\,
      O => psd_avg(12)
    );
psd_avg_array_reg_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__3_n_5\,
      O => psd_avg(11)
    );
psd_avg_array_reg_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__3_n_6\,
      O => psd_avg(10)
    );
psd_avg_array_reg_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__3_n_7\,
      O => psd_avg(9)
    );
psd_avg_array_reg_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__2_n_4\,
      O => psd_avg(8)
    );
psd_avg_array_reg_0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__2_n_5\,
      O => psd_avg(7)
    );
psd_avg_array_reg_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__2_n_6\,
      O => psd_avg(6)
    );
psd_avg_array_reg_0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__2_n_7\,
      O => psd_avg(5)
    );
psd_avg_array_reg_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__1_n_4\,
      O => psd_avg(4)
    );
psd_avg_array_reg_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__1_n_5\,
      O => psd_avg(3)
    );
psd_avg_array_reg_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__8_n_7\,
      O => psd_avg(29)
    );
psd_avg_array_reg_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__1_n_6\,
      O => psd_avg(2)
    );
psd_avg_array_reg_0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__1_n_7\,
      O => psd_avg(1)
    );
psd_avg_array_reg_0_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__0_n_4\,
      O => psd_avg(0)
    );
psd_avg_array_reg_0_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__9_n_5\,
      O => psd_avg(35)
    );
psd_avg_array_reg_0_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__9_n_6\,
      O => psd_avg(34)
    );
psd_avg_array_reg_0_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__9_n_7\,
      O => psd_avg(33)
    );
psd_avg_array_reg_0_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__8_n_4\,
      O => psd_avg(32)
    );
psd_avg_array_reg_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__7_n_4\,
      O => psd_avg(28)
    );
psd_avg_array_reg_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__7_n_5\,
      O => psd_avg(27)
    );
psd_avg_array_reg_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__7_n_6\,
      O => psd_avg(26)
    );
psd_avg_array_reg_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__7_n_7\,
      O => psd_avg(25)
    );
psd_avg_array_reg_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__6_n_4\,
      O => psd_avg(24)
    );
psd_avg_array_reg_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__6_n_5\,
      O => psd_avg(23)
    );
psd_avg_array_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => fft_m_data_tuser(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => cnt_read(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 12) => B"0000",
      DIADI(11 downto 0) => psd_avg(47 downto 36),
      DIBDI(15 downto 0) => B"0000111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_psd_avg_array_reg_1_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 12) => NLW_psd_avg_array_reg_1_DOBDO_UNCONNECTED(15 downto 12),
      DOBDO(11 downto 0) => psd_avg_read(47 downto 36),
      DOPADOP(1 downto 0) => NLW_psd_avg_array_reg_1_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_psd_avg_array_reg_1_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => psd_avg_array_reg_1_i_1_n_0,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^m_axis_data_tvalid\,
      WEA(0) => \^m_axis_data_tvalid\,
      WEBWE(3 downto 0) => B"0000"
    );
psd_avg_array_reg_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_m_fft_reg(6),
      I1 => m_valid_INST_0_i_1_n_0,
      O => psd_avg_array_reg_1_i_1_n_0
    );
psd_avg_array_reg_1_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__10_n_5\,
      O => psd_avg(39)
    );
psd_avg_array_reg_1_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__10_n_6\,
      O => psd_avg(38)
    );
psd_avg_array_reg_1_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__10_n_7\,
      O => psd_avg(37)
    );
psd_avg_array_reg_1_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__9_n_4\,
      O => psd_avg(36)
    );
psd_avg_array_reg_1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__12_n_5\,
      O => psd_avg(47)
    );
psd_avg_array_reg_1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__12_n_6\,
      O => psd_avg(46)
    );
psd_avg_array_reg_1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__12_n_7\,
      O => psd_avg(45)
    );
psd_avg_array_reg_1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__11_n_4\,
      O => psd_avg(44)
    );
psd_avg_array_reg_1_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__11_n_5\,
      O => psd_avg(43)
    );
psd_avg_array_reg_1_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__11_n_6\,
      O => psd_avg(42)
    );
psd_avg_array_reg_1_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__11_n_7\,
      O => psd_avg(41)
    );
psd_avg_array_reg_1_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_valid_INST_0_i_1_n_0,
      I1 => cnt_m_fft_reg(6),
      I2 => \^m_axis_data_tvalid\,
      I3 => \_carry__10_n_4\,
      O => psd_avg(40)
    );
psd_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => psd_carry_n_0,
      CO(2) => psd_carry_n_1,
      CO(1) => psd_carry_n_2,
      CO(0) => psd_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => P(3 downto 0),
      O(3) => psd_carry_n_4,
      O(2) => psd_carry_n_5,
      O(1) => psd_carry_n_6,
      O(0) => psd_carry_n_7,
      S(3) => psd_carry_i_1_n_0,
      S(2) => psd_carry_i_2_n_0,
      S(1) => psd_carry_i_3_n_0,
      S(0) => psd_carry_i_4_n_0
    );
\psd_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => psd_carry_n_0,
      CO(3) => \psd_carry__0_n_0\,
      CO(2) => \psd_carry__0_n_1\,
      CO(1) => \psd_carry__0_n_2\,
      CO(0) => \psd_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P(7 downto 4),
      O(3) => \psd_carry__0_n_4\,
      O(2) => \psd_carry__0_n_5\,
      O(1) => \psd_carry__0_n_6\,
      O(0) => \psd_carry__0_n_7\,
      S(3) => \psd_carry__0_i_1_n_0\,
      S(2) => \psd_carry__0_i_2_n_0\,
      S(1) => \psd_carry__0_i_3_n_0\,
      S(0) => \psd_carry__0_i_4_n_0\
    );
\psd_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => \psd_carry__3_0\(7),
      O => \psd_carry__0_i_1_n_0\
    );
\psd_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => \psd_carry__3_0\(6),
      O => \psd_carry__0_i_2_n_0\
    );
\psd_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => \psd_carry__3_0\(5),
      O => \psd_carry__0_i_3_n_0\
    );
\psd_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => \psd_carry__3_0\(4),
      O => \psd_carry__0_i_4_n_0\
    );
\psd_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__0_n_0\,
      CO(3) => \psd_carry__1_n_0\,
      CO(2) => \psd_carry__1_n_1\,
      CO(1) => \psd_carry__1_n_2\,
      CO(0) => \psd_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P(11 downto 8),
      O(3) => \psd_carry__1_n_4\,
      O(2) => \psd_carry__1_n_5\,
      O(1) => \psd_carry__1_n_6\,
      O(0) => \psd_carry__1_n_7\,
      S(3) => \psd_carry__1_i_1_n_0\,
      S(2) => \psd_carry__1_i_2_n_0\,
      S(1) => \psd_carry__1_i_3_n_0\,
      S(0) => \psd_carry__1_i_4_n_0\
    );
\psd_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__9_n_0\,
      CO(3) => \NLW_psd_carry__10_CO_UNCONNECTED\(3),
      CO(2) => \psd_carry__10_n_1\,
      CO(1) => \psd_carry__10_n_2\,
      CO(0) => \psd_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \psd_carry__10_0\(29 downto 27),
      O(3) => \psd_carry__10_n_4\,
      O(2) => \psd_carry__10_n_5\,
      O(1) => \psd_carry__10_n_6\,
      O(0) => \psd_carry__10_n_7\,
      S(3) => \psd_carry__10_i_1_n_0\,
      S(2) => \psd_carry__10_i_2_n_0\,
      S(1) => \psd_carry__10_i_3_n_0\,
      S(0) => \psd_carry__10_i_4_n_0\
    );
\psd_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(30),
      I1 => \psd_carry__10_1\(30),
      O => \psd_carry__10_i_1_n_0\
    );
\psd_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(29),
      I1 => \psd_carry__10_1\(29),
      O => \psd_carry__10_i_2_n_0\
    );
\psd_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(28),
      I1 => \psd_carry__10_1\(28),
      O => \psd_carry__10_i_3_n_0\
    );
\psd_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(27),
      I1 => \psd_carry__10_1\(27),
      O => \psd_carry__10_i_4_n_0\
    );
\psd_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => \psd_carry__3_0\(11),
      O => \psd_carry__1_i_1_n_0\
    );
\psd_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => \psd_carry__3_0\(10),
      O => \psd_carry__1_i_2_n_0\
    );
\psd_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => \psd_carry__3_0\(9),
      O => \psd_carry__1_i_3_n_0\
    );
\psd_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => \psd_carry__3_0\(8),
      O => \psd_carry__1_i_4_n_0\
    );
\psd_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__1_n_0\,
      CO(3) => \psd_carry__2_n_0\,
      CO(2) => \psd_carry__2_n_1\,
      CO(1) => \psd_carry__2_n_2\,
      CO(0) => \psd_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P(15 downto 12),
      O(3) => \psd_carry__2_n_4\,
      O(2) => \psd_carry__2_n_5\,
      O(1) => \psd_carry__2_n_6\,
      O(0) => \psd_carry__2_n_7\,
      S(3) => \psd_carry__2_i_1_n_0\,
      S(2) => \psd_carry__2_i_2_n_0\,
      S(1) => \psd_carry__2_i_3_n_0\,
      S(0) => \psd_carry__2_i_4_n_0\
    );
\psd_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(15),
      I1 => \psd_carry__3_0\(15),
      O => \psd_carry__2_i_1_n_0\
    );
\psd_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => \psd_carry__3_0\(14),
      O => \psd_carry__2_i_2_n_0\
    );
\psd_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => \psd_carry__3_0\(13),
      O => \psd_carry__2_i_3_n_0\
    );
\psd_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => \psd_carry__3_0\(12),
      O => \psd_carry__2_i_4_n_0\
    );
\psd_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__2_n_0\,
      CO(3) => \psd_carry__3_n_0\,
      CO(2) => \psd_carry__3_n_1\,
      CO(1) => \psd_carry__3_n_2\,
      CO(0) => \psd_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \psd_carry__10_0\(2 downto 0),
      DI(0) => P(16),
      O(3) => \psd_carry__3_n_4\,
      O(2) => \psd_carry__3_n_5\,
      O(1) => \psd_carry__3_n_6\,
      O(0) => \psd_carry__3_n_7\,
      S(3) => \psd_carry__3_i_1_n_0\,
      S(2) => \psd_carry__3_i_2_n_0\,
      S(1) => \psd_carry__3_i_3_n_0\,
      S(0) => \psd_carry__3_i_4_n_0\
    );
\psd_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(2),
      I1 => \psd_carry__10_1\(2),
      O => \psd_carry__3_i_1_n_0\
    );
\psd_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(1),
      I1 => \psd_carry__10_1\(1),
      O => \psd_carry__3_i_2_n_0\
    );
\psd_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(0),
      I1 => \psd_carry__10_1\(0),
      O => \psd_carry__3_i_3_n_0\
    );
\psd_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(16),
      I1 => \psd_carry__3_0\(16),
      O => \psd_carry__3_i_4_n_0\
    );
\psd_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__3_n_0\,
      CO(3) => \psd_carry__4_n_0\,
      CO(2) => \psd_carry__4_n_1\,
      CO(1) => \psd_carry__4_n_2\,
      CO(0) => \psd_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(6 downto 3),
      O(3) => \psd_carry__4_n_4\,
      O(2) => \psd_carry__4_n_5\,
      O(1) => \psd_carry__4_n_6\,
      O(0) => \psd_carry__4_n_7\,
      S(3) => \psd_carry__4_i_1_n_0\,
      S(2) => \psd_carry__4_i_2_n_0\,
      S(1) => \psd_carry__4_i_3_n_0\,
      S(0) => \psd_carry__4_i_4_n_0\
    );
\psd_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(6),
      I1 => \psd_carry__10_1\(6),
      O => \psd_carry__4_i_1_n_0\
    );
\psd_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(5),
      I1 => \psd_carry__10_1\(5),
      O => \psd_carry__4_i_2_n_0\
    );
\psd_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(4),
      I1 => \psd_carry__10_1\(4),
      O => \psd_carry__4_i_3_n_0\
    );
\psd_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(3),
      I1 => \psd_carry__10_1\(3),
      O => \psd_carry__4_i_4_n_0\
    );
\psd_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__4_n_0\,
      CO(3) => \psd_carry__5_n_0\,
      CO(2) => \psd_carry__5_n_1\,
      CO(1) => \psd_carry__5_n_2\,
      CO(0) => \psd_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(10 downto 7),
      O(3) => \psd_carry__5_n_4\,
      O(2) => \psd_carry__5_n_5\,
      O(1) => \psd_carry__5_n_6\,
      O(0) => \psd_carry__5_n_7\,
      S(3) => \psd_carry__5_i_1_n_0\,
      S(2) => \psd_carry__5_i_2_n_0\,
      S(1) => \psd_carry__5_i_3_n_0\,
      S(0) => \psd_carry__5_i_4_n_0\
    );
\psd_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(10),
      I1 => \psd_carry__10_1\(10),
      O => \psd_carry__5_i_1_n_0\
    );
\psd_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(9),
      I1 => \psd_carry__10_1\(9),
      O => \psd_carry__5_i_2_n_0\
    );
\psd_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(8),
      I1 => \psd_carry__10_1\(8),
      O => \psd_carry__5_i_3_n_0\
    );
\psd_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(7),
      I1 => \psd_carry__10_1\(7),
      O => \psd_carry__5_i_4_n_0\
    );
\psd_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__5_n_0\,
      CO(3) => \psd_carry__6_n_0\,
      CO(2) => \psd_carry__6_n_1\,
      CO(1) => \psd_carry__6_n_2\,
      CO(0) => \psd_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(14 downto 11),
      O(3) => \psd_carry__6_n_4\,
      O(2) => \psd_carry__6_n_5\,
      O(1) => \psd_carry__6_n_6\,
      O(0) => \psd_carry__6_n_7\,
      S(3) => \psd_carry__6_i_1_n_0\,
      S(2) => \psd_carry__6_i_2_n_0\,
      S(1) => \psd_carry__6_i_3_n_0\,
      S(0) => \psd_carry__6_i_4_n_0\
    );
\psd_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(14),
      I1 => \psd_carry__10_1\(14),
      O => \psd_carry__6_i_1_n_0\
    );
\psd_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(13),
      I1 => \psd_carry__10_1\(13),
      O => \psd_carry__6_i_2_n_0\
    );
\psd_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(12),
      I1 => \psd_carry__10_1\(12),
      O => \psd_carry__6_i_3_n_0\
    );
\psd_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(11),
      I1 => \psd_carry__10_1\(11),
      O => \psd_carry__6_i_4_n_0\
    );
\psd_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__6_n_0\,
      CO(3) => \psd_carry__7_n_0\,
      CO(2) => \psd_carry__7_n_1\,
      CO(1) => \psd_carry__7_n_2\,
      CO(0) => \psd_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(18 downto 15),
      O(3) => \psd_carry__7_n_4\,
      O(2) => \psd_carry__7_n_5\,
      O(1) => \psd_carry__7_n_6\,
      O(0) => \psd_carry__7_n_7\,
      S(3) => \psd_carry__7_i_1_n_0\,
      S(2) => \psd_carry__7_i_2_n_0\,
      S(1) => \psd_carry__7_i_3_n_0\,
      S(0) => \psd_carry__7_i_4_n_0\
    );
\psd_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(18),
      I1 => \psd_carry__10_1\(18),
      O => \psd_carry__7_i_1_n_0\
    );
\psd_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(17),
      I1 => \psd_carry__10_1\(17),
      O => \psd_carry__7_i_2_n_0\
    );
\psd_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(16),
      I1 => \psd_carry__10_1\(16),
      O => \psd_carry__7_i_3_n_0\
    );
\psd_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(15),
      I1 => \psd_carry__10_1\(15),
      O => \psd_carry__7_i_4_n_0\
    );
\psd_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__7_n_0\,
      CO(3) => \psd_carry__8_n_0\,
      CO(2) => \psd_carry__8_n_1\,
      CO(1) => \psd_carry__8_n_2\,
      CO(0) => \psd_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(22 downto 19),
      O(3) => \psd_carry__8_n_4\,
      O(2) => \psd_carry__8_n_5\,
      O(1) => \psd_carry__8_n_6\,
      O(0) => \psd_carry__8_n_7\,
      S(3) => \psd_carry__8_i_1_n_0\,
      S(2) => \psd_carry__8_i_2_n_0\,
      S(1) => \psd_carry__8_i_3_n_0\,
      S(0) => \psd_carry__8_i_4_n_0\
    );
\psd_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(22),
      I1 => \psd_carry__10_1\(22),
      O => \psd_carry__8_i_1_n_0\
    );
\psd_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(21),
      I1 => \psd_carry__10_1\(21),
      O => \psd_carry__8_i_2_n_0\
    );
\psd_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(20),
      I1 => \psd_carry__10_1\(20),
      O => \psd_carry__8_i_3_n_0\
    );
\psd_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(19),
      I1 => \psd_carry__10_1\(19),
      O => \psd_carry__8_i_4_n_0\
    );
\psd_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \psd_carry__8_n_0\,
      CO(3) => \psd_carry__9_n_0\,
      CO(2) => \psd_carry__9_n_1\,
      CO(1) => \psd_carry__9_n_2\,
      CO(0) => \psd_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \psd_carry__10_0\(26 downto 23),
      O(3) => \psd_carry__9_n_4\,
      O(2) => \psd_carry__9_n_5\,
      O(1) => \psd_carry__9_n_6\,
      O(0) => \psd_carry__9_n_7\,
      S(3) => \psd_carry__9_i_1_n_0\,
      S(2) => \psd_carry__9_i_2_n_0\,
      S(1) => \psd_carry__9_i_3_n_0\,
      S(0) => \psd_carry__9_i_4_n_0\
    );
\psd_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(26),
      I1 => \psd_carry__10_1\(26),
      O => \psd_carry__9_i_1_n_0\
    );
\psd_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(25),
      I1 => \psd_carry__10_1\(25),
      O => \psd_carry__9_i_2_n_0\
    );
\psd_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(24),
      I1 => \psd_carry__10_1\(24),
      O => \psd_carry__9_i_3_n_0\
    );
\psd_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \psd_carry__10_0\(23),
      I1 => \psd_carry__10_1\(23),
      O => \psd_carry__9_i_4_n_0\
    );
psd_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => \psd_carry__3_0\(3),
      O => psd_carry_i_1_n_0
    );
psd_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => \psd_carry__3_0\(2),
      O => psd_carry_i_2_n_0
    );
psd_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => \psd_carry__3_0\(1),
      O => psd_carry_i_3_n_0
    );
psd_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => \psd_carry__3_0\(0),
      O => psd_carry_i_4_n_0
    );
u_fft: component DDS_FFT_ethernet_final_DDS_FFT_0_0_xfft_0
     port map (
      aclk => clk,
      aresetn => rst_n,
      event_data_in_channel_halt => NLW_u_fft_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_u_fft_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_u_fft_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_u_fft_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_u_fft_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_u_fft_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(63 downto 56) => NLW_u_fft_m_axis_data_tdata_UNCONNECTED(63 downto 56),
      m_axis_data_tdata(55 downto 32) => m_axis_data_tdata(47 downto 24),
      m_axis_data_tdata(31 downto 24) => NLW_u_fft_m_axis_data_tdata_UNCONNECTED(31 downto 24),
      m_axis_data_tdata(23 downto 0) => m_axis_data_tdata(23 downto 0),
      m_axis_data_tlast => fft_m_data_tlast,
      m_axis_data_tready => '1',
      m_axis_data_tuser(15 downto 10) => NLW_u_fft_m_axis_data_tuser_UNCONNECTED(15 downto 10),
      m_axis_data_tuser(9 downto 0) => fft_m_data_tuser(9 downto 0),
      m_axis_data_tvalid => \^m_axis_data_tvalid\,
      s_axis_config_tdata(7 downto 0) => B"00000001",
      s_axis_config_tready => NLW_u_fft_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '1',
      s_axis_data_tdata(31) => fft_s_data_tdata(31),
      s_axis_data_tdata(30) => fft_s_data_tdata(31),
      s_axis_data_tdata(29) => fft_s_data_tdata(31),
      s_axis_data_tdata(28) => fft_s_data_tdata(31),
      s_axis_data_tdata(27 downto 15) => fft_s_data_tdata(27 downto 15),
      s_axis_data_tdata(14) => fft_s_data_tdata(15),
      s_axis_data_tdata(13) => fft_s_data_tdata(15),
      s_axis_data_tdata(12 downto 0) => fft_s_data_tdata(12 downto 0),
      s_axis_data_tlast => fft_s_data_tlast,
      s_axis_data_tready => \^s_axis_data_tready\,
      s_axis_data_tvalid => s_axis_data_tvalid
    );
u_fft_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE000000"
    )
        port map (
      I0 => \p_1_out__0\,
      I1 => \p_1_out__0_0\,
      I2 => \p_1_out__0_1\,
      I3 => cnt_s_reg(9),
      I4 => \^s_axis_data_tready\,
      I5 => u_fft_i_3_n_0,
      O => fft_s_data_tlast
    );
u_fft_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cnt_s_reg(7),
      I1 => \cnt_s[9]_i_2_n_0\,
      I2 => cnt_s_reg(6),
      I3 => cnt_s_reg(8),
      O => u_fft_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0 is
  port (
    m_axis_data_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dds_phase_incr_0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \fft_s_data_tdata_reg[31]\ : in STD_LOGIC;
    \fft_s_data_tdata_reg[31]_0\ : in STD_LOGIC;
    s_axis_data_tready : in STD_LOGIC;
    pos_radar : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \lfsr_noise_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0 : entity is "dds_0";
end DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0 is
  component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_0;
  signal dds_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dout0_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_1\ : STD_LOGIC;
  signal \dout0_carry__0_n_2\ : STD_LOGIC;
  signal \dout0_carry__0_n_3\ : STD_LOGIC;
  signal \dout0_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_1\ : STD_LOGIC;
  signal \dout0_carry__1_n_2\ : STD_LOGIC;
  signal \dout0_carry__1_n_3\ : STD_LOGIC;
  signal \dout0_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_n_1\ : STD_LOGIC;
  signal \dout0_carry__2_n_2\ : STD_LOGIC;
  signal \dout0_carry__2_n_3\ : STD_LOGIC;
  signal \dout0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal dout0_carry_n_0 : STD_LOGIC;
  signal dout0_carry_n_1 : STD_LOGIC;
  signal dout0_carry_n_2 : STD_LOGIC;
  signal dout0_carry_n_3 : STD_LOGIC;
  signal lfsr_noise : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \lfsr_noise[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_axis_data_tvalid\ : STD_LOGIC;
  signal NLW_dout0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__2\ : label is 35;
  attribute x_core_info : string;
  attribute x_core_info of inst_dds_0 : label is "dds_compiler_v6_0_22,Vivado 2022.2";
begin
  m_axis_data_tvalid <= \^m_axis_data_tvalid\;
dout0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dout0_carry_n_0,
      CO(2) => dout0_carry_n_1,
      CO(1) => dout0_carry_n_2,
      CO(0) => dout0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(3 downto 0),
      O(3) => D(0),
      O(2 downto 0) => NLW_dout0_carry_O_UNCONNECTED(2 downto 0),
      S(3) => \dout0_carry_i_1__1_n_0\,
      S(2) => \dout0_carry_i_2__1_n_0\,
      S(1) => \dout0_carry_i_3__1_n_0\,
      S(0) => \dout0_carry_i_4__1_n_0\
    );
\dout0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dout0_carry_n_0,
      CO(3) => \dout0_carry__0_n_0\,
      CO(2) => \dout0_carry__0_n_1\,
      CO(1) => \dout0_carry__0_n_2\,
      CO(0) => \dout0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(7 downto 4),
      O(3 downto 0) => D(4 downto 1),
      S(3) => \dout0_carry__0_i_1__1_n_0\,
      S(2) => \dout0_carry__0_i_2__1_n_0\,
      S(1) => \dout0_carry__0_i_3__1_n_0\,
      S(0) => \dout0_carry__0_i_4__1_n_0\
    );
\dout0_carry__0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(7),
      I1 => pos_radar(0),
      I2 => lfsr_noise(7),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_1__1_n_0\
    );
\dout0_carry__0_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(6),
      I1 => pos_radar(0),
      I2 => lfsr_noise(6),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_2__1_n_0\
    );
\dout0_carry__0_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(5),
      I1 => pos_radar(0),
      I2 => lfsr_noise(5),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_3__1_n_0\
    );
\dout0_carry__0_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(4),
      I1 => pos_radar(0),
      I2 => lfsr_noise(4),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_4__1_n_0\
    );
\dout0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__0_n_0\,
      CO(3) => \dout0_carry__1_n_0\,
      CO(2) => \dout0_carry__1_n_1\,
      CO(1) => \dout0_carry__1_n_2\,
      CO(0) => \dout0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \dout0_carry__1_i_1__1_n_0\,
      DI(2 downto 0) => dds_output(10 downto 8),
      O(3 downto 0) => D(8 downto 5),
      S(3) => \dout0_carry__1_i_2__1_n_0\,
      S(2) => \dout0_carry__1_i_3__1_n_0\,
      S(1) => \dout0_carry__1_i_4__1_n_0\,
      S(0) => \dout0_carry__1_i_5__1_n_0\
    );
\dout0_carry__1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => pos_radar(0),
      I1 => lfsr_noise(10),
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      O => \dout0_carry__1_i_1__1_n_0\
    );
\dout0_carry__1_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => lfsr_noise(10),
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(11),
      O => \dout0_carry__1_i_2__1_n_0\
    );
\dout0_carry__1_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => lfsr_noise(10),
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(10),
      O => \dout0_carry__1_i_3__1_n_0\
    );
\dout0_carry__1_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(9),
      I1 => pos_radar(0),
      I2 => lfsr_noise(9),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_4__1_n_0\
    );
\dout0_carry__1_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(8),
      I1 => pos_radar(0),
      I2 => lfsr_noise(8),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_5__1_n_0\
    );
\dout0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__1_n_0\,
      CO(3) => \NLW_dout0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \dout0_carry__2_n_1\,
      CO(1) => \dout0_carry__2_n_2\,
      CO(0) => \dout0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dds_output(13 downto 11),
      O(3 downto 0) => D(12 downto 9),
      S(3) => \dout0_carry__2_i_1__1_n_0\,
      S(2) => \dout0_carry__2_i_2__1_n_0\,
      S(1) => \dout0_carry__2_i_3__1_n_0\,
      S(0) => \dout0_carry__2_i_4__1_n_0\
    );
\dout0_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(14),
      I1 => dds_output(15),
      O => \dout0_carry__2_i_1__1_n_0\
    );
\dout0_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(13),
      I1 => dds_output(14),
      O => \dout0_carry__2_i_2__1_n_0\
    );
\dout0_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(12),
      I1 => dds_output(13),
      O => \dout0_carry__2_i_3__1_n_0\
    );
\dout0_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(11),
      I1 => dds_output(12),
      O => \dout0_carry__2_i_4__1_n_0\
    );
\dout0_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(3),
      I1 => pos_radar(0),
      I2 => lfsr_noise(3),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_1__1_n_0\
    );
\dout0_carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(2),
      I1 => pos_radar(0),
      I2 => lfsr_noise(2),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_2__1_n_0\
    );
\dout0_carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(1),
      I1 => pos_radar(0),
      I2 => lfsr_noise(1),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_3__1_n_0\
    );
\dout0_carry_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(0),
      I1 => pos_radar(0),
      I2 => lfsr_noise(0),
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_4__1_n_0\
    );
\fft_s_data_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^m_axis_data_tvalid\,
      I1 => \fft_s_data_tdata_reg[31]\,
      I2 => \fft_s_data_tdata_reg[31]_0\,
      I3 => s_axis_data_tready,
      O => E(0)
    );
inst_dds_0: component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_0
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(15 downto 0) => dds_output(15 downto 0),
      m_axis_data_tvalid => \^m_axis_data_tvalid\,
      s_axis_config_tdata(23 downto 18) => B"000000",
      s_axis_config_tdata(17 downto 0) => dds_phase_incr_0(17 downto 0),
      s_axis_config_tvalid => '1'
    );
\lfsr_noise[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr_noise(7),
      I1 => lfsr_noise(10),
      O => \lfsr_noise[0]_i_1__1_n_0\
    );
\lfsr_noise_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise[0]_i_1__1_n_0\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(0)
    );
\lfsr_noise_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => lfsr_noise(9),
      Q => lfsr_noise(10)
    );
\lfsr_noise_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => lfsr_noise(0),
      Q => lfsr_noise(1)
    );
\lfsr_noise_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => lfsr_noise(1),
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(2)
    );
\lfsr_noise_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => lfsr_noise(2),
      Q => lfsr_noise(3)
    );
\lfsr_noise_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => lfsr_noise(3),
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(4)
    );
\lfsr_noise_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => lfsr_noise(4),
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(5)
    );
\lfsr_noise_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => lfsr_noise(5),
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(6)
    );
\lfsr_noise_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => lfsr_noise(6),
      Q => lfsr_noise(7)
    );
\lfsr_noise_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => lfsr_noise(7),
      PRE => \lfsr_noise_reg[0]_0\,
      Q => lfsr_noise(8)
    );
\lfsr_noise_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => lfsr_noise(8),
      Q => lfsr_noise(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1 is
  port (
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dds_phase_incr_1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \p_1_out__0\ : in STD_LOGIC;
    \p_1_out__0_0\ : in STD_LOGIC;
    pos_radar : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \lfsr_noise_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1 : entity is "dds_1";
end DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1 is
  component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_1;
  signal dds_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dout0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_1\ : STD_LOGIC;
  signal \dout0_carry__0_n_2\ : STD_LOGIC;
  signal \dout0_carry__0_n_3\ : STD_LOGIC;
  signal \dout0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_1\ : STD_LOGIC;
  signal \dout0_carry__1_n_2\ : STD_LOGIC;
  signal \dout0_carry__1_n_3\ : STD_LOGIC;
  signal \dout0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_n_1\ : STD_LOGIC;
  signal \dout0_carry__2_n_2\ : STD_LOGIC;
  signal \dout0_carry__2_n_3\ : STD_LOGIC;
  signal \dout0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \dout0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal dout0_carry_n_0 : STD_LOGIC;
  signal dout0_carry_n_1 : STD_LOGIC;
  signal dout0_carry_n_2 : STD_LOGIC;
  signal dout0_carry_n_3 : STD_LOGIC;
  signal \fft_s_data_tdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \fft_s_data_tdata_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \lfsr_noise[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[0]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[10]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[1]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[2]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[3]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[5]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[6]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[7]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[8]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[9]\ : STD_LOGIC;
  signal \^m_axis_data_tvalid\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_dout0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_fft_s_data_tdata_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_fft_s_data_tdata_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__2\ : label is 35;
  attribute x_core_info : string;
  attribute x_core_info of inst_dds_1 : label is "dds_compiler_v6_0_22,Vivado 2022.2";
begin
  m_axis_data_tvalid <= \^m_axis_data_tvalid\;
dout0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dout0_carry_n_0,
      CO(2) => dout0_carry_n_1,
      CO(1) => dout0_carry_n_2,
      CO(0) => dout0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(3 downto 0),
      O(3) => p_1_in(0),
      O(2 downto 0) => NLW_dout0_carry_O_UNCONNECTED(2 downto 0),
      S(3) => \dout0_carry_i_1__0_n_0\,
      S(2) => \dout0_carry_i_2__0_n_0\,
      S(1) => \dout0_carry_i_3__0_n_0\,
      S(0) => \dout0_carry_i_4__0_n_0\
    );
\dout0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dout0_carry_n_0,
      CO(3) => \dout0_carry__0_n_0\,
      CO(2) => \dout0_carry__0_n_1\,
      CO(1) => \dout0_carry__0_n_2\,
      CO(0) => \dout0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(7 downto 4),
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => \dout0_carry__0_i_1__0_n_0\,
      S(2) => \dout0_carry__0_i_2__0_n_0\,
      S(1) => \dout0_carry__0_i_3__0_n_0\,
      S(0) => \dout0_carry__0_i_4__0_n_0\
    );
\dout0_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(7),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[7]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_1__0_n_0\
    );
\dout0_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(6),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[6]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_2__0_n_0\
    );
\dout0_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(5),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[5]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_3__0_n_0\
    );
\dout0_carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(4),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[4]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_4__0_n_0\
    );
\dout0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__0_n_0\,
      CO(3) => \dout0_carry__1_n_0\,
      CO(2) => \dout0_carry__1_n_1\,
      CO(1) => \dout0_carry__1_n_2\,
      CO(0) => \dout0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \dout0_carry__1_i_1__0_n_0\,
      DI(2 downto 0) => dds_output(10 downto 8),
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3) => \dout0_carry__1_i_2__0_n_0\,
      S(2) => \dout0_carry__1_i_3__0_n_0\,
      S(1) => \dout0_carry__1_i_4__0_n_0\,
      S(0) => \dout0_carry__1_i_5__0_n_0\
    );
\dout0_carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      O => \dout0_carry__1_i_1__0_n_0\
    );
\dout0_carry__1_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(11),
      O => \dout0_carry__1_i_2__0_n_0\
    );
\dout0_carry__1_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(10),
      O => \dout0_carry__1_i_3__0_n_0\
    );
\dout0_carry__1_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(9),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[9]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_4__0_n_0\
    );
\dout0_carry__1_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(8),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[8]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_5__0_n_0\
    );
\dout0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__1_n_0\,
      CO(3) => \NLW_dout0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \dout0_carry__2_n_1\,
      CO(1) => \dout0_carry__2_n_2\,
      CO(0) => \dout0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dds_output(13 downto 11),
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3) => \dout0_carry__2_i_1__0_n_0\,
      S(2) => \dout0_carry__2_i_2__0_n_0\,
      S(1) => \dout0_carry__2_i_3__0_n_0\,
      S(0) => \dout0_carry__2_i_4__0_n_0\
    );
\dout0_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(14),
      I1 => dds_output(15),
      O => \dout0_carry__2_i_1__0_n_0\
    );
\dout0_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(13),
      I1 => dds_output(14),
      O => \dout0_carry__2_i_2__0_n_0\
    );
\dout0_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(12),
      I1 => dds_output(13),
      O => \dout0_carry__2_i_3__0_n_0\
    );
\dout0_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(11),
      I1 => dds_output(12),
      O => \dout0_carry__2_i_4__0_n_0\
    );
\dout0_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(3),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[3]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_1__0_n_0\
    );
\dout0_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(2),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[2]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_2__0_n_0\
    );
\dout0_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(1),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[1]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_3__0_n_0\
    );
\dout0_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(0),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[0]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry_i_4__0_n_0\
    );
\fft_s_data_tdata[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(11),
      I1 => p_0_in(11),
      O => \fft_s_data_tdata[11]_i_2_n_0\
    );
\fft_s_data_tdata[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(10),
      I1 => p_0_in(10),
      O => \fft_s_data_tdata[11]_i_3_n_0\
    );
\fft_s_data_tdata[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(9),
      I1 => p_0_in(9),
      O => \fft_s_data_tdata[11]_i_4_n_0\
    );
\fft_s_data_tdata[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(8),
      I1 => p_0_in(8),
      O => \fft_s_data_tdata[11]_i_5_n_0\
    );
\fft_s_data_tdata[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(12),
      O => \fft_s_data_tdata[15]_i_2_n_0\
    );
\fft_s_data_tdata[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(12),
      I1 => p_0_in(12),
      O => \fft_s_data_tdata[15]_i_3_n_0\
    );
\fft_s_data_tdata[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_0_in(3),
      O => \fft_s_data_tdata[3]_i_2_n_0\
    );
\fft_s_data_tdata[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_0_in(2),
      O => \fft_s_data_tdata[3]_i_3_n_0\
    );
\fft_s_data_tdata[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_0_in(1),
      O => \fft_s_data_tdata[3]_i_4_n_0\
    );
\fft_s_data_tdata[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_0_in(0),
      O => \fft_s_data_tdata[3]_i_5_n_0\
    );
\fft_s_data_tdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(7),
      I1 => p_0_in(7),
      O => \fft_s_data_tdata[7]_i_2_n_0\
    );
\fft_s_data_tdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(6),
      I1 => p_0_in(6),
      O => \fft_s_data_tdata[7]_i_3_n_0\
    );
\fft_s_data_tdata[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_0_in(5),
      O => \fft_s_data_tdata[7]_i_4_n_0\
    );
\fft_s_data_tdata[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_0_in(4),
      O => \fft_s_data_tdata[7]_i_5_n_0\
    );
\fft_s_data_tdata_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fft_s_data_tdata_reg[7]_i_1_n_0\,
      CO(3) => \fft_s_data_tdata_reg[11]_i_1_n_0\,
      CO(2) => \fft_s_data_tdata_reg[11]_i_1_n_1\,
      CO(1) => \fft_s_data_tdata_reg[11]_i_1_n_2\,
      CO(0) => \fft_s_data_tdata_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(11 downto 8),
      O(3 downto 0) => D(11 downto 8),
      S(3) => \fft_s_data_tdata[11]_i_2_n_0\,
      S(2) => \fft_s_data_tdata[11]_i_3_n_0\,
      S(1) => \fft_s_data_tdata[11]_i_4_n_0\,
      S(0) => \fft_s_data_tdata[11]_i_5_n_0\
    );
\fft_s_data_tdata_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fft_s_data_tdata_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_fft_s_data_tdata_reg[15]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \fft_s_data_tdata_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \fft_s_data_tdata[15]_i_2_n_0\,
      O(3 downto 2) => \NLW_fft_s_data_tdata_reg[15]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(13 downto 12),
      S(3 downto 1) => B"001",
      S(0) => \fft_s_data_tdata[15]_i_3_n_0\
    );
\fft_s_data_tdata_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fft_s_data_tdata_reg[3]_i_1_n_0\,
      CO(2) => \fft_s_data_tdata_reg[3]_i_1_n_1\,
      CO(1) => \fft_s_data_tdata_reg[3]_i_1_n_2\,
      CO(0) => \fft_s_data_tdata_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \fft_s_data_tdata[3]_i_2_n_0\,
      S(2) => \fft_s_data_tdata[3]_i_3_n_0\,
      S(1) => \fft_s_data_tdata[3]_i_4_n_0\,
      S(0) => \fft_s_data_tdata[3]_i_5_n_0\
    );
\fft_s_data_tdata_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fft_s_data_tdata_reg[3]_i_1_n_0\,
      CO(3) => \fft_s_data_tdata_reg[7]_i_1_n_0\,
      CO(2) => \fft_s_data_tdata_reg[7]_i_1_n_1\,
      CO(1) => \fft_s_data_tdata_reg[7]_i_1_n_2\,
      CO(0) => \fft_s_data_tdata_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \fft_s_data_tdata[7]_i_2_n_0\,
      S(2) => \fft_s_data_tdata[7]_i_3_n_0\,
      S(1) => \fft_s_data_tdata[7]_i_4_n_0\,
      S(0) => \fft_s_data_tdata[7]_i_5_n_0\
    );
inst_dds_1: component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_1
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(15 downto 0) => dds_output(15 downto 0),
      m_axis_data_tvalid => \^m_axis_data_tvalid\,
      s_axis_config_tdata(23 downto 18) => B"000000",
      s_axis_config_tdata(17 downto 0) => dds_phase_incr_1(17 downto 0),
      s_axis_config_tvalid => '1'
    );
\lfsr_noise[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_noise_reg_n_0_[4]\,
      I1 => \lfsr_noise_reg_n_0_[10]\,
      O => \lfsr_noise[0]_i_1__0_n_0\
    );
\lfsr_noise_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise[0]_i_1__0_n_0\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[0]\
    );
\lfsr_noise_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[9]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[10]\
    );
\lfsr_noise_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[0]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[1]\
    );
\lfsr_noise_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[1]\,
      Q => \lfsr_noise_reg_n_0_[2]\
    );
\lfsr_noise_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[2]\,
      Q => \lfsr_noise_reg_n_0_[3]\
    );
\lfsr_noise_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[3]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[4]\
    );
\lfsr_noise_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[4]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[5]\
    );
\lfsr_noise_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[5]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[6]\
    );
\lfsr_noise_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[6]\,
      Q => \lfsr_noise_reg_n_0_[7]\
    );
\lfsr_noise_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[7]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[8]\
    );
\lfsr_noise_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[8]\,
      Q => \lfsr_noise_reg_n_0_[9]\
    );
u_fft_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^m_axis_data_tvalid\,
      I1 => \p_1_out__0\,
      I2 => \p_1_out__0_0\,
      O => s_axis_data_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2 is
  port (
    m_axis_data_tvalid : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dds_phase_incr_2 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pos_radar : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \lfsr_noise_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2 : entity is "dds_2";
end DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2 is
  component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_2;
  signal dds_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dout0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_0\ : STD_LOGIC;
  signal \dout0_carry__0_n_1\ : STD_LOGIC;
  signal \dout0_carry__0_n_2\ : STD_LOGIC;
  signal \dout0_carry__0_n_3\ : STD_LOGIC;
  signal \dout0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_0\ : STD_LOGIC;
  signal \dout0_carry__1_n_1\ : STD_LOGIC;
  signal \dout0_carry__1_n_2\ : STD_LOGIC;
  signal \dout0_carry__1_n_3\ : STD_LOGIC;
  signal \dout0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \dout0_carry__2_n_1\ : STD_LOGIC;
  signal \dout0_carry__2_n_2\ : STD_LOGIC;
  signal \dout0_carry__2_n_3\ : STD_LOGIC;
  signal dout0_carry_i_1_n_0 : STD_LOGIC;
  signal dout0_carry_i_2_n_0 : STD_LOGIC;
  signal dout0_carry_i_3_n_0 : STD_LOGIC;
  signal dout0_carry_i_4_n_0 : STD_LOGIC;
  signal dout0_carry_n_0 : STD_LOGIC;
  signal dout0_carry_n_1 : STD_LOGIC;
  signal dout0_carry_n_2 : STD_LOGIC;
  signal dout0_carry_n_3 : STD_LOGIC;
  signal \lfsr_noise[0]_i_1_n_0\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[0]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[10]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[1]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[2]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[3]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[5]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[6]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[7]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[8]\ : STD_LOGIC;
  signal \lfsr_noise_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_dout0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dout0_carry__2\ : label is 35;
  attribute x_core_info : string;
  attribute x_core_info of inst_dds_2 : label is "dds_compiler_v6_0_22,Vivado 2022.2";
begin
dout0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dout0_carry_n_0,
      CO(2) => dout0_carry_n_1,
      CO(1) => dout0_carry_n_2,
      CO(0) => dout0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(3 downto 0),
      O(3) => p_0_in(0),
      O(2 downto 0) => NLW_dout0_carry_O_UNCONNECTED(2 downto 0),
      S(3) => dout0_carry_i_1_n_0,
      S(2) => dout0_carry_i_2_n_0,
      S(1) => dout0_carry_i_3_n_0,
      S(0) => dout0_carry_i_4_n_0
    );
\dout0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dout0_carry_n_0,
      CO(3) => \dout0_carry__0_n_0\,
      CO(2) => \dout0_carry__0_n_1\,
      CO(1) => \dout0_carry__0_n_2\,
      CO(0) => \dout0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dds_output(7 downto 4),
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3) => \dout0_carry__0_i_1_n_0\,
      S(2) => \dout0_carry__0_i_2_n_0\,
      S(1) => \dout0_carry__0_i_3_n_0\,
      S(0) => \dout0_carry__0_i_4_n_0\
    );
\dout0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(7),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[7]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_1_n_0\
    );
\dout0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(6),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[6]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_2_n_0\
    );
\dout0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(5),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[5]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_3_n_0\
    );
\dout0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(4),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[4]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__0_i_4_n_0\
    );
\dout0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__0_n_0\,
      CO(3) => \dout0_carry__1_n_0\,
      CO(2) => \dout0_carry__1_n_1\,
      CO(1) => \dout0_carry__1_n_2\,
      CO(0) => \dout0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \dout0_carry__1_i_1_n_0\,
      DI(2 downto 0) => dds_output(10 downto 8),
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3) => \dout0_carry__1_i_2_n_0\,
      S(2) => \dout0_carry__1_i_3_n_0\,
      S(1) => \dout0_carry__1_i_4_n_0\,
      S(0) => \dout0_carry__1_i_5_n_0\
    );
\dout0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      O => \dout0_carry__1_i_1_n_0\
    );
\dout0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(11),
      O => \dout0_carry__1_i_2_n_0\
    );
\dout0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => pos_radar(0),
      I1 => \lfsr_noise_reg_n_0_[10]\,
      I2 => pos_radar(1),
      I3 => pos_radar(2),
      I4 => dds_output(10),
      O => \dout0_carry__1_i_3_n_0\
    );
\dout0_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(9),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[9]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_4_n_0\
    );
\dout0_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(8),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[8]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => \dout0_carry__1_i_5_n_0\
    );
\dout0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout0_carry__1_n_0\,
      CO(3) => \NLW_dout0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \dout0_carry__2_n_1\,
      CO(1) => \dout0_carry__2_n_2\,
      CO(0) => \dout0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dds_output(13 downto 11),
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3) => \dout0_carry__2_i_1_n_0\,
      S(2) => \dout0_carry__2_i_2_n_0\,
      S(1) => \dout0_carry__2_i_3_n_0\,
      S(0) => \dout0_carry__2_i_4_n_0\
    );
\dout0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(14),
      I1 => dds_output(15),
      O => \dout0_carry__2_i_1_n_0\
    );
\dout0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(13),
      I1 => dds_output(14),
      O => \dout0_carry__2_i_2_n_0\
    );
\dout0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(12),
      I1 => dds_output(13),
      O => \dout0_carry__2_i_3_n_0\
    );
\dout0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dds_output(11),
      I1 => dds_output(12),
      O => \dout0_carry__2_i_4_n_0\
    );
dout0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(3),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[3]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => dout0_carry_i_1_n_0
    );
dout0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(2),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[2]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => dout0_carry_i_2_n_0
    );
dout0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(1),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[1]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => dout0_carry_i_3_n_0
    );
dout0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA6A"
    )
        port map (
      I0 => dds_output(0),
      I1 => pos_radar(0),
      I2 => \lfsr_noise_reg_n_0_[0]\,
      I3 => pos_radar(1),
      I4 => pos_radar(2),
      O => dout0_carry_i_4_n_0
    );
inst_dds_2: component DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_compiler_2
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(15 downto 0) => dds_output(15 downto 0),
      m_axis_data_tvalid => m_axis_data_tvalid,
      s_axis_config_tdata(23 downto 18) => B"000000",
      s_axis_config_tdata(17 downto 0) => dds_phase_incr_2(17 downto 0),
      s_axis_config_tvalid => '1'
    );
\lfsr_noise[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_noise_reg_n_0_[1]\,
      I1 => \lfsr_noise_reg_n_0_[10]\,
      O => \lfsr_noise[0]_i_1_n_0\
    );
\lfsr_noise_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise[0]_i_1_n_0\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[0]\
    );
\lfsr_noise_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[9]\,
      Q => \lfsr_noise_reg_n_0_[10]\
    );
\lfsr_noise_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[0]\,
      Q => \lfsr_noise_reg_n_0_[1]\
    );
\lfsr_noise_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[1]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[2]\
    );
\lfsr_noise_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[2]\,
      Q => \lfsr_noise_reg_n_0_[3]\
    );
\lfsr_noise_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[3]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[4]\
    );
\lfsr_noise_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[4]\,
      Q => \lfsr_noise_reg_n_0_[5]\
    );
\lfsr_noise_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[5]\,
      Q => \lfsr_noise_reg_n_0_[6]\
    );
\lfsr_noise_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lfsr_noise_reg[0]_0\,
      D => \lfsr_noise_reg_n_0_[6]\,
      Q => \lfsr_noise_reg_n_0_[7]\
    );
\lfsr_noise_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[7]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[8]\
    );
\lfsr_noise_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_noise_reg_n_0_[8]\,
      PRE => \lfsr_noise_reg[0]_0\,
      Q => \lfsr_noise_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dds_phase_incr_0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dds_phase_incr_1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dds_phase_incr_2 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pos_radar : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fft_m_data_tvalid : out STD_LOGIC;
    cnt_read : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_valid : out STD_LOGIC;
    psd_avg_read : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT : entity is "DDS_FFT";
end DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT is
  signal cnt_s0 : STD_LOGIC;
  signal dcosine : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dds0_n_10 : STD_LOGIC;
  signal dds0_n_11 : STD_LOGIC;
  signal dds0_n_12 : STD_LOGIC;
  signal dds0_n_13 : STD_LOGIC;
  signal dds0_n_2 : STD_LOGIC;
  signal dds0_n_3 : STD_LOGIC;
  signal dds0_n_4 : STD_LOGIC;
  signal dds0_n_5 : STD_LOGIC;
  signal dds0_n_6 : STD_LOGIC;
  signal dds0_n_7 : STD_LOGIC;
  signal dds0_n_8 : STD_LOGIC;
  signal dds0_n_9 : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_51 : STD_LOGIC;
  signal fft_m_data_tdata : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal m_axis_data_tvalid : STD_LOGIC;
  signal m_axis_data_tvalid_0 : STD_LOGIC;
  signal m_axis_data_tvalid_1 : STD_LOGIC;
  signal m_axis_data_tvalid_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal \p_1_out__0_n_100\ : STD_LOGIC;
  signal \p_1_out__0_n_101\ : STD_LOGIC;
  signal \p_1_out__0_n_102\ : STD_LOGIC;
  signal \p_1_out__0_n_103\ : STD_LOGIC;
  signal \p_1_out__0_n_104\ : STD_LOGIC;
  signal \p_1_out__0_n_105\ : STD_LOGIC;
  signal \p_1_out__0_n_75\ : STD_LOGIC;
  signal \p_1_out__0_n_76\ : STD_LOGIC;
  signal \p_1_out__0_n_77\ : STD_LOGIC;
  signal \p_1_out__0_n_78\ : STD_LOGIC;
  signal \p_1_out__0_n_79\ : STD_LOGIC;
  signal \p_1_out__0_n_80\ : STD_LOGIC;
  signal \p_1_out__0_n_81\ : STD_LOGIC;
  signal \p_1_out__0_n_82\ : STD_LOGIC;
  signal \p_1_out__0_n_83\ : STD_LOGIC;
  signal \p_1_out__0_n_84\ : STD_LOGIC;
  signal \p_1_out__0_n_85\ : STD_LOGIC;
  signal \p_1_out__0_n_86\ : STD_LOGIC;
  signal \p_1_out__0_n_87\ : STD_LOGIC;
  signal \p_1_out__0_n_88\ : STD_LOGIC;
  signal \p_1_out__0_n_89\ : STD_LOGIC;
  signal \p_1_out__0_n_90\ : STD_LOGIC;
  signal \p_1_out__0_n_91\ : STD_LOGIC;
  signal \p_1_out__0_n_92\ : STD_LOGIC;
  signal \p_1_out__0_n_93\ : STD_LOGIC;
  signal \p_1_out__0_n_94\ : STD_LOGIC;
  signal \p_1_out__0_n_95\ : STD_LOGIC;
  signal \p_1_out__0_n_96\ : STD_LOGIC;
  signal \p_1_out__0_n_97\ : STD_LOGIC;
  signal \p_1_out__0_n_98\ : STD_LOGIC;
  signal \p_1_out__0_n_99\ : STD_LOGIC;
  signal \p_1_out__1_n_100\ : STD_LOGIC;
  signal \p_1_out__1_n_101\ : STD_LOGIC;
  signal \p_1_out__1_n_102\ : STD_LOGIC;
  signal \p_1_out__1_n_103\ : STD_LOGIC;
  signal \p_1_out__1_n_104\ : STD_LOGIC;
  signal \p_1_out__1_n_105\ : STD_LOGIC;
  signal \p_1_out__1_n_106\ : STD_LOGIC;
  signal \p_1_out__1_n_107\ : STD_LOGIC;
  signal \p_1_out__1_n_108\ : STD_LOGIC;
  signal \p_1_out__1_n_109\ : STD_LOGIC;
  signal \p_1_out__1_n_110\ : STD_LOGIC;
  signal \p_1_out__1_n_111\ : STD_LOGIC;
  signal \p_1_out__1_n_112\ : STD_LOGIC;
  signal \p_1_out__1_n_113\ : STD_LOGIC;
  signal \p_1_out__1_n_114\ : STD_LOGIC;
  signal \p_1_out__1_n_115\ : STD_LOGIC;
  signal \p_1_out__1_n_116\ : STD_LOGIC;
  signal \p_1_out__1_n_117\ : STD_LOGIC;
  signal \p_1_out__1_n_118\ : STD_LOGIC;
  signal \p_1_out__1_n_119\ : STD_LOGIC;
  signal \p_1_out__1_n_120\ : STD_LOGIC;
  signal \p_1_out__1_n_121\ : STD_LOGIC;
  signal \p_1_out__1_n_122\ : STD_LOGIC;
  signal \p_1_out__1_n_123\ : STD_LOGIC;
  signal \p_1_out__1_n_124\ : STD_LOGIC;
  signal \p_1_out__1_n_125\ : STD_LOGIC;
  signal \p_1_out__1_n_126\ : STD_LOGIC;
  signal \p_1_out__1_n_127\ : STD_LOGIC;
  signal \p_1_out__1_n_128\ : STD_LOGIC;
  signal \p_1_out__1_n_129\ : STD_LOGIC;
  signal \p_1_out__1_n_130\ : STD_LOGIC;
  signal \p_1_out__1_n_131\ : STD_LOGIC;
  signal \p_1_out__1_n_132\ : STD_LOGIC;
  signal \p_1_out__1_n_133\ : STD_LOGIC;
  signal \p_1_out__1_n_134\ : STD_LOGIC;
  signal \p_1_out__1_n_135\ : STD_LOGIC;
  signal \p_1_out__1_n_136\ : STD_LOGIC;
  signal \p_1_out__1_n_137\ : STD_LOGIC;
  signal \p_1_out__1_n_138\ : STD_LOGIC;
  signal \p_1_out__1_n_139\ : STD_LOGIC;
  signal \p_1_out__1_n_140\ : STD_LOGIC;
  signal \p_1_out__1_n_141\ : STD_LOGIC;
  signal \p_1_out__1_n_142\ : STD_LOGIC;
  signal \p_1_out__1_n_143\ : STD_LOGIC;
  signal \p_1_out__1_n_144\ : STD_LOGIC;
  signal \p_1_out__1_n_145\ : STD_LOGIC;
  signal \p_1_out__1_n_146\ : STD_LOGIC;
  signal \p_1_out__1_n_147\ : STD_LOGIC;
  signal \p_1_out__1_n_148\ : STD_LOGIC;
  signal \p_1_out__1_n_149\ : STD_LOGIC;
  signal \p_1_out__1_n_150\ : STD_LOGIC;
  signal \p_1_out__1_n_151\ : STD_LOGIC;
  signal \p_1_out__1_n_152\ : STD_LOGIC;
  signal \p_1_out__1_n_153\ : STD_LOGIC;
  signal \p_1_out__1_n_58\ : STD_LOGIC;
  signal \p_1_out__1_n_59\ : STD_LOGIC;
  signal \p_1_out__1_n_60\ : STD_LOGIC;
  signal \p_1_out__1_n_61\ : STD_LOGIC;
  signal \p_1_out__1_n_62\ : STD_LOGIC;
  signal \p_1_out__1_n_63\ : STD_LOGIC;
  signal \p_1_out__1_n_64\ : STD_LOGIC;
  signal \p_1_out__1_n_65\ : STD_LOGIC;
  signal \p_1_out__1_n_66\ : STD_LOGIC;
  signal \p_1_out__1_n_67\ : STD_LOGIC;
  signal \p_1_out__1_n_68\ : STD_LOGIC;
  signal \p_1_out__1_n_69\ : STD_LOGIC;
  signal \p_1_out__1_n_70\ : STD_LOGIC;
  signal \p_1_out__1_n_71\ : STD_LOGIC;
  signal \p_1_out__1_n_72\ : STD_LOGIC;
  signal \p_1_out__1_n_73\ : STD_LOGIC;
  signal \p_1_out__1_n_74\ : STD_LOGIC;
  signal \p_1_out__1_n_75\ : STD_LOGIC;
  signal \p_1_out__1_n_76\ : STD_LOGIC;
  signal \p_1_out__1_n_77\ : STD_LOGIC;
  signal \p_1_out__1_n_78\ : STD_LOGIC;
  signal \p_1_out__1_n_79\ : STD_LOGIC;
  signal \p_1_out__1_n_80\ : STD_LOGIC;
  signal \p_1_out__1_n_81\ : STD_LOGIC;
  signal \p_1_out__1_n_82\ : STD_LOGIC;
  signal \p_1_out__1_n_83\ : STD_LOGIC;
  signal \p_1_out__1_n_84\ : STD_LOGIC;
  signal \p_1_out__1_n_85\ : STD_LOGIC;
  signal \p_1_out__1_n_86\ : STD_LOGIC;
  signal \p_1_out__1_n_87\ : STD_LOGIC;
  signal \p_1_out__1_n_88\ : STD_LOGIC;
  signal \p_1_out__1_n_89\ : STD_LOGIC;
  signal \p_1_out__1_n_90\ : STD_LOGIC;
  signal \p_1_out__1_n_91\ : STD_LOGIC;
  signal \p_1_out__1_n_92\ : STD_LOGIC;
  signal \p_1_out__1_n_93\ : STD_LOGIC;
  signal \p_1_out__1_n_94\ : STD_LOGIC;
  signal \p_1_out__1_n_95\ : STD_LOGIC;
  signal \p_1_out__1_n_96\ : STD_LOGIC;
  signal \p_1_out__1_n_97\ : STD_LOGIC;
  signal \p_1_out__1_n_98\ : STD_LOGIC;
  signal \p_1_out__1_n_99\ : STD_LOGIC;
  signal \p_1_out__2_n_100\ : STD_LOGIC;
  signal \p_1_out__2_n_101\ : STD_LOGIC;
  signal \p_1_out__2_n_102\ : STD_LOGIC;
  signal \p_1_out__2_n_103\ : STD_LOGIC;
  signal \p_1_out__2_n_104\ : STD_LOGIC;
  signal \p_1_out__2_n_105\ : STD_LOGIC;
  signal \p_1_out__2_n_75\ : STD_LOGIC;
  signal \p_1_out__2_n_76\ : STD_LOGIC;
  signal \p_1_out__2_n_77\ : STD_LOGIC;
  signal \p_1_out__2_n_78\ : STD_LOGIC;
  signal \p_1_out__2_n_79\ : STD_LOGIC;
  signal \p_1_out__2_n_80\ : STD_LOGIC;
  signal \p_1_out__2_n_81\ : STD_LOGIC;
  signal \p_1_out__2_n_82\ : STD_LOGIC;
  signal \p_1_out__2_n_83\ : STD_LOGIC;
  signal \p_1_out__2_n_84\ : STD_LOGIC;
  signal \p_1_out__2_n_85\ : STD_LOGIC;
  signal \p_1_out__2_n_86\ : STD_LOGIC;
  signal \p_1_out__2_n_87\ : STD_LOGIC;
  signal \p_1_out__2_n_88\ : STD_LOGIC;
  signal \p_1_out__2_n_89\ : STD_LOGIC;
  signal \p_1_out__2_n_90\ : STD_LOGIC;
  signal \p_1_out__2_n_91\ : STD_LOGIC;
  signal \p_1_out__2_n_92\ : STD_LOGIC;
  signal \p_1_out__2_n_93\ : STD_LOGIC;
  signal \p_1_out__2_n_94\ : STD_LOGIC;
  signal \p_1_out__2_n_95\ : STD_LOGIC;
  signal \p_1_out__2_n_96\ : STD_LOGIC;
  signal \p_1_out__2_n_97\ : STD_LOGIC;
  signal \p_1_out__2_n_98\ : STD_LOGIC;
  signal \p_1_out__2_n_99\ : STD_LOGIC;
  signal p_1_out_n_100 : STD_LOGIC;
  signal p_1_out_n_101 : STD_LOGIC;
  signal p_1_out_n_102 : STD_LOGIC;
  signal p_1_out_n_103 : STD_LOGIC;
  signal p_1_out_n_104 : STD_LOGIC;
  signal p_1_out_n_105 : STD_LOGIC;
  signal p_1_out_n_106 : STD_LOGIC;
  signal p_1_out_n_107 : STD_LOGIC;
  signal p_1_out_n_108 : STD_LOGIC;
  signal p_1_out_n_109 : STD_LOGIC;
  signal p_1_out_n_110 : STD_LOGIC;
  signal p_1_out_n_111 : STD_LOGIC;
  signal p_1_out_n_112 : STD_LOGIC;
  signal p_1_out_n_113 : STD_LOGIC;
  signal p_1_out_n_114 : STD_LOGIC;
  signal p_1_out_n_115 : STD_LOGIC;
  signal p_1_out_n_116 : STD_LOGIC;
  signal p_1_out_n_117 : STD_LOGIC;
  signal p_1_out_n_118 : STD_LOGIC;
  signal p_1_out_n_119 : STD_LOGIC;
  signal p_1_out_n_120 : STD_LOGIC;
  signal p_1_out_n_121 : STD_LOGIC;
  signal p_1_out_n_122 : STD_LOGIC;
  signal p_1_out_n_123 : STD_LOGIC;
  signal p_1_out_n_124 : STD_LOGIC;
  signal p_1_out_n_125 : STD_LOGIC;
  signal p_1_out_n_126 : STD_LOGIC;
  signal p_1_out_n_127 : STD_LOGIC;
  signal p_1_out_n_128 : STD_LOGIC;
  signal p_1_out_n_129 : STD_LOGIC;
  signal p_1_out_n_130 : STD_LOGIC;
  signal p_1_out_n_131 : STD_LOGIC;
  signal p_1_out_n_132 : STD_LOGIC;
  signal p_1_out_n_133 : STD_LOGIC;
  signal p_1_out_n_134 : STD_LOGIC;
  signal p_1_out_n_135 : STD_LOGIC;
  signal p_1_out_n_136 : STD_LOGIC;
  signal p_1_out_n_137 : STD_LOGIC;
  signal p_1_out_n_138 : STD_LOGIC;
  signal p_1_out_n_139 : STD_LOGIC;
  signal p_1_out_n_140 : STD_LOGIC;
  signal p_1_out_n_141 : STD_LOGIC;
  signal p_1_out_n_142 : STD_LOGIC;
  signal p_1_out_n_143 : STD_LOGIC;
  signal p_1_out_n_144 : STD_LOGIC;
  signal p_1_out_n_145 : STD_LOGIC;
  signal p_1_out_n_146 : STD_LOGIC;
  signal p_1_out_n_147 : STD_LOGIC;
  signal p_1_out_n_148 : STD_LOGIC;
  signal p_1_out_n_149 : STD_LOGIC;
  signal p_1_out_n_150 : STD_LOGIC;
  signal p_1_out_n_151 : STD_LOGIC;
  signal p_1_out_n_152 : STD_LOGIC;
  signal p_1_out_n_153 : STD_LOGIC;
  signal p_1_out_n_58 : STD_LOGIC;
  signal p_1_out_n_59 : STD_LOGIC;
  signal p_1_out_n_60 : STD_LOGIC;
  signal p_1_out_n_61 : STD_LOGIC;
  signal p_1_out_n_62 : STD_LOGIC;
  signal p_1_out_n_63 : STD_LOGIC;
  signal p_1_out_n_64 : STD_LOGIC;
  signal p_1_out_n_65 : STD_LOGIC;
  signal p_1_out_n_66 : STD_LOGIC;
  signal p_1_out_n_67 : STD_LOGIC;
  signal p_1_out_n_68 : STD_LOGIC;
  signal p_1_out_n_69 : STD_LOGIC;
  signal p_1_out_n_70 : STD_LOGIC;
  signal p_1_out_n_71 : STD_LOGIC;
  signal p_1_out_n_72 : STD_LOGIC;
  signal p_1_out_n_73 : STD_LOGIC;
  signal p_1_out_n_74 : STD_LOGIC;
  signal p_1_out_n_75 : STD_LOGIC;
  signal p_1_out_n_76 : STD_LOGIC;
  signal p_1_out_n_77 : STD_LOGIC;
  signal p_1_out_n_78 : STD_LOGIC;
  signal p_1_out_n_79 : STD_LOGIC;
  signal p_1_out_n_80 : STD_LOGIC;
  signal p_1_out_n_81 : STD_LOGIC;
  signal p_1_out_n_82 : STD_LOGIC;
  signal p_1_out_n_83 : STD_LOGIC;
  signal p_1_out_n_84 : STD_LOGIC;
  signal p_1_out_n_85 : STD_LOGIC;
  signal p_1_out_n_86 : STD_LOGIC;
  signal p_1_out_n_87 : STD_LOGIC;
  signal p_1_out_n_88 : STD_LOGIC;
  signal p_1_out_n_89 : STD_LOGIC;
  signal p_1_out_n_90 : STD_LOGIC;
  signal p_1_out_n_91 : STD_LOGIC;
  signal p_1_out_n_92 : STD_LOGIC;
  signal p_1_out_n_93 : STD_LOGIC;
  signal p_1_out_n_94 : STD_LOGIC;
  signal p_1_out_n_95 : STD_LOGIC;
  signal p_1_out_n_96 : STD_LOGIC;
  signal p_1_out_n_97 : STD_LOGIC;
  signal p_1_out_n_98 : STD_LOGIC;
  signal p_1_out_n_99 : STD_LOGIC;
  signal NLW_p_1_out_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_1_out_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_1_out_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_1_out_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p_1_out__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p_1_out__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal \NLW_p_1_out__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p_1_out__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p_1_out__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p_1_out__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p_1_out__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p_1_out__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out__2_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal \NLW_p_1_out__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_1_out : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_1_out__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_1_out__1\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_1_out__2\ : label is "{SYNTH-13 {cell *THIS*}}";
begin
dds0: entity work.DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_0
     port map (
      D(12) => p_0_in0,
      D(11) => dds0_n_2,
      D(10) => dds0_n_3,
      D(9) => dds0_n_4,
      D(8) => dds0_n_5,
      D(7) => dds0_n_6,
      D(6) => dds0_n_7,
      D(5) => dds0_n_8,
      D(4) => dds0_n_9,
      D(3) => dds0_n_10,
      D(2) => dds0_n_11,
      D(1) => dds0_n_12,
      D(0) => dds0_n_13,
      E(0) => cnt_s0,
      clk => clk,
      dds_phase_incr_0(17 downto 0) => dds_phase_incr_0(17 downto 0),
      \fft_s_data_tdata_reg[31]\ => m_axis_data_tvalid_2,
      \fft_s_data_tdata_reg[31]_0\ => m_axis_data_tvalid_1,
      \lfsr_noise_reg[0]_0\ => dut_n_51,
      m_axis_data_tvalid => m_axis_data_tvalid_0,
      pos_radar(2 downto 0) => pos_radar(2 downto 0),
      rst_n => rst_n,
      s_axis_data_tready => dut_n_0
    );
dds1: entity work.DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_1
     port map (
      D(13) => dcosine(15),
      D(12 downto 0) => dcosine(12 downto 0),
      clk => clk,
      dds_phase_incr_1(17 downto 0) => dds_phase_incr_1(17 downto 0),
      \lfsr_noise_reg[0]_0\ => dut_n_51,
      m_axis_data_tvalid => m_axis_data_tvalid_1,
      p_0_in(12 downto 0) => p_0_in(12 downto 0),
      \p_1_out__0\ => m_axis_data_tvalid_2,
      \p_1_out__0_0\ => m_axis_data_tvalid_0,
      pos_radar(2 downto 0) => pos_radar(2 downto 0),
      rst_n => rst_n,
      s_axis_data_tvalid => m_axis_data_tvalid
    );
dds2: entity work.DDS_FFT_ethernet_final_DDS_FFT_0_0_dds_2
     port map (
      clk => clk,
      dds_phase_incr_2(17 downto 0) => dds_phase_incr_2(17 downto 0),
      \lfsr_noise_reg[0]_0\ => dut_n_51,
      m_axis_data_tvalid => m_axis_data_tvalid_2,
      p_0_in(12 downto 0) => p_0_in(12 downto 0),
      pos_radar(2 downto 0) => pos_radar(2 downto 0),
      rst_n => rst_n
    );
dut: entity work.DDS_FFT_ethernet_final_DDS_FFT_0_0_FFT_control
     port map (
      D(26) => p_0_in0,
      D(25) => dds0_n_2,
      D(24) => dds0_n_3,
      D(23) => dds0_n_4,
      D(22) => dds0_n_5,
      D(21) => dds0_n_6,
      D(20) => dds0_n_7,
      D(19) => dds0_n_8,
      D(18) => dds0_n_9,
      D(17) => dds0_n_10,
      D(16) => dds0_n_11,
      D(15) => dds0_n_12,
      D(14) => dds0_n_13,
      D(13) => dcosine(15),
      D(12 downto 0) => dcosine(12 downto 0),
      E(0) => cnt_s0,
      P(16) => \p_1_out__1_n_89\,
      P(15) => \p_1_out__1_n_90\,
      P(14) => \p_1_out__1_n_91\,
      P(13) => \p_1_out__1_n_92\,
      P(12) => \p_1_out__1_n_93\,
      P(11) => \p_1_out__1_n_94\,
      P(10) => \p_1_out__1_n_95\,
      P(9) => \p_1_out__1_n_96\,
      P(8) => \p_1_out__1_n_97\,
      P(7) => \p_1_out__1_n_98\,
      P(6) => \p_1_out__1_n_99\,
      P(5) => \p_1_out__1_n_100\,
      P(4) => \p_1_out__1_n_101\,
      P(3) => \p_1_out__1_n_102\,
      P(2) => \p_1_out__1_n_103\,
      P(1) => \p_1_out__1_n_104\,
      P(0) => \p_1_out__1_n_105\,
      clk => clk,
      cnt_read(9 downto 0) => cnt_read(9 downto 0),
      m_axis_data_tdata(47 downto 24) => fft_m_data_tdata(55 downto 32),
      m_axis_data_tdata(23 downto 0) => fft_m_data_tdata(23 downto 0),
      m_axis_data_tvalid => fft_m_data_tvalid,
      m_valid => m_valid,
      \p_1_out__0\ => m_axis_data_tvalid_1,
      \p_1_out__0_0\ => m_axis_data_tvalid_2,
      \p_1_out__0_1\ => m_axis_data_tvalid_0,
      psd_avg_read(47 downto 0) => psd_avg_read(47 downto 0),
      \psd_carry__10_0\(30) => \p_1_out__2_n_75\,
      \psd_carry__10_0\(29) => \p_1_out__2_n_76\,
      \psd_carry__10_0\(28) => \p_1_out__2_n_77\,
      \psd_carry__10_0\(27) => \p_1_out__2_n_78\,
      \psd_carry__10_0\(26) => \p_1_out__2_n_79\,
      \psd_carry__10_0\(25) => \p_1_out__2_n_80\,
      \psd_carry__10_0\(24) => \p_1_out__2_n_81\,
      \psd_carry__10_0\(23) => \p_1_out__2_n_82\,
      \psd_carry__10_0\(22) => \p_1_out__2_n_83\,
      \psd_carry__10_0\(21) => \p_1_out__2_n_84\,
      \psd_carry__10_0\(20) => \p_1_out__2_n_85\,
      \psd_carry__10_0\(19) => \p_1_out__2_n_86\,
      \psd_carry__10_0\(18) => \p_1_out__2_n_87\,
      \psd_carry__10_0\(17) => \p_1_out__2_n_88\,
      \psd_carry__10_0\(16) => \p_1_out__2_n_89\,
      \psd_carry__10_0\(15) => \p_1_out__2_n_90\,
      \psd_carry__10_0\(14) => \p_1_out__2_n_91\,
      \psd_carry__10_0\(13) => \p_1_out__2_n_92\,
      \psd_carry__10_0\(12) => \p_1_out__2_n_93\,
      \psd_carry__10_0\(11) => \p_1_out__2_n_94\,
      \psd_carry__10_0\(10) => \p_1_out__2_n_95\,
      \psd_carry__10_0\(9) => \p_1_out__2_n_96\,
      \psd_carry__10_0\(8) => \p_1_out__2_n_97\,
      \psd_carry__10_0\(7) => \p_1_out__2_n_98\,
      \psd_carry__10_0\(6) => \p_1_out__2_n_99\,
      \psd_carry__10_0\(5) => \p_1_out__2_n_100\,
      \psd_carry__10_0\(4) => \p_1_out__2_n_101\,
      \psd_carry__10_0\(3) => \p_1_out__2_n_102\,
      \psd_carry__10_0\(2) => \p_1_out__2_n_103\,
      \psd_carry__10_0\(1) => \p_1_out__2_n_104\,
      \psd_carry__10_0\(0) => \p_1_out__2_n_105\,
      \psd_carry__10_1\(30) => \p_1_out__0_n_75\,
      \psd_carry__10_1\(29) => \p_1_out__0_n_76\,
      \psd_carry__10_1\(28) => \p_1_out__0_n_77\,
      \psd_carry__10_1\(27) => \p_1_out__0_n_78\,
      \psd_carry__10_1\(26) => \p_1_out__0_n_79\,
      \psd_carry__10_1\(25) => \p_1_out__0_n_80\,
      \psd_carry__10_1\(24) => \p_1_out__0_n_81\,
      \psd_carry__10_1\(23) => \p_1_out__0_n_82\,
      \psd_carry__10_1\(22) => \p_1_out__0_n_83\,
      \psd_carry__10_1\(21) => \p_1_out__0_n_84\,
      \psd_carry__10_1\(20) => \p_1_out__0_n_85\,
      \psd_carry__10_1\(19) => \p_1_out__0_n_86\,
      \psd_carry__10_1\(18) => \p_1_out__0_n_87\,
      \psd_carry__10_1\(17) => \p_1_out__0_n_88\,
      \psd_carry__10_1\(16) => \p_1_out__0_n_89\,
      \psd_carry__10_1\(15) => \p_1_out__0_n_90\,
      \psd_carry__10_1\(14) => \p_1_out__0_n_91\,
      \psd_carry__10_1\(13) => \p_1_out__0_n_92\,
      \psd_carry__10_1\(12) => \p_1_out__0_n_93\,
      \psd_carry__10_1\(11) => \p_1_out__0_n_94\,
      \psd_carry__10_1\(10) => \p_1_out__0_n_95\,
      \psd_carry__10_1\(9) => \p_1_out__0_n_96\,
      \psd_carry__10_1\(8) => \p_1_out__0_n_97\,
      \psd_carry__10_1\(7) => \p_1_out__0_n_98\,
      \psd_carry__10_1\(6) => \p_1_out__0_n_99\,
      \psd_carry__10_1\(5) => \p_1_out__0_n_100\,
      \psd_carry__10_1\(4) => \p_1_out__0_n_101\,
      \psd_carry__10_1\(3) => \p_1_out__0_n_102\,
      \psd_carry__10_1\(2) => \p_1_out__0_n_103\,
      \psd_carry__10_1\(1) => \p_1_out__0_n_104\,
      \psd_carry__10_1\(0) => \p_1_out__0_n_105\,
      \psd_carry__3_0\(16) => p_1_out_n_89,
      \psd_carry__3_0\(15) => p_1_out_n_90,
      \psd_carry__3_0\(14) => p_1_out_n_91,
      \psd_carry__3_0\(13) => p_1_out_n_92,
      \psd_carry__3_0\(12) => p_1_out_n_93,
      \psd_carry__3_0\(11) => p_1_out_n_94,
      \psd_carry__3_0\(10) => p_1_out_n_95,
      \psd_carry__3_0\(9) => p_1_out_n_96,
      \psd_carry__3_0\(8) => p_1_out_n_97,
      \psd_carry__3_0\(7) => p_1_out_n_98,
      \psd_carry__3_0\(6) => p_1_out_n_99,
      \psd_carry__3_0\(5) => p_1_out_n_100,
      \psd_carry__3_0\(4) => p_1_out_n_101,
      \psd_carry__3_0\(3) => p_1_out_n_102,
      \psd_carry__3_0\(2) => p_1_out_n_103,
      \psd_carry__3_0\(1) => p_1_out_n_104,
      \psd_carry__3_0\(0) => p_1_out_n_105,
      rst_n => rst_n,
      rst_n_0 => dut_n_51,
      s_axis_data_tready => dut_n_0,
      s_axis_data_tvalid => m_axis_data_tvalid
    );
p_1_out: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => fft_m_data_tdata(55),
      A(28) => fft_m_data_tdata(55),
      A(27) => fft_m_data_tdata(55),
      A(26) => fft_m_data_tdata(55),
      A(25) => fft_m_data_tdata(55),
      A(24) => fft_m_data_tdata(55),
      A(23 downto 0) => fft_m_data_tdata(55 downto 32),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_1_out_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => fft_m_data_tdata(48 downto 32),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_1_out_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_1_out_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_1_out_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_1_out_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p_1_out_OVERFLOW_UNCONNECTED,
      P(47) => p_1_out_n_58,
      P(46) => p_1_out_n_59,
      P(45) => p_1_out_n_60,
      P(44) => p_1_out_n_61,
      P(43) => p_1_out_n_62,
      P(42) => p_1_out_n_63,
      P(41) => p_1_out_n_64,
      P(40) => p_1_out_n_65,
      P(39) => p_1_out_n_66,
      P(38) => p_1_out_n_67,
      P(37) => p_1_out_n_68,
      P(36) => p_1_out_n_69,
      P(35) => p_1_out_n_70,
      P(34) => p_1_out_n_71,
      P(33) => p_1_out_n_72,
      P(32) => p_1_out_n_73,
      P(31) => p_1_out_n_74,
      P(30) => p_1_out_n_75,
      P(29) => p_1_out_n_76,
      P(28) => p_1_out_n_77,
      P(27) => p_1_out_n_78,
      P(26) => p_1_out_n_79,
      P(25) => p_1_out_n_80,
      P(24) => p_1_out_n_81,
      P(23) => p_1_out_n_82,
      P(22) => p_1_out_n_83,
      P(21) => p_1_out_n_84,
      P(20) => p_1_out_n_85,
      P(19) => p_1_out_n_86,
      P(18) => p_1_out_n_87,
      P(17) => p_1_out_n_88,
      P(16) => p_1_out_n_89,
      P(15) => p_1_out_n_90,
      P(14) => p_1_out_n_91,
      P(13) => p_1_out_n_92,
      P(12) => p_1_out_n_93,
      P(11) => p_1_out_n_94,
      P(10) => p_1_out_n_95,
      P(9) => p_1_out_n_96,
      P(8) => p_1_out_n_97,
      P(7) => p_1_out_n_98,
      P(6) => p_1_out_n_99,
      P(5) => p_1_out_n_100,
      P(4) => p_1_out_n_101,
      P(3) => p_1_out_n_102,
      P(2) => p_1_out_n_103,
      P(1) => p_1_out_n_104,
      P(0) => p_1_out_n_105,
      PATTERNBDETECT => NLW_p_1_out_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_1_out_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => p_1_out_n_106,
      PCOUT(46) => p_1_out_n_107,
      PCOUT(45) => p_1_out_n_108,
      PCOUT(44) => p_1_out_n_109,
      PCOUT(43) => p_1_out_n_110,
      PCOUT(42) => p_1_out_n_111,
      PCOUT(41) => p_1_out_n_112,
      PCOUT(40) => p_1_out_n_113,
      PCOUT(39) => p_1_out_n_114,
      PCOUT(38) => p_1_out_n_115,
      PCOUT(37) => p_1_out_n_116,
      PCOUT(36) => p_1_out_n_117,
      PCOUT(35) => p_1_out_n_118,
      PCOUT(34) => p_1_out_n_119,
      PCOUT(33) => p_1_out_n_120,
      PCOUT(32) => p_1_out_n_121,
      PCOUT(31) => p_1_out_n_122,
      PCOUT(30) => p_1_out_n_123,
      PCOUT(29) => p_1_out_n_124,
      PCOUT(28) => p_1_out_n_125,
      PCOUT(27) => p_1_out_n_126,
      PCOUT(26) => p_1_out_n_127,
      PCOUT(25) => p_1_out_n_128,
      PCOUT(24) => p_1_out_n_129,
      PCOUT(23) => p_1_out_n_130,
      PCOUT(22) => p_1_out_n_131,
      PCOUT(21) => p_1_out_n_132,
      PCOUT(20) => p_1_out_n_133,
      PCOUT(19) => p_1_out_n_134,
      PCOUT(18) => p_1_out_n_135,
      PCOUT(17) => p_1_out_n_136,
      PCOUT(16) => p_1_out_n_137,
      PCOUT(15) => p_1_out_n_138,
      PCOUT(14) => p_1_out_n_139,
      PCOUT(13) => p_1_out_n_140,
      PCOUT(12) => p_1_out_n_141,
      PCOUT(11) => p_1_out_n_142,
      PCOUT(10) => p_1_out_n_143,
      PCOUT(9) => p_1_out_n_144,
      PCOUT(8) => p_1_out_n_145,
      PCOUT(7) => p_1_out_n_146,
      PCOUT(6) => p_1_out_n_147,
      PCOUT(5) => p_1_out_n_148,
      PCOUT(4) => p_1_out_n_149,
      PCOUT(3) => p_1_out_n_150,
      PCOUT(2) => p_1_out_n_151,
      PCOUT(1) => p_1_out_n_152,
      PCOUT(0) => p_1_out_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_1_out_UNDERFLOW_UNCONNECTED
    );
\p_1_out__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => fft_m_data_tdata(55),
      A(28) => fft_m_data_tdata(55),
      A(27) => fft_m_data_tdata(55),
      A(26) => fft_m_data_tdata(55),
      A(25) => fft_m_data_tdata(55),
      A(24) => fft_m_data_tdata(55),
      A(23 downto 0) => fft_m_data_tdata(55 downto 32),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p_1_out__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => fft_m_data_tdata(55),
      B(16) => fft_m_data_tdata(55),
      B(15) => fft_m_data_tdata(55),
      B(14) => fft_m_data_tdata(55),
      B(13) => fft_m_data_tdata(55),
      B(12) => fft_m_data_tdata(55),
      B(11) => fft_m_data_tdata(55),
      B(10) => fft_m_data_tdata(55),
      B(9) => fft_m_data_tdata(55),
      B(8) => fft_m_data_tdata(55),
      B(7) => fft_m_data_tdata(55),
      B(6 downto 0) => fft_m_data_tdata(55 downto 49),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p_1_out__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p_1_out__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p_1_out__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 31) => \NLW_p_1_out__0_P_UNCONNECTED\(47 downto 31),
      P(30) => \p_1_out__0_n_75\,
      P(29) => \p_1_out__0_n_76\,
      P(28) => \p_1_out__0_n_77\,
      P(27) => \p_1_out__0_n_78\,
      P(26) => \p_1_out__0_n_79\,
      P(25) => \p_1_out__0_n_80\,
      P(24) => \p_1_out__0_n_81\,
      P(23) => \p_1_out__0_n_82\,
      P(22) => \p_1_out__0_n_83\,
      P(21) => \p_1_out__0_n_84\,
      P(20) => \p_1_out__0_n_85\,
      P(19) => \p_1_out__0_n_86\,
      P(18) => \p_1_out__0_n_87\,
      P(17) => \p_1_out__0_n_88\,
      P(16) => \p_1_out__0_n_89\,
      P(15) => \p_1_out__0_n_90\,
      P(14) => \p_1_out__0_n_91\,
      P(13) => \p_1_out__0_n_92\,
      P(12) => \p_1_out__0_n_93\,
      P(11) => \p_1_out__0_n_94\,
      P(10) => \p_1_out__0_n_95\,
      P(9) => \p_1_out__0_n_96\,
      P(8) => \p_1_out__0_n_97\,
      P(7) => \p_1_out__0_n_98\,
      P(6) => \p_1_out__0_n_99\,
      P(5) => \p_1_out__0_n_100\,
      P(4) => \p_1_out__0_n_101\,
      P(3) => \p_1_out__0_n_102\,
      P(2) => \p_1_out__0_n_103\,
      P(1) => \p_1_out__0_n_104\,
      P(0) => \p_1_out__0_n_105\,
      PATTERNBDETECT => \NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => p_1_out_n_106,
      PCIN(46) => p_1_out_n_107,
      PCIN(45) => p_1_out_n_108,
      PCIN(44) => p_1_out_n_109,
      PCIN(43) => p_1_out_n_110,
      PCIN(42) => p_1_out_n_111,
      PCIN(41) => p_1_out_n_112,
      PCIN(40) => p_1_out_n_113,
      PCIN(39) => p_1_out_n_114,
      PCIN(38) => p_1_out_n_115,
      PCIN(37) => p_1_out_n_116,
      PCIN(36) => p_1_out_n_117,
      PCIN(35) => p_1_out_n_118,
      PCIN(34) => p_1_out_n_119,
      PCIN(33) => p_1_out_n_120,
      PCIN(32) => p_1_out_n_121,
      PCIN(31) => p_1_out_n_122,
      PCIN(30) => p_1_out_n_123,
      PCIN(29) => p_1_out_n_124,
      PCIN(28) => p_1_out_n_125,
      PCIN(27) => p_1_out_n_126,
      PCIN(26) => p_1_out_n_127,
      PCIN(25) => p_1_out_n_128,
      PCIN(24) => p_1_out_n_129,
      PCIN(23) => p_1_out_n_130,
      PCIN(22) => p_1_out_n_131,
      PCIN(21) => p_1_out_n_132,
      PCIN(20) => p_1_out_n_133,
      PCIN(19) => p_1_out_n_134,
      PCIN(18) => p_1_out_n_135,
      PCIN(17) => p_1_out_n_136,
      PCIN(16) => p_1_out_n_137,
      PCIN(15) => p_1_out_n_138,
      PCIN(14) => p_1_out_n_139,
      PCIN(13) => p_1_out_n_140,
      PCIN(12) => p_1_out_n_141,
      PCIN(11) => p_1_out_n_142,
      PCIN(10) => p_1_out_n_143,
      PCIN(9) => p_1_out_n_144,
      PCIN(8) => p_1_out_n_145,
      PCIN(7) => p_1_out_n_146,
      PCIN(6) => p_1_out_n_147,
      PCIN(5) => p_1_out_n_148,
      PCIN(4) => p_1_out_n_149,
      PCIN(3) => p_1_out_n_150,
      PCIN(2) => p_1_out_n_151,
      PCIN(1) => p_1_out_n_152,
      PCIN(0) => p_1_out_n_153,
      PCOUT(47 downto 0) => \NLW_p_1_out__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p_1_out__0_UNDERFLOW_UNCONNECTED\
    );
\p_1_out__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => fft_m_data_tdata(23),
      A(28) => fft_m_data_tdata(23),
      A(27) => fft_m_data_tdata(23),
      A(26) => fft_m_data_tdata(23),
      A(25) => fft_m_data_tdata(23),
      A(24) => fft_m_data_tdata(23),
      A(23 downto 0) => fft_m_data_tdata(23 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p_1_out__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => fft_m_data_tdata(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p_1_out__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p_1_out__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p_1_out__1_OVERFLOW_UNCONNECTED\,
      P(47) => \p_1_out__1_n_58\,
      P(46) => \p_1_out__1_n_59\,
      P(45) => \p_1_out__1_n_60\,
      P(44) => \p_1_out__1_n_61\,
      P(43) => \p_1_out__1_n_62\,
      P(42) => \p_1_out__1_n_63\,
      P(41) => \p_1_out__1_n_64\,
      P(40) => \p_1_out__1_n_65\,
      P(39) => \p_1_out__1_n_66\,
      P(38) => \p_1_out__1_n_67\,
      P(37) => \p_1_out__1_n_68\,
      P(36) => \p_1_out__1_n_69\,
      P(35) => \p_1_out__1_n_70\,
      P(34) => \p_1_out__1_n_71\,
      P(33) => \p_1_out__1_n_72\,
      P(32) => \p_1_out__1_n_73\,
      P(31) => \p_1_out__1_n_74\,
      P(30) => \p_1_out__1_n_75\,
      P(29) => \p_1_out__1_n_76\,
      P(28) => \p_1_out__1_n_77\,
      P(27) => \p_1_out__1_n_78\,
      P(26) => \p_1_out__1_n_79\,
      P(25) => \p_1_out__1_n_80\,
      P(24) => \p_1_out__1_n_81\,
      P(23) => \p_1_out__1_n_82\,
      P(22) => \p_1_out__1_n_83\,
      P(21) => \p_1_out__1_n_84\,
      P(20) => \p_1_out__1_n_85\,
      P(19) => \p_1_out__1_n_86\,
      P(18) => \p_1_out__1_n_87\,
      P(17) => \p_1_out__1_n_88\,
      P(16) => \p_1_out__1_n_89\,
      P(15) => \p_1_out__1_n_90\,
      P(14) => \p_1_out__1_n_91\,
      P(13) => \p_1_out__1_n_92\,
      P(12) => \p_1_out__1_n_93\,
      P(11) => \p_1_out__1_n_94\,
      P(10) => \p_1_out__1_n_95\,
      P(9) => \p_1_out__1_n_96\,
      P(8) => \p_1_out__1_n_97\,
      P(7) => \p_1_out__1_n_98\,
      P(6) => \p_1_out__1_n_99\,
      P(5) => \p_1_out__1_n_100\,
      P(4) => \p_1_out__1_n_101\,
      P(3) => \p_1_out__1_n_102\,
      P(2) => \p_1_out__1_n_103\,
      P(1) => \p_1_out__1_n_104\,
      P(0) => \p_1_out__1_n_105\,
      PATTERNBDETECT => \NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p_1_out__1_n_106\,
      PCOUT(46) => \p_1_out__1_n_107\,
      PCOUT(45) => \p_1_out__1_n_108\,
      PCOUT(44) => \p_1_out__1_n_109\,
      PCOUT(43) => \p_1_out__1_n_110\,
      PCOUT(42) => \p_1_out__1_n_111\,
      PCOUT(41) => \p_1_out__1_n_112\,
      PCOUT(40) => \p_1_out__1_n_113\,
      PCOUT(39) => \p_1_out__1_n_114\,
      PCOUT(38) => \p_1_out__1_n_115\,
      PCOUT(37) => \p_1_out__1_n_116\,
      PCOUT(36) => \p_1_out__1_n_117\,
      PCOUT(35) => \p_1_out__1_n_118\,
      PCOUT(34) => \p_1_out__1_n_119\,
      PCOUT(33) => \p_1_out__1_n_120\,
      PCOUT(32) => \p_1_out__1_n_121\,
      PCOUT(31) => \p_1_out__1_n_122\,
      PCOUT(30) => \p_1_out__1_n_123\,
      PCOUT(29) => \p_1_out__1_n_124\,
      PCOUT(28) => \p_1_out__1_n_125\,
      PCOUT(27) => \p_1_out__1_n_126\,
      PCOUT(26) => \p_1_out__1_n_127\,
      PCOUT(25) => \p_1_out__1_n_128\,
      PCOUT(24) => \p_1_out__1_n_129\,
      PCOUT(23) => \p_1_out__1_n_130\,
      PCOUT(22) => \p_1_out__1_n_131\,
      PCOUT(21) => \p_1_out__1_n_132\,
      PCOUT(20) => \p_1_out__1_n_133\,
      PCOUT(19) => \p_1_out__1_n_134\,
      PCOUT(18) => \p_1_out__1_n_135\,
      PCOUT(17) => \p_1_out__1_n_136\,
      PCOUT(16) => \p_1_out__1_n_137\,
      PCOUT(15) => \p_1_out__1_n_138\,
      PCOUT(14) => \p_1_out__1_n_139\,
      PCOUT(13) => \p_1_out__1_n_140\,
      PCOUT(12) => \p_1_out__1_n_141\,
      PCOUT(11) => \p_1_out__1_n_142\,
      PCOUT(10) => \p_1_out__1_n_143\,
      PCOUT(9) => \p_1_out__1_n_144\,
      PCOUT(8) => \p_1_out__1_n_145\,
      PCOUT(7) => \p_1_out__1_n_146\,
      PCOUT(6) => \p_1_out__1_n_147\,
      PCOUT(5) => \p_1_out__1_n_148\,
      PCOUT(4) => \p_1_out__1_n_149\,
      PCOUT(3) => \p_1_out__1_n_150\,
      PCOUT(2) => \p_1_out__1_n_151\,
      PCOUT(1) => \p_1_out__1_n_152\,
      PCOUT(0) => \p_1_out__1_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p_1_out__1_UNDERFLOW_UNCONNECTED\
    );
\p_1_out__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => fft_m_data_tdata(23),
      A(28) => fft_m_data_tdata(23),
      A(27) => fft_m_data_tdata(23),
      A(26) => fft_m_data_tdata(23),
      A(25) => fft_m_data_tdata(23),
      A(24) => fft_m_data_tdata(23),
      A(23 downto 0) => fft_m_data_tdata(23 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p_1_out__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => fft_m_data_tdata(23),
      B(16) => fft_m_data_tdata(23),
      B(15) => fft_m_data_tdata(23),
      B(14) => fft_m_data_tdata(23),
      B(13) => fft_m_data_tdata(23),
      B(12) => fft_m_data_tdata(23),
      B(11) => fft_m_data_tdata(23),
      B(10) => fft_m_data_tdata(23),
      B(9) => fft_m_data_tdata(23),
      B(8) => fft_m_data_tdata(23),
      B(7) => fft_m_data_tdata(23),
      B(6 downto 0) => fft_m_data_tdata(23 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p_1_out__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p_1_out__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p_1_out__2_OVERFLOW_UNCONNECTED\,
      P(47 downto 31) => \NLW_p_1_out__2_P_UNCONNECTED\(47 downto 31),
      P(30) => \p_1_out__2_n_75\,
      P(29) => \p_1_out__2_n_76\,
      P(28) => \p_1_out__2_n_77\,
      P(27) => \p_1_out__2_n_78\,
      P(26) => \p_1_out__2_n_79\,
      P(25) => \p_1_out__2_n_80\,
      P(24) => \p_1_out__2_n_81\,
      P(23) => \p_1_out__2_n_82\,
      P(22) => \p_1_out__2_n_83\,
      P(21) => \p_1_out__2_n_84\,
      P(20) => \p_1_out__2_n_85\,
      P(19) => \p_1_out__2_n_86\,
      P(18) => \p_1_out__2_n_87\,
      P(17) => \p_1_out__2_n_88\,
      P(16) => \p_1_out__2_n_89\,
      P(15) => \p_1_out__2_n_90\,
      P(14) => \p_1_out__2_n_91\,
      P(13) => \p_1_out__2_n_92\,
      P(12) => \p_1_out__2_n_93\,
      P(11) => \p_1_out__2_n_94\,
      P(10) => \p_1_out__2_n_95\,
      P(9) => \p_1_out__2_n_96\,
      P(8) => \p_1_out__2_n_97\,
      P(7) => \p_1_out__2_n_98\,
      P(6) => \p_1_out__2_n_99\,
      P(5) => \p_1_out__2_n_100\,
      P(4) => \p_1_out__2_n_101\,
      P(3) => \p_1_out__2_n_102\,
      P(2) => \p_1_out__2_n_103\,
      P(1) => \p_1_out__2_n_104\,
      P(0) => \p_1_out__2_n_105\,
      PATTERNBDETECT => \NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p_1_out__1_n_106\,
      PCIN(46) => \p_1_out__1_n_107\,
      PCIN(45) => \p_1_out__1_n_108\,
      PCIN(44) => \p_1_out__1_n_109\,
      PCIN(43) => \p_1_out__1_n_110\,
      PCIN(42) => \p_1_out__1_n_111\,
      PCIN(41) => \p_1_out__1_n_112\,
      PCIN(40) => \p_1_out__1_n_113\,
      PCIN(39) => \p_1_out__1_n_114\,
      PCIN(38) => \p_1_out__1_n_115\,
      PCIN(37) => \p_1_out__1_n_116\,
      PCIN(36) => \p_1_out__1_n_117\,
      PCIN(35) => \p_1_out__1_n_118\,
      PCIN(34) => \p_1_out__1_n_119\,
      PCIN(33) => \p_1_out__1_n_120\,
      PCIN(32) => \p_1_out__1_n_121\,
      PCIN(31) => \p_1_out__1_n_122\,
      PCIN(30) => \p_1_out__1_n_123\,
      PCIN(29) => \p_1_out__1_n_124\,
      PCIN(28) => \p_1_out__1_n_125\,
      PCIN(27) => \p_1_out__1_n_126\,
      PCIN(26) => \p_1_out__1_n_127\,
      PCIN(25) => \p_1_out__1_n_128\,
      PCIN(24) => \p_1_out__1_n_129\,
      PCIN(23) => \p_1_out__1_n_130\,
      PCIN(22) => \p_1_out__1_n_131\,
      PCIN(21) => \p_1_out__1_n_132\,
      PCIN(20) => \p_1_out__1_n_133\,
      PCIN(19) => \p_1_out__1_n_134\,
      PCIN(18) => \p_1_out__1_n_135\,
      PCIN(17) => \p_1_out__1_n_136\,
      PCIN(16) => \p_1_out__1_n_137\,
      PCIN(15) => \p_1_out__1_n_138\,
      PCIN(14) => \p_1_out__1_n_139\,
      PCIN(13) => \p_1_out__1_n_140\,
      PCIN(12) => \p_1_out__1_n_141\,
      PCIN(11) => \p_1_out__1_n_142\,
      PCIN(10) => \p_1_out__1_n_143\,
      PCIN(9) => \p_1_out__1_n_144\,
      PCIN(8) => \p_1_out__1_n_145\,
      PCIN(7) => \p_1_out__1_n_146\,
      PCIN(6) => \p_1_out__1_n_147\,
      PCIN(5) => \p_1_out__1_n_148\,
      PCIN(4) => \p_1_out__1_n_149\,
      PCIN(3) => \p_1_out__1_n_150\,
      PCIN(2) => \p_1_out__1_n_151\,
      PCIN(1) => \p_1_out__1_n_152\,
      PCIN(0) => \p_1_out__1_n_153\,
      PCOUT(47 downto 0) => \NLW_p_1_out__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p_1_out__2_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_FFT_ethernet_final_DDS_FFT_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dds_phase_incr_0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dds_phase_incr_1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dds_phase_incr_2 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pos_radar : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fft_m_data_tvalid : out STD_LOGIC;
    cnt_read : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_valid : out STD_LOGIC;
    psd_avg_read : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DDS_FFT_ethernet_final_DDS_FFT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DDS_FFT_ethernet_final_DDS_FFT_0_0 : entity is "DDS_FFT_ethernet_final_DDS_FFT_0_0,DDS_FFT,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of DDS_FFT_ethernet_final_DDS_FFT_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of DDS_FFT_ethernet_final_DDS_FFT_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of DDS_FFT_ethernet_final_DDS_FFT_0_0 : entity is "DDS_FFT,Vivado 2022.2";
end DDS_FFT_ethernet_final_DDS_FFT_0_0;

architecture STRUCTURE of DDS_FFT_ethernet_final_DDS_FFT_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DDS_FFT_ethernet_final_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.DDS_FFT_ethernet_final_DDS_FFT_0_0_DDS_FFT
     port map (
      clk => clk,
      cnt_read(9 downto 0) => cnt_read(9 downto 0),
      dds_phase_incr_0(17 downto 0) => dds_phase_incr_0(17 downto 0),
      dds_phase_incr_1(17 downto 0) => dds_phase_incr_1(17 downto 0),
      dds_phase_incr_2(17 downto 0) => dds_phase_incr_2(17 downto 0),
      fft_m_data_tvalid => fft_m_data_tvalid,
      m_valid => m_valid,
      pos_radar(2 downto 0) => pos_radar(2 downto 0),
      psd_avg_read(47 downto 0) => psd_avg_read(47 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
