
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:022default:default2
00:00:062default:default2
388.3402default:default2
66.8672default:defaultZ17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
v
 Loaded user IP repository '%s'.
1135*coregen2/
d:/Vivado/_DATN/FFT/ip_repo2default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.2/data/ip2default:defaultZ19-2313h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:012default:default2
00:00:082default:default2
445.9922default:default2
32.7772default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/Vivado/_DATN/FFT/FFT_update/FFT_update.srcs/utils_1/imports/synth_1/FFT_update_wrapper.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
]D:/Vivado/_DATN/FFT/FFT_update/FFT_update.srcs/utils_1/imports/synth_1/FFT_update_wrapper.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 

Command: %s
53*	vivadotcl2N
:synth_design -top FFT_update_wrapper -part xc7z020clg400-22default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-22default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
1630162default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:08 . Memory (MB): peak = 1270.867 ; gain = 407.531
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2&
FFT_update_wrapper2default:default2
 2default:default2t
^d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/hdl/FFT_update_wrapper.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

FFT_update2default:default2
 2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2*
FFT_update_DDS_FFT_0_22default:default2
 2default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_DDS_FFT_0_2_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
FFT_update_DDS_FFT_0_22default:default2
 2default:default2
02default:default2
12default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_DDS_FFT_0_2_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
1582default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2&
FFT_update_ila_0_02default:default2
 2default:default2�
|D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_ila_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
FFT_update_ila_0_02default:default2
 2default:default2
02default:default2
12default:default2�
|D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_ila_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
FFT_update_myFFT_0_12default:default2
 2default:default2�
~D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_myFFT_0_1_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FFT_update_myFFT_0_12default:default2
 2default:default2
02default:default2
12default:default2�
~D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_myFFT_0_1_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!FFT_update_processing_system7_0_02default:default2
 2default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!FFT_update_processing_system7_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
FFT_update_ps7_0_axi_periph_02default:default2
 2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3332default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_QFS5I62default:default2
 2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
6482default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
FFT_update_auto_pc_02default:default2
 2default:default2�
~D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FFT_update_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2�
~D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_QFS5I62default:default2
 2default:default2
02default:default2
12default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
6482default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
FFT_update_ps7_0_axi_periph_02default:default2
 2default:default2
02default:default2
12default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
FFT_update_rst_ps7_0_100M_02default:default2
 2default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_rst_ps7_0_100M_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
FFT_update_rst_ps7_0_100M_02default:default2
 2default:default2
02default:default2
12default:default2�
�D:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/.Xil/Vivado-140852-DESKTOP-GLV9KF3/realtime/FFT_update_rst_ps7_0_100M_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2/
FFT_update_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2/
FFT_update_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default2/
FFT_update_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2/
FFT_update_rst_ps7_0_100M_02default:default2"
rst_ps7_0_100M2default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3242default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
rst_ps7_0_100M2default:default2/
FFT_update_rst_ps7_0_100M_02default:default2
102default:default2
62default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
3242default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

FFT_update2default:default2
 2default:default2
02default:default2
12default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
FFT_update_wrapper2default:default2
 2default:default2
02default:default2
12default:default2t
^d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/hdl/FFT_update_wrapper.v2default:default2
122default:default8@Z8-6155h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
	DDS_FFT_02default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
1472default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
myFFT_02default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
1672default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
ila_02default:default2n
Xd:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/synth/FFT_update.v2default:default2
1582default:default8@Z8-6071h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s00_couplers_imp_QFS5I62default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s00_couplers_imp_QFS5I62default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1365.715 ; gain = 502.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1365.715 ; gain = 502.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1365.715 ; gain = 502.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0172default:default2
1365.7152default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_processing_system7_0_0/FFT_update_processing_system7_0_0/FFT_update_processing_system7_0_0_in_context.xdc2default:default27
!FFT_update_i/processing_system7_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_processing_system7_0_0/FFT_update_processing_system7_0_0/FFT_update_processing_system7_0_0_in_context.xdc2default:default27
!FFT_update_i/processing_system7_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_ila_0_0/FFT_update_ila_0_0/FFT_update_ila_0_0_in_context.xdc2default:default2(
FFT_update_i/ila_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_ila_0_0/FFT_update_ila_0_0/FFT_update_ila_0_0_in_context.xdc2default:default2(
FFT_update_i/ila_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_auto_pc_0/FFT_update_auto_pc_0/FFT_update_auto_pc_0_in_context.xdc2default:default2H
2FFT_update_i/ps7_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_auto_pc_0/FFT_update_auto_pc_0/FFT_update_auto_pc_0_in_context.xdc2default:default2H
2FFT_update_i/ps7_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_rst_ps7_0_100M_0/FFT_update_rst_ps7_0_100M_0/FFT_update_rst_ps7_0_100M_0_in_context.xdc2default:default21
FFT_update_i/rst_ps7_0_100M	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_rst_ps7_0_100M_0/FFT_update_rst_ps7_0_100M_0/FFT_update_rst_ps7_0_100M_0_in_context.xdc2default:default21
FFT_update_i/rst_ps7_0_100M	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_myFFT_0_1/FFT_update_myFFT_0_1/FFT_update_myFFT_0_1_in_context.xdc2default:default2*
FFT_update_i/myFFT_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_myFFT_0_1/FFT_update_myFFT_0_1/FFT_update_myFFT_0_1_in_context.xdc2default:default2*
FFT_update_i/myFFT_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_DDS_FFT_0_2/FFT_update_DDS_FFT_0_2/FFT_update_DDS_FFT_0_2_in_context.xdc2default:default2,
FFT_update_i/DDS_FFT_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/Vivado/_DATN/FFT/FFT_update/FFT_update.gen/sources_1/bd/FFT_update/ip/FFT_update_DDS_FFT_0_2/FFT_update_DDS_FFT_0_2/FFT_update_DDS_FFT_0_2_in_context.xdc2default:default2,
FFT_update_i/DDS_FFT_0	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2[
ED:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2[
ED:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1366.3362default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1366.3362default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:24 . Memory (MB): peak = 1369.422 ; gain = 506.086
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-2
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:24 . Memory (MB): peak = 1369.422 ; gain = 506.086
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:25 . Memory (MB): peak = 1369.445 ; gain = 506.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:25 . Memory (MB): peak = 1369.445 ; gain = 506.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default21
FFT_update_ps7_0_axi_periph_02default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:29 . Memory (MB): peak = 1369.445 ; gain = 506.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:40 . Memory (MB): peak = 1378.414 ; gain = 515.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:40 . Memory (MB): peak = 1378.414 ; gain = 515.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:12 ; elapsed = 00:00:40 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
c
%s
*synth2K
7+------+----------------------------------+----------+
2default:defaulth p
x
� 
c
%s
*synth2K
7|      |BlackBox name                     |Instances |
2default:defaulth p
x
� 
c
%s
*synth2K
7+------+----------------------------------+----------+
2default:defaulth p
x
� 
c
%s
*synth2K
7|1     |FFT_update_auto_pc_0              |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7|2     |FFT_update_DDS_FFT_0_2            |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7|3     |FFT_update_ila_0_0                |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7|4     |FFT_update_myFFT_0_1              |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7|5     |FFT_update_processing_system7_0_0 |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7|6     |FFT_update_rst_ps7_0_100M_0       |         1|
2default:defaulth p
x
� 
c
%s
*synth2K
7+------+----------------------------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
]
%s*synth2E
1+------+--------------------------------+------+
2default:defaulth px� 
]
%s*synth2E
1|      |Cell                            |Count |
2default:defaulth px� 
]
%s*synth2E
1+------+--------------------------------+------+
2default:defaulth px� 
]
%s*synth2E
1|1     |FFT_update_DDS_FFT_0            |     1|
2default:defaulth px� 
]
%s*synth2E
1|2     |FFT_update_auto_pc              |     1|
2default:defaulth px� 
]
%s*synth2E
1|3     |FFT_update_ila_0                |     1|
2default:defaulth px� 
]
%s*synth2E
1|4     |FFT_update_myFFT_0              |     1|
2default:defaulth px� 
]
%s*synth2E
1|5     |FFT_update_processing_system7_0 |     1|
2default:defaulth px� 
]
%s*synth2E
1|6     |FFT_update_rst_ps7_0_100M       |     1|
2default:defaulth px� 
]
%s*synth2E
1+------+--------------------------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:47 . Memory (MB): peak = 1381.801 ; gain = 517.844
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:50 . Memory (MB): peak = 1381.801 ; gain = 518.465
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0242default:default2
1381.8012default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1403.2662default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a22bb55c2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
462default:default2
152default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:182default:default2
00:00:582default:default2
1408.2702default:default2
948.0162default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MD:/Vivado/_DATN/FFT/FFT_update/FFT_update.runs/synth_1/FFT_update_wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
zExecuting : report_utilization -file FFT_update_wrapper_utilization_synth.rpt -pb FFT_update_wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Nov 29 13:52:44 20242default:defaultZ17-206h px� 


End Record