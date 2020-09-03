onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab05part1_tb/x
add wave -noupdate /lab05part1_tb/r
add wave -noupdate /lab05part1_tb/clk
add wave -noupdate /lab05part1_tb/c
add wave -noupdate /lab05part1_tb/n
add wave -noupdate /lab05part1_tb/me
add wave -noupdate /lab05part1_tb/mo
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {210 ps}
