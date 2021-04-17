transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {LS194.vho}

vcom -93 -work work {D:/Programas/intelFPGA_lite/Projects_MAX10/Modelsim_LS194/LS194_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=LS194_vhd.sdo -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  LS194_tb

add wave *
view structure
view signals
run -all
