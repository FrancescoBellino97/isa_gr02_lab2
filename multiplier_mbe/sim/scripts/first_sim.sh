#!/bin/bash

source /software/scripts/init_msim6.2g

rm -rf work
rm -f transcript
rm -f vsim.wlf

vlib work

vcom -93 -work ./work ../src/packfp_packfp.vhd
vcom -93 -work ./work ../src/fpround_fpround.vhd
vcom -93 -work ./work ../src/fpnormalize_fpnormalize.vhd
vcom -93 -work ./work ../src/unpackfp_unpackfp.vhd
vcom -93 -work ./work ../src/fpmul_stage1_struct.vhd
vcom -93 -work ./work ../src/fpmul_stage2_struct.vhd
vcom -93 -work ./work ../src/fpmul_stage3_struct.vhd
vcom -93 -work ./work ../src/fpmul_stage4_struct.vhd
vcom -93 -work ./work ../src/regIn_out.vhd
vcom -93 -work ./work ../src/regOut_Exp.vhd
vcom -93 -work ./work ../src/regOut_Sig.vhd
vcom -93 -work ./work ../src/regOut_Sign.vhd
vcom -93 -work ./work ../src/fpmul_pipeline.vhd
vcom -93 -work ./work ../src/changeSign.vhd
vcom -93 -work ./work ../src/daddaTree.vhd
vcom -93 -work ./work ../src/final_adder.vhd
vcom -93 -work ./work ../src/fullAdder.vhd
vcom -93 -work ./work ../src/half_adder.vhd
vcom -93 -work ./work ../src/MBE_radix4_fullyDaddaTree.vhd
vcom -93 -work ./work ../src/mux2to1_32bit.vhd
vcom -93 -work ./work ../src/mux4to1_36bit.vhd
vcom -93 -work ./work ../src/mux8to1_34bit.vhd
vcom -93 -work ./work ../src/mux8to1_35bit.vhd
vcom -93 -work ./work ../src/operand_generation.vhd
vcom -93 -work ./work ../tb/*.vhd
vlog -work ./work ../tb/*.v

vsim work.testbench
