-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec  4 20:25:44 2024
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/_DATN/FFT/FFT_final/FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_DDS_FFT_0_0/DDS_FFT_ethernet_final_DDS_FFT_0_0_stub.vhdl
-- Design      : DDS_FFT_ethernet_final_DDS_FFT_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDS_FFT_ethernet_final_DDS_FFT_0_0 is
  Port ( 
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

end DDS_FFT_ethernet_final_DDS_FFT_0_0;

architecture stub of DDS_FFT_ethernet_final_DDS_FFT_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,dds_phase_incr_0[17:0],dds_phase_incr_1[17:0],dds_phase_incr_2[17:0],pos_radar[2:0],fft_m_data_tvalid,cnt_read[9:0],m_valid,psd_avg_read[47:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DDS_FFT,Vivado 2022.2";
begin
end;