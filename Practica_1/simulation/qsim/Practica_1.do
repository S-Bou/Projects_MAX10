onerror {exit -code 1}
vlib work
vcom -work work Practica_1.vho
vcom -work work Cronograma_P1.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Practica_1_vhd_vec_tst/i1=Practica_1_vhd.sdo -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Practica_1_vhd_vec_tst
vcd file -direction Practica_1.msim.vcd
vcd add -internal Practica_1_vhd_vec_tst/*
vcd add -internal Practica_1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
