onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -itemcolor {Orange Red} /tb_wrf_cu/clk
add wave -noupdate /tb_wrf_cu/reset
add wave -noupdate -divider WRF
add wave -noupdate -group Constants -radix unsigned /tb_wrf_cu/U_WRF_CU/N_REG_PER_WIN
add wave -noupdate -group Constants -radix unsigned /tb_wrf_cu/U_WRF_CU/N_WIN
add wave -noupdate -group Constants -radix unsigned /tb_wrf_cu/U_WRF_CU/C_FRST_WNDW_PTR
add wave -noupdate -group Constants -radix unsigned /tb_wrf_cu/U_WRF_CU/C_LAST_WNDW_PTR
add wave -noupdate -expand -group FSM /tb_wrf_cu/U_WRF_CU/wrf_cu_cur_state
add wave -noupdate -expand -group FSM /tb_wrf_cu/U_WRF_CU/wrf_cu_fut_state
add wave -noupdate /tb_wrf_cu/U_WRF_CU/can_save
add wave -noupdate /tb_wrf_cu/U_WRF_CU/can_restore
add wave -noupdate /tb_wrf_cu/U_WRF_CU/cwp_cntr
add wave -noupdate /tb_wrf_cu/U_WRF_CU/swp_cntr
add wave -noupdate -itemcolor Gold -radix unsigned /tb_wrf_cu/U_WRF_CU/spill_cntr
add wave -noupdate -itemcolor Gold -radix unsigned /tb_wrf_cu/U_WRF_CU/fill_cntr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 469
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
WaveRestoreZoom {0 ps} {24700 ps}
