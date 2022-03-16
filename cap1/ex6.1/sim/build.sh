#!/bin/sh
source /software/scripts/init_questa10.7c 
vcom constants.vhd mux21/iv.vhd mux21/nd2.vhd mux21/mux21.vhd mux21/mux21_generic.vhd rca/fa.vhd rca/rca.vhd rca/rca_generic.vhd reg/fd.vhd reg/reg.vhd acc.vhd tb_acc.vhd
