###################################################################

# Created by write_sdc on Tue May 31 17:22:08 2022

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 5  -from [list [get_ports {A[7]}] [get_ports {A[6]}] [get_ports {A[5]}]          \
[get_ports {A[4]}] [get_ports {A[3]}] [get_ports {A[2]}] [get_ports {A[1]}]    \
[get_ports {A[0]}] [get_ports {B[7]}] [get_ports {B[6]}] [get_ports {B[5]}]    \
[get_ports {B[4]}] [get_ports {B[3]}] [get_ports {B[2]}] [get_ports {B[1]}]    \
[get_ports {B[0]}]]  -to [list [get_ports {S[15]}] [get_ports {S[14]}] [get_ports {S[13]}]         \
[get_ports {S[12]}] [get_ports {S[11]}] [get_ports {S[10]}] [get_ports {S[9]}] \
[get_ports {S[8]}] [get_ports {S[7]}] [get_ports {S[6]}] [get_ports {S[5]}]    \
[get_ports {S[4]}] [get_ports {S[3]}] [get_ports {S[2]}] [get_ports {S[1]}]    \
[get_ports {S[0]}]]
