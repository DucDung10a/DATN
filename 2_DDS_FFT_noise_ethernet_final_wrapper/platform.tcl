# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Vivado\_lab_vitis2022.2\2_DDS_FFT_noise_ethernet_final_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Vivado\_lab_vitis2022.2\2_DDS_FFT_noise_ethernet_final_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {2_DDS_FFT_noise_ethernet_final_wrapper}\
-hw {D:\Vivado\_DATN\FFT\FFT_final\DDS_FFT_noise_ethernet_final_wrapper.xsa}\
-out {D:/Vivado/_lab_vitis2022.2}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {2_DDS_FFT_noise_ethernet_final_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
catch {platform remove 2_DDS_FFT_ethernet_wrapper}
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp config dhcp_does_arp_check "false"
bsp config lwip_dhcp "false"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform generate
platform generate
platform active {2_DDS_FFT_noise_ethernet_final_wrapper}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate
platform active {2_DDS_FFT_noise_ethernet_final_wrapper}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate -domains 
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate -domains 
platform active {2_DDS_FFT_noise_ethernet_final_wrapper}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate
platform active {2_DDS_FFT_noise_ethernet_final_wrapper}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate -domains 
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_final/DDS_FFT_noise_ethernet_final_wrapper.xsa}
bsp reload
bsp write
platform generate -domains 
