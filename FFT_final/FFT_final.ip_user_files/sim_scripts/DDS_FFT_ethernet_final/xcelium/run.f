-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_processing_system7_0_0/sim/DDS_FFT_ethernet_final_processing_system7_0_0.v" \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_ila_0_0/sim/DDS_FFT_ethernet_final_ila_0_0.v" \
  "../../../bd/DDS_FFT_ethernet_final/ipshared/64e9/hdl/myFFT_v1_0_S00_AXI.v" \
  "../../../bd/DDS_FFT_ethernet_final/ipshared/64e9/hdl/myFFT_v1_0.v" \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_myFFT_0_0/sim/DDS_FFT_ethernet_final_myFFT_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_rst_ps7_0_100M_0/sim/DDS_FFT_ethernet_final_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_DDS_FFT_0_0/sim/DDS_FFT_ethernet_final_DDS_FFT_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../FFT_final.gen/sources_1/bd/DDS_FFT_ethernet_final/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_FFT_ethernet_final/ip/DDS_FFT_ethernet_final_auto_pc_0/sim/DDS_FFT_ethernet_final_auto_pc_0.v" \
  "../../../bd/DDS_FFT_ethernet_final/sim/DDS_FFT_ethernet_final.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

