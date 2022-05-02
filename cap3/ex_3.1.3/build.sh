#! /bin/env bash
source /software/scripts/init_questa10.7c
vcom COMM_PKG.vhd RF.vhd ADDR_DEC.vhd tb_ADDR_DEC.vhd WRF_CU.vhd tb_WRF_CU.vhd WRF.vhd tb_WRF.vhd
