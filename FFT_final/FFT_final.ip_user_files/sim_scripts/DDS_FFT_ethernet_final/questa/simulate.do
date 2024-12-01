onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib DDS_FFT_ethernet_final_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {DDS_FFT_ethernet_final.udo}

run 1000ns

quit -force
