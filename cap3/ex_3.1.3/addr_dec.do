onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /tb_addr_dec/ADDRDEC/VIRT_ADDR
add wave -noupdate -radix unsigned /tb_addr_dec/ADDRDEC/CWP
add wave -noupdate /tb_addr_dec/ADDRDEC/PHY_ADDR
add wave -noupdate /tb_addr_dec/ADDRDEC/cwp_lut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 395
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
WaveRestoreZoom {0 ps} {5730 ps}
