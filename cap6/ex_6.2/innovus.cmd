#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon May 30 23:29:40 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set init_gnd_net gnd
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog ./netlist/p4_adder.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
selectObject IO_Pin {S[31]}
pan -16.277 -11.566
setDrawView ameba
setDrawView fplan
setDrawView place
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1 0.7 0.0 0.0 0.0 0.0
uiSetTool select
getIoFlowFlag
fit
deselectAll
gui_select -rect {-0.742 27.418 33.014 0.523}
gui_select -rect {31.318 -0.659 -0.387 26.826}
deselectAll
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.697648 0.0 0.0 0.0 0.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.944669365722 0.599038 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 37.7350 1.3200 38.5350 36.7600 10 gnd
fit
shiftObject -side up -distance 0
shiftObject -side down -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
deselectAll
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
shiftObject -side left -distance 0
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
reportSelect
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -number_of_sets 5 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
deselectAll
zoomSelected
selectWire 20.1300 1.3200 20.9300 36.7600 10 gnd
deleteSelectedFromFPlan
selectWire 21.7300 2.9200 22.5300 35.1600 10 vdd
deleteSelectedFromFPlan
selectWire 24.7900 2.9200 25.5900 35.1600 10 vdd
deleteSelectedFromFPlan
selectWire 27.8500 2.9200 28.6500 35.1600 10 vdd
deleteSelectedFromFPlan
selectWire 30.9100 2.9200 31.7100 35.1600 10 vdd
deleteSelectedFromFPlan
selectWire 33.9700 2.9200 34.7700 35.1600 10 vdd
deleteSelectedFromFPlan
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setEdit -snap_to_track_regular 0
gui_select -rect {1.462 34.734 -0.232 33.831}
gui_select -rect {1.744 36.597 -0.458 35.806}
setEdit -snap_to_track_regular 1
uiSetTool ruler
uiSetTool select
gui_select -rect {2.615 25.938 2.679 25.150}
uiSetTool ruler
zoomBox 2.423 25.896 2.487 25.256
get_visible_nets
uiSetTool select
uiSetTool ruler
fit
pan -12.877 -4.334
fit
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
uiSetTool select
selectWire 2.9650 2.9200 3.7650 35.1600 10 vdd
deselectAll
selectWire 2.9650 2.9200 3.7650 35.1600 10 vdd
gui_select -rect {3.374 19.026 3.433 18.965}
selectWire 2.9650 18.9550 5.1300 19.1250 1 vdd
pan -9.658 -0.736
pan -0.210 -0.315
deselectAll
selectWire 5.1300 18.9550 34.7700 19.1250 1 vdd
deselectAll
selectWire 2.9650 18.9550 5.1300 19.1250 1 vdd
deselectAll
selectWire 5.1300 18.9550 34.7700 19.1250 1 vdd
deselectAll
selectWire 2.9650 18.9550 5.1300 19.1250 1 vdd
deselectAll
selectWire 5.1300 18.9550 34.7700 19.1250 1 vdd
deselectAll
selectWire 2.9650 18.9550 5.1300 19.1250 1 vdd
deselectAll
selectWire 5.1300 18.9550 34.7700 19.1250 1 vdd
deselectAll
selectWire 2.9650 18.9550 5.1300 19.1250 1 vdd
deselectAll
selectWire 1.3650 20.3550 5.1300 20.5250 1 gnd
deselectAll
selectWire 5.1300 20.3550 34.7700 20.5250 1 gnd
deselectAll
selectWire 1.3650 20.3550 5.1300 20.5250 1 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
gui_select -rect {2.188 20.294 1.979 20.600}
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
fit
deselectAll
selectWire 5.1300 30.1550 34.7700 30.3250 1 vdd
deselectAll
selectWire 5.1300 31.5550 34.7700 31.7250 1 gnd
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
deselectAll
pan 0.914 -3.563
pan 0.771 -0.465
pan -2.234 0.297
pan 2.370 8.624
pan -3.906 7.535
pan 0.384 6.703
selectInst U_SUM_GENERATOR/U_CSB_3/U_RCA1/add_1_root_add_43_2/U1_3
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_3/U10
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_3/U_RCA0/add_1_root_add_43_2/U1_2
get_visible_nets
report_timing -machine_readable -max_paths 10000 -from U_SUM_GENERATOR/U_CSB_3/U_RCA0/add_1_root_add_43_2/U1_2 > /tmp/innovus_temp_17942_localhost.localdomain_ms22.4_OE3J5G/highlightPath_jTtCio.mtarpt
load_timing_debug_report /tmp/innovus_temp_17942_localhost.localdomain_ms22.4_OE3J5G/highlightPath_jTtCio.mtarpt
get_visible_nets
deselectInst U_SUM_GENERATOR/U_CSB_3/U_RCA1/add_1_root_add_43_2/U1_0
selectInst U_SUM_GENERATOR/U_CSB_3/U_RCA1/add_1_root_add_43_2/U1_0
deselectInst U_SUM_GENERATOR/U_CSB_3/U_RCA1/add_1_root_add_43_2/U1_0
selectInst U_SUM_GENERATOR/U_CSB_3/U_RCA1/add_1_root_add_43_2/U1_0
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_4/U_RCA1/add_1_root_add_43_2/U1_3
gui_select -rect {4.742 16.676 10.467 9.459}
get_visible_nets
pan -0.128 -15.309
deselectAll
gui_select -rect {43.785 4.375 -1.375 34.354}
get_visible_nets
get_visible_nets
deselectAll
selectInst U_CARRY_GENERATOR/U_BKBONE_GP_UNIT_1_15/U1
pan 3.251 -6.944
gui_select -rect {5.383 24.100 13.563 17.220}
get_visible_nets
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_2/U_RCA0/add_1_root_add_43_2/U1_2
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_2/U_RCA1/add_1_root_add_43_2/U1_1
get_visible_nets
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_2/U_RCA1/add_1_root_add_43_2/U1_0
selectInst U_CARRY_GENERATOR/U_PG_PRIM_8/U2
selectInst U_CARRY_GENERATOR/U_PG_PRIM_8/U1
get_visible_nets
get_visible_nets
deselectAll
selectWire 10.1300 18.0950 10.2000 20.0550 2 {B[8]}
get_visible_nets
deselectAll
selectWire 15.8300 14.9550 15.9000 17.1850 2 {U_CARRY_GENERATOR/CG_xbars[3][15][0]}
deselectAll
selectWire 2.9650 2.9200 3.7650 35.1600 10 vdd
deselectAll
selectWire 2.9650 2.9200 3.7650 35.1600 10 vdd
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_2/U_RCA0/add_1_root_add_43_2/U1_1
zoomSelected
pan -11.591 1.445
pan 0.680 5.100
deselectAll
selectInst U_SUM_GENERATOR/U_CSB_6/U_RCA1/add_1_root_add_43_2/U1_0
pan -1.538 -6.409
deselectAll
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_2
get_visible_nets
select_obj {0x7f09359d4e78 0x7f09359d4eb0 0x7f09359d4ee8 0x7f09359d4f20 0x7f09359d4f58}
get_visible_nets
get_visible_nets
report_timing -machine_readable -max_paths 10000 -from U_FIRST_RCA/add_1_root_add_43_2/U1_2 > /tmp/innovus_temp_17942_localhost.localdomain_ms22.4_OE3J5G/highlightPath_yrKA8m.mtarpt
load_timing_debug_report /tmp/innovus_temp_17942_localhost.localdomain_ms22.4_OE3J5G/highlightPath_yrKA8m.mtarpt
get_visible_nets
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_2
deselectAll
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
get_visible_nets
pan -0.005 -0.493
pan -0.096 -0.174
pan 0.416 0.091
pan 0.808 0.018
deselectAll
selectWire 5.1300 32.9550 34.7700 33.1250 1 vdd
deselectAll
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
get_visible_nets
deselectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
deselectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
deselectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
deselectInst U_FIRST_RCA/add_1_root_add_43_2/U1_3
selectObject Net U_FIRST_RCA/Co
deselectObject Net U_FIRST_RCA/Co
selectObject Net U_FIRST_RCA/Co
deselectObject Net U_FIRST_RCA/Co
selectWire 16.2100 31.1150 16.2800 32.5000 2 {A[3]}
pan -1.939 1.684
deselectAll
selectWire 14.3950 29.2600 14.5350 31.5000 4 {U_CARRY_GENERATOR/CG_xbars[0][3][0]}
pan -0.490 1.086
pan -1.483 4.562
deselectAll
selectWire 11.8750 23.6600 12.0150 27.8600 4 {U_CARRY_GENERATOR/CG_xbars[0][11][1]}
pan -4.776 5.368
deselectAll
selectWire 30.9150 17.7800 31.0550 22.8200 4 {U_SUM_GENERATOR/U_CSB_6/U_RCA1/add_1_root_add_43_2/carry[3]}
pan -7.262 0.967
deselectAll
selectWire 34.2750 18.0600 34.4150 22.9600 4 {B[27]}
deselectAll
selectInst U_CARRY_GENERATOR/U_PG_PRIM_24/U2
get_visible_nets
get_visible_nets
get_visible_nets
::selectNet {B[24]}
::selectNet {A[24]}
::selectNet {U_CARRY_GENERATOR/CG_xbars[0][24][1]}
get_visible_nets
get_visible_nets
deselectAll
selectWire 23.0750 15.1200 23.2150 21.0000 4 U_CARRY_GENERATOR/U_LF_GG_UNIT_3_23/n3
get_visible_nets
::selectNet U_CARRY_GENERATOR/U_LF_GG_UNIT_3_23/n3
get_visible_nets
deselectAll
selectWire 23.0500 18.0950 23.1200 20.2650 2 {U_CARRY_GENERATOR/CG_xbars[3][31][1]}
deselectAll
selectInst U_CARRY_GENERATOR/U_LF_GG_UNIT_2_31/U2
zoomSelected
fit
deselectAll
selectInst U_CARRY_GENERATOR/U_BKBONE_GG_UNIT_1_31/U2
fit
deselectAll
gui_select -rect {46.877 30.556 49.644 22.370}
selectObject Module U_FIRST_RCA
deselectObject Module U_FIRST_RCA
selectObject Module U_SUM_GENERATOR
deselectObject Module U_SUM_GENERATOR
selectObject Module U_CARRY_GENERATOR
deselectObject Module U_CARRY_GENERATOR
selectObject Module U_CARRY_GENERATOR
deselectObject Module U_CARRY_GENERATOR
selectObject Module U_FIRST_RCA
selectObject HTerm U_CARRY_GENERATOR/U_PG_PRIM_24/p
saveDesign P4_ADDER_NBIT32
deselectAll
fit
fit
selectObject HTerm {U_CARRY_GENERATOR/Co[0]}
selectObject HTerm {U_CARRY_GENERATOR/Co[1]}
selectObject HTerm {U_CARRY_GENERATOR/Co[2]}
selectObject HTerm {U_CARRY_GENERATOR/Co[3]}
selectObject HTerm {U_CARRY_GENERATOR/Co[4]}
selectObject HTerm {U_CARRY_GENERATOR/Co[5]}
selectObject HTerm {U_CARRY_GENERATOR/Co[6]}
selectObject HTerm {U_CARRY_GENERATOR/Co[7]}
pan 23.713 -0.462
pan -4.327 0.750
fit
get_visible_nets
deselectAll
selectWire 17.3500 15.2950 17.4200 17.5250 2 {carry_gen_Co[3]}
pan 3.958 6.807
pan -1.163 0.548
pan 3.384 3.758
pan 4.534 3.718
pan -8.152 -11.276
fit
setDrawView ameba
deselectAll
gui_select -rect {-15.764 28.329 -6.649 13.848}
deselectAll
gui_select -rect {-1.282 36.003 44.702 2.019}
deselectAll
selectObject Module U_SUM_GENERATOR
deselectAll
setDrawView place
selectWire 20.1300 1.3200 20.9300 36.7600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 36.7600 10 gnd
setDrawView ameba
deselectAll
gui_select -rect {3.449 14.886 4.314 12.751}
deselectAll
selectObject Module U_CARRY_GENERATOR
deselectAll
redraw
selectObject Module U_CARRY_GENERATOR
pan 0.282 3.353
deselectAll
selectObject Module U_CARRY_GENERATOR
deselectAll
selectObject Module U_CARRY_GENERATOR
deselectAll
selectObject Module U_CARRY_GENERATOR
deselectAll
selectObject Module U_CARRY_GENERATOR
deselectAll
selectObject Module U_CARRY_GENERATOR
gui_select -rect {17.289 17.524 17.357 17.457}
fit
deselectAll
redraw
setDrawView fplan
pan 8.482 4.904
pan 0.346 0.000
selectObject Module U_SUM_GENERATOR
deselectAll
selectObject Module U_SUM_GENERATOR
deselectAll
selectObject Module U_CARRY_GENERATOR
setDrawView ameba
setDrawView fplan
setDrawView place
deselectAll
deselectAll
pan -3.520 -3.751
fit
setDrawView ameba
setDrawView place
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Cin
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Cout
gui_select -rect {19.717 0.263 20.826 -0.446}
deselectAll
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing -0.19 -pin {Cout Cin}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {Cout Cin}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 1 -spreadType side -pin {Cout Cin}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 1 -spreadType side -pin {Cout Cin}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing -39.33 -pin {Cout Cin}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cin
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing -0.19 -pin {Cin Cout}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cin
gui_select -rect {20.285 -0.172 21.968 -0.357}
selectObject IO_Pin Cin
gui_select -rect {20.229 -0.172 21.543 -0.209}
gui_select -rect {20.654 -0.431 20.155 0.198}
uiSetTool move
setObjFPlanBox IO_Pin Cin 24.628 -0.19 24.723 0.0
editMove 4.4405 0.0
moveGroupPins -loc 24.671 -0.095
uiSetTool select
gui_select -rect {24.984 -0.635 24.410 0.587}
deselectAll
selectObject IO_Pin Cin
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
uiSetTool move
moveGroupPins -loc 24.558 -0.190
uiSetTool select
gui_select -rect {19.285 0.531 20.654 -0.671}
uiSetTool moveWire
uiSetTool move
setObjFPlanBox IO_Pin Cout 15.946 -0.19 16.041 0.0
editMove -4.0515 0.0
deselectAll
selectPhyPin 15.9550 0.0350 16.0300 0.1050 1 Cout
editMove 0.148 -0.333
editMove -0.037 0.2775
uiSetTool select
deselectAll
selectObject IO_Pin Cout
deselectAll
gui_select -rect {16.270 -0.394 15.808 0.179}
deselectAll
get_visible_nets
select_highlighted -type wire
deselectAll
undo
undo
undo
selectPhyPin 20.0100 0.0300 20.0800 0.1100 1 Cout
deselectAll
selectObject IO_Pin Cout
deselectAll
gui_select -rect {20.222 -0.238 19.931 0.295}
get_visible_nets
uiSetTool flightline
deselectAll
selectPhyPin 24.3800 0.0000 24.4500 0.0700 2 Cin
deselectPhyPin 24.3800 0.0000 24.4500 0.0700 2 Cin
pan -1.329 0.152
uiSetTool flightline
uiSetTool util
uiSetTool sizeBlkg
uiSetTool select
gui_select -rect {26.858 -1.310 23.593 0.497}
gui_select -rect {41.795 -1.702 39.683 0.389}
deselectAll
selectObject IO_Pin {S[31]}
gui_select -rect {22.003 -1.440 19.369 0.607}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.19 -pin Cin
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
setPinAssignMode -pinEditInBatch false
deselectAll
gui_select -rect {20.435 -0.656 19.956 0.214}
deselectAll
selectObject IO_Pin Cin
deselectAll
selectObject IO_Pin Cout
deselectAll
pan -36.517 -8.870
gui_select -rect {21.359 -0.868 19.287 0.577}
getPinAssignMode -pinEditInBatch -quiet
gui_select -rect {20.904 -0.347 19.220 0.803}
deselectAll
gui_select -rect {20.530 -0.467 19.340 0.242}
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch false
pan 10.444 -0.575
pan 10.284 0.080
uiSetTool ruler
pan -13.681 1.592
uiSetTool select
gui_select -rect {21.801 -1.002 19.849 0.563}
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -edge 1 -layer 1 -spreadType side -pin {}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 1 -spreadType side -pin {Cin Cout}
pan -6.045 0.147
pan -9.601 -0.775
pan 4.253 0.268
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cout
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cin
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 1 -spreadType center -spacing 0.14 -pin Cin
setPinAssignMode -pinEditInBatch false
deselectAll
fit
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
zoomSelected
pan 0.762 4.201
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
violationBrowserClose
selectWire 20.0100 0.8750 21.5000 0.9450 3 Cout
deselectAll
selectWire 20.0100 0.8750 21.5000 0.9450 3 Cout
deselectAll
fit
setDrawView ameba
setDrawView place
redraw
gui_select -rect {-1.859 29.195 0.102 27.464}
setDrawView place
deselectAll
gui_select -rect {-1.252 24.966 0.043 24.004}
pan -12.486 0.592
pan -13.836 3.329
pan -7.122 3.219
uiSetTool select
pan -0.691 1.578
pan -0.202 0.030
pan 1.826 -1.377
pan -1.155 1.155
fit
deselectAll
gui_select -rect {48.049 15.867 39.394 16.905}
getCTSMode -engine -quiet
uiSetTool flightline
deselectAll
getFillerMode -quiet
addFiller -cell FILLCELL_X1 FILLCELL_X16 FILLCELL_X2 FILLCELL_X32 FILLCELL_X4 FILLCELL_X8 -prefix FILLER
addFiller -cell FILLCELL_X1 FILLCELL_X16 FILLCELL_X2 FILLCELL_X32 FILLCELL_X4 FILLCELL_X8 -prefix FILLER
fit
getCTSMode -engine -quiet
getCTSMode -engine -quiet
zoomSelected
getCTSMode -engine -quiet
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
selectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
deselectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
selectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
deselectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
selectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
deselectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
uiSetTool select
selectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
deselectAll
selectWire 27.4200 16.5550 27.4900 17.8850 2 {B[21]}
deselectAll
selectWire 24.4750 15.4000 24.6150 19.8800 4 {carry_gen_Co[3]}
fit
setLayerPreference allM0 -isSelectable 0
setLayerPreference allM1 -isSelectable 0
setLayerPreference allM2Cont -isSelectable 0
setLayerPreference allM2 -isSelectable 0
setLayerPreference allM3Cont -isSelectable 0
setLayerPreference allM3 -isSelectable 0
setLayerPreference allM4Cont -isSelectable 0
setLayerPreference allM4 -isSelectable 0
setLayerPreference allM5Cont -isSelectable 0
setLayerPreference allM5 -isSelectable 0
setLayerPreference allM6Cont -isSelectable 0
setLayerPreference allM6 -isSelectable 0
setLayerPreference allM7Cont -isSelectable 0
setLayerPreference allM7 -isSelectable 0
setLayerPreference allM8Cont -isSelectable 0
setLayerPreference allM8 -isSelectable 0
setLayerPreference allM9Cont -isSelectable 0
setLayerPreference allM9 -isSelectable 0
setLayerPreference allM10Cont -isSelectable 0
setLayerPreference allM10 -isSelectable 0
setLayerPreference allM0 -isSelectable 1
setLayerPreference allM1 -isSelectable 1
setLayerPreference allM2Cont -isSelectable 1
setLayerPreference allM2 -isSelectable 1
setLayerPreference allM3Cont -isSelectable 1
setLayerPreference allM3 -isSelectable 1
setLayerPreference allM4Cont -isSelectable 1
setLayerPreference allM4 -isSelectable 1
setLayerPreference allM5Cont -isSelectable 1
setLayerPreference allM5 -isSelectable 1
setLayerPreference allM6Cont -isSelectable 1
setLayerPreference allM6 -isSelectable 1
setLayerPreference allM7Cont -isSelectable 1
setLayerPreference allM7 -isSelectable 1
setLayerPreference allM8Cont -isSelectable 1
setLayerPreference allM8 -isSelectable 1
setLayerPreference allM9Cont -isSelectable 1
setLayerPreference allM9 -isSelectable 1
setLayerPreference allM10Cont -isSelectable 1
setLayerPreference allM10 -isSelectable 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM10 -isVisible 0
deselectAll
fit
setLayerPreference allM0 -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM10 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM9 -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM8 -isVisible 0
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM8 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM7 -isVisible 1
setLayerPreference allM7 -isVisible 0
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM6 -isVisible 0
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM5 -isVisible 1
setLayerPreference allM5 -isVisible 0
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM10 -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM3 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM3 -isVisible 0
setLayerPreference allM3 -isVisible 1
fit
fit
setLayerPreference allM0 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10 -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM10 -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10 -isVisible 1
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setLayerPreference allM10 -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM4 -isVisible 1
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
saveDesign P4_ADDER_NBIT32
dumpToGIF test
win
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10 -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM10 -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10 -isVisible 1
reset_parasitics
extractRC
rcOut -setload P4_ADDER_NBIT32.setload -rc_corner standard
rcOut -setres P4_ADDER_NBIT32.setres -rc_corner standard
rcOut -spf P4_ADDER_NBIT32.spf -rc_corner standard
rcOut -spef P4_ADDER_NBIT32.spef -rc_corner standard
generateCapTbl -ict .ict -output .capTbl -shrinkFactor 1.0
generateCapTbl -ict .ict -output .capTbl -shrinkFactor 1.0
getCTSMode -engine -quiet
getCTSMode -engine -quiet
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix P4_ADDER_NBIT32_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix P4_ADDER_NBIT32_postRoute -outDir timingReports
getCTSMode -engine -quiet
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix P4_ADDER_NBIT32_postRoute -outDir timingReports
editSelect -net {U_FIRST_RCA/add_1_root_add_43_2/carry[1]}
zoomSelected
selectInst U_FIRST_RCA/add_1_root_add_43_2/U1_1
zoomSelected
editSelect -net {U_FIRST_RCA/add_1_root_add_43_2/carry[2]}
zoomSelected
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile reports/innovus/P4_ADDER_NBIT32.gateCount
saveNetlist netlist/P4_ADDER_NBIT32.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network reports/innovus/P4_ADDER_NBIT32.sdf
pan -31.165 2.223
fit
pan 0.000 -0.635
fit
win
saveDesign P4_ADDER_NBIT32
saveDesign P4_ADDER_NBIT32
saveDesign P4_ADDER_NBIT32
selectObject IO_Pin {A[31]}
gui_select -rect {38.819 37.560 39.535 38.151}
selectObject IO_Pin {A[31]}
gui_select -rect {39.246 38.136 39.804 38.863}
selectObject IO_Pin {A[31]}
pan 0.226 0.190
pan 1.241 1.153
pan 0.066 0.178
pan 0.080 0.142
pan 0.110 0.128
pan 0.329 0.522
pan 0.091 0.149
pan 0.785 1.037
pan 0.244 0.555
pan 0.529 0.795
pan 1.814 2.283
pan 1.528 2.390
pan 0.444 0.705
pan 0.364 1.067
pan -0.103 0.668
pan -1.006 -0.547
pan -0.711 -0.930
pan -0.840 -1.181
pan -0.507 -0.967
pan -0.560 -0.814
pan -0.882 -1.205
pan -1.123 -1.017
pan -0.043 -0.024
pan -0.450 -0.270
pan -0.132 -3.305
pan 0.083 -0.841
pan 0.371 -0.490
pan 0.002 0.267
pan 0.000 0.007
pan -0.218 0.186
pan 7.844 4.687
pan 10.811 7.172
pan -0.461 7.667
deselectAll
setDrawView ameba
pan 12.233 0.336
pan -1.994 -2.315
dumpToGIF b23.gif
