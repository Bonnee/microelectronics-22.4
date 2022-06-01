#! /bin/env bash
source /software/scripts/init_questa10.7c

case_var="up"

case "$case_var" in
  "hw")
    echo "...................................................................... Building CU HW"
    vcom COMM_PKG.vhd CU_HW.vhd CU_HW_TEST.vhd && \
    vsim -c -do "vsim -t 10ps work.CU_TEST -voptargs=+acc; run 150 ns; exit"
  ;;
  "fsm")
    echo "...................................................................... Building CU FSM"
    vcom COMM_PKG.vhd CU_FSM.vhd CU_FSM_TEST.vhd && \
    vsim -c -do "vsim -t 10ps work.CU_TEST -voptargs=+acc; run 150 ns; exit"
  ;;
  "up")
    echo "...................................................................... Building CU UP"
    vcom COMM_PKG.vhd CU_UP.vhd CU_UP_TEST.vhd && \
    vsim -c -do "vsim -t 10ps work.CU_TEST -voptargs=+acc; run 150 ns; exit"
  ;;
  "all")
    ./$0 hw && \
    ./$0 fsm && \
    ./$0 up
  ;;
  "vhdl")
    echo "vhdl is a programming language"
  ;;
  *)
    echo "usage: $0 [hw|fsm|up|all]"
  ;;
esac;

