analyze -f vhdl -lib WORK ../src/fpnormalize_fpnormalize.vhd
analyze -f vhdl -lib WORK ../src/fpround_fpround.vhd
analyze -f vhdl -lib WORK ../src/unpackfp_unpackfp.vhd
analyze -f vhdl -lib WORK ../src/packfp_packfp.vhd
analyze -f vhdl -lib WORK ../src/regIn_out.vhd
analyze -f vhdl -lib WORK ../src/regOut_Exp.vhd
analyze -f vhdl -lib WORK ../src/regOut_Sig.vhd
analyze -f vhdl -lib WORK ../src/regOut_Sign.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage1_struct.vhd
analyze	-f vhdl	-lib WORK ../src/fpmul_stage2_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage3_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_stage4_struct.vhd
analyze -f vhdl -lib WORK ../src/fpmul_pipeline.vhd
analyze -f vhdl -lib WORK ../src/changeSign.vhd
analyze -f vhdl -lib WORK ../src/daddaTree.vhd
analyze -f vhdl -lib WORK ../src/final_adder.vhd
analyze -f vhdl -lib WORK ../src/fullAdder.vhd
analyze -f vhdl -lib WORK ../src/half_adder.vhd
analyze -f vhdl -lib WORK ../src/MBE_radix4_fullyDaddaTree.vhd
analyze -f vhdl -lib WORK ../src/mux2to1_32bit.vhd
analyze -f vhdl -lib WORK ../src/mux4to1_36bit.vhd
analyze -f vhdl -lib WORK ../src/mux8to1_34bit.vhd
analyze -f vhdl -lib WORK ../src/mux8to1_35bit.vhd
analyze -f vhdl -lib WORK ../src/operand_generation.vhd

set power_preserve_rtl_hier_names true
elaborate FPmul -arch pipeline -lib WORK > ./output_report/elaborate.txt
uniquify
link

create_clock -name MY_CLK -period 1.8 clk
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] clk]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]

ungroup -all -flatten
compile

report_resources > ./output_report/repResources.txt
report_timing > ./output_report/reportTiming.txt
report_area > ./output_report/reportArea.txt

quit
