#! /bin/bash
source /software/scripts/init_questa10.7c
files="./sum_generator/fa.vhd \
       ./sum_generator/rca.vhd \
       ./sum_generator/lfsr.vhd \
       ./sum_generator/csb.vhd \
       ./sum_generator/tb_csb.vhd \
       ./sum_generator/sum_generator.vhd \
       ./carry_generator/COMM_PKG.vhd \
       ./carry_generator/PG_PRIM.vhd \
       ./carry_generator/GG.vhd \
       ./carry_generator/GP.vhd \
       ./carry_generator/CARRY_GENERATOR.vhd \
       ./carry_generator/tb_carry_generator.vhd \
       P4_ADDER.vhd \
       tb_p4_adder.vhd"

vcom $files
