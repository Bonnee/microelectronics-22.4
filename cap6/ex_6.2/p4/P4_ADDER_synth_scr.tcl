puts "############## Analyzing VHDL FILES ##############"
analyze -library WORK -format vhdl {./COMM_PKG.vhd} 
analyze -library WORK -format vhdl {./rca.vhd}
analyze -library WORK -format vhdl {./csb.vhd}
analyze -library WORK -format vhdl {./PG_PRIM.vhd}
analyze -library WORK -format vhdl {./GP.vhd}
analyze -library WORK -format vhdl {./GG.vhd}
analyze -library WORK -format vhdl {./CARRY_GENERATOR.vhd}
analyze -library WORK -format vhdl {./sum_generator.vhd}
analyze -library WORK -format vhdl {./P4_ADDER.vhd}
puts "############## Elaborating Top Entity ##############"
elaborate -update -library WORK CFG_P4_ADDER_STRUCTURAL -parameters "NBIT=32"
puts "############## Complie Top Entity ##############"
compile 
report_timing -nworst 10 > ./p4_adder-10_worst_timing-NON_opt.txt
report_timing > ./p4_adder-timing-NON_opt.txt
report_area > ./p4_adder_area-NON_opt.txt

puts "############## Set Constraint ##############"
set max_delay 0.68
puts "max delay is: $max_delay"

set_max_delay [expr {$max_delay * 0.8}] -from [all_inputs] -to [all_outputs]
puts "############## Complie With Constraint ##############"
compile -map_effort high
# save report
report_timing > ./p4_adder-timing-opt.txt
report_area > ./p4_adder-area-opt.txt
# saving files
write -hierarchy -format ddc -output ./P4_ADDDER_32bit-structural-topt.ddc
write -hierarchy -format vhdl -output ./P4_ADDER_32bit-structural-topt.vhdl
