#! /bin/bash


source /software/scripts/init_synopsys_64.11

design_vision -no_gui -x "source ./mul-t.scr; exit" -output_log_file "dv_stuff/output.log"

