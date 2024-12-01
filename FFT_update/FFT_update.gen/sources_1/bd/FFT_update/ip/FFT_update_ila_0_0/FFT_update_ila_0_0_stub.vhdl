-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Nov 29 03:11:58 2024
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_ila_0_0/FFT_update_ila_0_0_stub.vhdl
-- Design      : FFT_update_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFT_update_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end FFT_update_ila_0_0;

architecture stub of FFT_update_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[47:0],probe1[9:0],probe2[0:0],probe3[17:0],probe4[17:0],probe5[17:0],probe6[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2022.2";
begin
end;
