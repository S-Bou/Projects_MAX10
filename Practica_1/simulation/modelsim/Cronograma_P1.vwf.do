vcom -work work Cronograma_P1.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Practica_1_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
