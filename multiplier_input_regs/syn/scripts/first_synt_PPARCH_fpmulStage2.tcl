analyze -f vhdl -lib WORK ../src/fpnormalize_fpnormalize.vhd
analyze -f vhdl -lib WORK ../src/fpround_fpround.vhd
analyze -f vhdl -lib WORK ../src/unpackfp_unpackfp.vhd
analyze -f vhdl -lib WORK ../src/packfp_packfp.vhd
analyze -f vhdl -lib WORK ../src/regIn_out.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage1_struct.vhd
analyze	-f vhdl	-lib WORK ../src/fpmul_stage2_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage3_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage4_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_pipeline.vhd

set power_preserve_rtl_hier_names true
elaborate FPmul -arch pipeline -lib WORK > ./output_report/elaborate.txt
uniquify
link

create_clock -name MY_CLK -period 0.0 clk
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] clk]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]

ungroup -all -flatten
set_implementation DW02_mult/pparch [find cell *mult*]
compile

report_resources > ./output_report/repResources_PPARCHstage2.txt
report_timing > ./output_report/reportTiming_PPARCHstage2.txt
report_area > ./output_report/reportArea_PPARCHstage2.txt

quit
