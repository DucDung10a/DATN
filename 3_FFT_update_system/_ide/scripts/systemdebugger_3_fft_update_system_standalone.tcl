# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Vivado\_lab_vitis2022.2\3_FFT_update_system\_ide\scripts\systemdebugger_3_fft_update_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Vivado\_lab_vitis2022.2\3_FFT_update_system\_ide\scripts\systemdebugger_3_fft_update_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-23727093-0"}
fpga -file D:/Vivado/_lab_vitis2022.2/3_FFT_update/_ide/bitstream/FFT_update_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Vivado/_lab_vitis2022.2/3_FFT_update_wrapper/export/3_FFT_update_wrapper/hw/FFT_update_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
rst -processor
dow D:/Vivado/_lab_vitis2022.2/3_FFT_update_wrapper/export/3_FFT_update_wrapper/sw/3_FFT_update_wrapper/boot/fsbl.elf
set bp_17_45_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_17_45_fsbl_bp
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Vivado/_lab_vitis2022.2/3_FFT_update/Debug/3_FFT_update.elf
configparams force-mem-access 0
bpadd -addr &main
