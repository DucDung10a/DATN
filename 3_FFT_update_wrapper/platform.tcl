# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Vivado\_lab_vitis2022.2\3_FFT_update_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Vivado\_lab_vitis2022.2\3_FFT_update_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {3_FFT_update_wrapper}\
-hw {D:\Vivado\_DATN\FFT\FFT_update\FFT_update_wrapper.xsa}\
-out {D:/Vivado/_lab_vitis2022.2}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {3_FFT_update_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp config dhcp_does_arp_check "false"
bsp config lwip_dhcp "false"
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
bsp reload
bsp reload
platform config -updatehw {D:/Vivado/_DATN/FFT/FFT_update/FFT_update_wrapper.xsa}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
platform active {3_FFT_update_wrapper}
bsp reload
bsp write
platform generate
catch {platform remove 3_DDS_FFT_wrapper}
catch {platform remove 3_DDS_FFT_wrapper}
catch {platform remove 4_DDS_FFT_wrapper}
