onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /uart_tx_tb/SUT/CLK0/clk_in
add wave -noupdate /uart_tx_tb/SUT/CLK0/contador
add wave -noupdate /uart_tx_tb/SUT/CLK0/clk_sig
add wave -noupdate /uart_tx_tb/SUT/CLK0/clk_out
add wave -noupdate /uart_tx_tb/clk_i_tb
add wave -noupdate /uart_tx_tb/reset_tb
add wave -noupdate /uart_tx_tb/tx_en_tb
add wave -noupdate /uart_tx_tb/tx_data_tb
add wave -noupdate /uart_tx_tb/tx_tb
add wave -noupdate /uart_tx_tb/SUT/current_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 231
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2100 us}
