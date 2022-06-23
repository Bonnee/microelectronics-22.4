#! /bin/bash


files="./p4/sum_generator/fa.vhd \
       ./p4/sum_generator/rca.vhd \
       ./p4/sum_generator/lfsr.vhd \
       ./p4/sum_generator/csb.vhd \
       ./p4/sum_generator/tb_csb.vhd \
       ./p4/sum_generator/sum_generator.vhd \
       ./p4/carry_generator/COMM_PKG.vhd \
       ./p4/carry_generator/PG_PRIM.vhd \
       ./p4/carry_generator/GG.vhd \
       ./p4/carry_generator/GP.vhd \
       ./p4/carry_generator/CARRY_GENERATOR.vhd \
       ./p4/carry_generator/tb_carry_generator.vhd \
       ./p4/P4_ADDER.vhd \
       ./p4/tb_p4_adder.vhd"

if [ -n "$1" ] && [ "$1" = "all" ]; then 
  source /software/scripts/init_questa10.7c
  vlib work
  vcom $files 
  if [ $? -ne 0 ]; then exit 1; fi
fi

source /software/scripts/init_synopsys_64.11

design_vision -no_gui -x "source ./add-t.scr; exit" -output_log_file "dv_stuff/output.log"

