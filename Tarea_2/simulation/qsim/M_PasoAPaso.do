onerror {exit -code 1}
vlib work
vcom -work work M_PasoAPaso.vho
vcom -work work WaveformMPP.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.M_PasoAPaso_vhd_vec_tst
vcd file -direction M_PasoAPaso.msim.vcd
vcd add -internal M_PasoAPaso_vhd_vec_tst/*
vcd add -internal M_PasoAPaso_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f














