onerror {exit -code 1}
vlib work
vcom -work work Practica_2.vho
vcom -work work CronogramaP2.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Practica_2_vhd_vec_tst
vcd file -direction Practica_2.msim.vcd
vcd add -internal Practica_2_vhd_vec_tst/*
vcd add -internal Practica_2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

