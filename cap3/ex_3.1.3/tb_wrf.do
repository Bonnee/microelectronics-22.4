onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Gold -radix unsigned /tb_wrf/clk
add wave -noupdate -radix unsigned /tb_wrf/reset
add wave -noupdate -radix unsigned /tb_wrf/enable
add wave -noupdate -expand -group waddr -color Cyan -radix unsigned /tb_wrf/wr_en
add wave -noupdate -expand -group waddr -color Cyan -radix unsigned /tb_wrf/waddr
add wave -noupdate -expand -group waddr -color Cyan -radix unsigned /tb_wrf/U_WRF/U_ADDR_DEC_WADDR/PHY_ADDR
add wave -noupdate -expand -group waddr -color Cyan -radix hexadecimal /tb_wrf/din
add wave -noupdate -expand -group raddr1 -color {Medium Violet Red} -radix unsigned /tb_wrf/rd1_en
add wave -noupdate -expand -group raddr1 -color {Medium Violet Red} -radix unsigned /tb_wrf/raddr1
add wave -noupdate -expand -group raddr1 -color {Violet Red} -radix unsigned /tb_wrf/U_WRF/U_ADDR_DEC_RADDR1/PHY_ADDR
add wave -noupdate -expand -group raddr1 -color {Medium Violet Red} -radix hexadecimal /tb_wrf/dout1
add wave -noupdate -group raddr2 -color Salmon -radix unsigned /tb_wrf/rd2_en
add wave -noupdate -group raddr2 -color Salmon -radix unsigned /tb_wrf/raddr2
add wave -noupdate -group raddr2 -color Salmon -radix unsigned /tb_wrf/U_WRF/U_ADDR_DEC_RADDR2/PHY_ADDR
add wave -noupdate -group raddr2 -color Salmon -radix hexadecimal /tb_wrf/dout2
add wave -noupdate -radix unsigned /tb_wrf/trnsf_cplt_ack
add wave -noupdate -radix unsigned /tb_wrf/op
add wave -noupdate -radix unsigned /tb_wrf/state
add wave -noupdate -radix unsigned -childformat {{/tb_wrf/cwp(5) -radix unsigned} {/tb_wrf/cwp(4) -radix unsigned} {/tb_wrf/cwp(3) -radix unsigned} {/tb_wrf/cwp(2) -radix unsigned} {/tb_wrf/cwp(1) -radix unsigned} {/tb_wrf/cwp(0) -radix unsigned}} -subitemconfig {/tb_wrf/cwp(5) {-height 26 -radix unsigned} /tb_wrf/cwp(4) {-height 26 -radix unsigned} /tb_wrf/cwp(3) {-height 26 -radix unsigned} /tb_wrf/cwp(2) {-height 26 -radix unsigned} /tb_wrf/cwp(1) {-height 26 -radix unsigned} /tb_wrf/cwp(0) {-height 26 -radix unsigned}} /tb_wrf/cwp
add wave -noupdate -radix unsigned /tb_wrf/swp
add wave -noupdate -group RF -color Gold /tb_wrf/clk
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/ENABLE
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/RD1
add wave -noupdate -group RF -radix unsigned /tb_wrf/U_WRF/U_RF/ADD_RD1
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/OUT1
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/RD2
add wave -noupdate -group RF -radix unsigned /tb_wrf/U_WRF/U_RF/ADD_RD2
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/OUT2
add wave -noupdate -group RF -color Pink /tb_wrf/U_WRF/U_RF/WR
add wave -noupdate -group RF -color Pink -radix unsigned /tb_wrf/U_WRF/U_RF/ADD_WR
add wave -noupdate -group RF -color Pink /tb_wrf/U_WRF/U_RF/DATAIN
add wave -noupdate -group RF /tb_wrf/U_WRF/U_RF/REGISTERS
add wave -noupdate -group CU /tb_wrf/U_WRF/U_WRF_CU/wrf_cu_cur_state
add wave -noupdate -group CU /tb_wrf/U_WRF/U_WRF_CU/wrf_cu_fut_state
add wave -noupdate -group CU /tb_wrf/U_WRF/U_WRF_CU/cwp_cntr
add wave -noupdate -group CU /tb_wrf/U_WRF/U_WRF_CU/swp_cntr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {50210 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 379
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
WaveRestoreZoom {0 ps} {77120 ps}
